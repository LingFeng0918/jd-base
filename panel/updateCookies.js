const fs = require("fs");
const $ = new Env('更新Cookies');
const setCookie = require('set-cookie-parser');
const notify = $.isNode() ? require('../scripts/sendNotify') : '';
//Node.js用户请在jdCookie.js处填写京东ck;
const jdCookieNode = $.isNode() ? require('../scripts/jdCookie.js') : '';
//IOS等用户直接用NobyDa的jd cookie
let cookiesArr = [], message = '', successCount = 0, accountsList = [], newAccountsList = [],
    signJsonFileCount = 50, signList = [], signServerUrl = "";
if ($.isNode()) {
    Object.keys(jdCookieNode).forEach((item) => {
        cookiesArr.push(jdCookieNode[item])
    })
    if (process.env.JD_DEBUG && process.env.JD_DEBUG === 'false') console.log = () => {
    };
} else {
    cookiesArr = [$.getdata('CookieJD'), $.getdata('CookieJD2'), ...jsonParse($.getdata('CookiesJD') || "[]").map(item => item.cookie)].filter(item => !!item);
}

let UA = `okhttp/3.12.1;jdmall;android;version/10.1.2;build/89743;screen/1080x2206;os/11;network/wifi;`;
const configShPath = "../config/cookie.sh";
const accountPath = "../config/account.json";
const signPath = "./sign/";
const sleep = (ms) => {
    return new Promise((resolve) => {
        setTimeout(resolve, ms);
    });
};
!(async () => {
    if (cookiesArr.length === 0) {
        $.msg($.name, '未设置cookies,停止更新cookies');
        return;
    }
    if (process.env.SIGN_SERVER_URL && process.env.SIGN_SERVER_URL !== "") {
        signServerUrl = process.env.SIGN_SERVER_URL;
    }
    if (!signServerUrl || signServerUrl === "") {
        loadLocalSign();
    }
    loadAccount();
    for (const cookie of cookiesArr) {
        await updateCookies(cookie)
    }
    $.msg($.name, 'Cookies更新结果:', message);
    // if ($.isNode() && message) {
    //     await notify.sendNotify(`${$.name}`, `${message}`)
    // }
})()
    .catch((e) => {
        $.log('', `❌ ${$.name}, 失败! 原因: ${e}!`, '')
    })
    .finally(() => {
        $.done();
    })



async function updateCookies(cookie) {
    let pt_pin  = cookie.match(/pt_pin=([^; ]+)(?=;?)/) && cookie.match(/pt_pin=([^; ]+)(?=;?)/)[1];
    //let account = {pt_pin: pt_pin, ws_key: "", remarks: pt_pin};
    for (const account of accountsList) {
        if(pt_pin === account.pt_pin){
            let headerMsg = `Cookie => [remarks=${decodeURIComponent(account.remarks)}] `;
            if (account.ws_key && account.ws_key !== "") {
                let success = false;
                let ck = await getCkByWsKey(account);
                if(ck !== ''){
                    let checkResult = await checkCookie(ck);
                    if(checkResult){
                        success = await updateLocalCookie(ck);
                        successCount ++;
                        message += `${headerMsg} ${success ? '更新成功' : '更新失败'}\n`;
                    }else if(!checkResult){
                        message += `${headerMsg} 生成的cookie已失效\n`;
                    }
                }else {
                    message += `${headerMsg} 更新失败,请检查ws_key是否正确}\n`;
                }
            } else {
                message += `${headerMsg} 未设置ws_key不更新\n`;
            }
        }
    }
}

async function getCkByWsKey(account) {
    let sign = await getSign();
    const {tokenKey} = await genToken(account.ws_key, account.pt_pin, sign);
    return await getJDCookie(account.pt_pin,tokenKey);
}



function loadAccount() {
    try {
        fs.accessSync(accountPath)
        accountsList = JSON.parse(fs.readFileSync(accountPath).toString())
    } catch (e) {
    }
}


function random(min, max) {
    return Math.floor(Math.random() * (max - min)) + min;
}

function loadLocalSign() {
    let signFile = `${signPath}${random(1, signJsonFileCount)}.json`;
    try {
        fs.accessSync(signFile)
        signList = JSON.parse(fs.readFileSync(signFile).toString())
    } catch (e) {
        console.log("签名文件加载失败")
    }
}

function getSign() {
    return new Promise(resolve => {
        if (signServerUrl && signServerUrl !== "") {
            const options = {
                "url": signServerUrl,
                "timeout": 10000,
            };
            $.get(options, async (err, resp, data) => {
                try {
                    if (err) {
                        console.log(`${signServerUrl} 签名请求失败，请稍后再试`)
                    }
                } catch (e) {
                    $.logErr(e, resp)
                } finally {
                    resolve(data);
                }
            })
        } else {
            resolve(signList[random(0, signList.length - 1)]);
        }
    })
}



async function checkCookie(cookie) {
    //console.log(ws_Key,pt_pin,sign)
    const options = {
        url: `https://bean.m.jd.com/bean/signIndex.action`,
        headers: {
            Cookie: cookie,
            accept: '*/*',
            referer: '',
            'User-Agent': UA,
        }
    };
    return new Promise((resolve, reject) => {
        $.get(options, (err, resp, data) => {
            resolve(resp.status !== 302)
        });
    });
}


async function genToken(ws_Key, pt_pin, sign) {
    //console.log(ws_Key,pt_pin,sign)
    const options = {
        url: `https://api.m.jd.com/client.action?functionId=genToken&body=%7B%22to%22%3A%22https%253a%252f%252fplogin.m.jd.com%252fjd-mlogin%252fstatic%252fhtml%252fappjmp_blank.html%22%7D&clientVersion=10.1.2&client=android&${sign}`,
        headers: {
            Host: 'api.m.jd.com',
            Cookie: `pin=${pt_pin};wskey=${ws_Key};`,
            accept: '*/*',
            referer: '',
            'User-Agent': UA,
            'Content-Type': 'application/x-www-form-urlencoded;',
        }
    };
    return new Promise((resolve, reject) => {
        $.post(options, (err, resp, data) => {
            if (!err) {
                try {
                    const res = JSON.parse(data);
                    //console.log(res)
                    resolve(res);
                } catch (error) {
                    reject("接口调用错误");
                }
            } else {
                reject(err);
            }
        });
    });
}

async function getJDCookie(pt_pin,tokenKey) {
    return new Promise((resolve, reject) => {
        $.get({
                url: `https://un.m.jd.com/cgi-bin/app/appjmp?tokenKey=${tokenKey}&to=https%3A%2F%2Fhome.m.jd.com%2FmyJd%2Fnewhome.action`,
                method: 'GET',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    Accept: 'application/json, text/plain, */*',
                    'Accept-Language': 'zh-cn',
                    'User-Agent': UA,
                },
                followRedirect: false,
            }, async function (error, response, body) {
                try {
                    const cookies = setCookie(response);
                    const ck = {};
                    cookies.filter((o) => o.name === 'pt_key' || o.name === 'pt_pin')
                        .forEach((o) => {
                            ck[o.name] = o.value;
                        });
                    resolve(`pt_key=${ck.pt_key};pt_pin=${pt_pin};`);
                } catch (error) {
                    resolve('');
                }

            }
        );
    });
}

async function updateLocalCookie(cookie) {
    fs.accessSync(configShPath)
    const content = fs.readFileSync(configShPath,'utf8').toString();
    const lines = content.split('\n');
    const pt_pin = cookie.match(/pt_pin=.+?;/)[0];
    let lastIndex = 0;
    let maxCookieCount = 0;
    let updateFlag = false;
    let success = false;
    for (var i = 0; i < lines.length; i++) {
        var line = lines[i];
        if (line.startsWith('Cookie')) {
            maxCookieCount = Math.max(
                Number(line.split('=')[0].split('Cookie')[1]),
                maxCookieCount
            );
            lastIndex = i;
            if (line.match(/pt_pin=.+?;/) && line.match(/pt_pin=.+?;/)[0] === pt_pin) {
                const head = line.split('=')[0];
                lines[i] = [head, '=', '"', cookie, '"'].join('');
                let lineNext = lines[i + 1];
                updateFlag = true;
                if (
                    lineNext.match(/上次更新：/)
                ) {
                    const bz = lineNext.split('备注：')[1];
                    lines[i + 1] = ['## ', pt_pin, ' 上次更新：', new Date().toLocaleDateString(), ' 备注：', bz ? bz : '暂无备注'].join('');
                } else {
                    const newLine = ['## ', pt_pin, ' 上次更新：', new Date().toLocaleDateString(), ' 备注：', "暂无备注"].join('');
                    lines.splice(lastIndex + 1, 0, newLine);
                }
                success = true;
            }
        }
    }
    let CookieCount = Number(maxCookieCount) + 1;
    if (!updateFlag) {
        lastIndex++;
        let newLine = [
            'Cookie',
            CookieCount,
            '=',
            '"',
            cookie,
            '"',
        ].join('');
        //提交备注
        lines.splice(lastIndex + 1, 0, newLine);
        newLine = ['## ', pt_pin, ' 上次更新：', new Date().toLocaleDateString(), ' 备注：', '暂无备注'].join('');
        lines.splice(lastIndex + 2, 0, newLine);
    }
    fs.writeFileSync(configShPath,lines.join('\n'));
    return success
}

// prettier-ignore
function Env(t,e){"undefined"!=typeof process&&JSON.stringify(process.env).indexOf("GITHUB")>-1&&process.exit(0);class s{constructor(t){this.env=t}send(t,e="GET"){t="string"==typeof t?{url:t}:t;let s=this.get;return"POST"===e&&(s=this.post),new Promise((e,i)=>{s.call(this,t,(t,s,r)=>{t?i(t):e(s)})})}get(t){return this.send.call(this.env,t)}post(t){return this.send.call(this.env,t,"POST")}}return new class{constructor(t,e){this.name=t,this.http=new s(this),this.data=null,this.dataFile="box.dat",this.logs=[],this.isMute=!1,this.isNeedRewrite=!1,this.logSeparator="\n",this.startTime=(new Date).getTime(),Object.assign(this,e),this.log("",`🔔${this.name}, 开始!`)}isNode(){return"undefined"!=typeof module&&!!module.exports}isQuanX(){return"undefined"!=typeof $task}isSurge(){return"undefined"!=typeof $httpClient&&"undefined"==typeof $loon}isLoon(){return"undefined"!=typeof $loon}toObj(t,e=null){try{return JSON.parse(t)}catch{return e}}toStr(t,e=null){try{return JSON.stringify(t)}catch{return e}}getjson(t,e){let s=e;const i=this.getdata(t);if(i)try{s=JSON.parse(this.getdata(t))}catch{}return s}setjson(t,e){try{return this.setdata(JSON.stringify(t),e)}catch{return!1}}getScript(t){return new Promise(e=>{this.get({url:t},(t,s,i)=>e(i))})}runScript(t,e){return new Promise(s=>{let i=this.getdata("@chavy_boxjs_userCfgs.httpapi");i=i?i.replace(/\n/g,"").trim():i;let r=this.getdata("@chavy_boxjs_userCfgs.httpapi_timeout");r=r?1*r:20,r=e&&e.timeout?e.timeout:r;const[o,h]=i.split("@"),n={url:`http://${h}/v1/scripting/evaluate`,body:{script_text:t,mock_type:"cron",timeout:r},headers:{"X-Key":o,Accept:"*/*"}};this.post(n,(t,e,i)=>s(i))}).catch(t=>this.logErr(t))}loaddata(){if(!this.isNode())return{};{this.fs=this.fs?this.fs:require("fs"),this.path=this.path?this.path:require("path");const t=this.path.resolve(this.dataFile),e=this.path.resolve(process.cwd(),this.dataFile),s=this.fs.existsSync(t),i=!s&&this.fs.existsSync(e);if(!s&&!i)return{};{const i=s?t:e;try{return JSON.parse(this.fs.readFileSync(i))}catch(t){return{}}}}}writedata(){if(this.isNode()){this.fs=this.fs?this.fs:require("fs"),this.path=this.path?this.path:require("path");const t=this.path.resolve(this.dataFile),e=this.path.resolve(process.cwd(),this.dataFile),s=this.fs.existsSync(t),i=!s&&this.fs.existsSync(e),r=JSON.stringify(this.data);s?this.fs.writeFileSync(t,r):i?this.fs.writeFileSync(e,r):this.fs.writeFileSync(t,r)}}lodash_get(t,e,s){const i=e.replace(/\[(\d+)\]/g,".$1").split(".");let r=t;for(const t of i)if(r=Object(r)[t],void 0===r)return s;return r}lodash_set(t,e,s){return Object(t)!==t?t:(Array.isArray(e)||(e=e.toString().match(/[^.[\]]+/g)||[]),e.slice(0,-1).reduce((t,s,i)=>Object(t[s])===t[s]?t[s]:t[s]=Math.abs(e[i+1])>>0==+e[i+1]?[]:{},t)[e[e.length-1]]=s,t)}getdata(t){let e=this.getval(t);if(/^@/.test(t)){const[,s,i]=/^@(.*?)\.(.*?)$/.exec(t),r=s?this.getval(s):"";if(r)try{const t=JSON.parse(r);e=t?this.lodash_get(t,i,""):e}catch(t){e=""}}return e}setdata(t,e){let s=!1;if(/^@/.test(e)){const[,i,r]=/^@(.*?)\.(.*?)$/.exec(e),o=this.getval(i),h=i?"null"===o?null:o||"{}":"{}";try{const e=JSON.parse(h);this.lodash_set(e,r,t),s=this.setval(JSON.stringify(e),i)}catch(e){const o={};this.lodash_set(o,r,t),s=this.setval(JSON.stringify(o),i)}}else s=this.setval(t,e);return s}getval(t){return this.isSurge()||this.isLoon()?$persistentStore.read(t):this.isQuanX()?$prefs.valueForKey(t):this.isNode()?(this.data=this.loaddata(),this.data[t]):this.data&&this.data[t]||null}setval(t,e){return this.isSurge()||this.isLoon()?$persistentStore.write(t,e):this.isQuanX()?$prefs.setValueForKey(t,e):this.isNode()?(this.data=this.loaddata(),this.data[e]=t,this.writedata(),!0):this.data&&this.data[e]||null}initGotEnv(t){this.got=this.got?this.got:require("got"),this.cktough=this.cktough?this.cktough:require("tough-cookie"),this.ckjar=this.ckjar?this.ckjar:new this.cktough.CookieJar,t&&(t.headers=t.headers?t.headers:{},void 0===t.headers.Cookie&&void 0===t.cookieJar&&(t.cookieJar=this.ckjar))}get(t,e=(()=>{})){t.headers&&(delete t.headers["Content-Type"],delete t.headers["Content-Length"]),this.isSurge()||this.isLoon()?(this.isSurge()&&this.isNeedRewrite&&(t.headers=t.headers||{},Object.assign(t.headers,{"X-Surge-Skip-Scripting":!1})),$httpClient.get(t,(t,s,i)=>{!t&&s&&(s.body=i,s.statusCode=s.status),e(t,s,i)})):this.isQuanX()?(this.isNeedRewrite&&(t.opts=t.opts||{},Object.assign(t.opts,{hints:!1})),$task.fetch(t).then(t=>{const{statusCode:s,statusCode:i,headers:r,body:o}=t;e(null,{status:s,statusCode:i,headers:r,body:o},o)},t=>e(t))):this.isNode()&&(this.initGotEnv(t),this.got(t).on("redirect",(t,e)=>{try{if(t.headers["set-cookie"]){const s=t.headers["set-cookie"].map(this.cktough.Cookie.parse).toString();s&&this.ckjar.setCookieSync(s,null),e.cookieJar=this.ckjar}}catch(t){this.logErr(t)}}).then(t=>{const{statusCode:s,statusCode:i,headers:r,body:o}=t;e(null,{status:s,statusCode:i,headers:r,body:o},o)},t=>{const{message:s,response:i}=t;e(s,i,i&&i.body)}))}post(t,e=(()=>{})){if(t.body&&t.headers&&!t.headers["Content-Type"]&&(t.headers["Content-Type"]="application/x-www-form-urlencoded"),t.headers&&delete t.headers["Content-Length"],this.isSurge()||this.isLoon())this.isSurge()&&this.isNeedRewrite&&(t.headers=t.headers||{},Object.assign(t.headers,{"X-Surge-Skip-Scripting":!1})),$httpClient.post(t,(t,s,i)=>{!t&&s&&(s.body=i,s.statusCode=s.status),e(t,s,i)});else if(this.isQuanX())t.method="POST",this.isNeedRewrite&&(t.opts=t.opts||{},Object.assign(t.opts,{hints:!1})),$task.fetch(t).then(t=>{const{statusCode:s,statusCode:i,headers:r,body:o}=t;e(null,{status:s,statusCode:i,headers:r,body:o},o)},t=>e(t));else if(this.isNode()){this.initGotEnv(t);const{url:s,...i}=t;this.got.post(s,i).then(t=>{const{statusCode:s,statusCode:i,headers:r,body:o}=t;e(null,{status:s,statusCode:i,headers:r,body:o},o)},t=>{const{message:s,response:i}=t;e(s,i,i&&i.body)})}}time(t,e=null){const s=e?new Date(e):new Date;let i={"M+":s.getMonth()+1,"d+":s.getDate(),"H+":s.getHours(),"m+":s.getMinutes(),"s+":s.getSeconds(),"q+":Math.floor((s.getMonth()+3)/3),S:s.getMilliseconds()};/(y+)/.test(t)&&(t=t.replace(RegExp.$1,(s.getFullYear()+"").substr(4-RegExp.$1.length)));for(let e in i)new RegExp("("+e+")").test(t)&&(t=t.replace(RegExp.$1,1==RegExp.$1.length?i[e]:("00"+i[e]).substr((""+i[e]).length)));return t}msg(e=t,s="",i="",r){const o=t=>{if(!t)return t;if("string"==typeof t)return this.isLoon()?t:this.isQuanX()?{"open-url":t}:this.isSurge()?{url:t}:void 0;if("object"==typeof t){if(this.isLoon()){let e=t.openUrl||t.url||t["open-url"],s=t.mediaUrl||t["media-url"];return{openUrl:e,mediaUrl:s}}if(this.isQuanX()){let e=t["open-url"]||t.url||t.openUrl,s=t["media-url"]||t.mediaUrl;return{"open-url":e,"media-url":s}}if(this.isSurge()){let e=t.url||t.openUrl||t["open-url"];return{url:e}}}};if(this.isMute||(this.isSurge()||this.isLoon()?$notification.post(e,s,i,o(r)):this.isQuanX()&&$notify(e,s,i,o(r))),!this.isMuteLog){let t=["","==============📣系统通知📣=============="];t.push(e),s&&t.push(s),i&&t.push(i),console.log(t.join("\n")),this.logs=this.logs.concat(t)}}log(...t){t.length>0&&(this.logs=[...this.logs,...t]),console.log(t.join(this.logSeparator))}logErr(t,e){const s=!this.isSurge()&&!this.isQuanX()&&!this.isLoon();s?this.log("",`❗️${this.name}, 错误!`,t.stack):this.log("",`❗️${this.name}, 错误!`,t)}wait(t){return new Promise(e=>setTimeout(e,t))}done(t={}){const e=(new Date).getTime(),s=(e-this.startTime)/1e3;this.log("",`🔔${this.name}, 结束! 🕛 ${s} 秒`),this.log(),(this.isSurge()||this.isQuanX()||this.isLoon())&&$done(t)}}(t,e)}
