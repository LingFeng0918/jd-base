#!/usr/bin/env bash

## 路径、环境判断
dir_shell=$(dirname $(readlink -f "$0"))
dir_root=$dir_shell
dir_panel=$dir_root/panel
dir_panel_public=$dir_panel/public
dir_panel_ttyd=$dir_panel/ttyd
dir_panel_css=$dir_panel_public/css
dir_panel_js=$dir_panel_public/js
[[ ! -d $dir_panel_ttyd ]] && mkdir -p $dir_panel_ttyd
[[ ! -d $dir_panel_css ]] && mkdir -p $dir_panel_css
[[ ! -d $dir_panel_js ]] && mkdir -p $dir_panel_js



## 写入文件
echo -e "======================== 写入文件 ========================\n"
echo -e "======================== $dir_panel_css/codemirror.min.css ========================\n"
if [ ! -f $dir_panel_css/codemirror.min.css ];then
  cat>$dir_panel_css/codemirror.min.css<<\EOF
.CodeMirror{font-family:monospace;height:300px;color:black}.CodeMirror-lines{padding:4px 0}.CodeMirror pre{padding:0 4px}.CodeMirror-scrollbar-filler,.CodeMirror-gutter-filler{background-color:white}.CodeMirror-gutters{border-right:1px solid #ddd;background-color:#f7f7f7;white-space:nowrap}.CodeMirror-linenumber{padding:0 3px 0 5px;min-width:20px;text-align:right;color:#999;white-space:nowrap}.CodeMirror-guttermarker{color:black}.CodeMirror-guttermarker-subtle{color:#999}.CodeMirror-cursor{border-left:1px solid black;border-right:0;width:0}.CodeMirror div.CodeMirror-secondarycursor{border-left:1px solid silver}.cm-fat-cursor .CodeMirror-cursor{width:auto;border:0;background:#7e7}.cm-fat-cursor div.CodeMirror-cursors{z-index:1}.cm-animate-fat-cursor{width:auto;border:0;-webkit-animation:blink 1.06s steps(1) infinite;-moz-animation:blink 1.06s steps(1) infinite;animation:blink 1.06s steps(1) infinite;background-color:#7e7}@-moz-keyframes blink{50%{background-color:transparent}}@-webkit-keyframes blink{50%{background-color:transparent}}@keyframes blink{50%{background-color:transparent}}.cm-tab{display:inline-block;text-decoration:inherit}.CodeMirror-ruler{border-left:1px solid #ccc;position:absolute}.cm-s-default .cm-header{color:blue}.cm-s-default .cm-quote{color:#090}.cm-negative{color:#d44}.cm-positive{color:#292}.cm-header,.cm-strong{font-weight:bold}.cm-em{font-style:italic}.cm-link{text-decoration:underline}.cm-strikethrough{text-decoration:line-through}.cm-s-default .cm-keyword{color:#708}.cm-s-default .cm-atom{color:#219}.cm-s-default .cm-number{color:#164}.cm-s-default .cm-def{color:#00f}.cm-s-default .cm-variable-2{color:#05a}.cm-s-default .cm-variable-3{color:#085}.cm-s-default .cm-comment{color:#a50}.cm-s-default .cm-string{color:#a11}.cm-s-default .cm-string-2{color:#f50}.cm-s-default .cm-meta{color:#555}.cm-s-default .cm-qualifier{color:#555}.cm-s-default .cm-builtin{color:#30a}.cm-s-default .cm-bracket{color:#997}.cm-s-default .cm-tag{color:#170}.cm-s-default .cm-attribute{color:#00c}.cm-s-default .cm-hr{color:#999}.cm-s-default .cm-link{color:#00c}.cm-s-default .cm-error{color:red}.cm-invalidchar{color:red}.CodeMirror-composing{border-bottom:2px solid}div.CodeMirror span.CodeMirror-matchingbracket{color:#0f0}div.CodeMirror span.CodeMirror-nonmatchingbracket{color:#f22}.CodeMirror-matchingtag{background:rgba(255,150,0,.3)}.CodeMirror-activeline-background{background:#e8f2ff}.CodeMirror{position:relative;overflow:hidden;background:white}.CodeMirror-scroll{overflow:scroll !important;margin-bottom:-30px;margin-right:-30px;padding-bottom:30px;height:100%;outline:0;position:relative}.CodeMirror-sizer{position:relative;border-right:30px solid transparent}.CodeMirror-vscrollbar,.CodeMirror-hscrollbar,.CodeMirror-scrollbar-filler,.CodeMirror-gutter-filler{position:absolute;z-index:6;display:none}.CodeMirror-vscrollbar{right:0;top:0;overflow-x:hidden;overflow-y:scroll}.CodeMirror-hscrollbar{bottom:0;left:0;overflow-y:hidden;overflow-x:scroll}.CodeMirror-scrollbar-filler{right:0;bottom:0}.CodeMirror-gutter-filler{left:0;bottom:0}.CodeMirror-gutters{position:absolute;left:0;top:0;z-index:3}.CodeMirror-gutter{white-space:normal;height:100%;display:inline-block;margin-bottom:-30px;*zoom:1;*display:inline}.CodeMirror-gutter-wrapper{position:absolute;z-index:4;background:none !important;border:none !important}.CodeMirror-gutter-background{position:absolute;top:0;bottom:0;z-index:4}.CodeMirror-gutter-elt{position:absolute;cursor:default;z-index:4}.CodeMirror-gutter-wrapper{-webkit-user-select:none;-moz-user-select:none;user-select:none}.CodeMirror-lines{cursor:text;min-height:1px}.CodeMirror pre{-moz-border-radius:0;-webkit-border-radius:0;border-radius:0;border-width:0;background:transparent;font-family:inherit;font-size:inherit;margin:0;white-space:pre;word-wrap:normal;line-height:inherit;color:inherit;z-index:2;position:relative;overflow:visible;-webkit-tap-highlight-color:transparent}.CodeMirror-wrap pre{word-wrap:break-word;white-space:pre-wrap;word-break:normal}.CodeMirror-linebackground{position:absolute;left:0;right:0;top:0;bottom:0;z-index:0}.CodeMirror-linewidget{position:relative;z-index:2;overflow:auto}.CodeMirror-code{outline:0}.CodeMirror-scroll,.CodeMirror-sizer,.CodeMirror-gutter,.CodeMirror-gutters,.CodeMirror-linenumber{-moz-box-sizing:content-box;box-sizing:content-box}.CodeMirror-measure{position:absolute;width:100%;height:0;overflow:hidden;visibility:hidden}.CodeMirror-cursor{position:absolute}.CodeMirror-measure pre{position:static}div.CodeMirror-cursors{visibility:hidden;position:relative;z-index:3}div.CodeMirror-dragcursors{visibility:visible}.CodeMirror-focused div.CodeMirror-cursors{visibility:visible}.CodeMirror-selected{background:#d9d9d9}.CodeMirror-focused .CodeMirror-selected{background:#d7d4f0}.CodeMirror-crosshair{cursor:crosshair}.CodeMirror-line::selection,.CodeMirror-line>span::selection,.CodeMirror-line>span>span::selection{background:#d7d4f0}.CodeMirror-line::-moz-selection,.CodeMirror-line>span::-moz-selection,.CodeMirror-line>span>span::-moz-selection{background:#d7d4f0}.cm-searching{background:#ffa;background:rgba(255,255,0,.4)}.CodeMirror span{*vertical-align:text-bottom}.cm-force-border{padding-right:.1px}@media print{.CodeMirror div.CodeMirror-cursors{visibility:hidden}}.cm-tab-wrap-hack:after{content:''}span.CodeMirror-selectedtext{background:0}
EOF
fi




echo -e "======================== $dir_panel_css/dracula.css ========================\n"
if [ ! -f $dir_panel_css/dracula.css ];then
  cat>$dir_panel_css/dracula.css<<\EOF
/*

    Name:       dracula
    Author:     Michael Kaminsky (http://github.com/mkaminsky11)

    Original dracula color scheme by Zeno Rocha (https://github.com/zenorocha/dracula-theme)

*/


.cm-s-dracula.CodeMirror, .cm-s-dracula .CodeMirror-gutters {
  background-color: #282a36 !important;
  color: #f8f8f2 !important;
  border: none;
}
.cm-s-dracula .CodeMirror-gutters { color: #282a36; }
.cm-s-dracula .CodeMirror-cursor { border-left: solid thin #f8f8f0; }
.cm-s-dracula .CodeMirror-linenumber { color: #6D8A88; }
.cm-s-dracula .CodeMirror-selected { background: rgba(255, 255, 255, 0.10); }
.cm-s-dracula .CodeMirror-line::selection, .cm-s-dracula .CodeMirror-line > span::selection, .cm-s-dracula .CodeMirror-line > span > span::selection { background: rgba(255, 255, 255, 0.10); }
.cm-s-dracula .CodeMirror-line::-moz-selection, .cm-s-dracula .CodeMirror-line > span::-moz-selection, .cm-s-dracula .CodeMirror-line > span > span::-moz-selection { background: rgba(255, 255, 255, 0.10); }
.cm-s-dracula span.cm-comment { color: #6272a4; }
.cm-s-dracula span.cm-string, .cm-s-dracula span.cm-string-2 { color: #f1fa8c; }
.cm-s-dracula span.cm-number { color: #bd93f9; }
.cm-s-dracula span.cm-variable { color: #50fa7b; }
.cm-s-dracula span.cm-variable-2 { color: white; }
.cm-s-dracula span.cm-def { color: #50fa7b; }
.cm-s-dracula span.cm-operator { color: #ff79c6; }
.cm-s-dracula span.cm-keyword { color: #ff79c6; }
.cm-s-dracula span.cm-atom { color: #bd93f9; }
.cm-s-dracula span.cm-meta { color: #f8f8f2; }
.cm-s-dracula span.cm-tag { color: #ff79c6; }
.cm-s-dracula span.cm-attribute { color: #50fa7b; }
.cm-s-dracula span.cm-qualifier { color: #50fa7b; }
.cm-s-dracula span.cm-property { color: #66d9ef; }
.cm-s-dracula span.cm-builtin { color: #50fa7b; }
.cm-s-dracula span.cm-variable-3, .cm-s-dracula span.cm-type { color: #ffb86c; }

.cm-s-dracula .CodeMirror-activeline-background { background: rgba(255,255,255,0.1); }
.cm-s-dracula .CodeMirror-matchingbracket { text-decoration: underline; color: white !important; }
EOF
fi





echo -e "======================== $dir_panel_css/main.css ========================\n"
if [ ! -f $dir_panel_css/main.css ];then
  cat>$dir_panel_css/main.css<<\EOF
body,
html {
    margin: 0;
    padding: 0;

}

h1,
ul {
    margin: .3em 0 .3em 0;
    font-size: 1.5rem;
    padding-right: 1rem;
}

h4 {
    margin-top: 0.5em;
}

nav ul {
    margin: 0;
    padding: 0;
}

nav ul li {
    display: inline-block;
}

nav ul li a:link,
nav ul li a:visited,
nav ul li a:active {
    font-size: 0.875rem;
    padding: 0.5rem 0.8rem;
    color: white;
    text-decoration: none;
    background-color: #282a36;
    border-bottom-left-radius: 0.4rem;
    border-bottom-right-radius: 0.4rem;
    transition: background-color 0.3s;
}

nav ul li a:hover {
    background-color: #6D8A88;
}

nav .active a {
    background-color: #6D8A88 !important;
}

.container {
    position: relative;
    display: flex;
    flex-direction: column;
    height: 100vh;
    margin: 0 .5em;
}

.container p {
    font-size: 0.875rem;
    margin: 0;
    line-height: 1.5em;
}

.diffs {
    flex: 1 1 auto;
    display: flex;
    flex-direction: column;
}

.diffs header {
    margin-top: 1rem;
}

.diffs header * {
    display: inline-block;
    vertical-align: middle;
}

.diffs .compare-wrapper,
.diffs .wrapper {
    flex: 1 1 auto;
    position: relative;
}

.diffs .compare-wrapper #compare {
    display: flex;
    flex-direction: column;
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
}

/* Auto-height fix */

.wrapper .CodeMirror {
    position: absolute;
    height: calc(100% - 0.5em);
    width: 100%
}

.mergely-column .CodeMirror {
    height: 100%;
}

.sources a {
    font-size: 1rem;
}

/* Login page */
.login-form {
    width: 300px;
    margin: 6rem auto 0 auto;
    font-family: Tahoma, Geneva, sans-serif;
}

.login-form h1 {
    text-align: center;
    color: #4d4d4d;
    font-size: 24px;
    padding: 20px 0 20px 0;
}

.login-form input[type="password"],
.login-form input[type="text"] {
    width: 100%;
    padding: 15px;
    border: 1px solid #dddddd;
    margin-bottom: 15px;
    box-sizing: border-box;
}

.login-form input[type="submit"] {
    width: 100%;
    padding: 15px;
    background-color: #6D8A88;
    border: 0;
    box-sizing: border-box;
    cursor: pointer;
    font-weight: bold;
    color: #ffffff;
}

#qrcontainer {
    position: fixed;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
    z-index: 1000;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(255, 255, 255, .8);
    text-align: center;
    transition: all 0.3s;
}
#qrcontainer.hidden{
    opacity: 0;
    visibility: hidden;
}

#qrcontainer .qframe {
    background-color: #ffffff;
    padding: 1rem;
    border-radius: 0.5rem;
    border: #6D8A88 1px solid;
    -webkit-box-shadow: 0px 0px 7px 3px rgba(0, 0, 0, 0.2);
    box-shadow: 0px 0px 7px 3px rgba(0, 0, 0, 0.2);
    position: relative;
}
#qrcontainer .qframe #refresh_qrcode{
    width: 256px;
    height: 256px;
    position: absolute;
    background-color: rgba(0, 0, 0, 0.5);
    left: 1rem;
    top: 1rem;
    color: #ffffff;
    display: flex;
    justify-content: center;
    align-items: center;
}
#qrcontainer .qframe #refresh_qrcode.hidden{
    opacity: 0;
    visibility: hidden;
}
#qrcontainer .qframe #refresh_qrcode h3{
    font-weight: normal;
}
#qrcontainer .qframe #refresh_qrcode .refresh{
    display: block;
    background: #e4393c;
    width: 80px;
    height: 30px;
    margin: 0 auto;
    line-height: 30px;
    opacity: 1;
    z-index: 19;
    color: #fbfbfb;
    text-decoration: none;
    cursor: pointer;
}
#qrcontainer .qframe .info {
    padding: 1rem 0 0 0;
}

#qrcontainer .qframe .qframe-close {
    font-size: 20px;
    color: #f00;
    cursor: pointer;
}

@media screen and (max-width: 480px) {

    nav ul li a:link,
    nav ul li a:visited,
    nav ul li a:active {
        font-size: 0.75rem;
        padding: 0.5rem 0.5rem;
        margin: 0;

    }

    .container p {
        font-size: 0.75rem;
        margin: 0;
        line-height: 1.5em;
    }
}

.log-container {
    display: flex;
    flex-direction: column;
    height: 100vh;
    margin: 0 .5em;
}
@media (min-width: 992px) {
    .elk-app {
        height: 100%;
    }
    .elk-side {
        width: 20rem;
    }
    .elk-container, .elk-main, .elk-side {
        overflow-y: auto;
    }
}
.bg-light {
    background-color: #f8f9fa!important;
}
.left-list {
    overflow: auto;
    z-index: 100;
}
.text-dark {
    color: #343a40!important;
}
.nav-link {
    font-size: 18px;
    color: #007bff;
    text-decoration: none;
    background-color: transparent;
}

/* diff页面 */
.CodeMirror-merge {
    flex: 1;
    width: 100%;
    height: auto;
    display: flex;
    overflow: hidden;
}
.CodeMirror-merge .CodeMirror {
    height: 100%;
}
.CodeMirror-merge-2pane .CodeMirror-merge-pane {
    width: calc(50% - 15px);
}
.CodeMirror-merge-2pane .CodeMirror-merge-gap { 
    width: 30px;
}
.CodeMirror-merge-2pane .CodeMirror-merge-scrolllock {
    display: none;
}
.CodeMirror-merge-pane-rightmost {
    position: static;
}
.CodeMirror-merge-r-chunk { background: #aaa; }
.CodeMirror-merge-r-chunk-start { border-top: 1px solid #aaa; }
.CodeMirror-merge-r-chunk-end { border-bottom: 1px solid #aaa; }
.CodeMirror-merge-r-connect { fill: #ffffe0; stroke: #ee8; stroke-width: 1px; }



/* 手动执行脚本页面 */
.run-cmd-form {
    margin-top: 8px;
}

.cmd-section {
    background: #282a36;
    color: #f8f8f2;
    padding: 0 8px;
}

.cmd-section input {
    width: 200px;
}

/* chrome 滚动条 */
::-webkit-scrollbar-track-piece {
    width: 10px;
    background-color: rgba(140, 130, 130, .3);
}

::-webkit-scrollbar {
    width: 10px;
    height: 10px;
}

::-webkit-scrollbar-thumb {
    border-radius: 8px;
    background: rgba(177, 163, 163, .5);
}

::-webkit-scrollbar-thumb:hover {
    background: rgba(177, 163, 163, .8);
}
EOF
fi





echo -e "======================== $dir_panel_css/merge.css ========================\n"
if [ ! -f $dir_panel_css/merge.css ];then
  cat>$dir_panel_css/merge.css<<\EOF
.CodeMirror-merge {
  position: relative;
  border: 1px solid #ddd;
  white-space: pre;
}

.CodeMirror-merge, .CodeMirror-merge .CodeMirror {
  height: 350px;
}

.CodeMirror-merge-2pane .CodeMirror-merge-pane { width: 47%; }
.CodeMirror-merge-2pane .CodeMirror-merge-gap { width: 6%; }
.CodeMirror-merge-3pane .CodeMirror-merge-pane { width: 31%; }
.CodeMirror-merge-3pane .CodeMirror-merge-gap { width: 3.5%; }

.CodeMirror-merge-pane {
  display: inline-block;
  white-space: normal;
  vertical-align: top;
}
.CodeMirror-merge-pane-rightmost {
  position: absolute;
  right: 0px;
  z-index: 1;
}

.CodeMirror-merge-gap {
  z-index: 2;
  display: inline-block;
  height: 100%;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  overflow: hidden;
  border-left: 1px solid #ddd;
  border-right: 1px solid #ddd;
  position: relative;
  background: #f8f8f8;
}

.CodeMirror-merge-scrolllock-wrap {
  position: absolute;
  bottom: 0; left: 50%;
}
.CodeMirror-merge-scrolllock {
  position: relative;
  left: -50%;
  cursor: pointer;
  color: #555;
  line-height: 1;
}
.CodeMirror-merge-scrolllock:after {
  content: "\21db\00a0\00a0\21da";
}
.CodeMirror-merge-scrolllock.CodeMirror-merge-scrolllock-enabled:after {
  content: "\21db\21da";
}

.CodeMirror-merge-copybuttons-left, .CodeMirror-merge-copybuttons-right {
  position: absolute;
  left: 0; top: 0;
  right: 0; bottom: 0;
  line-height: 1;
}

.CodeMirror-merge-copy {
  position: absolute;
  cursor: pointer;
  color: #44c;
  z-index: 3;
}

.CodeMirror-merge-copy-reverse {
  position: absolute;
  cursor: pointer;
  color: #44c;
}

.CodeMirror-merge-copybuttons-left .CodeMirror-merge-copy { left: 2px; }
.CodeMirror-merge-copybuttons-right .CodeMirror-merge-copy { right: 2px; }

.CodeMirror-merge-r-inserted, .CodeMirror-merge-l-inserted {
  background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAACCAYAAACddGYaAAAAGUlEQVQI12MwuCXy3+CWyH8GBgYGJgYkAABZbAQ9ELXurwAAAABJRU5ErkJggg==);
  background-position: bottom left;
  background-repeat: repeat-x;
}

.CodeMirror-merge-r-deleted, .CodeMirror-merge-l-deleted {
  background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAACCAYAAACddGYaAAAAGUlEQVQI12M4Kyb2/6yY2H8GBgYGJgYkAABURgPz6Ks7wQAAAABJRU5ErkJggg==);
  background-position: bottom left;
  background-repeat: repeat-x;
}

.CodeMirror-merge-r-chunk { background: #ffffe0; }
.CodeMirror-merge-r-chunk-start { border-top: 1px solid #ee8; }
.CodeMirror-merge-r-chunk-end { border-bottom: 1px solid #ee8; }
.CodeMirror-merge-r-connect { fill: #ffffe0; stroke: #ee8; stroke-width: 1px; }

.CodeMirror-merge-l-chunk { background: #eef; }
.CodeMirror-merge-l-chunk-start { border-top: 1px solid #88e; }
.CodeMirror-merge-l-chunk-end { border-bottom: 1px solid #88e; }
.CodeMirror-merge-l-connect { fill: #eef; stroke: #88e; stroke-width: 1px; }

.CodeMirror-merge-l-chunk.CodeMirror-merge-r-chunk { background: #dfd; }
.CodeMirror-merge-l-chunk-start.CodeMirror-merge-r-chunk-start { border-top: 1px solid #4e4; }
.CodeMirror-merge-l-chunk-end.CodeMirror-merge-r-chunk-end { border-bottom: 1px solid #4e4; }

.CodeMirror-merge-collapsed-widget:before {
  content: "(...)";
}
.CodeMirror-merge-collapsed-widget {
  cursor: pointer;
  color: #88b;
  background: #eef;
  border: 1px solid #ddf;
  font-size: 90%;
  padding: 0 3px;
  border-radius: 4px;
}
.CodeMirror-merge-collapsed-line .CodeMirror-gutter-elt { display: none; }
EOF
fi





echo -e "======================== $dir_panel_css/twilight.css ========================\n"
if [ ! -f $dir_panel_css/twilight.css ];then
  cat>$dir_panel_css/twilight.css<<\EOF
.cm-s-twilight.CodeMirror { background: #141414; color: #f7f7f7; } /**/
.cm-s-twilight div.CodeMirror-selected { background: #323232; } /**/
.cm-s-twilight .CodeMirror-line::selection, .cm-s-twilight .CodeMirror-line > span::selection, .cm-s-twilight .CodeMirror-line > span > span::selection { background: rgba(50, 50, 50, 0.99); }
.cm-s-twilight .CodeMirror-line::-moz-selection, .cm-s-twilight .CodeMirror-line > span::-moz-selection, .cm-s-twilight .CodeMirror-line > span > span::-moz-selection { background: rgba(50, 50, 50, 0.99); }

.cm-s-twilight .CodeMirror-gutters { background: #222; border-right: 1px solid #aaa; }
.cm-s-twilight .CodeMirror-guttermarker { color: white; }
.cm-s-twilight .CodeMirror-guttermarker-subtle { color: #aaa; }
.cm-s-twilight .CodeMirror-linenumber { color: #aaa; }
.cm-s-twilight .CodeMirror-cursor { border-left: 1px solid white; }

.cm-s-twilight .cm-keyword { color: #f9ee98; } /**/
.cm-s-twilight .cm-atom { color: #FC0; }
.cm-s-twilight .cm-number { color:  #ca7841; } /**/
.cm-s-twilight .cm-def { color: #8DA6CE; }
.cm-s-twilight span.cm-variable-2, .cm-s-twilight span.cm-tag { color: #607392; } /**/
.cm-s-twilight span.cm-variable-3, .cm-s-twilight span.cm-def, .cm-s-twilight span.cm-type { color: #607392; } /**/
.cm-s-twilight .cm-operator { color: #cda869; } /**/
.cm-s-twilight .cm-comment { color:#777; font-style:italic; font-weight:normal; } /**/
.cm-s-twilight .cm-string { color:#8f9d6a; font-style:italic; } /**/
.cm-s-twilight .cm-string-2 { color:#bd6b18; } /*?*/
.cm-s-twilight .cm-meta { background-color:#141414; color:#f7f7f7; } /*?*/
.cm-s-twilight .cm-builtin { color: #cda869; } /*?*/
.cm-s-twilight .cm-tag { color: #997643; } /**/
.cm-s-twilight .cm-attribute { color: #d6bb6d; } /*?*/
.cm-s-twilight .cm-header { color: #FF6400; }
.cm-s-twilight .cm-hr { color: #AEAEAE; }
.cm-s-twilight .cm-link { color:#ad9361; font-style:italic; text-decoration:none; } /**/
.cm-s-twilight .cm-error { border-bottom: 1px solid red; }

.cm-s-twilight .CodeMirror-activeline-background { background: #27282E; }
.cm-s-twilight .CodeMirror-matchingbracket { outline:1px solid grey; color:white !important; }
EOF
fi





echo -e "======================== $dir_panel_js/codemirror.min.js ========================\n"
if [ ! -f $dir_panel_js/codemirror.min.js ];then
  cat>$dir_panel_js/codemirror.min.js<<\EOF
/**
 * Minified by jsDelivr using Terser v5.3.5.
 * Original file: /npm/codemirror@5.59.4/lib/codemirror.js
 *
 */
!function(e,t){"object"==typeof exports&&"undefined"!=typeof module?module.exports=t():"function"==typeof define&&define.amd?define(t):(e=e||self).CodeMirror=t()}(this,(function(){"use strict";var e=navigator.userAgent,t=navigator.platform,r=/gecko\/\d/i.test(e),n=/MSIE \d/.test(e),i=/Trident\/(?:[7-9]|\d{2,})\..*rv:(\d+)/.exec(e),o=/Edge\/(\d+)/.exec(e),l=n||i||o,s=l&&(n?document.documentMode||6:+(o||i)[1]),a=!o&&/WebKit\//.test(e),u=a&&/Qt\/\d+\.\d+/.test(e),c=!o&&/Chrome\//.test(e),h=/Opera\//.test(e),f=/Apple Computer/.test(navigator.vendor),d=/Mac OS X 1\d\D([8-9]|\d\d)\D/.test(e),p=/PhantomJS/.test(e),g=f&&(/Mobile\/\w+/.test(e)||navigator.maxTouchPoints>2),v=/Android/.test(e),m=g||v||/webOS|BlackBerry|Opera Mini|Opera Mobi|IEMobile/i.test(e),y=g||/Mac/.test(t),b=/\bCrOS\b/.test(e),w=/win/i.test(t),x=h&&e.match(/Version\/(\d*\.\d*)/);x&&(x=Number(x[1])),x&&x>=15&&(h=!1,a=!0);var C=y&&(u||h&&(null==x||x<12.11)),S=r||l&&s>=9;function L(e){return new RegExp("(^|\\s)"+e+"(?:$|\\s)\\s*")}var k,T=function(e,t){var r=e.className,n=L(t).exec(r);if(n){var i=r.slice(n.index+n[0].length);e.className=r.slice(0,n.index)+(i?n[1]+i:"")}};function M(e){for(var t=e.childNodes.length;t>0;--t)e.removeChild(e.firstChild);return e}function N(e,t){return M(e).appendChild(t)}function O(e,t,r,n){var i=document.createElement(e);if(r&&(i.className=r),n&&(i.style.cssText=n),"string"==typeof t)i.appendChild(document.createTextNode(t));else if(t)for(var o=0;o<t.length;++o)i.appendChild(t[o]);return i}function A(e,t,r,n){var i=O(e,t,r,n);return i.setAttribute("role","presentation"),i}function D(e,t){if(3==t.nodeType&&(t=t.parentNode),e.contains)return e.contains(t);do{if(11==t.nodeType&&(t=t.host),t==e)return!0}while(t=t.parentNode)}function W(){var e;try{e=document.activeElement}catch(t){e=document.body||null}for(;e&&e.shadowRoot&&e.shadowRoot.activeElement;)e=e.shadowRoot.activeElement;return e}function H(e,t){var r=e.className;L(t).test(r)||(e.className+=(r?" ":"")+t)}function F(e,t){for(var r=e.split(" "),n=0;n<r.length;n++)r[n]&&!L(r[n]).test(t)&&(t+=" "+r[n]);return t}k=document.createRange?function(e,t,r,n){var i=document.createRange();return i.setEnd(n||e,r),i.setStart(e,t),i}:function(e,t,r){var n=document.body.createTextRange();try{n.moveToElementText(e.parentNode)}catch(e){return n}return n.collapse(!0),n.moveEnd("character",r),n.moveStart("character",t),n};var P=function(e){e.select()};function E(e){var t=Array.prototype.slice.call(arguments,1);return function(){return e.apply(null,t)}}function I(e,t,r){for(var n in t||(t={}),e)!e.hasOwnProperty(n)||!1===r&&t.hasOwnProperty(n)||(t[n]=e[n]);return t}function R(e,t,r,n,i){null==t&&-1==(t=e.search(/[^\s\u00a0]/))&&(t=e.length);for(var o=n||0,l=i||0;;){var s=e.indexOf("\t",o);if(s<0||s>=t)return l+(t-o);l+=s-o,l+=r-l%r,o=s+1}}g?P=function(e){e.selectionStart=0,e.selectionEnd=e.value.length}:l&&(P=function(e){try{e.select()}catch(e){}});var z=function(){this.id=null,this.f=null,this.time=0,this.handler=E(this.onTimeout,this)};function B(e,t){for(var r=0;r<e.length;++r)if(e[r]==t)return r;return-1}z.prototype.onTimeout=function(e){e.id=0,e.time<=+new Date?e.f():setTimeout(e.handler,e.time-+new Date)},z.prototype.set=function(e,t){this.f=t;var r=+new Date+e;(!this.id||r<this.time)&&(clearTimeout(this.id),this.id=setTimeout(this.handler,e),this.time=r)};var G={toString:function(){return"CodeMirror.Pass"}},U={scroll:!1},V={origin:"*mouse"},K={origin:"+move"};function j(e,t,r){for(var n=0,i=0;;){var o=e.indexOf("\t",n);-1==o&&(o=e.length);var l=o-n;if(o==e.length||i+l>=t)return n+Math.min(l,t-i);if(i+=o-n,n=o+1,(i+=r-i%r)>=t)return n}}var X=[""];function Y(e){for(;X.length<=e;)X.push(_(X)+" ");return X[e]}function _(e){return e[e.length-1]}function $(e,t){for(var r=[],n=0;n<e.length;n++)r[n]=t(e[n],n);return r}function q(){}function Z(e,t){var r;return Object.create?r=Object.create(e):(q.prototype=e,r=new q),t&&I(t,r),r}var Q=/[\u00df\u0587\u0590-\u05f4\u0600-\u06ff\u3040-\u309f\u30a0-\u30ff\u3400-\u4db5\u4e00-\u9fcc\uac00-\ud7af]/;function J(e){return/\w/.test(e)||e>""&&(e.toUpperCase()!=e.toLowerCase()||Q.test(e))}function ee(e,t){return t?!!(t.source.indexOf("\\w")>-1&&J(e))||t.test(e):J(e)}function te(e){for(var t in e)if(e.hasOwnProperty(t)&&e[t])return!1;return!0}var re=/[\u0300-\u036f\u0483-\u0489\u0591-\u05bd\u05bf\u05c1\u05c2\u05c4\u05c5\u05c7\u0610-\u061a\u064b-\u065e\u0670\u06d6-\u06dc\u06de-\u06e4\u06e7\u06e8\u06ea-\u06ed\u0711\u0730-\u074a\u07a6-\u07b0\u07eb-\u07f3\u0816-\u0819\u081b-\u0823\u0825-\u0827\u0829-\u082d\u0900-\u0902\u093c\u0941-\u0948\u094d\u0951-\u0955\u0962\u0963\u0981\u09bc\u09be\u09c1-\u09c4\u09cd\u09d7\u09e2\u09e3\u0a01\u0a02\u0a3c\u0a41\u0a42\u0a47\u0a48\u0a4b-\u0a4d\u0a51\u0a70\u0a71\u0a75\u0a81\u0a82\u0abc\u0ac1-\u0ac5\u0ac7\u0ac8\u0acd\u0ae2\u0ae3\u0b01\u0b3c\u0b3e\u0b3f\u0b41-\u0b44\u0b4d\u0b56\u0b57\u0b62\u0b63\u0b82\u0bbe\u0bc0\u0bcd\u0bd7\u0c3e-\u0c40\u0c46-\u0c48\u0c4a-\u0c4d\u0c55\u0c56\u0c62\u0c63\u0cbc\u0cbf\u0cc2\u0cc6\u0ccc\u0ccd\u0cd5\u0cd6\u0ce2\u0ce3\u0d3e\u0d41-\u0d44\u0d4d\u0d57\u0d62\u0d63\u0dca\u0dcf\u0dd2-\u0dd4\u0dd6\u0ddf\u0e31\u0e34-\u0e3a\u0e47-\u0e4e\u0eb1\u0eb4-\u0eb9\u0ebb\u0ebc\u0ec8-\u0ecd\u0f18\u0f19\u0f35\u0f37\u0f39\u0f71-\u0f7e\u0f80-\u0f84\u0f86\u0f87\u0f90-\u0f97\u0f99-\u0fbc\u0fc6\u102d-\u1030\u1032-\u1037\u1039\u103a\u103d\u103e\u1058\u1059\u105e-\u1060\u1071-\u1074\u1082\u1085\u1086\u108d\u109d\u135f\u1712-\u1714\u1732-\u1734\u1752\u1753\u1772\u1773\u17b7-\u17bd\u17c6\u17c9-\u17d3\u17dd\u180b-\u180d\u18a9\u1920-\u1922\u1927\u1928\u1932\u1939-\u193b\u1a17\u1a18\u1a56\u1a58-\u1a5e\u1a60\u1a62\u1a65-\u1a6c\u1a73-\u1a7c\u1a7f\u1b00-\u1b03\u1b34\u1b36-\u1b3a\u1b3c\u1b42\u1b6b-\u1b73\u1b80\u1b81\u1ba2-\u1ba5\u1ba8\u1ba9\u1c2c-\u1c33\u1c36\u1c37\u1cd0-\u1cd2\u1cd4-\u1ce0\u1ce2-\u1ce8\u1ced\u1dc0-\u1de6\u1dfd-\u1dff\u200c\u200d\u20d0-\u20f0\u2cef-\u2cf1\u2de0-\u2dff\u302a-\u302f\u3099\u309a\ua66f-\ua672\ua67c\ua67d\ua6f0\ua6f1\ua802\ua806\ua80b\ua825\ua826\ua8c4\ua8e0-\ua8f1\ua926-\ua92d\ua947-\ua951\ua980-\ua982\ua9b3\ua9b6-\ua9b9\ua9bc\uaa29-\uaa2e\uaa31\uaa32\uaa35\uaa36\uaa43\uaa4c\uaab0\uaab2-\uaab4\uaab7\uaab8\uaabe\uaabf\uaac1\uabe5\uabe8\uabed\udc00-\udfff\ufb1e\ufe00-\ufe0f\ufe20-\ufe26\uff9e\uff9f]/;function ne(e){return e.charCodeAt(0)>=768&&re.test(e)}function ie(e,t,r){for(;(r<0?t>0:t<e.length)&&ne(e.charAt(t));)t+=r;return t}function oe(e,t,r){for(var n=t>r?-1:1;;){if(t==r)return t;var i=(t+r)/2,o=n<0?Math.ceil(i):Math.floor(i);if(o==t)return e(o)?t:r;e(o)?r=o:t=o+n}}var le=null;function se(e,t,r){var n;le=null;for(var i=0;i<e.length;++i){var o=e[i];if(o.from<t&&o.to>t)return i;o.to==t&&(o.from!=o.to&&"before"==r?n=i:le=i),o.from==t&&(o.from!=o.to&&"before"!=r?n=i:le=i)}return null!=n?n:le}var ae=function(){var e=/[\u0590-\u05f4\u0600-\u06ff\u0700-\u08ac]/,t=/[stwN]/,r=/[LRr]/,n=/[Lb1n]/,i=/[1n]/;function o(e,t,r){this.level=e,this.from=t,this.to=r}return function(l,s){var a="ltr"==s?"L":"R";if(0==l.length||"ltr"==s&&!e.test(l))return!1;for(var u,c=l.length,h=[],f=0;f<c;++f)h.push((u=l.charCodeAt(f))<=247?"bbbbbbbbbtstwsbbbbbbbbbbbbbbssstwNN%%%NNNNNN,N,N1111111111NNNNNNNLLLLLLLLLLLLLLLLLLLLLLLLLLNNNNNNLLLLLLLLLLLLLLLLLLLLLLLLLLNNNNbbbbbbsbbbbbbbbbbbbbbbbbbbbbbbbbb,N%%%%NNNNLNNNNN%%11NLNNN1LNNNNNLLLLLLLLLLLLLLLLLLLLLLLNLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLN".charAt(u):1424<=u&&u<=1524?"R":1536<=u&&u<=1785?"nnnnnnNNr%%r,rNNmmmmmmmmmmmrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrmmmmmmmmmmmmmmmmmmmmmnnnnnnnnnn%nnrrrmrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrmmmmmmmnNmmmmmmrrmmNmmmmrr1111111111".charAt(u-1536):1774<=u&&u<=2220?"r":8192<=u&&u<=8203?"w":8204==u?"b":"L");for(var d=0,p=a;d<c;++d){var g=h[d];"m"==g?h[d]=p:p=g}for(var v=0,m=a;v<c;++v){var y=h[v];"1"==y&&"r"==m?h[v]="n":r.test(y)&&(m=y,"r"==y&&(h[v]="R"))}for(var b=1,w=h[0];b<c-1;++b){var x=h[b];"+"==x&&"1"==w&&"1"==h[b+1]?h[b]="1":","!=x||w!=h[b+1]||"1"!=w&&"n"!=w||(h[b]=w),w=x}for(var C=0;C<c;++C){var S=h[C];if(","==S)h[C]="N";else if("%"==S){var L=void 0;for(L=C+1;L<c&&"%"==h[L];++L);for(var k=C&&"!"==h[C-1]||L<c&&"1"==h[L]?"1":"N",T=C;T<L;++T)h[T]=k;C=L-1}}for(var M=0,N=a;M<c;++M){var O=h[M];"L"==N&&"1"==O?h[M]="L":r.test(O)&&(N=O)}for(var A=0;A<c;++A)if(t.test(h[A])){var D=void 0;for(D=A+1;D<c&&t.test(h[D]);++D);for(var W="L"==(A?h[A-1]:a),H=W==("L"==(D<c?h[D]:a))?W?"L":"R":a,F=A;F<D;++F)h[F]=H;A=D-1}for(var P,E=[],I=0;I<c;)if(n.test(h[I])){var R=I;for(++I;I<c&&n.test(h[I]);++I);E.push(new o(0,R,I))}else{var z=I,B=E.length,G="rtl"==s?1:0;for(++I;I<c&&"L"!=h[I];++I);for(var U=z;U<I;)if(i.test(h[U])){z<U&&(E.splice(B,0,new o(1,z,U)),B+=G);var V=U;for(++U;U<I&&i.test(h[U]);++U);E.splice(B,0,new o(2,V,U)),B+=G,z=U}else++U;z<I&&E.splice(B,0,new o(1,z,I))}return"ltr"==s&&(1==E[0].level&&(P=l.match(/^\s+/))&&(E[0].from=P[0].length,E.unshift(new o(0,0,P[0].length))),1==_(E).level&&(P=l.match(/\s+$/))&&(_(E).to-=P[0].length,E.push(new o(0,c-P[0].length,c)))),"rtl"==s?E.reverse():E}}();function ue(e,t){var r=e.order;return null==r&&(r=e.order=ae(e.text,t)),r}var ce=[],he=function(e,t,r){if(e.addEventListener)e.addEventListener(t,r,!1);else if(e.attachEvent)e.attachEvent("on"+t,r);else{var n=e._handlers||(e._handlers={});n[t]=(n[t]||ce).concat(r)}};function fe(e,t){return e._handlers&&e._handlers[t]||ce}function de(e,t,r){if(e.removeEventListener)e.removeEventListener(t,r,!1);else if(e.detachEvent)e.detachEvent("on"+t,r);else{var n=e._handlers,i=n&&n[t];if(i){var o=B(i,r);o>-1&&(n[t]=i.slice(0,o).concat(i.slice(o+1)))}}}function pe(e,t){var r=fe(e,t);if(r.length)for(var n=Array.prototype.slice.call(arguments,2),i=0;i<r.length;++i)r[i].apply(null,n)}function ge(e,t,r){return"string"==typeof t&&(t={type:t,preventDefault:function(){this.defaultPrevented=!0}}),pe(e,r||t.type,e,t),xe(t)||t.codemirrorIgnore}function ve(e){var t=e._handlers&&e._handlers.cursorActivity;if(t)for(var r=e.curOp.cursorActivityHandlers||(e.curOp.cursorActivityHandlers=[]),n=0;n<t.length;++n)-1==B(r,t[n])&&r.push(t[n])}function me(e,t){return fe(e,t).length>0}function ye(e){e.prototype.on=function(e,t){he(this,e,t)},e.prototype.off=function(e,t){de(this,e,t)}}function be(e){e.preventDefault?e.preventDefault():e.returnValue=!1}function we(e){e.stopPropagation?e.stopPropagation():e.cancelBubble=!0}function xe(e){return null!=e.defaultPrevented?e.defaultPrevented:0==e.returnValue}function Ce(e){be(e),we(e)}function Se(e){return e.target||e.srcElement}function Le(e){var t=e.which;return null==t&&(1&e.button?t=1:2&e.button?t=3:4&e.button&&(t=2)),y&&e.ctrlKey&&1==t&&(t=3),t}var ke,Te,Me=function(){if(l&&s<9)return!1;var e=O("div");return"draggable"in e||"dragDrop"in e}();function Ne(e){if(null==ke){var t=O("span","​");N(e,O("span",[t,document.createTextNode("x")])),0!=e.firstChild.offsetHeight&&(ke=t.offsetWidth<=1&&t.offsetHeight>2&&!(l&&s<8))}var r=ke?O("span","​"):O("span"," ",null,"display: inline-block; width: 1px; margin-right: -1px");return r.setAttribute("cm-text",""),r}function Oe(e){if(null!=Te)return Te;var t=N(e,document.createTextNode("AخA")),r=k(t,0,1).getBoundingClientRect(),n=k(t,1,2).getBoundingClientRect();return M(e),!(!r||r.left==r.right)&&(Te=n.right-r.right<3)}var Ae,De=3!="\n\nb".split(/\n/).length?function(e){for(var t=0,r=[],n=e.length;t<=n;){var i=e.indexOf("\n",t);-1==i&&(i=e.length);var o=e.slice(t,"\r"==e.charAt(i-1)?i-1:i),l=o.indexOf("\r");-1!=l?(r.push(o.slice(0,l)),t+=l+1):(r.push(o),t=i+1)}return r}:function(e){return e.split(/\r\n?|\n/)},We=window.getSelection?function(e){try{return e.selectionStart!=e.selectionEnd}catch(e){return!1}}:function(e){var t;try{t=e.ownerDocument.selection.createRange()}catch(e){}return!(!t||t.parentElement()!=e)&&0!=t.compareEndPoints("StartToEnd",t)},He="oncopy"in(Ae=O("div"))||(Ae.setAttribute("oncopy","return;"),"function"==typeof Ae.oncopy),Fe=null;var Pe={},Ee={};function Ie(e,t){arguments.length>2&&(t.dependencies=Array.prototype.slice.call(arguments,2)),Pe[e]=t}function Re(e){if("string"==typeof e&&Ee.hasOwnProperty(e))e=Ee[e];else if(e&&"string"==typeof e.name&&Ee.hasOwnProperty(e.name)){var t=Ee[e.name];"string"==typeof t&&(t={name:t}),(e=Z(t,e)).name=t.name}else{if("string"==typeof e&&/^[\w\-]+\/[\w\-]+\+xml$/.test(e))return Re("application/xml");if("string"==typeof e&&/^[\w\-]+\/[\w\-]+\+json$/.test(e))return Re("application/json")}return"string"==typeof e?{name:e}:e||{name:"null"}}function ze(e,t){t=Re(t);var r=Pe[t.name];if(!r)return ze(e,"text/plain");var n=r(e,t);if(Be.hasOwnProperty(t.name)){var i=Be[t.name];for(var o in i)i.hasOwnProperty(o)&&(n.hasOwnProperty(o)&&(n["_"+o]=n[o]),n[o]=i[o])}if(n.name=t.name,t.helperType&&(n.helperType=t.helperType),t.modeProps)for(var l in t.modeProps)n[l]=t.modeProps[l];return n}var Be={};function Ge(e,t){I(t,Be.hasOwnProperty(e)?Be[e]:Be[e]={})}function Ue(e,t){if(!0===t)return t;if(e.copyState)return e.copyState(t);var r={};for(var n in t){var i=t[n];i instanceof Array&&(i=i.concat([])),r[n]=i}return r}function Ve(e,t){for(var r;e.innerMode&&(r=e.innerMode(t))&&r.mode!=e;)t=r.state,e=r.mode;return r||{mode:e,state:t}}function Ke(e,t,r){return!e.startState||e.startState(t,r)}var je=function(e,t,r){this.pos=this.start=0,this.string=e,this.tabSize=t||8,this.lastColumnPos=this.lastColumnValue=0,this.lineStart=0,this.lineOracle=r};function Xe(e,t){if((t-=e.first)<0||t>=e.size)throw new Error("There is no line "+(t+e.first)+" in the document.");for(var r=e;!r.lines;)for(var n=0;;++n){var i=r.children[n],o=i.chunkSize();if(t<o){r=i;break}t-=o}return r.lines[t]}function Ye(e,t,r){var n=[],i=t.line;return e.iter(t.line,r.line+1,(function(e){var o=e.text;i==r.line&&(o=o.slice(0,r.ch)),i==t.line&&(o=o.slice(t.ch)),n.push(o),++i})),n}function _e(e,t,r){var n=[];return e.iter(t,r,(function(e){n.push(e.text)})),n}function $e(e,t){var r=t-e.height;if(r)for(var n=e;n;n=n.parent)n.height+=r}function qe(e){if(null==e.parent)return null;for(var t=e.parent,r=B(t.lines,e),n=t.parent;n;t=n,n=n.parent)for(var i=0;n.children[i]!=t;++i)r+=n.children[i].chunkSize();return r+t.first}function Ze(e,t){var r=e.first;e:do{for(var n=0;n<e.children.length;++n){var i=e.children[n],o=i.height;if(t<o){e=i;continue e}t-=o,r+=i.chunkSize()}return r}while(!e.lines);for(var l=0;l<e.lines.length;++l){var s=e.lines[l].height;if(t<s)break;t-=s}return r+l}function Qe(e,t){return t>=e.first&&t<e.first+e.size}function Je(e,t){return String(e.lineNumberFormatter(t+e.firstLineNumber))}function et(e,t,r){if(void 0===r&&(r=null),!(this instanceof et))return new et(e,t,r);this.line=e,this.ch=t,this.sticky=r}function tt(e,t){return e.line-t.line||e.ch-t.ch}function rt(e,t){return e.sticky==t.sticky&&0==tt(e,t)}function nt(e){return et(e.line,e.ch)}function it(e,t){return tt(e,t)<0?t:e}function ot(e,t){return tt(e,t)<0?e:t}function lt(e,t){return Math.max(e.first,Math.min(t,e.first+e.size-1))}function st(e,t){if(t.line<e.first)return et(e.first,0);var r=e.first+e.size-1;return t.line>r?et(r,Xe(e,r).text.length):function(e,t){var r=e.ch;return null==r||r>t?et(e.line,t):r<0?et(e.line,0):e}(t,Xe(e,t.line).text.length)}function at(e,t){for(var r=[],n=0;n<t.length;n++)r[n]=st(e,t[n]);return r}je.prototype.eol=function(){return this.pos>=this.string.length},je.prototype.sol=function(){return this.pos==this.lineStart},je.prototype.peek=function(){return this.string.charAt(this.pos)||void 0},je.prototype.next=function(){if(this.pos<this.string.length)return this.string.charAt(this.pos++)},je.prototype.eat=function(e){var t=this.string.charAt(this.pos);if("string"==typeof e?t==e:t&&(e.test?e.test(t):e(t)))return++this.pos,t},je.prototype.eatWhile=function(e){for(var t=this.pos;this.eat(e););return this.pos>t},je.prototype.eatSpace=function(){for(var e=this.pos;/[\s\u00a0]/.test(this.string.charAt(this.pos));)++this.pos;return this.pos>e},je.prototype.skipToEnd=function(){this.pos=this.string.length},je.prototype.skipTo=function(e){var t=this.string.indexOf(e,this.pos);if(t>-1)return this.pos=t,!0},je.prototype.backUp=function(e){this.pos-=e},je.prototype.column=function(){return this.lastColumnPos<this.start&&(this.lastColumnValue=R(this.string,this.start,this.tabSize,this.lastColumnPos,this.lastColumnValue),this.lastColumnPos=this.start),this.lastColumnValue-(this.lineStart?R(this.string,this.lineStart,this.tabSize):0)},je.prototype.indentation=function(){return R(this.string,null,this.tabSize)-(this.lineStart?R(this.string,this.lineStart,this.tabSize):0)},je.prototype.match=function(e,t,r){if("string"!=typeof e){var n=this.string.slice(this.pos).match(e);return n&&n.index>0?null:(n&&!1!==t&&(this.pos+=n[0].length),n)}var i=function(e){return r?e.toLowerCase():e};if(i(this.string.substr(this.pos,e.length))==i(e))return!1!==t&&(this.pos+=e.length),!0},je.prototype.current=function(){return this.string.slice(this.start,this.pos)},je.prototype.hideFirstChars=function(e,t){this.lineStart+=e;try{return t()}finally{this.lineStart-=e}},je.prototype.lookAhead=function(e){var t=this.lineOracle;return t&&t.lookAhead(e)},je.prototype.baseToken=function(){var e=this.lineOracle;return e&&e.baseToken(this.pos)};var ut=function(e,t){this.state=e,this.lookAhead=t},ct=function(e,t,r,n){this.state=t,this.doc=e,this.line=r,this.maxLookAhead=n||0,this.baseTokens=null,this.baseTokenPos=1};function ht(e,t,r,n){var i=[e.state.modeGen],o={};wt(e,t.text,e.doc.mode,r,(function(e,t){return i.push(e,t)}),o,n);for(var l=r.state,s=function(n){r.baseTokens=i;var s=e.state.overlays[n],a=1,u=0;r.state=!0,wt(e,t.text,s.mode,r,(function(e,t){for(var r=a;u<e;){var n=i[a];n>e&&i.splice(a,1,e,i[a+1],n),a+=2,u=Math.min(e,n)}if(t)if(s.opaque)i.splice(r,a-r,e,"overlay "+t),a=r+2;else for(;r<a;r+=2){var o=i[r+1];i[r+1]=(o?o+" ":"")+"overlay "+t}}),o),r.state=l,r.baseTokens=null,r.baseTokenPos=1},a=0;a<e.state.overlays.length;++a)s(a);return{styles:i,classes:o.bgClass||o.textClass?o:null}}function ft(e,t,r){if(!t.styles||t.styles[0]!=e.state.modeGen){var n=dt(e,qe(t)),i=t.text.length>e.options.maxHighlightLength&&Ue(e.doc.mode,n.state),o=ht(e,t,n);i&&(n.state=i),t.stateAfter=n.save(!i),t.styles=o.styles,o.classes?t.styleClasses=o.classes:t.styleClasses&&(t.styleClasses=null),r===e.doc.highlightFrontier&&(e.doc.modeFrontier=Math.max(e.doc.modeFrontier,++e.doc.highlightFrontier))}return t.styles}function dt(e,t,r){var n=e.doc,i=e.display;if(!n.mode.startState)return new ct(n,!0,t);var o=function(e,t,r){for(var n,i,o=e.doc,l=r?-1:t-(e.doc.mode.innerMode?1e3:100),s=t;s>l;--s){if(s<=o.first)return o.first;var a=Xe(o,s-1),u=a.stateAfter;if(u&&(!r||s+(u instanceof ut?u.lookAhead:0)<=o.modeFrontier))return s;var c=R(a.text,null,e.options.tabSize);(null==i||n>c)&&(i=s-1,n=c)}return i}(e,t,r),l=o>n.first&&Xe(n,o-1).stateAfter,s=l?ct.fromSaved(n,l,o):new ct(n,Ke(n.mode),o);return n.iter(o,t,(function(r){pt(e,r.text,s);var n=s.line;r.stateAfter=n==t-1||n%5==0||n>=i.viewFrom&&n<i.viewTo?s.save():null,s.nextLine()})),r&&(n.modeFrontier=s.line),s}function pt(e,t,r,n){var i=e.doc.mode,o=new je(t,e.options.tabSize,r);for(o.start=o.pos=n||0,""==t&&gt(i,r.state);!o.eol();)vt(i,o,r.state),o.start=o.pos}function gt(e,t){if(e.blankLine)return e.blankLine(t);if(e.innerMode){var r=Ve(e,t);return r.mode.blankLine?r.mode.blankLine(r.state):void 0}}function vt(e,t,r,n){for(var i=0;i<10;i++){n&&(n[0]=Ve(e,r).mode);var o=e.token(t,r);if(t.pos>t.start)return o}throw new Error("Mode "+e.name+" failed to advance stream.")}ct.prototype.lookAhead=function(e){var t=this.doc.getLine(this.line+e);return null!=t&&e>this.maxLookAhead&&(this.maxLookAhead=e),t},ct.prototype.baseToken=function(e){if(!this.baseTokens)return null;for(;this.baseTokens[this.baseTokenPos]<=e;)this.baseTokenPos+=2;var t=this.baseTokens[this.baseTokenPos+1];return{type:t&&t.replace(/( |^)overlay .*/,""),size:this.baseTokens[this.baseTokenPos]-e}},ct.prototype.nextLine=function(){this.line++,this.maxLookAhead>0&&this.maxLookAhead--},ct.fromSaved=function(e,t,r){return t instanceof ut?new ct(e,Ue(e.mode,t.state),r,t.lookAhead):new ct(e,Ue(e.mode,t),r)},ct.prototype.save=function(e){var t=!1!==e?Ue(this.doc.mode,this.state):this.state;return this.maxLookAhead>0?new ut(t,this.maxLookAhead):t};var mt=function(e,t,r){this.start=e.start,this.end=e.pos,this.string=e.current(),this.type=t||null,this.state=r};function yt(e,t,r,n){var i,o,l=e.doc,s=l.mode,a=Xe(l,(t=st(l,t)).line),u=dt(e,t.line,r),c=new je(a.text,e.options.tabSize,u);for(n&&(o=[]);(n||c.pos<t.ch)&&!c.eol();)c.start=c.pos,i=vt(s,c,u.state),n&&o.push(new mt(c,i,Ue(l.mode,u.state)));return n?o:new mt(c,i,u.state)}function bt(e,t){if(e)for(;;){var r=e.match(/(?:^|\s+)line-(background-)?(\S+)/);if(!r)break;e=e.slice(0,r.index)+e.slice(r.index+r[0].length);var n=r[1]?"bgClass":"textClass";null==t[n]?t[n]=r[2]:new RegExp("(?:^|\\s)"+r[2]+"(?:$|\\s)").test(t[n])||(t[n]+=" "+r[2])}return e}function wt(e,t,r,n,i,o,l){var s=r.flattenSpans;null==s&&(s=e.options.flattenSpans);var a,u=0,c=null,h=new je(t,e.options.tabSize,n),f=e.options.addModeClass&&[null];for(""==t&&bt(gt(r,n.state),o);!h.eol();){if(h.pos>e.options.maxHighlightLength?(s=!1,l&&pt(e,t,n,h.pos),h.pos=t.length,a=null):a=bt(vt(r,h,n.state,f),o),f){var d=f[0].name;d&&(a="m-"+(a?d+" "+a:d))}if(!s||c!=a){for(;u<h.start;)i(u=Math.min(h.start,u+5e3),c);c=a}h.start=h.pos}for(;u<h.pos;){var p=Math.min(h.pos,u+5e3);i(p,c),u=p}}var xt=!1,Ct=!1;function St(e,t,r){this.marker=e,this.from=t,this.to=r}function Lt(e,t){if(e)for(var r=0;r<e.length;++r){var n=e[r];if(n.marker==t)return n}}function kt(e,t){for(var r,n=0;n<e.length;++n)e[n]!=t&&(r||(r=[])).push(e[n]);return r}function Tt(e,t){if(t.full)return null;var r=Qe(e,t.from.line)&&Xe(e,t.from.line).markedSpans,n=Qe(e,t.to.line)&&Xe(e,t.to.line).markedSpans;if(!r&&!n)return null;var i=t.from.ch,o=t.to.ch,l=0==tt(t.from,t.to),s=function(e,t,r){var n;if(e)for(var i=0;i<e.length;++i){var o=e[i],l=o.marker;if(null==o.from||(l.inclusiveLeft?o.from<=t:o.from<t)||o.from==t&&"bookmark"==l.type&&(!r||!o.marker.insertLeft)){var s=null==o.to||(l.inclusiveRight?o.to>=t:o.to>t);(n||(n=[])).push(new St(l,o.from,s?null:o.to))}}return n}(r,i,l),a=function(e,t,r){var n;if(e)for(var i=0;i<e.length;++i){var o=e[i],l=o.marker;if(null==o.to||(l.inclusiveRight?o.to>=t:o.to>t)||o.from==t&&"bookmark"==l.type&&(!r||o.marker.insertLeft)){var s=null==o.from||(l.inclusiveLeft?o.from<=t:o.from<t);(n||(n=[])).push(new St(l,s?null:o.from-t,null==o.to?null:o.to-t))}}return n}(n,o,l),u=1==t.text.length,c=_(t.text).length+(u?i:0);if(s)for(var h=0;h<s.length;++h){var f=s[h];if(null==f.to){var d=Lt(a,f.marker);d?u&&(f.to=null==d.to?null:d.to+c):f.to=i}}if(a)for(var p=0;p<a.length;++p){var g=a[p];if(null!=g.to&&(g.to+=c),null==g.from)Lt(s,g.marker)||(g.from=c,u&&(s||(s=[])).push(g));else g.from+=c,u&&(s||(s=[])).push(g)}s&&(s=Mt(s)),a&&a!=s&&(a=Mt(a));var v=[s];if(!u){var m,y=t.text.length-2;if(y>0&&s)for(var b=0;b<s.length;++b)null==s[b].to&&(m||(m=[])).push(new St(s[b].marker,null,null));for(var w=0;w<y;++w)v.push(m);v.push(a)}return v}function Mt(e){for(var t=0;t<e.length;++t){var r=e[t];null!=r.from&&r.from==r.to&&!1!==r.marker.clearWhenEmpty&&e.splice(t--,1)}return e.length?e:null}function Nt(e){var t=e.markedSpans;if(t){for(var r=0;r<t.length;++r)t[r].marker.detachLine(e);e.markedSpans=null}}function Ot(e,t){if(t){for(var r=0;r<t.length;++r)t[r].marker.attachLine(e);e.markedSpans=t}}function At(e){return e.inclusiveLeft?-1:0}function Dt(e){return e.inclusiveRight?1:0}function Wt(e,t){var r=e.lines.length-t.lines.length;if(0!=r)return r;var n=e.find(),i=t.find(),o=tt(n.from,i.from)||At(e)-At(t);if(o)return-o;var l=tt(n.to,i.to)||Dt(e)-Dt(t);return l||t.id-e.id}function Ht(e,t){var r,n=Ct&&e.markedSpans;if(n)for(var i=void 0,o=0;o<n.length;++o)(i=n[o]).marker.collapsed&&null==(t?i.from:i.to)&&(!r||Wt(r,i.marker)<0)&&(r=i.marker);return r}function Ft(e){return Ht(e,!0)}function Pt(e){return Ht(e,!1)}function Et(e,t){var r,n=Ct&&e.markedSpans;if(n)for(var i=0;i<n.length;++i){var o=n[i];o.marker.collapsed&&(null==o.from||o.from<t)&&(null==o.to||o.to>t)&&(!r||Wt(r,o.marker)<0)&&(r=o.marker)}return r}function It(e,t,r,n,i){var o=Xe(e,t),l=Ct&&o.markedSpans;if(l)for(var s=0;s<l.length;++s){var a=l[s];if(a.marker.collapsed){var u=a.marker.find(0),c=tt(u.from,r)||At(a.marker)-At(i),h=tt(u.to,n)||Dt(a.marker)-Dt(i);if(!(c>=0&&h<=0||c<=0&&h>=0)&&(c<=0&&(a.marker.inclusiveRight&&i.inclusiveLeft?tt(u.to,r)>=0:tt(u.to,r)>0)||c>=0&&(a.marker.inclusiveRight&&i.inclusiveLeft?tt(u.from,n)<=0:tt(u.from,n)<0)))return!0}}}function Rt(e){for(var t;t=Ft(e);)e=t.find(-1,!0).line;return e}function zt(e,t){var r=Xe(e,t),n=Rt(r);return r==n?t:qe(n)}function Bt(e,t){if(t>e.lastLine())return t;var r,n=Xe(e,t);if(!Gt(e,n))return t;for(;r=Pt(n);)n=r.find(1,!0).line;return qe(n)+1}function Gt(e,t){var r=Ct&&t.markedSpans;if(r)for(var n=void 0,i=0;i<r.length;++i)if((n=r[i]).marker.collapsed){if(null==n.from)return!0;if(!n.marker.widgetNode&&0==n.from&&n.marker.inclusiveLeft&&Ut(e,t,n))return!0}}function Ut(e,t,r){if(null==r.to){var n=r.marker.find(1,!0);return Ut(e,n.line,Lt(n.line.markedSpans,r.marker))}if(r.marker.inclusiveRight&&r.to==t.text.length)return!0;for(var i=void 0,o=0;o<t.markedSpans.length;++o)if((i=t.markedSpans[o]).marker.collapsed&&!i.marker.widgetNode&&i.from==r.to&&(null==i.to||i.to!=r.from)&&(i.marker.inclusiveLeft||r.marker.inclusiveRight)&&Ut(e,t,i))return!0}function Vt(e){for(var t=0,r=(e=Rt(e)).parent,n=0;n<r.lines.length;++n){var i=r.lines[n];if(i==e)break;t+=i.height}for(var o=r.parent;o;o=(r=o).parent)for(var l=0;l<o.children.length;++l){var s=o.children[l];if(s==r)break;t+=s.height}return t}function Kt(e){if(0==e.height)return 0;for(var t,r=e.text.length,n=e;t=Ft(n);){var i=t.find(0,!0);n=i.from.line,r+=i.from.ch-i.to.ch}for(n=e;t=Pt(n);){var o=t.find(0,!0);r-=n.text.length-o.from.ch,r+=(n=o.to.line).text.length-o.to.ch}return r}function jt(e){var t=e.display,r=e.doc;t.maxLine=Xe(r,r.first),t.maxLineLength=Kt(t.maxLine),t.maxLineChanged=!0,r.iter((function(e){var r=Kt(e);r>t.maxLineLength&&(t.maxLineLength=r,t.maxLine=e)}))}var Xt=function(e,t,r){this.text=e,Ot(this,t),this.height=r?r(this):1};function Yt(e){e.parent=null,Nt(e)}Xt.prototype.lineNo=function(){return qe(this)},ye(Xt);var _t={},$t={};function qt(e,t){if(!e||/^\s*$/.test(e))return null;var r=t.addModeClass?$t:_t;return r[e]||(r[e]=e.replace(/\S+/g,"cm-$&"))}function Zt(e,t){var r=A("span",null,null,a?"padding-right: .1px":null),n={pre:A("pre",[r],"CodeMirror-line"),content:r,col:0,pos:0,cm:e,trailingSpace:!1,splitSpaces:e.getOption("lineWrapping")};t.measure={};for(var i=0;i<=(t.rest?t.rest.length:0);i++){var o=i?t.rest[i-1]:t.line,l=void 0;n.pos=0,n.addToken=Jt,Oe(e.display.measure)&&(l=ue(o,e.doc.direction))&&(n.addToken=er(n.addToken,l)),n.map=[],rr(o,n,ft(e,o,t!=e.display.externalMeasured&&qe(o))),o.styleClasses&&(o.styleClasses.bgClass&&(n.bgClass=F(o.styleClasses.bgClass,n.bgClass||"")),o.styleClasses.textClass&&(n.textClass=F(o.styleClasses.textClass,n.textClass||""))),0==n.map.length&&n.map.push(0,0,n.content.appendChild(Ne(e.display.measure))),0==i?(t.measure.map=n.map,t.measure.cache={}):((t.measure.maps||(t.measure.maps=[])).push(n.map),(t.measure.caches||(t.measure.caches=[])).push({}))}if(a){var s=n.content.lastChild;(/\bcm-tab\b/.test(s.className)||s.querySelector&&s.querySelector(".cm-tab"))&&(n.content.className="cm-tab-wrap-hack")}return pe(e,"renderLine",e,t.line,n.pre),n.pre.className&&(n.textClass=F(n.pre.className,n.textClass||"")),n}function Qt(e){var t=O("span","•","cm-invalidchar");return t.title="\\u"+e.charCodeAt(0).toString(16),t.setAttribute("aria-label",t.title),t}function Jt(e,t,r,n,i,o,a){if(t){var u,c=e.splitSpaces?function(e,t){if(e.length>1&&!/  /.test(e))return e;for(var r=t,n="",i=0;i<e.length;i++){var o=e.charAt(i);" "!=o||!r||i!=e.length-1&&32!=e.charCodeAt(i+1)||(o=" "),n+=o,r=" "==o}return n}(t,e.trailingSpace):t,h=e.cm.state.specialChars,f=!1;if(h.test(t)){u=document.createDocumentFragment();for(var d=0;;){h.lastIndex=d;var p=h.exec(t),g=p?p.index-d:t.length-d;if(g){var v=document.createTextNode(c.slice(d,d+g));l&&s<9?u.appendChild(O("span",[v])):u.appendChild(v),e.map.push(e.pos,e.pos+g,v),e.col+=g,e.pos+=g}if(!p)break;d+=g+1;var m=void 0;if("\t"==p[0]){var y=e.cm.options.tabSize,b=y-e.col%y;(m=u.appendChild(O("span",Y(b),"cm-tab"))).setAttribute("role","presentation"),m.setAttribute("cm-text","\t"),e.col+=b}else"\r"==p[0]||"\n"==p[0]?((m=u.appendChild(O("span","\r"==p[0]?"␍":"␤","cm-invalidchar"))).setAttribute("cm-text",p[0]),e.col+=1):((m=e.cm.options.specialCharPlaceholder(p[0])).setAttribute("cm-text",p[0]),l&&s<9?u.appendChild(O("span",[m])):u.appendChild(m),e.col+=1);e.map.push(e.pos,e.pos+1,m),e.pos++}}else e.col+=t.length,u=document.createTextNode(c),e.map.push(e.pos,e.pos+t.length,u),l&&s<9&&(f=!0),e.pos+=t.length;if(e.trailingSpace=32==c.charCodeAt(t.length-1),r||n||i||f||o||a){var w=r||"";n&&(w+=n),i&&(w+=i);var x=O("span",[u],w,o);if(a)for(var C in a)a.hasOwnProperty(C)&&"style"!=C&&"class"!=C&&x.setAttribute(C,a[C]);return e.content.appendChild(x)}e.content.appendChild(u)}}function er(e,t){return function(r,n,i,o,l,s,a){i=i?i+" cm-force-border":"cm-force-border";for(var u=r.pos,c=u+n.length;;){for(var h=void 0,f=0;f<t.length&&!((h=t[f]).to>u&&h.from<=u);f++);if(h.to>=c)return e(r,n,i,o,l,s,a);e(r,n.slice(0,h.to-u),i,o,null,s,a),o=null,n=n.slice(h.to-u),u=h.to}}}function tr(e,t,r,n){var i=!n&&r.widgetNode;i&&e.map.push(e.pos,e.pos+t,i),!n&&e.cm.display.input.needsContentAttribute&&(i||(i=e.content.appendChild(document.createElement("span"))),i.setAttribute("cm-marker",r.id)),i&&(e.cm.display.input.setUneditable(i),e.content.appendChild(i)),e.pos+=t,e.trailingSpace=!1}function rr(e,t,r){var n=e.markedSpans,i=e.text,o=0;if(n)for(var l,s,a,u,c,h,f,d=i.length,p=0,g=1,v="",m=0;;){if(m==p){a=u=c=s="",f=null,h=null,m=1/0;for(var y=[],b=void 0,w=0;w<n.length;++w){var x=n[w],C=x.marker;if("bookmark"==C.type&&x.from==p&&C.widgetNode)y.push(C);else if(x.from<=p&&(null==x.to||x.to>p||C.collapsed&&x.to==p&&x.from==p)){if(null!=x.to&&x.to!=p&&m>x.to&&(m=x.to,u=""),C.className&&(a+=" "+C.className),C.css&&(s=(s?s+";":"")+C.css),C.startStyle&&x.from==p&&(c+=" "+C.startStyle),C.endStyle&&x.to==m&&(b||(b=[])).push(C.endStyle,x.to),C.title&&((f||(f={})).title=C.title),C.attributes)for(var S in C.attributes)(f||(f={}))[S]=C.attributes[S];C.collapsed&&(!h||Wt(h.marker,C)<0)&&(h=x)}else x.from>p&&m>x.from&&(m=x.from)}if(b)for(var L=0;L<b.length;L+=2)b[L+1]==m&&(u+=" "+b[L]);if(!h||h.from==p)for(var k=0;k<y.length;++k)tr(t,0,y[k]);if(h&&(h.from||0)==p){if(tr(t,(null==h.to?d+1:h.to)-p,h.marker,null==h.from),null==h.to)return;h.to==p&&(h=!1)}}if(p>=d)break;for(var T=Math.min(d,m);;){if(v){var M=p+v.length;if(!h){var N=M>T?v.slice(0,T-p):v;t.addToken(t,N,l?l+a:a,c,p+N.length==m?u:"",s,f)}if(M>=T){v=v.slice(T-p),p=T;break}p=M,c=""}v=i.slice(o,o=r[g++]),l=qt(r[g++],t.cm.options)}}else for(var O=1;O<r.length;O+=2)t.addToken(t,i.slice(o,o=r[O]),qt(r[O+1],t.cm.options))}function nr(e,t,r){this.line=t,this.rest=function(e){for(var t,r;t=Pt(e);)e=t.find(1,!0).line,(r||(r=[])).push(e);return r}(t),this.size=this.rest?qe(_(this.rest))-r+1:1,this.node=this.text=null,this.hidden=Gt(e,t)}function ir(e,t,r){for(var n,i=[],o=t;o<r;o=n){var l=new nr(e.doc,Xe(e.doc,o),o);n=o+l.size,i.push(l)}return i}var or=null;var lr=null;function sr(e,t){var r=fe(e,t);if(r.length){var n,i=Array.prototype.slice.call(arguments,2);or?n=or.delayedCallbacks:lr?n=lr:(n=lr=[],setTimeout(ar,0));for(var o=function(e){n.push((function(){return r[e].apply(null,i)}))},l=0;l<r.length;++l)o(l)}}function ar(){var e=lr;lr=null;for(var t=0;t<e.length;++t)e[t]()}function ur(e,t,r,n){for(var i=0;i<t.changes.length;i++){var o=t.changes[i];"text"==o?fr(e,t):"gutter"==o?pr(e,t,r,n):"class"==o?dr(e,t):"widget"==o&&gr(e,t,n)}t.changes=null}function cr(e){return e.node==e.text&&(e.node=O("div",null,null,"position: relative"),e.text.parentNode&&e.text.parentNode.replaceChild(e.node,e.text),e.node.appendChild(e.text),l&&s<8&&(e.node.style.zIndex=2)),e.node}function hr(e,t){var r=e.display.externalMeasured;return r&&r.line==t.line?(e.display.externalMeasured=null,t.measure=r.measure,r.built):Zt(e,t)}function fr(e,t){var r=t.text.className,n=hr(e,t);t.text==t.node&&(t.node=n.pre),t.text.parentNode.replaceChild(n.pre,t.text),t.text=n.pre,n.bgClass!=t.bgClass||n.textClass!=t.textClass?(t.bgClass=n.bgClass,t.textClass=n.textClass,dr(e,t)):r&&(t.text.className=r)}function dr(e,t){!function(e,t){var r=t.bgClass?t.bgClass+" "+(t.line.bgClass||""):t.line.bgClass;if(r&&(r+=" CodeMirror-linebackground"),t.background)r?t.background.className=r:(t.background.parentNode.removeChild(t.background),t.background=null);else if(r){var n=cr(t);t.background=n.insertBefore(O("div",null,r),n.firstChild),e.display.input.setUneditable(t.background)}}(e,t),t.line.wrapClass?cr(t).className=t.line.wrapClass:t.node!=t.text&&(t.node.className="");var r=t.textClass?t.textClass+" "+(t.line.textClass||""):t.line.textClass;t.text.className=r||""}function pr(e,t,r,n){if(t.gutter&&(t.node.removeChild(t.gutter),t.gutter=null),t.gutterBackground&&(t.node.removeChild(t.gutterBackground),t.gutterBackground=null),t.line.gutterClass){var i=cr(t);t.gutterBackground=O("div",null,"CodeMirror-gutter-background "+t.line.gutterClass,"left: "+(e.options.fixedGutter?n.fixedPos:-n.gutterTotalWidth)+"px; width: "+n.gutterTotalWidth+"px"),e.display.input.setUneditable(t.gutterBackground),i.insertBefore(t.gutterBackground,t.text)}var o=t.line.gutterMarkers;if(e.options.lineNumbers||o){var l=cr(t),s=t.gutter=O("div",null,"CodeMirror-gutter-wrapper","left: "+(e.options.fixedGutter?n.fixedPos:-n.gutterTotalWidth)+"px");if(e.display.input.setUneditable(s),l.insertBefore(s,t.text),t.line.gutterClass&&(s.className+=" "+t.line.gutterClass),!e.options.lineNumbers||o&&o["CodeMirror-linenumbers"]||(t.lineNumber=s.appendChild(O("div",Je(e.options,r),"CodeMirror-linenumber CodeMirror-gutter-elt","left: "+n.gutterLeft["CodeMirror-linenumbers"]+"px; width: "+e.display.lineNumInnerWidth+"px"))),o)for(var a=0;a<e.display.gutterSpecs.length;++a){var u=e.display.gutterSpecs[a].className,c=o.hasOwnProperty(u)&&o[u];c&&s.appendChild(O("div",[c],"CodeMirror-gutter-elt","left: "+n.gutterLeft[u]+"px; width: "+n.gutterWidth[u]+"px"))}}}function gr(e,t,r){t.alignable&&(t.alignable=null);for(var n=L("CodeMirror-linewidget"),i=t.node.firstChild,o=void 0;i;i=o)o=i.nextSibling,n.test(i.className)&&t.node.removeChild(i);mr(e,t,r)}function vr(e,t,r,n){var i=hr(e,t);return t.text=t.node=i.pre,i.bgClass&&(t.bgClass=i.bgClass),i.textClass&&(t.textClass=i.textClass),dr(e,t),pr(e,t,r,n),mr(e,t,n),t.node}function mr(e,t,r){if(yr(e,t.line,t,r,!0),t.rest)for(var n=0;n<t.rest.length;n++)yr(e,t.rest[n],t,r,!1)}function yr(e,t,r,n,i){if(t.widgets)for(var o=cr(r),l=0,s=t.widgets;l<s.length;++l){var a=s[l],u=O("div",[a.node],"CodeMirror-linewidget"+(a.className?" "+a.className:""));a.handleMouseEvents||u.setAttribute("cm-ignore-events","true"),br(a,u,r,n),e.display.input.setUneditable(u),i&&a.above?o.insertBefore(u,r.gutter||r.text):o.appendChild(u),sr(a,"redraw")}}function br(e,t,r,n){if(e.noHScroll){(r.alignable||(r.alignable=[])).push(t);var i=n.wrapperWidth;t.style.left=n.fixedPos+"px",e.coverGutter||(i-=n.gutterTotalWidth,t.style.paddingLeft=n.gutterTotalWidth+"px"),t.style.width=i+"px"}e.coverGutter&&(t.style.zIndex=5,t.style.position="relative",e.noHScroll||(t.style.marginLeft=-n.gutterTotalWidth+"px"))}function wr(e){if(null!=e.height)return e.height;var t=e.doc.cm;if(!t)return 0;if(!D(document.body,e.node)){var r="position: relative;";e.coverGutter&&(r+="margin-left: -"+t.display.gutters.offsetWidth+"px;"),e.noHScroll&&(r+="width: "+t.display.wrapper.clientWidth+"px;"),N(t.display.measure,O("div",[e.node],null,r))}return e.height=e.node.parentNode.offsetHeight}function xr(e,t){for(var r=Se(t);r!=e.wrapper;r=r.parentNode)if(!r||1==r.nodeType&&"true"==r.getAttribute("cm-ignore-events")||r.parentNode==e.sizer&&r!=e.mover)return!0}function Cr(e){return e.lineSpace.offsetTop}function Sr(e){return e.mover.offsetHeight-e.lineSpace.offsetHeight}function Lr(e){if(e.cachedPaddingH)return e.cachedPaddingH;var t=N(e.measure,O("pre","x","CodeMirror-line-like")),r=window.getComputedStyle?window.getComputedStyle(t):t.currentStyle,n={left:parseInt(r.paddingLeft),right:parseInt(r.paddingRight)};return isNaN(n.left)||isNaN(n.right)||(e.cachedPaddingH=n),n}function kr(e){return 50-e.display.nativeBarWidth}function Tr(e){return e.display.scroller.clientWidth-kr(e)-e.display.barWidth}function Mr(e){return e.display.scroller.clientHeight-kr(e)-e.display.barHeight}function Nr(e,t,r){if(e.line==t)return{map:e.measure.map,cache:e.measure.cache};for(var n=0;n<e.rest.length;n++)if(e.rest[n]==t)return{map:e.measure.maps[n],cache:e.measure.caches[n]};for(var i=0;i<e.rest.length;i++)if(qe(e.rest[i])>r)return{map:e.measure.maps[i],cache:e.measure.caches[i],before:!0}}function Or(e,t,r,n){return Wr(e,Dr(e,t),r,n)}function Ar(e,t){if(t>=e.display.viewFrom&&t<e.display.viewTo)return e.display.view[cn(e,t)];var r=e.display.externalMeasured;return r&&t>=r.lineN&&t<r.lineN+r.size?r:void 0}function Dr(e,t){var r=qe(t),n=Ar(e,r);n&&!n.text?n=null:n&&n.changes&&(ur(e,n,r,on(e)),e.curOp.forceUpdate=!0),n||(n=function(e,t){var r=qe(t=Rt(t)),n=e.display.externalMeasured=new nr(e.doc,t,r);n.lineN=r;var i=n.built=Zt(e,n);return n.text=i.pre,N(e.display.lineMeasure,i.pre),n}(e,t));var i=Nr(n,t,r);return{line:t,view:n,rect:null,map:i.map,cache:i.cache,before:i.before,hasHeights:!1}}function Wr(e,t,r,n,i){t.before&&(r=-1);var o,a=r+(n||"");return t.cache.hasOwnProperty(a)?o=t.cache[a]:(t.rect||(t.rect=t.view.text.getBoundingClientRect()),t.hasHeights||(!function(e,t,r){var n=e.options.lineWrapping,i=n&&Tr(e);if(!t.measure.heights||n&&t.measure.width!=i){var o=t.measure.heights=[];if(n){t.measure.width=i;for(var l=t.text.firstChild.getClientRects(),s=0;s<l.length-1;s++){var a=l[s],u=l[s+1];Math.abs(a.bottom-u.bottom)>2&&o.push((a.bottom+u.top)/2-r.top)}}o.push(r.bottom-r.top)}}(e,t.view,t.rect),t.hasHeights=!0),(o=function(e,t,r,n){var i,o=Pr(t.map,r,n),a=o.node,u=o.start,c=o.end,h=o.collapse;if(3==a.nodeType){for(var f=0;f<4;f++){for(;u&&ne(t.line.text.charAt(o.coverStart+u));)--u;for(;o.coverStart+c<o.coverEnd&&ne(t.line.text.charAt(o.coverStart+c));)++c;if((i=l&&s<9&&0==u&&c==o.coverEnd-o.coverStart?a.parentNode.getBoundingClientRect():Er(k(a,u,c).getClientRects(),n)).left||i.right||0==u)break;c=u,u-=1,h="right"}l&&s<11&&(i=function(e,t){if(!window.screen||null==screen.logicalXDPI||screen.logicalXDPI==screen.deviceXDPI||!function(e){if(null!=Fe)return Fe;var t=N(e,O("span","x")),r=t.getBoundingClientRect(),n=k(t,0,1).getBoundingClientRect();return Fe=Math.abs(r.left-n.left)>1}(e))return t;var r=screen.logicalXDPI/screen.deviceXDPI,n=screen.logicalYDPI/screen.deviceYDPI;return{left:t.left*r,right:t.right*r,top:t.top*n,bottom:t.bottom*n}}(e.display.measure,i))}else{var d;u>0&&(h=n="right"),i=e.options.lineWrapping&&(d=a.getClientRects()).length>1?d["right"==n?d.length-1:0]:a.getBoundingClientRect()}if(l&&s<9&&!u&&(!i||!i.left&&!i.right)){var p=a.parentNode.getClientRects()[0];i=p?{left:p.left,right:p.left+nn(e.display),top:p.top,bottom:p.bottom}:Fr}for(var g=i.top-t.rect.top,v=i.bottom-t.rect.top,m=(g+v)/2,y=t.view.measure.heights,b=0;b<y.length-1&&!(m<y[b]);b++);var w=b?y[b-1]:0,x=y[b],C={left:("right"==h?i.right:i.left)-t.rect.left,right:("left"==h?i.left:i.right)-t.rect.left,top:w,bottom:x};i.left||i.right||(C.bogus=!0);e.options.singleCursorHeightPerLine||(C.rtop=g,C.rbottom=v);return C}(e,t,r,n)).bogus||(t.cache[a]=o)),{left:o.left,right:o.right,top:i?o.rtop:o.top,bottom:i?o.rbottom:o.bottom}}var Hr,Fr={left:0,right:0,top:0,bottom:0};function Pr(e,t,r){for(var n,i,o,l,s,a,u=0;u<e.length;u+=3)if(s=e[u],a=e[u+1],t<s?(i=0,o=1,l="left"):t<a?o=(i=t-s)+1:(u==e.length-3||t==a&&e[u+3]>t)&&(i=(o=a-s)-1,t>=a&&(l="right")),null!=i){if(n=e[u+2],s==a&&r==(n.insertLeft?"left":"right")&&(l=r),"left"==r&&0==i)for(;u&&e[u-2]==e[u-3]&&e[u-1].insertLeft;)n=e[2+(u-=3)],l="left";if("right"==r&&i==a-s)for(;u<e.length-3&&e[u+3]==e[u+4]&&!e[u+5].insertLeft;)n=e[(u+=3)+2],l="right";break}return{node:n,start:i,end:o,collapse:l,coverStart:s,coverEnd:a}}function Er(e,t){var r=Fr;if("left"==t)for(var n=0;n<e.length&&(r=e[n]).left==r.right;n++);else for(var i=e.length-1;i>=0&&(r=e[i]).left==r.right;i--);return r}function Ir(e){if(e.measure&&(e.measure.cache={},e.measure.heights=null,e.rest))for(var t=0;t<e.rest.length;t++)e.measure.caches[t]={}}function Rr(e){e.display.externalMeasure=null,M(e.display.lineMeasure);for(var t=0;t<e.display.view.length;t++)Ir(e.display.view[t])}function zr(e){Rr(e),e.display.cachedCharWidth=e.display.cachedTextHeight=e.display.cachedPaddingH=null,e.options.lineWrapping||(e.display.maxLineChanged=!0),e.display.lineNumChars=null}function Br(){return c&&v?-(document.body.getBoundingClientRect().left-parseInt(getComputedStyle(document.body).marginLeft)):window.pageXOffset||(document.documentElement||document.body).scrollLeft}function Gr(){return c&&v?-(document.body.getBoundingClientRect().top-parseInt(getComputedStyle(document.body).marginTop)):window.pageYOffset||(document.documentElement||document.body).scrollTop}function Ur(e){var t=0;if(e.widgets)for(var r=0;r<e.widgets.length;++r)e.widgets[r].above&&(t+=wr(e.widgets[r]));return t}function Vr(e,t,r,n,i){if(!i){var o=Ur(t);r.top+=o,r.bottom+=o}if("line"==n)return r;n||(n="local");var l=Vt(t);if("local"==n?l+=Cr(e.display):l-=e.display.viewOffset,"page"==n||"window"==n){var s=e.display.lineSpace.getBoundingClientRect();l+=s.top+("window"==n?0:Gr());var a=s.left+("window"==n?0:Br());r.left+=a,r.right+=a}return r.top+=l,r.bottom+=l,r}function Kr(e,t,r){if("div"==r)return t;var n=t.left,i=t.top;if("page"==r)n-=Br(),i-=Gr();else if("local"==r||!r){var o=e.display.sizer.getBoundingClientRect();n+=o.left,i+=o.top}var l=e.display.lineSpace.getBoundingClientRect();return{left:n-l.left,top:i-l.top}}function jr(e,t,r,n,i){return n||(n=Xe(e.doc,t.line)),Vr(e,n,Or(e,n,t.ch,i),r)}function Xr(e,t,r,n,i,o){function l(t,l){var s=Wr(e,i,t,l?"right":"left",o);return l?s.left=s.right:s.right=s.left,Vr(e,n,s,r)}n=n||Xe(e.doc,t.line),i||(i=Dr(e,n));var s=ue(n,e.doc.direction),a=t.ch,u=t.sticky;if(a>=n.text.length?(a=n.text.length,u="before"):a<=0&&(a=0,u="after"),!s)return l("before"==u?a-1:a,"before"==u);function c(e,t,r){return l(r?e-1:e,1==s[t].level!=r)}var h=se(s,a,u),f=le,d=c(a,h,"before"==u);return null!=f&&(d.other=c(a,f,"before"!=u)),d}function Yr(e,t){var r=0;t=st(e.doc,t),e.options.lineWrapping||(r=nn(e.display)*t.ch);var n=Xe(e.doc,t.line),i=Vt(n)+Cr(e.display);return{left:r,right:r,top:i,bottom:i+n.height}}function _r(e,t,r,n,i){var o=et(e,t,r);return o.xRel=i,n&&(o.outside=n),o}function $r(e,t,r){var n=e.doc;if((r+=e.display.viewOffset)<0)return _r(n.first,0,null,-1,-1);var i=Ze(n,r),o=n.first+n.size-1;if(i>o)return _r(n.first+n.size-1,Xe(n,o).text.length,null,1,1);t<0&&(t=0);for(var l=Xe(n,i);;){var s=Jr(e,l,i,t,r),a=Et(l,s.ch+(s.xRel>0||s.outside>0?1:0));if(!a)return s;var u=a.find(1);if(u.line==i)return u;l=Xe(n,i=u.line)}}function qr(e,t,r,n){n-=Ur(t);var i=t.text.length,o=oe((function(t){return Wr(e,r,t-1).bottom<=n}),i,0);return{begin:o,end:i=oe((function(t){return Wr(e,r,t).top>n}),o,i)}}function Zr(e,t,r,n){return r||(r=Dr(e,t)),qr(e,t,r,Vr(e,t,Wr(e,r,n),"line").top)}function Qr(e,t,r,n){return!(e.bottom<=r)&&(e.top>r||(n?e.left:e.right)>t)}function Jr(e,t,r,n,i){i-=Vt(t);var o=Dr(e,t),l=Ur(t),s=0,a=t.text.length,u=!0,c=ue(t,e.doc.direction);if(c){var h=(e.options.lineWrapping?tn:en)(e,t,r,o,c,n,i);s=(u=1!=h.level)?h.from:h.to-1,a=u?h.to:h.from-1}var f,d,p=null,g=null,v=oe((function(t){var r=Wr(e,o,t);return r.top+=l,r.bottom+=l,!!Qr(r,n,i,!1)&&(r.top<=i&&r.left<=n&&(p=t,g=r),!0)}),s,a),m=!1;if(g){var y=n-g.left<g.right-n,b=y==u;v=p+(b?0:1),d=b?"after":"before",f=y?g.left:g.right}else{u||v!=a&&v!=s||v++,d=0==v?"after":v==t.text.length?"before":Wr(e,o,v-(u?1:0)).bottom+l<=i==u?"after":"before";var w=Xr(e,et(r,v,d),"line",t,o);f=w.left,m=i<w.top?-1:i>=w.bottom?1:0}return _r(r,v=ie(t.text,v,1),d,m,n-f)}function en(e,t,r,n,i,o,l){var s=oe((function(s){var a=i[s],u=1!=a.level;return Qr(Xr(e,et(r,u?a.to:a.from,u?"before":"after"),"line",t,n),o,l,!0)}),0,i.length-1),a=i[s];if(s>0){var u=1!=a.level,c=Xr(e,et(r,u?a.from:a.to,u?"after":"before"),"line",t,n);Qr(c,o,l,!0)&&c.top>l&&(a=i[s-1])}return a}function tn(e,t,r,n,i,o,l){var s=qr(e,t,n,l),a=s.begin,u=s.end;/\s/.test(t.text.charAt(u-1))&&u--;for(var c=null,h=null,f=0;f<i.length;f++){var d=i[f];if(!(d.from>=u||d.to<=a)){var p=Wr(e,n,1!=d.level?Math.min(u,d.to)-1:Math.max(a,d.from)).right,g=p<o?o-p+1e9:p-o;(!c||h>g)&&(c=d,h=g)}}return c||(c=i[i.length-1]),c.from<a&&(c={from:a,to:c.to,level:c.level}),c.to>u&&(c={from:c.from,to:u,level:c.level}),c}function rn(e){if(null!=e.cachedTextHeight)return e.cachedTextHeight;if(null==Hr){Hr=O("pre",null,"CodeMirror-line-like");for(var t=0;t<49;++t)Hr.appendChild(document.createTextNode("x")),Hr.appendChild(O("br"));Hr.appendChild(document.createTextNode("x"))}N(e.measure,Hr);var r=Hr.offsetHeight/50;return r>3&&(e.cachedTextHeight=r),M(e.measure),r||1}function nn(e){if(null!=e.cachedCharWidth)return e.cachedCharWidth;var t=O("span","xxxxxxxxxx"),r=O("pre",[t],"CodeMirror-line-like");N(e.measure,r);var n=t.getBoundingClientRect(),i=(n.right-n.left)/10;return i>2&&(e.cachedCharWidth=i),i||10}function on(e){for(var t=e.display,r={},n={},i=t.gutters.clientLeft,o=t.gutters.firstChild,l=0;o;o=o.nextSibling,++l){var s=e.display.gutterSpecs[l].className;r[s]=o.offsetLeft+o.clientLeft+i,n[s]=o.clientWidth}return{fixedPos:ln(t),gutterTotalWidth:t.gutters.offsetWidth,gutterLeft:r,gutterWidth:n,wrapperWidth:t.wrapper.clientWidth}}function ln(e){return e.scroller.getBoundingClientRect().left-e.sizer.getBoundingClientRect().left}function sn(e){var t=rn(e.display),r=e.options.lineWrapping,n=r&&Math.max(5,e.display.scroller.clientWidth/nn(e.display)-3);return function(i){if(Gt(e.doc,i))return 0;var o=0;if(i.widgets)for(var l=0;l<i.widgets.length;l++)i.widgets[l].height&&(o+=i.widgets[l].height);return r?o+(Math.ceil(i.text.length/n)||1)*t:o+t}}function an(e){var t=e.doc,r=sn(e);t.iter((function(e){var t=r(e);t!=e.height&&$e(e,t)}))}function un(e,t,r,n){var i=e.display;if(!r&&"true"==Se(t).getAttribute("cm-not-content"))return null;var o,l,s=i.lineSpace.getBoundingClientRect();try{o=t.clientX-s.left,l=t.clientY-s.top}catch(e){return null}var a,u=$r(e,o,l);if(n&&u.xRel>0&&(a=Xe(e.doc,u.line).text).length==u.ch){var c=R(a,a.length,e.options.tabSize)-a.length;u=et(u.line,Math.max(0,Math.round((o-Lr(e.display).left)/nn(e.display))-c))}return u}function cn(e,t){if(t>=e.display.viewTo)return null;if((t-=e.display.viewFrom)<0)return null;for(var r=e.display.view,n=0;n<r.length;n++)if((t-=r[n].size)<0)return n}function hn(e,t,r,n){null==t&&(t=e.doc.first),null==r&&(r=e.doc.first+e.doc.size),n||(n=0);var i=e.display;if(n&&r<i.viewTo&&(null==i.updateLineNumbers||i.updateLineNumbers>t)&&(i.updateLineNumbers=t),e.curOp.viewChanged=!0,t>=i.viewTo)Ct&&zt(e.doc,t)<i.viewTo&&dn(e);else if(r<=i.viewFrom)Ct&&Bt(e.doc,r+n)>i.viewFrom?dn(e):(i.viewFrom+=n,i.viewTo+=n);else if(t<=i.viewFrom&&r>=i.viewTo)dn(e);else if(t<=i.viewFrom){var o=pn(e,r,r+n,1);o?(i.view=i.view.slice(o.index),i.viewFrom=o.lineN,i.viewTo+=n):dn(e)}else if(r>=i.viewTo){var l=pn(e,t,t,-1);l?(i.view=i.view.slice(0,l.index),i.viewTo=l.lineN):dn(e)}else{var s=pn(e,t,t,-1),a=pn(e,r,r+n,1);s&&a?(i.view=i.view.slice(0,s.index).concat(ir(e,s.lineN,a.lineN)).concat(i.view.slice(a.index)),i.viewTo+=n):dn(e)}var u=i.externalMeasured;u&&(r<u.lineN?u.lineN+=n:t<u.lineN+u.size&&(i.externalMeasured=null))}function fn(e,t,r){e.curOp.viewChanged=!0;var n=e.display,i=e.display.externalMeasured;if(i&&t>=i.lineN&&t<i.lineN+i.size&&(n.externalMeasured=null),!(t<n.viewFrom||t>=n.viewTo)){var o=n.view[cn(e,t)];if(null!=o.node){var l=o.changes||(o.changes=[]);-1==B(l,r)&&l.push(r)}}}function dn(e){e.display.viewFrom=e.display.viewTo=e.doc.first,e.display.view=[],e.display.viewOffset=0}function pn(e,t,r,n){var i,o=cn(e,t),l=e.display.view;if(!Ct||r==e.doc.first+e.doc.size)return{index:o,lineN:r};for(var s=e.display.viewFrom,a=0;a<o;a++)s+=l[a].size;if(s!=t){if(n>0){if(o==l.length-1)return null;i=s+l[o].size-t,o++}else i=s-t;t+=i,r+=i}for(;zt(e.doc,r)!=r;){if(o==(n<0?0:l.length-1))return null;r+=n*l[o-(n<0?1:0)].size,o+=n}return{index:o,lineN:r}}function gn(e){for(var t=e.display.view,r=0,n=0;n<t.length;n++){var i=t[n];i.hidden||i.node&&!i.changes||++r}return r}function vn(e){e.display.input.showSelection(e.display.input.prepareSelection())}function mn(e,t){void 0===t&&(t=!0);for(var r=e.doc,n={},i=n.cursors=document.createDocumentFragment(),o=n.selection=document.createDocumentFragment(),l=0;l<r.sel.ranges.length;l++)if(t||l!=r.sel.primIndex){var s=r.sel.ranges[l];if(!(s.from().line>=e.display.viewTo||s.to().line<e.display.viewFrom)){var a=s.empty();(a||e.options.showCursorWhenSelecting)&&yn(e,s.head,i),a||wn(e,s,o)}}return n}function yn(e,t,r){var n=Xr(e,t,"div",null,null,!e.options.singleCursorHeightPerLine),i=r.appendChild(O("div"," ","CodeMirror-cursor"));if(i.style.left=n.left+"px",i.style.top=n.top+"px",i.style.height=Math.max(0,n.bottom-n.top)*e.options.cursorHeight+"px",n.other){var o=r.appendChild(O("div"," ","CodeMirror-cursor CodeMirror-secondarycursor"));o.style.display="",o.style.left=n.other.left+"px",o.style.top=n.other.top+"px",o.style.height=.85*(n.other.bottom-n.other.top)+"px"}}function bn(e,t){return e.top-t.top||e.left-t.left}function wn(e,t,r){var n=e.display,i=e.doc,o=document.createDocumentFragment(),l=Lr(e.display),s=l.left,a=Math.max(n.sizerWidth,Tr(e)-n.sizer.offsetLeft)-l.right,u="ltr"==i.direction;function c(e,t,r,n){t<0&&(t=0),t=Math.round(t),n=Math.round(n),o.appendChild(O("div",null,"CodeMirror-selected","position: absolute; left: "+e+"px;\n                             top: "+t+"px; width: "+(null==r?a-e:r)+"px;\n                             height: "+(n-t)+"px"))}function h(t,r,n){var o,l,h=Xe(i,t),f=h.text.length;function d(r,n){return jr(e,et(t,r),"div",h,n)}function p(t,r,n){var i=Zr(e,h,null,t),o="ltr"==r==("after"==n)?"left":"right";return d("after"==n?i.begin:i.end-(/\s/.test(h.text.charAt(i.end-1))?2:1),o)[o]}var g=ue(h,i.direction);return function(e,t,r,n){if(!e)return n(t,r,"ltr",0);for(var i=!1,o=0;o<e.length;++o){var l=e[o];(l.from<r&&l.to>t||t==r&&l.to==t)&&(n(Math.max(l.from,t),Math.min(l.to,r),1==l.level?"rtl":"ltr",o),i=!0)}i||n(t,r,"ltr")}(g,r||0,null==n?f:n,(function(e,t,i,h){var v="ltr"==i,m=d(e,v?"left":"right"),y=d(t-1,v?"right":"left"),b=null==r&&0==e,w=null==n&&t==f,x=0==h,C=!g||h==g.length-1;if(y.top-m.top<=3){var S=(u?w:b)&&C,L=(u?b:w)&&x?s:(v?m:y).left,k=S?a:(v?y:m).right;c(L,m.top,k-L,m.bottom)}else{var T,M,N,O;v?(T=u&&b&&x?s:m.left,M=u?a:p(e,i,"before"),N=u?s:p(t,i,"after"),O=u&&w&&C?a:y.right):(T=u?p(e,i,"before"):s,M=!u&&b&&x?a:m.right,N=!u&&w&&C?s:y.left,O=u?p(t,i,"after"):a),c(T,m.top,M-T,m.bottom),m.bottom<y.top&&c(s,m.bottom,null,y.top),c(N,y.top,O-N,y.bottom)}(!o||bn(m,o)<0)&&(o=m),bn(y,o)<0&&(o=y),(!l||bn(m,l)<0)&&(l=m),bn(y,l)<0&&(l=y)})),{start:o,end:l}}var f=t.from(),d=t.to();if(f.line==d.line)h(f.line,f.ch,d.ch);else{var p=Xe(i,f.line),g=Xe(i,d.line),v=Rt(p)==Rt(g),m=h(f.line,f.ch,v?p.text.length+1:null).end,y=h(d.line,v?0:null,d.ch).start;v&&(m.top<y.top-2?(c(m.right,m.top,null,m.bottom),c(s,y.top,y.left,y.bottom)):c(m.right,m.top,y.left-m.right,m.bottom)),m.bottom<y.top&&c(s,m.bottom,null,y.top)}r.appendChild(o)}function xn(e){if(e.state.focused){var t=e.display;clearInterval(t.blinker);var r=!0;t.cursorDiv.style.visibility="",e.options.cursorBlinkRate>0?t.blinker=setInterval((function(){e.hasFocus()||kn(e),t.cursorDiv.style.visibility=(r=!r)?"":"hidden"}),e.options.cursorBlinkRate):e.options.cursorBlinkRate<0&&(t.cursorDiv.style.visibility="hidden")}}function Cn(e){e.hasFocus()||(e.display.input.focus(),e.state.focused||Ln(e))}function Sn(e){e.state.delayingBlurEvent=!0,setTimeout((function(){e.state.delayingBlurEvent&&(e.state.delayingBlurEvent=!1,e.state.focused&&kn(e))}),100)}function Ln(e,t){e.state.delayingBlurEvent&&!e.state.draggingText&&(e.state.delayingBlurEvent=!1),"nocursor"!=e.options.readOnly&&(e.state.focused||(pe(e,"focus",e,t),e.state.focused=!0,H(e.display.wrapper,"CodeMirror-focused"),e.curOp||e.display.selForContextMenu==e.doc.sel||(e.display.input.reset(),a&&setTimeout((function(){return e.display.input.reset(!0)}),20)),e.display.input.receivedFocus()),xn(e))}function kn(e,t){e.state.delayingBlurEvent||(e.state.focused&&(pe(e,"blur",e,t),e.state.focused=!1,T(e.display.wrapper,"CodeMirror-focused")),clearInterval(e.display.blinker),setTimeout((function(){e.state.focused||(e.display.shift=!1)}),150))}function Tn(e){for(var t=e.display,r=t.lineDiv.offsetTop,n=0;n<t.view.length;n++){var i=t.view[n],o=e.options.lineWrapping,a=void 0,u=0;if(!i.hidden){if(l&&s<8){var c=i.node.offsetTop+i.node.offsetHeight;a=c-r,r=c}else{var h=i.node.getBoundingClientRect();a=h.bottom-h.top,!o&&i.text.firstChild&&(u=i.text.firstChild.getBoundingClientRect().right-h.left-1)}var f=i.line.height-a;if((f>.005||f<-.005)&&($e(i.line,a),Mn(i.line),i.rest))for(var d=0;d<i.rest.length;d++)Mn(i.rest[d]);if(u>e.display.sizerWidth){var p=Math.ceil(u/nn(e.display));p>e.display.maxLineLength&&(e.display.maxLineLength=p,e.display.maxLine=i.line,e.display.maxLineChanged=!0)}}}}function Mn(e){if(e.widgets)for(var t=0;t<e.widgets.length;++t){var r=e.widgets[t],n=r.node.parentNode;n&&(r.height=n.offsetHeight)}}function Nn(e,t,r){var n=r&&null!=r.top?Math.max(0,r.top):e.scroller.scrollTop;n=Math.floor(n-Cr(e));var i=r&&null!=r.bottom?r.bottom:n+e.wrapper.clientHeight,o=Ze(t,n),l=Ze(t,i);if(r&&r.ensure){var s=r.ensure.from.line,a=r.ensure.to.line;s<o?(o=s,l=Ze(t,Vt(Xe(t,s))+e.wrapper.clientHeight)):Math.min(a,t.lastLine())>=l&&(o=Ze(t,Vt(Xe(t,a))-e.wrapper.clientHeight),l=a)}return{from:o,to:Math.max(l,o+1)}}function On(e,t){var r=e.display,n=rn(e.display);t.top<0&&(t.top=0);var i=e.curOp&&null!=e.curOp.scrollTop?e.curOp.scrollTop:r.scroller.scrollTop,o=Mr(e),l={};t.bottom-t.top>o&&(t.bottom=t.top+o);var s=e.doc.height+Sr(r),a=t.top<n,u=t.bottom>s-n;if(t.top<i)l.scrollTop=a?0:t.top;else if(t.bottom>i+o){var c=Math.min(t.top,(u?s:t.bottom)-o);c!=i&&(l.scrollTop=c)}var h=e.options.fixedGutter?0:r.gutters.offsetWidth,f=e.curOp&&null!=e.curOp.scrollLeft?e.curOp.scrollLeft:r.scroller.scrollLeft-h,d=Tr(e)-r.gutters.offsetWidth,p=t.right-t.left>d;return p&&(t.right=t.left+d),t.left<10?l.scrollLeft=0:t.left<f?l.scrollLeft=Math.max(0,t.left+h-(p?0:10)):t.right>d+f-3&&(l.scrollLeft=t.right+(p?0:10)-d),l}function An(e,t){null!=t&&(Hn(e),e.curOp.scrollTop=(null==e.curOp.scrollTop?e.doc.scrollTop:e.curOp.scrollTop)+t)}function Dn(e){Hn(e);var t=e.getCursor();e.curOp.scrollToPos={from:t,to:t,margin:e.options.cursorScrollMargin}}function Wn(e,t,r){null==t&&null==r||Hn(e),null!=t&&(e.curOp.scrollLeft=t),null!=r&&(e.curOp.scrollTop=r)}function Hn(e){var t=e.curOp.scrollToPos;t&&(e.curOp.scrollToPos=null,Fn(e,Yr(e,t.from),Yr(e,t.to),t.margin))}function Fn(e,t,r,n){var i=On(e,{left:Math.min(t.left,r.left),top:Math.min(t.top,r.top)-n,right:Math.max(t.right,r.right),bottom:Math.max(t.bottom,r.bottom)+n});Wn(e,i.scrollLeft,i.scrollTop)}function Pn(e,t){Math.abs(e.doc.scrollTop-t)<2||(r||ai(e,{top:t}),En(e,t,!0),r&&ai(e),ni(e,100))}function En(e,t,r){t=Math.max(0,Math.min(e.display.scroller.scrollHeight-e.display.scroller.clientHeight,t)),(e.display.scroller.scrollTop!=t||r)&&(e.doc.scrollTop=t,e.display.scrollbars.setScrollTop(t),e.display.scroller.scrollTop!=t&&(e.display.scroller.scrollTop=t))}function In(e,t,r,n){t=Math.max(0,Math.min(t,e.display.scroller.scrollWidth-e.display.scroller.clientWidth)),(r?t==e.doc.scrollLeft:Math.abs(e.doc.scrollLeft-t)<2)&&!n||(e.doc.scrollLeft=t,hi(e),e.display.scroller.scrollLeft!=t&&(e.display.scroller.scrollLeft=t),e.display.scrollbars.setScrollLeft(t))}function Rn(e){var t=e.display,r=t.gutters.offsetWidth,n=Math.round(e.doc.height+Sr(e.display));return{clientHeight:t.scroller.clientHeight,viewHeight:t.wrapper.clientHeight,scrollWidth:t.scroller.scrollWidth,clientWidth:t.scroller.clientWidth,viewWidth:t.wrapper.clientWidth,barLeft:e.options.fixedGutter?r:0,docHeight:n,scrollHeight:n+kr(e)+t.barHeight,nativeBarWidth:t.nativeBarWidth,gutterWidth:r}}var zn=function(e,t,r){this.cm=r;var n=this.vert=O("div",[O("div",null,null,"min-width: 1px")],"CodeMirror-vscrollbar"),i=this.horiz=O("div",[O("div",null,null,"height: 100%; min-height: 1px")],"CodeMirror-hscrollbar");n.tabIndex=i.tabIndex=-1,e(n),e(i),he(n,"scroll",(function(){n.clientHeight&&t(n.scrollTop,"vertical")})),he(i,"scroll",(function(){i.clientWidth&&t(i.scrollLeft,"horizontal")})),this.checkedZeroWidth=!1,l&&s<8&&(this.horiz.style.minHeight=this.vert.style.minWidth="18px")};zn.prototype.update=function(e){var t=e.scrollWidth>e.clientWidth+1,r=e.scrollHeight>e.clientHeight+1,n=e.nativeBarWidth;if(r){this.vert.style.display="block",this.vert.style.bottom=t?n+"px":"0";var i=e.viewHeight-(t?n:0);this.vert.firstChild.style.height=Math.max(0,e.scrollHeight-e.clientHeight+i)+"px"}else this.vert.style.display="",this.vert.firstChild.style.height="0";if(t){this.horiz.style.display="block",this.horiz.style.right=r?n+"px":"0",this.horiz.style.left=e.barLeft+"px";var o=e.viewWidth-e.barLeft-(r?n:0);this.horiz.firstChild.style.width=Math.max(0,e.scrollWidth-e.clientWidth+o)+"px"}else this.horiz.style.display="",this.horiz.firstChild.style.width="0";return!this.checkedZeroWidth&&e.clientHeight>0&&(0==n&&this.zeroWidthHack(),this.checkedZeroWidth=!0),{right:r?n:0,bottom:t?n:0}},zn.prototype.setScrollLeft=function(e){this.horiz.scrollLeft!=e&&(this.horiz.scrollLeft=e),this.disableHoriz&&this.enableZeroWidthBar(this.horiz,this.disableHoriz,"horiz")},zn.prototype.setScrollTop=function(e){this.vert.scrollTop!=e&&(this.vert.scrollTop=e),this.disableVert&&this.enableZeroWidthBar(this.vert,this.disableVert,"vert")},zn.prototype.zeroWidthHack=function(){var e=y&&!d?"12px":"18px";this.horiz.style.height=this.vert.style.width=e,this.horiz.style.pointerEvents=this.vert.style.pointerEvents="none",this.disableHoriz=new z,this.disableVert=new z},zn.prototype.enableZeroWidthBar=function(e,t,r){e.style.pointerEvents="auto",t.set(1e3,(function n(){var i=e.getBoundingClientRect();("vert"==r?document.elementFromPoint(i.right-1,(i.top+i.bottom)/2):document.elementFromPoint((i.right+i.left)/2,i.bottom-1))!=e?e.style.pointerEvents="none":t.set(1e3,n)}))},zn.prototype.clear=function(){var e=this.horiz.parentNode;e.removeChild(this.horiz),e.removeChild(this.vert)};var Bn=function(){};function Gn(e,t){t||(t=Rn(e));var r=e.display.barWidth,n=e.display.barHeight;Un(e,t);for(var i=0;i<4&&r!=e.display.barWidth||n!=e.display.barHeight;i++)r!=e.display.barWidth&&e.options.lineWrapping&&Tn(e),Un(e,Rn(e)),r=e.display.barWidth,n=e.display.barHeight}function Un(e,t){var r=e.display,n=r.scrollbars.update(t);r.sizer.style.paddingRight=(r.barWidth=n.right)+"px",r.sizer.style.paddingBottom=(r.barHeight=n.bottom)+"px",r.heightForcer.style.borderBottom=n.bottom+"px solid transparent",n.right&&n.bottom?(r.scrollbarFiller.style.display="block",r.scrollbarFiller.style.height=n.bottom+"px",r.scrollbarFiller.style.width=n.right+"px"):r.scrollbarFiller.style.display="",n.bottom&&e.options.coverGutterNextToScrollbar&&e.options.fixedGutter?(r.gutterFiller.style.display="block",r.gutterFiller.style.height=n.bottom+"px",r.gutterFiller.style.width=t.gutterWidth+"px"):r.gutterFiller.style.display=""}Bn.prototype.update=function(){return{bottom:0,right:0}},Bn.prototype.setScrollLeft=function(){},Bn.prototype.setScrollTop=function(){},Bn.prototype.clear=function(){};var Vn={native:zn,null:Bn};function Kn(e){e.display.scrollbars&&(e.display.scrollbars.clear(),e.display.scrollbars.addClass&&T(e.display.wrapper,e.display.scrollbars.addClass)),e.display.scrollbars=new Vn[e.options.scrollbarStyle]((function(t){e.display.wrapper.insertBefore(t,e.display.scrollbarFiller),he(t,"mousedown",(function(){e.state.focused&&setTimeout((function(){return e.display.input.focus()}),0)})),t.setAttribute("cm-not-content","true")}),(function(t,r){"horizontal"==r?In(e,t):Pn(e,t)}),e),e.display.scrollbars.addClass&&H(e.display.wrapper,e.display.scrollbars.addClass)}var jn=0;function Xn(e){var t;e.curOp={cm:e,viewChanged:!1,startHeight:e.doc.height,forceUpdate:!1,updateInput:0,typing:!1,changeObjs:null,cursorActivityHandlers:null,cursorActivityCalled:0,selectionChanged:!1,updateMaxLine:!1,scrollLeft:null,scrollTop:null,scrollToPos:null,focus:!1,id:++jn},t=e.curOp,or?or.ops.push(t):t.ownsGroup=or={ops:[t],delayedCallbacks:[]}}function Yn(e){var t=e.curOp;t&&function(e,t){var r=e.ownsGroup;if(r)try{!function(e){var t=e.delayedCallbacks,r=0;do{for(;r<t.length;r++)t[r].call(null);for(var n=0;n<e.ops.length;n++){var i=e.ops[n];if(i.cursorActivityHandlers)for(;i.cursorActivityCalled<i.cursorActivityHandlers.length;)i.cursorActivityHandlers[i.cursorActivityCalled++].call(null,i.cm)}}while(r<t.length)}(r)}finally{or=null,t(r)}}(t,(function(e){for(var t=0;t<e.ops.length;t++)e.ops[t].cm.curOp=null;!function(e){for(var t=e.ops,r=0;r<t.length;r++)_n(t[r]);for(var n=0;n<t.length;n++)$n(t[n]);for(var i=0;i<t.length;i++)qn(t[i]);for(var o=0;o<t.length;o++)Zn(t[o]);for(var l=0;l<t.length;l++)Qn(t[l])}(e)}))}function _n(e){var t=e.cm,r=t.display;!function(e){var t=e.display;!t.scrollbarsClipped&&t.scroller.offsetWidth&&(t.nativeBarWidth=t.scroller.offsetWidth-t.scroller.clientWidth,t.heightForcer.style.height=kr(e)+"px",t.sizer.style.marginBottom=-t.nativeBarWidth+"px",t.sizer.style.borderRightWidth=kr(e)+"px",t.scrollbarsClipped=!0)}(t),e.updateMaxLine&&jt(t),e.mustUpdate=e.viewChanged||e.forceUpdate||null!=e.scrollTop||e.scrollToPos&&(e.scrollToPos.from.line<r.viewFrom||e.scrollToPos.to.line>=r.viewTo)||r.maxLineChanged&&t.options.lineWrapping,e.update=e.mustUpdate&&new oi(t,e.mustUpdate&&{top:e.scrollTop,ensure:e.scrollToPos},e.forceUpdate)}function $n(e){e.updatedDisplay=e.mustUpdate&&li(e.cm,e.update)}function qn(e){var t=e.cm,r=t.display;e.updatedDisplay&&Tn(t),e.barMeasure=Rn(t),r.maxLineChanged&&!t.options.lineWrapping&&(e.adjustWidthTo=Or(t,r.maxLine,r.maxLine.text.length).left+3,t.display.sizerWidth=e.adjustWidthTo,e.barMeasure.scrollWidth=Math.max(r.scroller.clientWidth,r.sizer.offsetLeft+e.adjustWidthTo+kr(t)+t.display.barWidth),e.maxScrollLeft=Math.max(0,r.sizer.offsetLeft+e.adjustWidthTo-Tr(t))),(e.updatedDisplay||e.selectionChanged)&&(e.preparedSelection=r.input.prepareSelection())}function Zn(e){var t=e.cm;null!=e.adjustWidthTo&&(t.display.sizer.style.minWidth=e.adjustWidthTo+"px",e.maxScrollLeft<t.doc.scrollLeft&&In(t,Math.min(t.display.scroller.scrollLeft,e.maxScrollLeft),!0),t.display.maxLineChanged=!1);var r=e.focus&&e.focus==W();e.preparedSelection&&t.display.input.showSelection(e.preparedSelection,r),(e.updatedDisplay||e.startHeight!=t.doc.height)&&Gn(t,e.barMeasure),e.updatedDisplay&&ci(t,e.barMeasure),e.selectionChanged&&xn(t),t.state.focused&&e.updateInput&&t.display.input.reset(e.typing),r&&Cn(e.cm)}function Qn(e){var t=e.cm,r=t.display,n=t.doc;(e.updatedDisplay&&si(t,e.update),null==r.wheelStartX||null==e.scrollTop&&null==e.scrollLeft&&!e.scrollToPos||(r.wheelStartX=r.wheelStartY=null),null!=e.scrollTop&&En(t,e.scrollTop,e.forceScroll),null!=e.scrollLeft&&In(t,e.scrollLeft,!0,!0),e.scrollToPos)&&function(e,t){if(!ge(e,"scrollCursorIntoView")){var r=e.display,n=r.sizer.getBoundingClientRect(),i=null;if(t.top+n.top<0?i=!0:t.bottom+n.top>(window.innerHeight||document.documentElement.clientHeight)&&(i=!1),null!=i&&!p){var o=O("div","​",null,"position: absolute;\n                         top: "+(t.top-r.viewOffset-Cr(e.display))+"px;\n                         height: "+(t.bottom-t.top+kr(e)+r.barHeight)+"px;\n                         left: "+t.left+"px; width: "+Math.max(2,t.right-t.left)+"px;");e.display.lineSpace.appendChild(o),o.scrollIntoView(i),e.display.lineSpace.removeChild(o)}}}(t,function(e,t,r,n){var i;null==n&&(n=0),e.options.lineWrapping||t!=r||(r="before"==(t=t.ch?et(t.line,"before"==t.sticky?t.ch-1:t.ch,"after"):t).sticky?et(t.line,t.ch+1,"before"):t);for(var o=0;o<5;o++){var l=!1,s=Xr(e,t),a=r&&r!=t?Xr(e,r):s,u=On(e,i={left:Math.min(s.left,a.left),top:Math.min(s.top,a.top)-n,right:Math.max(s.left,a.left),bottom:Math.max(s.bottom,a.bottom)+n}),c=e.doc.scrollTop,h=e.doc.scrollLeft;if(null!=u.scrollTop&&(Pn(e,u.scrollTop),Math.abs(e.doc.scrollTop-c)>1&&(l=!0)),null!=u.scrollLeft&&(In(e,u.scrollLeft),Math.abs(e.doc.scrollLeft-h)>1&&(l=!0)),!l)break}return i}(t,st(n,e.scrollToPos.from),st(n,e.scrollToPos.to),e.scrollToPos.margin));var i=e.maybeHiddenMarkers,o=e.maybeUnhiddenMarkers;if(i)for(var l=0;l<i.length;++l)i[l].lines.length||pe(i[l],"hide");if(o)for(var s=0;s<o.length;++s)o[s].lines.length&&pe(o[s],"unhide");r.wrapper.offsetHeight&&(n.scrollTop=t.display.scroller.scrollTop),e.changeObjs&&pe(t,"changes",t,e.changeObjs),e.update&&e.update.finish()}function Jn(e,t){if(e.curOp)return t();Xn(e);try{return t()}finally{Yn(e)}}function ei(e,t){return function(){if(e.curOp)return t.apply(e,arguments);Xn(e);try{return t.apply(e,arguments)}finally{Yn(e)}}}function ti(e){return function(){if(this.curOp)return e.apply(this,arguments);Xn(this);try{return e.apply(this,arguments)}finally{Yn(this)}}}function ri(e){return function(){var t=this.cm;if(!t||t.curOp)return e.apply(this,arguments);Xn(t);try{return e.apply(this,arguments)}finally{Yn(t)}}}function ni(e,t){e.doc.highlightFrontier<e.display.viewTo&&e.state.highlight.set(t,E(ii,e))}function ii(e){var t=e.doc;if(!(t.highlightFrontier>=e.display.viewTo)){var r=+new Date+e.options.workTime,n=dt(e,t.highlightFrontier),i=[];t.iter(n.line,Math.min(t.first+t.size,e.display.viewTo+500),(function(o){if(n.line>=e.display.viewFrom){var l=o.styles,s=o.text.length>e.options.maxHighlightLength?Ue(t.mode,n.state):null,a=ht(e,o,n,!0);s&&(n.state=s),o.styles=a.styles;var u=o.styleClasses,c=a.classes;c?o.styleClasses=c:u&&(o.styleClasses=null);for(var h=!l||l.length!=o.styles.length||u!=c&&(!u||!c||u.bgClass!=c.bgClass||u.textClass!=c.textClass),f=0;!h&&f<l.length;++f)h=l[f]!=o.styles[f];h&&i.push(n.line),o.stateAfter=n.save(),n.nextLine()}else o.text.length<=e.options.maxHighlightLength&&pt(e,o.text,n),o.stateAfter=n.line%5==0?n.save():null,n.nextLine();if(+new Date>r)return ni(e,e.options.workDelay),!0})),t.highlightFrontier=n.line,t.modeFrontier=Math.max(t.modeFrontier,n.line),i.length&&Jn(e,(function(){for(var t=0;t<i.length;t++)fn(e,i[t],"text")}))}}var oi=function(e,t,r){var n=e.display;this.viewport=t,this.visible=Nn(n,e.doc,t),this.editorIsHidden=!n.wrapper.offsetWidth,this.wrapperHeight=n.wrapper.clientHeight,this.wrapperWidth=n.wrapper.clientWidth,this.oldDisplayWidth=Tr(e),this.force=r,this.dims=on(e),this.events=[]};function li(e,t){var r=e.display,n=e.doc;if(t.editorIsHidden)return dn(e),!1;if(!t.force&&t.visible.from>=r.viewFrom&&t.visible.to<=r.viewTo&&(null==r.updateLineNumbers||r.updateLineNumbers>=r.viewTo)&&r.renderedView==r.view&&0==gn(e))return!1;fi(e)&&(dn(e),t.dims=on(e));var i=n.first+n.size,o=Math.max(t.visible.from-e.options.viewportMargin,n.first),l=Math.min(i,t.visible.to+e.options.viewportMargin);r.viewFrom<o&&o-r.viewFrom<20&&(o=Math.max(n.first,r.viewFrom)),r.viewTo>l&&r.viewTo-l<20&&(l=Math.min(i,r.viewTo)),Ct&&(o=zt(e.doc,o),l=Bt(e.doc,l));var s=o!=r.viewFrom||l!=r.viewTo||r.lastWrapHeight!=t.wrapperHeight||r.lastWrapWidth!=t.wrapperWidth;!function(e,t,r){var n=e.display;0==n.view.length||t>=n.viewTo||r<=n.viewFrom?(n.view=ir(e,t,r),n.viewFrom=t):(n.viewFrom>t?n.view=ir(e,t,n.viewFrom).concat(n.view):n.viewFrom<t&&(n.view=n.view.slice(cn(e,t))),n.viewFrom=t,n.viewTo<r?n.view=n.view.concat(ir(e,n.viewTo,r)):n.viewTo>r&&(n.view=n.view.slice(0,cn(e,r)))),n.viewTo=r}(e,o,l),r.viewOffset=Vt(Xe(e.doc,r.viewFrom)),e.display.mover.style.top=r.viewOffset+"px";var u=gn(e);if(!s&&0==u&&!t.force&&r.renderedView==r.view&&(null==r.updateLineNumbers||r.updateLineNumbers>=r.viewTo))return!1;var c=function(e){if(e.hasFocus())return null;var t=W();if(!t||!D(e.display.lineDiv,t))return null;var r={activeElt:t};if(window.getSelection){var n=window.getSelection();n.anchorNode&&n.extend&&D(e.display.lineDiv,n.anchorNode)&&(r.anchorNode=n.anchorNode,r.anchorOffset=n.anchorOffset,r.focusNode=n.focusNode,r.focusOffset=n.focusOffset)}return r}(e);return u>4&&(r.lineDiv.style.display="none"),function(e,t,r){var n=e.display,i=e.options.lineNumbers,o=n.lineDiv,l=o.firstChild;function s(t){var r=t.nextSibling;return a&&y&&e.display.currentWheelTarget==t?t.style.display="none":t.parentNode.removeChild(t),r}for(var u=n.view,c=n.viewFrom,h=0;h<u.length;h++){var f=u[h];if(f.hidden);else if(f.node&&f.node.parentNode==o){for(;l!=f.node;)l=s(l);var d=i&&null!=t&&t<=c&&f.lineNumber;f.changes&&(B(f.changes,"gutter")>-1&&(d=!1),ur(e,f,c,r)),d&&(M(f.lineNumber),f.lineNumber.appendChild(document.createTextNode(Je(e.options,c)))),l=f.node.nextSibling}else{var p=vr(e,f,c,r);o.insertBefore(p,l)}c+=f.size}for(;l;)l=s(l)}(e,r.updateLineNumbers,t.dims),u>4&&(r.lineDiv.style.display=""),r.renderedView=r.view,function(e){if(e&&e.activeElt&&e.activeElt!=W()&&(e.activeElt.focus(),!/^(INPUT|TEXTAREA)$/.test(e.activeElt.nodeName)&&e.anchorNode&&D(document.body,e.anchorNode)&&D(document.body,e.focusNode))){var t=window.getSelection(),r=document.createRange();r.setEnd(e.anchorNode,e.anchorOffset),r.collapse(!1),t.removeAllRanges(),t.addRange(r),t.extend(e.focusNode,e.focusOffset)}}(c),M(r.cursorDiv),M(r.selectionDiv),r.gutters.style.height=r.sizer.style.minHeight=0,s&&(r.lastWrapHeight=t.wrapperHeight,r.lastWrapWidth=t.wrapperWidth,ni(e,400)),r.updateLineNumbers=null,!0}function si(e,t){for(var r=t.viewport,n=!0;;n=!1){if(n&&e.options.lineWrapping&&t.oldDisplayWidth!=Tr(e))n&&(t.visible=Nn(e.display,e.doc,r));else if(r&&null!=r.top&&(r={top:Math.min(e.doc.height+Sr(e.display)-Mr(e),r.top)}),t.visible=Nn(e.display,e.doc,r),t.visible.from>=e.display.viewFrom&&t.visible.to<=e.display.viewTo)break;if(!li(e,t))break;Tn(e);var i=Rn(e);vn(e),Gn(e,i),ci(e,i),t.force=!1}t.signal(e,"update",e),e.display.viewFrom==e.display.reportedViewFrom&&e.display.viewTo==e.display.reportedViewTo||(t.signal(e,"viewportChange",e,e.display.viewFrom,e.display.viewTo),e.display.reportedViewFrom=e.display.viewFrom,e.display.reportedViewTo=e.display.viewTo)}function ai(e,t){var r=new oi(e,t);if(li(e,r)){Tn(e),si(e,r);var n=Rn(e);vn(e),Gn(e,n),ci(e,n),r.finish()}}function ui(e){var t=e.gutters.offsetWidth;e.sizer.style.marginLeft=t+"px"}function ci(e,t){e.display.sizer.style.minHeight=t.docHeight+"px",e.display.heightForcer.style.top=t.docHeight+"px",e.display.gutters.style.height=t.docHeight+e.display.barHeight+kr(e)+"px"}function hi(e){var t=e.display,r=t.view;if(t.alignWidgets||t.gutters.firstChild&&e.options.fixedGutter){for(var n=ln(t)-t.scroller.scrollLeft+e.doc.scrollLeft,i=t.gutters.offsetWidth,o=n+"px",l=0;l<r.length;l++)if(!r[l].hidden){e.options.fixedGutter&&(r[l].gutter&&(r[l].gutter.style.left=o),r[l].gutterBackground&&(r[l].gutterBackground.style.left=o));var s=r[l].alignable;if(s)for(var a=0;a<s.length;a++)s[a].style.left=o}e.options.fixedGutter&&(t.gutters.style.left=n+i+"px")}}function fi(e){if(!e.options.lineNumbers)return!1;var t=e.doc,r=Je(e.options,t.first+t.size-1),n=e.display;if(r.length!=n.lineNumChars){var i=n.measure.appendChild(O("div",[O("div",r)],"CodeMirror-linenumber CodeMirror-gutter-elt")),o=i.firstChild.offsetWidth,l=i.offsetWidth-o;return n.lineGutter.style.width="",n.lineNumInnerWidth=Math.max(o,n.lineGutter.offsetWidth-l)+1,n.lineNumWidth=n.lineNumInnerWidth+l,n.lineNumChars=n.lineNumInnerWidth?r.length:-1,n.lineGutter.style.width=n.lineNumWidth+"px",ui(e.display),!0}return!1}function di(e,t){for(var r=[],n=!1,i=0;i<e.length;i++){var o=e[i],l=null;if("string"!=typeof o&&(l=o.style,o=o.className),"CodeMirror-linenumbers"==o){if(!t)continue;n=!0}r.push({className:o,style:l})}return t&&!n&&r.push({className:"CodeMirror-linenumbers",style:null}),r}function pi(e){var t=e.gutters,r=e.gutterSpecs;M(t),e.lineGutter=null;for(var n=0;n<r.length;++n){var i=r[n],o=i.className,l=i.style,s=t.appendChild(O("div",null,"CodeMirror-gutter "+o));l&&(s.style.cssText=l),"CodeMirror-linenumbers"==o&&(e.lineGutter=s,s.style.width=(e.lineNumWidth||1)+"px")}t.style.display=r.length?"":"none",ui(e)}function gi(e){pi(e.display),hn(e),hi(e)}function vi(e,t,n,i){var o=this;this.input=n,o.scrollbarFiller=O("div",null,"CodeMirror-scrollbar-filler"),o.scrollbarFiller.setAttribute("cm-not-content","true"),o.gutterFiller=O("div",null,"CodeMirror-gutter-filler"),o.gutterFiller.setAttribute("cm-not-content","true"),o.lineDiv=A("div",null,"CodeMirror-code"),o.selectionDiv=O("div",null,null,"position: relative; z-index: 1"),o.cursorDiv=O("div",null,"CodeMirror-cursors"),o.measure=O("div",null,"CodeMirror-measure"),o.lineMeasure=O("div",null,"CodeMirror-measure"),o.lineSpace=A("div",[o.measure,o.lineMeasure,o.selectionDiv,o.cursorDiv,o.lineDiv],null,"position: relative; outline: none");var u=A("div",[o.lineSpace],"CodeMirror-lines");o.mover=O("div",[u],null,"position: relative"),o.sizer=O("div",[o.mover],"CodeMirror-sizer"),o.sizerWidth=null,o.heightForcer=O("div",null,null,"position: absolute; height: 50px; width: 1px;"),o.gutters=O("div",null,"CodeMirror-gutters"),o.lineGutter=null,o.scroller=O("div",[o.sizer,o.heightForcer,o.gutters],"CodeMirror-scroll"),o.scroller.setAttribute("tabIndex","-1"),o.wrapper=O("div",[o.scrollbarFiller,o.gutterFiller,o.scroller],"CodeMirror"),l&&s<8&&(o.gutters.style.zIndex=-1,o.scroller.style.paddingRight=0),a||r&&m||(o.scroller.draggable=!0),e&&(e.appendChild?e.appendChild(o.wrapper):e(o.wrapper)),o.viewFrom=o.viewTo=t.first,o.reportedViewFrom=o.reportedViewTo=t.first,o.view=[],o.renderedView=null,o.externalMeasured=null,o.viewOffset=0,o.lastWrapHeight=o.lastWrapWidth=0,o.updateLineNumbers=null,o.nativeBarWidth=o.barHeight=o.barWidth=0,o.scrollbarsClipped=!1,o.lineNumWidth=o.lineNumInnerWidth=o.lineNumChars=null,o.alignWidgets=!1,o.cachedCharWidth=o.cachedTextHeight=o.cachedPaddingH=null,o.maxLine=null,o.maxLineLength=0,o.maxLineChanged=!1,o.wheelDX=o.wheelDY=o.wheelStartX=o.wheelStartY=null,o.shift=!1,o.selForContextMenu=null,o.activeTouch=null,o.gutterSpecs=di(i.gutters,i.lineNumbers),pi(o),n.init(o)}oi.prototype.signal=function(e,t){me(e,t)&&this.events.push(arguments)},oi.prototype.finish=function(){for(var e=0;e<this.events.length;e++)pe.apply(null,this.events[e])};var mi=0,yi=null;function bi(e){var t=e.wheelDeltaX,r=e.wheelDeltaY;return null==t&&e.detail&&e.axis==e.HORIZONTAL_AXIS&&(t=e.detail),null==r&&e.detail&&e.axis==e.VERTICAL_AXIS?r=e.detail:null==r&&(r=e.wheelDelta),{x:t,y:r}}function wi(e){var t=bi(e);return t.x*=yi,t.y*=yi,t}function xi(e,t){var n=bi(t),i=n.x,o=n.y,l=e.display,s=l.scroller,u=s.scrollWidth>s.clientWidth,c=s.scrollHeight>s.clientHeight;if(i&&u||o&&c){if(o&&y&&a)e:for(var f=t.target,d=l.view;f!=s;f=f.parentNode)for(var p=0;p<d.length;p++)if(d[p].node==f){e.display.currentWheelTarget=f;break e}if(i&&!r&&!h&&null!=yi)return o&&c&&Pn(e,Math.max(0,s.scrollTop+o*yi)),In(e,Math.max(0,s.scrollLeft+i*yi)),(!o||o&&c)&&be(t),void(l.wheelStartX=null);if(o&&null!=yi){var g=o*yi,v=e.doc.scrollTop,m=v+l.wrapper.clientHeight;g<0?v=Math.max(0,v+g-50):m=Math.min(e.doc.height,m+g+50),ai(e,{top:v,bottom:m})}mi<20&&(null==l.wheelStartX?(l.wheelStartX=s.scrollLeft,l.wheelStartY=s.scrollTop,l.wheelDX=i,l.wheelDY=o,setTimeout((function(){if(null!=l.wheelStartX){var e=s.scrollLeft-l.wheelStartX,t=s.scrollTop-l.wheelStartY,r=t&&l.wheelDY&&t/l.wheelDY||e&&l.wheelDX&&e/l.wheelDX;l.wheelStartX=l.wheelStartY=null,r&&(yi=(yi*mi+r)/(mi+1),++mi)}}),200)):(l.wheelDX+=i,l.wheelDY+=o))}}l?yi=-.53:r?yi=15:c?yi=-.7:f&&(yi=-1/3);var Ci=function(e,t){this.ranges=e,this.primIndex=t};Ci.prototype.primary=function(){return this.ranges[this.primIndex]},Ci.prototype.equals=function(e){if(e==this)return!0;if(e.primIndex!=this.primIndex||e.ranges.length!=this.ranges.length)return!1;for(var t=0;t<this.ranges.length;t++){var r=this.ranges[t],n=e.ranges[t];if(!rt(r.anchor,n.anchor)||!rt(r.head,n.head))return!1}return!0},Ci.prototype.deepCopy=function(){for(var e=[],t=0;t<this.ranges.length;t++)e[t]=new Si(nt(this.ranges[t].anchor),nt(this.ranges[t].head));return new Ci(e,this.primIndex)},Ci.prototype.somethingSelected=function(){for(var e=0;e<this.ranges.length;e++)if(!this.ranges[e].empty())return!0;return!1},Ci.prototype.contains=function(e,t){t||(t=e);for(var r=0;r<this.ranges.length;r++){var n=this.ranges[r];if(tt(t,n.from())>=0&&tt(e,n.to())<=0)return r}return-1};var Si=function(e,t){this.anchor=e,this.head=t};function Li(e,t,r){var n=e&&e.options.selectionsMayTouch,i=t[r];t.sort((function(e,t){return tt(e.from(),t.from())})),r=B(t,i);for(var o=1;o<t.length;o++){var l=t[o],s=t[o-1],a=tt(s.to(),l.from());if(n&&!l.empty()?a>0:a>=0){var u=ot(s.from(),l.from()),c=it(s.to(),l.to()),h=s.empty()?l.from()==l.head:s.from()==s.head;o<=r&&--r,t.splice(--o,2,new Si(h?c:u,h?u:c))}}return new Ci(t,r)}function ki(e,t){return new Ci([new Si(e,t||e)],0)}function Ti(e){return e.text?et(e.from.line+e.text.length-1,_(e.text).length+(1==e.text.length?e.from.ch:0)):e.to}function Mi(e,t){if(tt(e,t.from)<0)return e;if(tt(e,t.to)<=0)return Ti(t);var r=e.line+t.text.length-(t.to.line-t.from.line)-1,n=e.ch;return e.line==t.to.line&&(n+=Ti(t).ch-t.to.ch),et(r,n)}function Ni(e,t){for(var r=[],n=0;n<e.sel.ranges.length;n++){var i=e.sel.ranges[n];r.push(new Si(Mi(i.anchor,t),Mi(i.head,t)))}return Li(e.cm,r,e.sel.primIndex)}function Oi(e,t,r){return e.line==t.line?et(r.line,e.ch-t.ch+r.ch):et(r.line+(e.line-t.line),e.ch)}function Ai(e){e.doc.mode=ze(e.options,e.doc.modeOption),Di(e)}function Di(e){e.doc.iter((function(e){e.stateAfter&&(e.stateAfter=null),e.styles&&(e.styles=null)})),e.doc.modeFrontier=e.doc.highlightFrontier=e.doc.first,ni(e,100),e.state.modeGen++,e.curOp&&hn(e)}function Wi(e,t){return 0==t.from.ch&&0==t.to.ch&&""==_(t.text)&&(!e.cm||e.cm.options.wholeLineUpdateBefore)}function Hi(e,t,r,n){function i(e){return r?r[e]:null}function o(e,r,i){!function(e,t,r,n){e.text=t,e.stateAfter&&(e.stateAfter=null),e.styles&&(e.styles=null),null!=e.order&&(e.order=null),Nt(e),Ot(e,r);var i=n?n(e):1;i!=e.height&&$e(e,i)}(e,r,i,n),sr(e,"change",e,t)}function l(e,t){for(var r=[],o=e;o<t;++o)r.push(new Xt(u[o],i(o),n));return r}var s=t.from,a=t.to,u=t.text,c=Xe(e,s.line),h=Xe(e,a.line),f=_(u),d=i(u.length-1),p=a.line-s.line;if(t.full)e.insert(0,l(0,u.length)),e.remove(u.length,e.size-u.length);else if(Wi(e,t)){var g=l(0,u.length-1);o(h,h.text,d),p&&e.remove(s.line,p),g.length&&e.insert(s.line,g)}else if(c==h)if(1==u.length)o(c,c.text.slice(0,s.ch)+f+c.text.slice(a.ch),d);else{var v=l(1,u.length-1);v.push(new Xt(f+c.text.slice(a.ch),d,n)),o(c,c.text.slice(0,s.ch)+u[0],i(0)),e.insert(s.line+1,v)}else if(1==u.length)o(c,c.text.slice(0,s.ch)+u[0]+h.text.slice(a.ch),i(0)),e.remove(s.line+1,p);else{o(c,c.text.slice(0,s.ch)+u[0],i(0)),o(h,f+h.text.slice(a.ch),d);var m=l(1,u.length-1);p>1&&e.remove(s.line+1,p-1),e.insert(s.line+1,m)}sr(e,"change",e,t)}function Fi(e,t,r){!function e(n,i,o){if(n.linked)for(var l=0;l<n.linked.length;++l){var s=n.linked[l];if(s.doc!=i){var a=o&&s.sharedHist;r&&!a||(t(s.doc,a),e(s.doc,n,a))}}}(e,null,!0)}function Pi(e,t){if(t.cm)throw new Error("This document is already in use.");e.doc=t,t.cm=e,an(e),Ai(e),Ei(e),e.options.lineWrapping||jt(e),e.options.mode=t.modeOption,hn(e)}function Ei(e){("rtl"==e.doc.direction?H:T)(e.display.lineDiv,"CodeMirror-rtl")}function Ii(e){this.done=[],this.undone=[],this.undoDepth=e?e.undoDepth:1/0,this.lastModTime=this.lastSelTime=0,this.lastOp=this.lastSelOp=null,this.lastOrigin=this.lastSelOrigin=null,this.generation=this.maxGeneration=e?e.maxGeneration:1}function Ri(e,t){var r={from:nt(t.from),to:Ti(t),text:Ye(e,t.from,t.to)};return Vi(e,r,t.from.line,t.to.line+1),Fi(e,(function(e){return Vi(e,r,t.from.line,t.to.line+1)}),!0),r}function zi(e){for(;e.length;){if(!_(e).ranges)break;e.pop()}}function Bi(e,t,r,n){var i=e.history;i.undone.length=0;var o,l,s=+new Date;if((i.lastOp==n||i.lastOrigin==t.origin&&t.origin&&("+"==t.origin.charAt(0)&&i.lastModTime>s-(e.cm?e.cm.options.historyEventDelay:500)||"*"==t.origin.charAt(0)))&&(o=function(e,t){return t?(zi(e.done),_(e.done)):e.done.length&&!_(e.done).ranges?_(e.done):e.done.length>1&&!e.done[e.done.length-2].ranges?(e.done.pop(),_(e.done)):void 0}(i,i.lastOp==n)))l=_(o.changes),0==tt(t.from,t.to)&&0==tt(t.from,l.to)?l.to=Ti(t):o.changes.push(Ri(e,t));else{var a=_(i.done);for(a&&a.ranges||Ui(e.sel,i.done),o={changes:[Ri(e,t)],generation:i.generation},i.done.push(o);i.done.length>i.undoDepth;)i.done.shift(),i.done[0].ranges||i.done.shift()}i.done.push(r),i.generation=++i.maxGeneration,i.lastModTime=i.lastSelTime=s,i.lastOp=i.lastSelOp=n,i.lastOrigin=i.lastSelOrigin=t.origin,l||pe(e,"historyAdded")}function Gi(e,t,r,n){var i=e.history,o=n&&n.origin;r==i.lastSelOp||o&&i.lastSelOrigin==o&&(i.lastModTime==i.lastSelTime&&i.lastOrigin==o||function(e,t,r,n){var i=t.charAt(0);return"*"==i||"+"==i&&r.ranges.length==n.ranges.length&&r.somethingSelected()==n.somethingSelected()&&new Date-e.history.lastSelTime<=(e.cm?e.cm.options.historyEventDelay:500)}(e,o,_(i.done),t))?i.done[i.done.length-1]=t:Ui(t,i.done),i.lastSelTime=+new Date,i.lastSelOrigin=o,i.lastSelOp=r,n&&!1!==n.clearRedo&&zi(i.undone)}function Ui(e,t){var r=_(t);r&&r.ranges&&r.equals(e)||t.push(e)}function Vi(e,t,r,n){var i=t["spans_"+e.id],o=0;e.iter(Math.max(e.first,r),Math.min(e.first+e.size,n),(function(r){r.markedSpans&&((i||(i=t["spans_"+e.id]={}))[o]=r.markedSpans),++o}))}function Ki(e){if(!e)return null;for(var t,r=0;r<e.length;++r)e[r].marker.explicitlyCleared?t||(t=e.slice(0,r)):t&&t.push(e[r]);return t?t.length?t:null:e}function ji(e,t){var r=function(e,t){var r=t["spans_"+e.id];if(!r)return null;for(var n=[],i=0;i<t.text.length;++i)n.push(Ki(r[i]));return n}(e,t),n=Tt(e,t);if(!r)return n;if(!n)return r;for(var i=0;i<r.length;++i){var o=r[i],l=n[i];if(o&&l)e:for(var s=0;s<l.length;++s){for(var a=l[s],u=0;u<o.length;++u)if(o[u].marker==a.marker)continue e;o.push(a)}else l&&(r[i]=l)}return r}function Xi(e,t,r){for(var n=[],i=0;i<e.length;++i){var o=e[i];if(o.ranges)n.push(r?Ci.prototype.deepCopy.call(o):o);else{var l=o.changes,s=[];n.push({changes:s});for(var a=0;a<l.length;++a){var u=l[a],c=void 0;if(s.push({from:u.from,to:u.to,text:u.text}),t)for(var h in u)(c=h.match(/^spans_(\d+)$/))&&B(t,Number(c[1]))>-1&&(_(s)[h]=u[h],delete u[h])}}}return n}function Yi(e,t,r,n){if(n){var i=e.anchor;if(r){var o=tt(t,i)<0;o!=tt(r,i)<0?(i=t,t=r):o!=tt(t,r)<0&&(t=r)}return new Si(i,t)}return new Si(r||t,t)}function _i(e,t,r,n,i){null==i&&(i=e.cm&&(e.cm.display.shift||e.extend)),Ji(e,new Ci([Yi(e.sel.primary(),t,r,i)],0),n)}function $i(e,t,r){for(var n=[],i=e.cm&&(e.cm.display.shift||e.extend),o=0;o<e.sel.ranges.length;o++)n[o]=Yi(e.sel.ranges[o],t[o],null,i);Ji(e,Li(e.cm,n,e.sel.primIndex),r)}function qi(e,t,r,n){var i=e.sel.ranges.slice(0);i[t]=r,Ji(e,Li(e.cm,i,e.sel.primIndex),n)}function Zi(e,t,r,n){Ji(e,ki(t,r),n)}function Qi(e,t,r){var n=e.history.done,i=_(n);i&&i.ranges?(n[n.length-1]=t,eo(e,t,r)):Ji(e,t,r)}function Ji(e,t,r){eo(e,t,r),Gi(e,e.sel,e.cm?e.cm.curOp.id:NaN,r)}function eo(e,t,r){(me(e,"beforeSelectionChange")||e.cm&&me(e.cm,"beforeSelectionChange"))&&(t=function(e,t,r){var n={ranges:t.ranges,update:function(t){this.ranges=[];for(var r=0;r<t.length;r++)this.ranges[r]=new Si(st(e,t[r].anchor),st(e,t[r].head))},origin:r&&r.origin};return pe(e,"beforeSelectionChange",e,n),e.cm&&pe(e.cm,"beforeSelectionChange",e.cm,n),n.ranges!=t.ranges?Li(e.cm,n.ranges,n.ranges.length-1):t}(e,t,r));var n=r&&r.bias||(tt(t.primary().head,e.sel.primary().head)<0?-1:1);to(e,no(e,t,n,!0)),r&&!1===r.scroll||!e.cm||"nocursor"==e.cm.getOption("readOnly")||Dn(e.cm)}function to(e,t){t.equals(e.sel)||(e.sel=t,e.cm&&(e.cm.curOp.updateInput=1,e.cm.curOp.selectionChanged=!0,ve(e.cm)),sr(e,"cursorActivity",e))}function ro(e){to(e,no(e,e.sel,null,!1))}function no(e,t,r,n){for(var i,o=0;o<t.ranges.length;o++){var l=t.ranges[o],s=t.ranges.length==e.sel.ranges.length&&e.sel.ranges[o],a=oo(e,l.anchor,s&&s.anchor,r,n),u=oo(e,l.head,s&&s.head,r,n);(i||a!=l.anchor||u!=l.head)&&(i||(i=t.ranges.slice(0,o)),i[o]=new Si(a,u))}return i?Li(e.cm,i,t.primIndex):t}function io(e,t,r,n,i){var o=Xe(e,t.line);if(o.markedSpans)for(var l=0;l<o.markedSpans.length;++l){var s=o.markedSpans[l],a=s.marker,u="selectLeft"in a?!a.selectLeft:a.inclusiveLeft,c="selectRight"in a?!a.selectRight:a.inclusiveRight;if((null==s.from||(u?s.from<=t.ch:s.from<t.ch))&&(null==s.to||(c?s.to>=t.ch:s.to>t.ch))){if(i&&(pe(a,"beforeCursorEnter"),a.explicitlyCleared)){if(o.markedSpans){--l;continue}break}if(!a.atomic)continue;if(r){var h=a.find(n<0?1:-1),f=void 0;if((n<0?c:u)&&(h=lo(e,h,-n,h&&h.line==t.line?o:null)),h&&h.line==t.line&&(f=tt(h,r))&&(n<0?f<0:f>0))return io(e,h,t,n,i)}var d=a.find(n<0?-1:1);return(n<0?u:c)&&(d=lo(e,d,n,d.line==t.line?o:null)),d?io(e,d,t,n,i):null}}return t}function oo(e,t,r,n,i){var o=n||1,l=io(e,t,r,o,i)||!i&&io(e,t,r,o,!0)||io(e,t,r,-o,i)||!i&&io(e,t,r,-o,!0);return l||(e.cantEdit=!0,et(e.first,0))}function lo(e,t,r,n){return r<0&&0==t.ch?t.line>e.first?st(e,et(t.line-1)):null:r>0&&t.ch==(n||Xe(e,t.line)).text.length?t.line<e.first+e.size-1?et(t.line+1,0):null:new et(t.line,t.ch+r)}function so(e){e.setSelection(et(e.firstLine(),0),et(e.lastLine()),U)}function ao(e,t,r){var n={canceled:!1,from:t.from,to:t.to,text:t.text,origin:t.origin,cancel:function(){return n.canceled=!0}};return r&&(n.update=function(t,r,i,o){t&&(n.from=st(e,t)),r&&(n.to=st(e,r)),i&&(n.text=i),void 0!==o&&(n.origin=o)}),pe(e,"beforeChange",e,n),e.cm&&pe(e.cm,"beforeChange",e.cm,n),n.canceled?(e.cm&&(e.cm.curOp.updateInput=2),null):{from:n.from,to:n.to,text:n.text,origin:n.origin}}function uo(e,t,r){if(e.cm){if(!e.cm.curOp)return ei(e.cm,uo)(e,t,r);if(e.cm.state.suppressEdits)return}if(!(me(e,"beforeChange")||e.cm&&me(e.cm,"beforeChange"))||(t=ao(e,t,!0))){var n=xt&&!r&&function(e,t,r){var n=null;if(e.iter(t.line,r.line+1,(function(e){if(e.markedSpans)for(var t=0;t<e.markedSpans.length;++t){var r=e.markedSpans[t].marker;!r.readOnly||n&&-1!=B(n,r)||(n||(n=[])).push(r)}})),!n)return null;for(var i=[{from:t,to:r}],o=0;o<n.length;++o)for(var l=n[o],s=l.find(0),a=0;a<i.length;++a){var u=i[a];if(!(tt(u.to,s.from)<0||tt(u.from,s.to)>0)){var c=[a,1],h=tt(u.from,s.from),f=tt(u.to,s.to);(h<0||!l.inclusiveLeft&&!h)&&c.push({from:u.from,to:s.from}),(f>0||!l.inclusiveRight&&!f)&&c.push({from:s.to,to:u.to}),i.splice.apply(i,c),a+=c.length-3}}return i}(e,t.from,t.to);if(n)for(var i=n.length-1;i>=0;--i)co(e,{from:n[i].from,to:n[i].to,text:i?[""]:t.text,origin:t.origin});else co(e,t)}}function co(e,t){if(1!=t.text.length||""!=t.text[0]||0!=tt(t.from,t.to)){var r=Ni(e,t);Bi(e,t,r,e.cm?e.cm.curOp.id:NaN),po(e,t,r,Tt(e,t));var n=[];Fi(e,(function(e,r){r||-1!=B(n,e.history)||(yo(e.history,t),n.push(e.history)),po(e,t,null,Tt(e,t))}))}}function ho(e,t,r){var n=e.cm&&e.cm.state.suppressEdits;if(!n||r){for(var i,o=e.history,l=e.sel,s="undo"==t?o.done:o.undone,a="undo"==t?o.undone:o.done,u=0;u<s.length&&(i=s[u],r?!i.ranges||i.equals(e.sel):i.ranges);u++);if(u!=s.length){for(o.lastOrigin=o.lastSelOrigin=null;;){if(!(i=s.pop()).ranges){if(n)return void s.push(i);break}if(Ui(i,a),r&&!i.equals(e.sel))return void Ji(e,i,{clearRedo:!1});l=i}var c=[];Ui(l,a),a.push({changes:c,generation:o.generation}),o.generation=i.generation||++o.maxGeneration;for(var h=me(e,"beforeChange")||e.cm&&me(e.cm,"beforeChange"),f=function(r){var n=i.changes[r];if(n.origin=t,h&&!ao(e,n,!1))return s.length=0,{};c.push(Ri(e,n));var o=r?Ni(e,n):_(s);po(e,n,o,ji(e,n)),!r&&e.cm&&e.cm.scrollIntoView({from:n.from,to:Ti(n)});var l=[];Fi(e,(function(e,t){t||-1!=B(l,e.history)||(yo(e.history,n),l.push(e.history)),po(e,n,null,ji(e,n))}))},d=i.changes.length-1;d>=0;--d){var p=f(d);if(p)return p.v}}}}function fo(e,t){if(0!=t&&(e.first+=t,e.sel=new Ci($(e.sel.ranges,(function(e){return new Si(et(e.anchor.line+t,e.anchor.ch),et(e.head.line+t,e.head.ch))})),e.sel.primIndex),e.cm)){hn(e.cm,e.first,e.first-t,t);for(var r=e.cm.display,n=r.viewFrom;n<r.viewTo;n++)fn(e.cm,n,"gutter")}}function po(e,t,r,n){if(e.cm&&!e.cm.curOp)return ei(e.cm,po)(e,t,r,n);if(t.to.line<e.first)fo(e,t.text.length-1-(t.to.line-t.from.line));else if(!(t.from.line>e.lastLine())){if(t.from.line<e.first){var i=t.text.length-1-(e.first-t.from.line);fo(e,i),t={from:et(e.first,0),to:et(t.to.line+i,t.to.ch),text:[_(t.text)],origin:t.origin}}var o=e.lastLine();t.to.line>o&&(t={from:t.from,to:et(o,Xe(e,o).text.length),text:[t.text[0]],origin:t.origin}),t.removed=Ye(e,t.from,t.to),r||(r=Ni(e,t)),e.cm?function(e,t,r){var n=e.doc,i=e.display,o=t.from,l=t.to,s=!1,a=o.line;e.options.lineWrapping||(a=qe(Rt(Xe(n,o.line))),n.iter(a,l.line+1,(function(e){if(e==i.maxLine)return s=!0,!0})));n.sel.contains(t.from,t.to)>-1&&ve(e);Hi(n,t,r,sn(e)),e.options.lineWrapping||(n.iter(a,o.line+t.text.length,(function(e){var t=Kt(e);t>i.maxLineLength&&(i.maxLine=e,i.maxLineLength=t,i.maxLineChanged=!0,s=!1)})),s&&(e.curOp.updateMaxLine=!0));(function(e,t){if(e.modeFrontier=Math.min(e.modeFrontier,t),!(e.highlightFrontier<t-10)){for(var r=e.first,n=t-1;n>r;n--){var i=Xe(e,n).stateAfter;if(i&&(!(i instanceof ut)||n+i.lookAhead<t)){r=n+1;break}}e.highlightFrontier=Math.min(e.highlightFrontier,r)}})(n,o.line),ni(e,400);var u=t.text.length-(l.line-o.line)-1;t.full?hn(e):o.line!=l.line||1!=t.text.length||Wi(e.doc,t)?hn(e,o.line,l.line+1,u):fn(e,o.line,"text");var c=me(e,"changes"),h=me(e,"change");if(h||c){var f={from:o,to:l,text:t.text,removed:t.removed,origin:t.origin};h&&sr(e,"change",e,f),c&&(e.curOp.changeObjs||(e.curOp.changeObjs=[])).push(f)}e.display.selForContextMenu=null}(e.cm,t,n):Hi(e,t,n),eo(e,r,U),e.cantEdit&&oo(e,et(e.firstLine(),0))&&(e.cantEdit=!1)}}function go(e,t,r,n,i){var o;n||(n=r),tt(n,r)<0&&(r=(o=[n,r])[0],n=o[1]),"string"==typeof t&&(t=e.splitLines(t)),uo(e,{from:r,to:n,text:t,origin:i})}function vo(e,t,r,n){r<e.line?e.line+=n:t<e.line&&(e.line=t,e.ch=0)}function mo(e,t,r,n){for(var i=0;i<e.length;++i){var o=e[i],l=!0;if(o.ranges){o.copied||((o=e[i]=o.deepCopy()).copied=!0);for(var s=0;s<o.ranges.length;s++)vo(o.ranges[s].anchor,t,r,n),vo(o.ranges[s].head,t,r,n)}else{for(var a=0;a<o.changes.length;++a){var u=o.changes[a];if(r<u.from.line)u.from=et(u.from.line+n,u.from.ch),u.to=et(u.to.line+n,u.to.ch);else if(t<=u.to.line){l=!1;break}}l||(e.splice(0,i+1),i=0)}}}function yo(e,t){var r=t.from.line,n=t.to.line,i=t.text.length-(n-r)-1;mo(e.done,r,n,i),mo(e.undone,r,n,i)}function bo(e,t,r,n){var i=t,o=t;return"number"==typeof t?o=Xe(e,lt(e,t)):i=qe(t),null==i?null:(n(o,i)&&e.cm&&fn(e.cm,i,r),o)}function wo(e){this.lines=e,this.parent=null;for(var t=0,r=0;r<e.length;++r)e[r].parent=this,t+=e[r].height;this.height=t}function xo(e){this.children=e;for(var t=0,r=0,n=0;n<e.length;++n){var i=e[n];t+=i.chunkSize(),r+=i.height,i.parent=this}this.size=t,this.height=r,this.parent=null}Si.prototype.from=function(){return ot(this.anchor,this.head)},Si.prototype.to=function(){return it(this.anchor,this.head)},Si.prototype.empty=function(){return this.head.line==this.anchor.line&&this.head.ch==this.anchor.ch},wo.prototype={chunkSize:function(){return this.lines.length},removeInner:function(e,t){for(var r=e,n=e+t;r<n;++r){var i=this.lines[r];this.height-=i.height,Yt(i),sr(i,"delete")}this.lines.splice(e,t)},collapse:function(e){e.push.apply(e,this.lines)},insertInner:function(e,t,r){this.height+=r,this.lines=this.lines.slice(0,e).concat(t).concat(this.lines.slice(e));for(var n=0;n<t.length;++n)t[n].parent=this},iterN:function(e,t,r){for(var n=e+t;e<n;++e)if(r(this.lines[e]))return!0}},xo.prototype={chunkSize:function(){return this.size},removeInner:function(e,t){this.size-=t;for(var r=0;r<this.children.length;++r){var n=this.children[r],i=n.chunkSize();if(e<i){var o=Math.min(t,i-e),l=n.height;if(n.removeInner(e,o),this.height-=l-n.height,i==o&&(this.children.splice(r--,1),n.parent=null),0==(t-=o))break;e=0}else e-=i}if(this.size-t<25&&(this.children.length>1||!(this.children[0]instanceof wo))){var s=[];this.collapse(s),this.children=[new wo(s)],this.children[0].parent=this}},collapse:function(e){for(var t=0;t<this.children.length;++t)this.children[t].collapse(e)},insertInner:function(e,t,r){this.size+=t.length,this.height+=r;for(var n=0;n<this.children.length;++n){var i=this.children[n],o=i.chunkSize();if(e<=o){if(i.insertInner(e,t,r),i.lines&&i.lines.length>50){for(var l=i.lines.length%25+25,s=l;s<i.lines.length;){var a=new wo(i.lines.slice(s,s+=25));i.height-=a.height,this.children.splice(++n,0,a),a.parent=this}i.lines=i.lines.slice(0,l),this.maybeSpill()}break}e-=o}},maybeSpill:function(){if(!(this.children.length<=10)){var e=this;do{var t=new xo(e.children.splice(e.children.length-5,5));if(e.parent){e.size-=t.size,e.height-=t.height;var r=B(e.parent.children,e);e.parent.children.splice(r+1,0,t)}else{var n=new xo(e.children);n.parent=e,e.children=[n,t],e=n}t.parent=e.parent}while(e.children.length>10);e.parent.maybeSpill()}},iterN:function(e,t,r){for(var n=0;n<this.children.length;++n){var i=this.children[n],o=i.chunkSize();if(e<o){var l=Math.min(t,o-e);if(i.iterN(e,l,r))return!0;if(0==(t-=l))break;e=0}else e-=o}}};var Co=function(e,t,r){if(r)for(var n in r)r.hasOwnProperty(n)&&(this[n]=r[n]);this.doc=e,this.node=t};function So(e,t,r){Vt(t)<(e.curOp&&e.curOp.scrollTop||e.doc.scrollTop)&&An(e,r)}Co.prototype.clear=function(){var e=this.doc.cm,t=this.line.widgets,r=this.line,n=qe(r);if(null!=n&&t){for(var i=0;i<t.length;++i)t[i]==this&&t.splice(i--,1);t.length||(r.widgets=null);var o=wr(this);$e(r,Math.max(0,r.height-o)),e&&(Jn(e,(function(){So(e,r,-o),fn(e,n,"widget")})),sr(e,"lineWidgetCleared",e,this,n))}},Co.prototype.changed=function(){var e=this,t=this.height,r=this.doc.cm,n=this.line;this.height=null;var i=wr(this)-t;i&&(Gt(this.doc,n)||$e(n,n.height+i),r&&Jn(r,(function(){r.curOp.forceUpdate=!0,So(r,n,i),sr(r,"lineWidgetChanged",r,e,qe(n))})))},ye(Co);var Lo=0,ko=function(e,t){this.lines=[],this.type=t,this.doc=e,this.id=++Lo};function To(e,t,r,n,i){if(n&&n.shared)return function(e,t,r,n,i){(n=I(n)).shared=!1;var o=[To(e,t,r,n,i)],l=o[0],s=n.widgetNode;return Fi(e,(function(e){s&&(n.widgetNode=s.cloneNode(!0)),o.push(To(e,st(e,t),st(e,r),n,i));for(var a=0;a<e.linked.length;++a)if(e.linked[a].isParent)return;l=_(o)})),new Mo(o,l)}(e,t,r,n,i);if(e.cm&&!e.cm.curOp)return ei(e.cm,To)(e,t,r,n,i);var o=new ko(e,i),l=tt(t,r);if(n&&I(n,o,!1),l>0||0==l&&!1!==o.clearWhenEmpty)return o;if(o.replacedWith&&(o.collapsed=!0,o.widgetNode=A("span",[o.replacedWith],"CodeMirror-widget"),n.handleMouseEvents||o.widgetNode.setAttribute("cm-ignore-events","true"),n.insertLeft&&(o.widgetNode.insertLeft=!0)),o.collapsed){if(It(e,t.line,t,r,o)||t.line!=r.line&&It(e,r.line,t,r,o))throw new Error("Inserting collapsed marker partially overlapping an existing one");Ct=!0}o.addToHistory&&Bi(e,{from:t,to:r,origin:"markText"},e.sel,NaN);var s,a=t.line,u=e.cm;if(e.iter(a,r.line+1,(function(e){u&&o.collapsed&&!u.options.lineWrapping&&Rt(e)==u.display.maxLine&&(s=!0),o.collapsed&&a!=t.line&&$e(e,0),function(e,t){e.markedSpans=e.markedSpans?e.markedSpans.concat([t]):[t],t.marker.attachLine(e)}(e,new St(o,a==t.line?t.ch:null,a==r.line?r.ch:null)),++a})),o.collapsed&&e.iter(t.line,r.line+1,(function(t){Gt(e,t)&&$e(t,0)})),o.clearOnEnter&&he(o,"beforeCursorEnter",(function(){return o.clear()})),o.readOnly&&(xt=!0,(e.history.done.length||e.history.undone.length)&&e.clearHistory()),o.collapsed&&(o.id=++Lo,o.atomic=!0),u){if(s&&(u.curOp.updateMaxLine=!0),o.collapsed)hn(u,t.line,r.line+1);else if(o.className||o.startStyle||o.endStyle||o.css||o.attributes||o.title)for(var c=t.line;c<=r.line;c++)fn(u,c,"text");o.atomic&&ro(u.doc),sr(u,"markerAdded",u,o)}return o}ko.prototype.clear=function(){if(!this.explicitlyCleared){var e=this.doc.cm,t=e&&!e.curOp;if(t&&Xn(e),me(this,"clear")){var r=this.find();r&&sr(this,"clear",r.from,r.to)}for(var n=null,i=null,o=0;o<this.lines.length;++o){var l=this.lines[o],s=Lt(l.markedSpans,this);e&&!this.collapsed?fn(e,qe(l),"text"):e&&(null!=s.to&&(i=qe(l)),null!=s.from&&(n=qe(l))),l.markedSpans=kt(l.markedSpans,s),null==s.from&&this.collapsed&&!Gt(this.doc,l)&&e&&$e(l,rn(e.display))}if(e&&this.collapsed&&!e.options.lineWrapping)for(var a=0;a<this.lines.length;++a){var u=Rt(this.lines[a]),c=Kt(u);c>e.display.maxLineLength&&(e.display.maxLine=u,e.display.maxLineLength=c,e.display.maxLineChanged=!0)}null!=n&&e&&this.collapsed&&hn(e,n,i+1),this.lines.length=0,this.explicitlyCleared=!0,this.atomic&&this.doc.cantEdit&&(this.doc.cantEdit=!1,e&&ro(e.doc)),e&&sr(e,"markerCleared",e,this,n,i),t&&Yn(e),this.parent&&this.parent.clear()}},ko.prototype.find=function(e,t){var r,n;null==e&&"bookmark"==this.type&&(e=1);for(var i=0;i<this.lines.length;++i){var o=this.lines[i],l=Lt(o.markedSpans,this);if(null!=l.from&&(r=et(t?o:qe(o),l.from),-1==e))return r;if(null!=l.to&&(n=et(t?o:qe(o),l.to),1==e))return n}return r&&{from:r,to:n}},ko.prototype.changed=function(){var e=this,t=this.find(-1,!0),r=this,n=this.doc.cm;t&&n&&Jn(n,(function(){var i=t.line,o=qe(t.line),l=Ar(n,o);if(l&&(Ir(l),n.curOp.selectionChanged=n.curOp.forceUpdate=!0),n.curOp.updateMaxLine=!0,!Gt(r.doc,i)&&null!=r.height){var s=r.height;r.height=null;var a=wr(r)-s;a&&$e(i,i.height+a)}sr(n,"markerChanged",n,e)}))},ko.prototype.attachLine=function(e){if(!this.lines.length&&this.doc.cm){var t=this.doc.cm.curOp;t.maybeHiddenMarkers&&-1!=B(t.maybeHiddenMarkers,this)||(t.maybeUnhiddenMarkers||(t.maybeUnhiddenMarkers=[])).push(this)}this.lines.push(e)},ko.prototype.detachLine=function(e){if(this.lines.splice(B(this.lines,e),1),!this.lines.length&&this.doc.cm){var t=this.doc.cm.curOp;(t.maybeHiddenMarkers||(t.maybeHiddenMarkers=[])).push(this)}},ye(ko);var Mo=function(e,t){this.markers=e,this.primary=t;for(var r=0;r<e.length;++r)e[r].parent=this};function No(e){return e.findMarks(et(e.first,0),e.clipPos(et(e.lastLine())),(function(e){return e.parent}))}function Oo(e){for(var t=function(t){var r=e[t],n=[r.primary.doc];Fi(r.primary.doc,(function(e){return n.push(e)}));for(var i=0;i<r.markers.length;i++){var o=r.markers[i];-1==B(n,o.doc)&&(o.parent=null,r.markers.splice(i--,1))}},r=0;r<e.length;r++)t(r)}Mo.prototype.clear=function(){if(!this.explicitlyCleared){this.explicitlyCleared=!0;for(var e=0;e<this.markers.length;++e)this.markers[e].clear();sr(this,"clear")}},Mo.prototype.find=function(e,t){return this.primary.find(e,t)},ye(Mo);var Ao=0,Do=function(e,t,r,n,i){if(!(this instanceof Do))return new Do(e,t,r,n,i);null==r&&(r=0),xo.call(this,[new wo([new Xt("",null)])]),this.first=r,this.scrollTop=this.scrollLeft=0,this.cantEdit=!1,this.cleanGeneration=1,this.modeFrontier=this.highlightFrontier=r;var o=et(r,0);this.sel=ki(o),this.history=new Ii(null),this.id=++Ao,this.modeOption=t,this.lineSep=n,this.direction="rtl"==i?"rtl":"ltr",this.extend=!1,"string"==typeof e&&(e=this.splitLines(e)),Hi(this,{from:o,to:o,text:e}),Ji(this,ki(o),U)};Do.prototype=Z(xo.prototype,{constructor:Do,iter:function(e,t,r){r?this.iterN(e-this.first,t-e,r):this.iterN(this.first,this.first+this.size,e)},insert:function(e,t){for(var r=0,n=0;n<t.length;++n)r+=t[n].height;this.insertInner(e-this.first,t,r)},remove:function(e,t){this.removeInner(e-this.first,t)},getValue:function(e){var t=_e(this,this.first,this.first+this.size);return!1===e?t:t.join(e||this.lineSeparator())},setValue:ri((function(e){var t=et(this.first,0),r=this.first+this.size-1;uo(this,{from:t,to:et(r,Xe(this,r).text.length),text:this.splitLines(e),origin:"setValue",full:!0},!0),this.cm&&Wn(this.cm,0,0),Ji(this,ki(t),U)})),replaceRange:function(e,t,r,n){go(this,e,t=st(this,t),r=r?st(this,r):t,n)},getRange:function(e,t,r){var n=Ye(this,st(this,e),st(this,t));return!1===r?n:n.join(r||this.lineSeparator())},getLine:function(e){var t=this.getLineHandle(e);return t&&t.text},getLineHandle:function(e){if(Qe(this,e))return Xe(this,e)},getLineNumber:function(e){return qe(e)},getLineHandleVisualStart:function(e){return"number"==typeof e&&(e=Xe(this,e)),Rt(e)},lineCount:function(){return this.size},firstLine:function(){return this.first},lastLine:function(){return this.first+this.size-1},clipPos:function(e){return st(this,e)},getCursor:function(e){var t=this.sel.primary();return null==e||"head"==e?t.head:"anchor"==e?t.anchor:"end"==e||"to"==e||!1===e?t.to():t.from()},listSelections:function(){return this.sel.ranges},somethingSelected:function(){return this.sel.somethingSelected()},setCursor:ri((function(e,t,r){Zi(this,st(this,"number"==typeof e?et(e,t||0):e),null,r)})),setSelection:ri((function(e,t,r){Zi(this,st(this,e),st(this,t||e),r)})),extendSelection:ri((function(e,t,r){_i(this,st(this,e),t&&st(this,t),r)})),extendSelections:ri((function(e,t){$i(this,at(this,e),t)})),extendSelectionsBy:ri((function(e,t){$i(this,at(this,$(this.sel.ranges,e)),t)})),setSelections:ri((function(e,t,r){if(e.length){for(var n=[],i=0;i<e.length;i++)n[i]=new Si(st(this,e[i].anchor),st(this,e[i].head));null==t&&(t=Math.min(e.length-1,this.sel.primIndex)),Ji(this,Li(this.cm,n,t),r)}})),addSelection:ri((function(e,t,r){var n=this.sel.ranges.slice(0);n.push(new Si(st(this,e),st(this,t||e))),Ji(this,Li(this.cm,n,n.length-1),r)})),getSelection:function(e){for(var t,r=this.sel.ranges,n=0;n<r.length;n++){var i=Ye(this,r[n].from(),r[n].to());t=t?t.concat(i):i}return!1===e?t:t.join(e||this.lineSeparator())},getSelections:function(e){for(var t=[],r=this.sel.ranges,n=0;n<r.length;n++){var i=Ye(this,r[n].from(),r[n].to());!1!==e&&(i=i.join(e||this.lineSeparator())),t[n]=i}return t},replaceSelection:function(e,t,r){for(var n=[],i=0;i<this.sel.ranges.length;i++)n[i]=e;this.replaceSelections(n,t,r||"+input")},replaceSelections:ri((function(e,t,r){for(var n=[],i=this.sel,o=0;o<i.ranges.length;o++){var l=i.ranges[o];n[o]={from:l.from(),to:l.to(),text:this.splitLines(e[o]),origin:r}}for(var s=t&&"end"!=t&&function(e,t,r){for(var n=[],i=et(e.first,0),o=i,l=0;l<t.length;l++){var s=t[l],a=Oi(s.from,i,o),u=Oi(Ti(s),i,o);if(i=s.to,o=u,"around"==r){var c=e.sel.ranges[l],h=tt(c.head,c.anchor)<0;n[l]=new Si(h?u:a,h?a:u)}else n[l]=new Si(a,a)}return new Ci(n,e.sel.primIndex)}(this,n,t),a=n.length-1;a>=0;a--)uo(this,n[a]);s?Qi(this,s):this.cm&&Dn(this.cm)})),undo:ri((function(){ho(this,"undo")})),redo:ri((function(){ho(this,"redo")})),undoSelection:ri((function(){ho(this,"undo",!0)})),redoSelection:ri((function(){ho(this,"redo",!0)})),setExtending:function(e){this.extend=e},getExtending:function(){return this.extend},historySize:function(){for(var e=this.history,t=0,r=0,n=0;n<e.done.length;n++)e.done[n].ranges||++t;for(var i=0;i<e.undone.length;i++)e.undone[i].ranges||++r;return{undo:t,redo:r}},clearHistory:function(){var e=this;this.history=new Ii(this.history),Fi(this,(function(t){return t.history=e.history}),!0)},markClean:function(){this.cleanGeneration=this.changeGeneration(!0)},changeGeneration:function(e){return e&&(this.history.lastOp=this.history.lastSelOp=this.history.lastOrigin=null),this.history.generation},isClean:function(e){return this.history.generation==(e||this.cleanGeneration)},getHistory:function(){return{done:Xi(this.history.done),undone:Xi(this.history.undone)}},setHistory:function(e){var t=this.history=new Ii(this.history);t.done=Xi(e.done.slice(0),null,!0),t.undone=Xi(e.undone.slice(0),null,!0)},setGutterMarker:ri((function(e,t,r){return bo(this,e,"gutter",(function(e){var n=e.gutterMarkers||(e.gutterMarkers={});return n[t]=r,!r&&te(n)&&(e.gutterMarkers=null),!0}))})),clearGutter:ri((function(e){var t=this;this.iter((function(r){r.gutterMarkers&&r.gutterMarkers[e]&&bo(t,r,"gutter",(function(){return r.gutterMarkers[e]=null,te(r.gutterMarkers)&&(r.gutterMarkers=null),!0}))}))})),lineInfo:function(e){var t;if("number"==typeof e){if(!Qe(this,e))return null;if(t=e,!(e=Xe(this,e)))return null}else if(null==(t=qe(e)))return null;return{line:t,handle:e,text:e.text,gutterMarkers:e.gutterMarkers,textClass:e.textClass,bgClass:e.bgClass,wrapClass:e.wrapClass,widgets:e.widgets}},addLineClass:ri((function(e,t,r){return bo(this,e,"gutter"==t?"gutter":"class",(function(e){var n="text"==t?"textClass":"background"==t?"bgClass":"gutter"==t?"gutterClass":"wrapClass";if(e[n]){if(L(r).test(e[n]))return!1;e[n]+=" "+r}else e[n]=r;return!0}))})),removeLineClass:ri((function(e,t,r){return bo(this,e,"gutter"==t?"gutter":"class",(function(e){var n="text"==t?"textClass":"background"==t?"bgClass":"gutter"==t?"gutterClass":"wrapClass",i=e[n];if(!i)return!1;if(null==r)e[n]=null;else{var o=i.match(L(r));if(!o)return!1;var l=o.index+o[0].length;e[n]=i.slice(0,o.index)+(o.index&&l!=i.length?" ":"")+i.slice(l)||null}return!0}))})),addLineWidget:ri((function(e,t,r){return function(e,t,r,n){var i=new Co(e,r,n),o=e.cm;return o&&i.noHScroll&&(o.display.alignWidgets=!0),bo(e,t,"widget",(function(t){var r=t.widgets||(t.widgets=[]);if(null==i.insertAt?r.push(i):r.splice(Math.min(r.length,Math.max(0,i.insertAt)),0,i),i.line=t,o&&!Gt(e,t)){var n=Vt(t)<e.scrollTop;$e(t,t.height+wr(i)),n&&An(o,i.height),o.curOp.forceUpdate=!0}return!0})),o&&sr(o,"lineWidgetAdded",o,i,"number"==typeof t?t:qe(t)),i}(this,e,t,r)})),removeLineWidget:function(e){e.clear()},markText:function(e,t,r){return To(this,st(this,e),st(this,t),r,r&&r.type||"range")},setBookmark:function(e,t){var r={replacedWith:t&&(null==t.nodeType?t.widget:t),insertLeft:t&&t.insertLeft,clearWhenEmpty:!1,shared:t&&t.shared,handleMouseEvents:t&&t.handleMouseEvents};return To(this,e=st(this,e),e,r,"bookmark")},findMarksAt:function(e){var t=[],r=Xe(this,(e=st(this,e)).line).markedSpans;if(r)for(var n=0;n<r.length;++n){var i=r[n];(null==i.from||i.from<=e.ch)&&(null==i.to||i.to>=e.ch)&&t.push(i.marker.parent||i.marker)}return t},findMarks:function(e,t,r){e=st(this,e),t=st(this,t);var n=[],i=e.line;return this.iter(e.line,t.line+1,(function(o){var l=o.markedSpans;if(l)for(var s=0;s<l.length;s++){var a=l[s];null!=a.to&&i==e.line&&e.ch>=a.to||null==a.from&&i!=e.line||null!=a.from&&i==t.line&&a.from>=t.ch||r&&!r(a.marker)||n.push(a.marker.parent||a.marker)}++i})),n},getAllMarks:function(){var e=[];return this.iter((function(t){var r=t.markedSpans;if(r)for(var n=0;n<r.length;++n)null!=r[n].from&&e.push(r[n].marker)})),e},posFromIndex:function(e){var t,r=this.first,n=this.lineSeparator().length;return this.iter((function(i){var o=i.text.length+n;if(o>e)return t=e,!0;e-=o,++r})),st(this,et(r,t))},indexFromPos:function(e){var t=(e=st(this,e)).ch;if(e.line<this.first||e.ch<0)return 0;var r=this.lineSeparator().length;return this.iter(this.first,e.line,(function(e){t+=e.text.length+r})),t},copy:function(e){var t=new Do(_e(this,this.first,this.first+this.size),this.modeOption,this.first,this.lineSep,this.direction);return t.scrollTop=this.scrollTop,t.scrollLeft=this.scrollLeft,t.sel=this.sel,t.extend=!1,e&&(t.history.undoDepth=this.history.undoDepth,t.setHistory(this.getHistory())),t},linkedDoc:function(e){e||(e={});var t=this.first,r=this.first+this.size;null!=e.from&&e.from>t&&(t=e.from),null!=e.to&&e.to<r&&(r=e.to);var n=new Do(_e(this,t,r),e.mode||this.modeOption,t,this.lineSep,this.direction);return e.sharedHist&&(n.history=this.history),(this.linked||(this.linked=[])).push({doc:n,sharedHist:e.sharedHist}),n.linked=[{doc:this,isParent:!0,sharedHist:e.sharedHist}],function(e,t){for(var r=0;r<t.length;r++){var n=t[r],i=n.find(),o=e.clipPos(i.from),l=e.clipPos(i.to);if(tt(o,l)){var s=To(e,o,l,n.primary,n.primary.type);n.markers.push(s),s.parent=n}}}(n,No(this)),n},unlinkDoc:function(e){if(e instanceof Ml&&(e=e.doc),this.linked)for(var t=0;t<this.linked.length;++t){if(this.linked[t].doc==e){this.linked.splice(t,1),e.unlinkDoc(this),Oo(No(this));break}}if(e.history==this.history){var r=[e.id];Fi(e,(function(e){return r.push(e.id)}),!0),e.history=new Ii(null),e.history.done=Xi(this.history.done,r),e.history.undone=Xi(this.history.undone,r)}},iterLinkedDocs:function(e){Fi(this,e)},getMode:function(){return this.mode},getEditor:function(){return this.cm},splitLines:function(e){return this.lineSep?e.split(this.lineSep):De(e)},lineSeparator:function(){return this.lineSep||"\n"},setDirection:ri((function(e){var t;("rtl"!=e&&(e="ltr"),e!=this.direction)&&(this.direction=e,this.iter((function(e){return e.order=null})),this.cm&&Jn(t=this.cm,(function(){Ei(t),hn(t)})))}))}),Do.prototype.eachLine=Do.prototype.iter;var Wo=0;function Ho(e){var t=this;if(Fo(t),!ge(t,e)&&!xr(t.display,e)){be(e),l&&(Wo=+new Date);var r=un(t,e,!0),n=e.dataTransfer.files;if(r&&!t.isReadOnly())if(n&&n.length&&window.FileReader&&window.File)for(var i=n.length,o=Array(i),s=0,a=function(){++s==i&&ei(t,(function(){var e={from:r=st(t.doc,r),to:r,text:t.doc.splitLines(o.filter((function(e){return null!=e})).join(t.doc.lineSeparator())),origin:"paste"};uo(t.doc,e),Qi(t.doc,ki(st(t.doc,r),st(t.doc,Ti(e))))}))()},u=function(e,r){if(t.options.allowDropFileTypes&&-1==B(t.options.allowDropFileTypes,e.type))a();else{var n=new FileReader;n.onerror=function(){return a()},n.onload=function(){var e=n.result;/[\x00-\x08\x0e-\x1f]{2}/.test(e)||(o[r]=e),a()},n.readAsText(e)}},c=0;c<n.length;c++)u(n[c],c);else{if(t.state.draggingText&&t.doc.sel.contains(r)>-1)return t.state.draggingText(e),void setTimeout((function(){return t.display.input.focus()}),20);try{var h=e.dataTransfer.getData("Text");if(h){var f;if(t.state.draggingText&&!t.state.draggingText.copy&&(f=t.listSelections()),eo(t.doc,ki(r,r)),f)for(var d=0;d<f.length;++d)go(t.doc,"",f[d].anchor,f[d].head,"drag");t.replaceSelection(h,"around","paste"),t.display.input.focus()}}catch(e){}}}}function Fo(e){e.display.dragCursor&&(e.display.lineSpace.removeChild(e.display.dragCursor),e.display.dragCursor=null)}function Po(e){if(document.getElementsByClassName){for(var t=document.getElementsByClassName("CodeMirror"),r=[],n=0;n<t.length;n++){var i=t[n].CodeMirror;i&&r.push(i)}r.length&&r[0].operation((function(){for(var t=0;t<r.length;t++)e(r[t])}))}}var Eo=!1;function Io(){var e;Eo||(he(window,"resize",(function(){null==e&&(e=setTimeout((function(){e=null,Po(Ro)}),100))})),he(window,"blur",(function(){return Po(kn)})),Eo=!0)}function Ro(e){var t=e.display;t.cachedCharWidth=t.cachedTextHeight=t.cachedPaddingH=null,t.scrollbarsClipped=!1,e.setSize()}for(var zo={3:"Pause",8:"Backspace",9:"Tab",13:"Enter",16:"Shift",17:"Ctrl",18:"Alt",19:"Pause",20:"CapsLock",27:"Esc",32:"Space",33:"PageUp",34:"PageDown",35:"End",36:"Home",37:"Left",38:"Up",39:"Right",40:"Down",44:"PrintScrn",45:"Insert",46:"Delete",59:";",61:"=",91:"Mod",92:"Mod",93:"Mod",106:"*",107:"=",109:"-",110:".",111:"/",145:"ScrollLock",173:"-",186:";",187:"=",188:",",189:"-",190:".",191:"/",192:"`",219:"[",220:"\\",221:"]",222:"'",224:"Mod",63232:"Up",63233:"Down",63234:"Left",63235:"Right",63272:"Delete",63273:"Home",63275:"End",63276:"PageUp",63277:"PageDown",63302:"Insert"},Bo=0;Bo<10;Bo++)zo[Bo+48]=zo[Bo+96]=String(Bo);for(var Go=65;Go<=90;Go++)zo[Go]=String.fromCharCode(Go);for(var Uo=1;Uo<=12;Uo++)zo[Uo+111]=zo[Uo+63235]="F"+Uo;var Vo={};function Ko(e){var t,r,n,i,o=e.split(/-(?!$)/);e=o[o.length-1];for(var l=0;l<o.length-1;l++){var s=o[l];if(/^(cmd|meta|m)$/i.test(s))i=!0;else if(/^a(lt)?$/i.test(s))t=!0;else if(/^(c|ctrl|control)$/i.test(s))r=!0;else{if(!/^s(hift)?$/i.test(s))throw new Error("Unrecognized modifier name: "+s);n=!0}}return t&&(e="Alt-"+e),r&&(e="Ctrl-"+e),i&&(e="Cmd-"+e),n&&(e="Shift-"+e),e}function jo(e){var t={};for(var r in e)if(e.hasOwnProperty(r)){var n=e[r];if(/^(name|fallthrough|(de|at)tach)$/.test(r))continue;if("..."==n){delete e[r];continue}for(var i=$(r.split(" "),Ko),o=0;o<i.length;o++){var l=void 0,s=void 0;o==i.length-1?(s=i.join(" "),l=n):(s=i.slice(0,o+1).join(" "),l="...");var a=t[s];if(a){if(a!=l)throw new Error("Inconsistent bindings for "+s)}else t[s]=l}delete e[r]}for(var u in t)e[u]=t[u];return e}function Xo(e,t,r,n){var i=(t=qo(t)).call?t.call(e,n):t[e];if(!1===i)return"nothing";if("..."===i)return"multi";if(null!=i&&r(i))return"handled";if(t.fallthrough){if("[object Array]"!=Object.prototype.toString.call(t.fallthrough))return Xo(e,t.fallthrough,r,n);for(var o=0;o<t.fallthrough.length;o++){var l=Xo(e,t.fallthrough[o],r,n);if(l)return l}}}function Yo(e){var t="string"==typeof e?e:zo[e.keyCode];return"Ctrl"==t||"Alt"==t||"Shift"==t||"Mod"==t}function _o(e,t,r){var n=e;return t.altKey&&"Alt"!=n&&(e="Alt-"+e),(C?t.metaKey:t.ctrlKey)&&"Ctrl"!=n&&(e="Ctrl-"+e),(C?t.ctrlKey:t.metaKey)&&"Mod"!=n&&(e="Cmd-"+e),!r&&t.shiftKey&&"Shift"!=n&&(e="Shift-"+e),e}function $o(e,t){if(h&&34==e.keyCode&&e.char)return!1;var r=zo[e.keyCode];return null!=r&&!e.altGraphKey&&(3==e.keyCode&&e.code&&(r=e.code),_o(r,e,t))}function qo(e){return"string"==typeof e?Vo[e]:e}function Zo(e,t){for(var r=e.doc.sel.ranges,n=[],i=0;i<r.length;i++){for(var o=t(r[i]);n.length&&tt(o.from,_(n).to)<=0;){var l=n.pop();if(tt(l.from,o.from)<0){o.from=l.from;break}}n.push(o)}Jn(e,(function(){for(var t=n.length-1;t>=0;t--)go(e.doc,"",n[t].from,n[t].to,"+delete");Dn(e)}))}function Qo(e,t,r){var n=ie(e.text,t+r,r);return n<0||n>e.text.length?null:n}function Jo(e,t,r){var n=Qo(e,t.ch,r);return null==n?null:new et(t.line,n,r<0?"after":"before")}function el(e,t,r,n,i){if(e){"rtl"==t.doc.direction&&(i=-i);var o=ue(r,t.doc.direction);if(o){var l,s=i<0?_(o):o[0],a=i<0==(1==s.level)?"after":"before";if(s.level>0||"rtl"==t.doc.direction){var u=Dr(t,r);l=i<0?r.text.length-1:0;var c=Wr(t,u,l).top;l=oe((function(e){return Wr(t,u,e).top==c}),i<0==(1==s.level)?s.from:s.to-1,l),"before"==a&&(l=Qo(r,l,1))}else l=i<0?s.to:s.from;return new et(n,l,a)}}return new et(n,i<0?r.text.length:0,i<0?"before":"after")}Vo.basic={Left:"goCharLeft",Right:"goCharRight",Up:"goLineUp",Down:"goLineDown",End:"goLineEnd",Home:"goLineStartSmart",PageUp:"goPageUp",PageDown:"goPageDown",Delete:"delCharAfter",Backspace:"delCharBefore","Shift-Backspace":"delCharBefore",Tab:"defaultTab","Shift-Tab":"indentAuto",Enter:"newlineAndIndent",Insert:"toggleOverwrite",Esc:"singleSelection"},Vo.pcDefault={"Ctrl-A":"selectAll","Ctrl-D":"deleteLine","Ctrl-Z":"undo","Shift-Ctrl-Z":"redo","Ctrl-Y":"redo","Ctrl-Home":"goDocStart","Ctrl-End":"goDocEnd","Ctrl-Up":"goLineUp","Ctrl-Down":"goLineDown","Ctrl-Left":"goGroupLeft","Ctrl-Right":"goGroupRight","Alt-Left":"goLineStart","Alt-Right":"goLineEnd","Ctrl-Backspace":"delGroupBefore","Ctrl-Delete":"delGroupAfter","Ctrl-S":"save","Ctrl-F":"find","Ctrl-G":"findNext","Shift-Ctrl-G":"findPrev","Shift-Ctrl-F":"replace","Shift-Ctrl-R":"replaceAll","Ctrl-[":"indentLess","Ctrl-]":"indentMore","Ctrl-U":"undoSelection","Shift-Ctrl-U":"redoSelection","Alt-U":"redoSelection",fallthrough:"basic"},Vo.emacsy={"Ctrl-F":"goCharRight","Ctrl-B":"goCharLeft","Ctrl-P":"goLineUp","Ctrl-N":"goLineDown","Alt-F":"goWordRight","Alt-B":"goWordLeft","Ctrl-A":"goLineStart","Ctrl-E":"goLineEnd","Ctrl-V":"goPageDown","Shift-Ctrl-V":"goPageUp","Ctrl-D":"delCharAfter","Ctrl-H":"delCharBefore","Alt-D":"delWordAfter","Alt-Backspace":"delWordBefore","Ctrl-K":"killLine","Ctrl-T":"transposeChars","Ctrl-O":"openLine"},Vo.macDefault={"Cmd-A":"selectAll","Cmd-D":"deleteLine","Cmd-Z":"undo","Shift-Cmd-Z":"redo","Cmd-Y":"redo","Cmd-Home":"goDocStart","Cmd-Up":"goDocStart","Cmd-End":"goDocEnd","Cmd-Down":"goDocEnd","Alt-Left":"goGroupLeft","Alt-Right":"goGroupRight","Cmd-Left":"goLineLeft","Cmd-Right":"goLineRight","Alt-Backspace":"delGroupBefore","Ctrl-Alt-Backspace":"delGroupAfter","Alt-Delete":"delGroupAfter","Cmd-S":"save","Cmd-F":"find","Cmd-G":"findNext","Shift-Cmd-G":"findPrev","Cmd-Alt-F":"replace","Shift-Cmd-Alt-F":"replaceAll","Cmd-[":"indentLess","Cmd-]":"indentMore","Cmd-Backspace":"delWrappedLineLeft","Cmd-Delete":"delWrappedLineRight","Cmd-U":"undoSelection","Shift-Cmd-U":"redoSelection","Ctrl-Up":"goDocStart","Ctrl-Down":"goDocEnd",fallthrough:["basic","emacsy"]},Vo.default=y?Vo.macDefault:Vo.pcDefault;var tl={selectAll:so,singleSelection:function(e){return e.setSelection(e.getCursor("anchor"),e.getCursor("head"),U)},killLine:function(e){return Zo(e,(function(t){if(t.empty()){var r=Xe(e.doc,t.head.line).text.length;return t.head.ch==r&&t.head.line<e.lastLine()?{from:t.head,to:et(t.head.line+1,0)}:{from:t.head,to:et(t.head.line,r)}}return{from:t.from(),to:t.to()}}))},deleteLine:function(e){return Zo(e,(function(t){return{from:et(t.from().line,0),to:st(e.doc,et(t.to().line+1,0))}}))},delLineLeft:function(e){return Zo(e,(function(e){return{from:et(e.from().line,0),to:e.from()}}))},delWrappedLineLeft:function(e){return Zo(e,(function(t){var r=e.charCoords(t.head,"div").top+5;return{from:e.coordsChar({left:0,top:r},"div"),to:t.from()}}))},delWrappedLineRight:function(e){return Zo(e,(function(t){var r=e.charCoords(t.head,"div").top+5,n=e.coordsChar({left:e.display.lineDiv.offsetWidth+100,top:r},"div");return{from:t.from(),to:n}}))},undo:function(e){return e.undo()},redo:function(e){return e.redo()},undoSelection:function(e){return e.undoSelection()},redoSelection:function(e){return e.redoSelection()},goDocStart:function(e){return e.extendSelection(et(e.firstLine(),0))},goDocEnd:function(e){return e.extendSelection(et(e.lastLine()))},goLineStart:function(e){return e.extendSelectionsBy((function(t){return rl(e,t.head.line)}),{origin:"+move",bias:1})},goLineStartSmart:function(e){return e.extendSelectionsBy((function(t){return nl(e,t.head)}),{origin:"+move",bias:1})},goLineEnd:function(e){return e.extendSelectionsBy((function(t){return function(e,t){var r=Xe(e.doc,t),n=function(e){for(var t;t=Pt(e);)e=t.find(1,!0).line;return e}(r);n!=r&&(t=qe(n));return el(!0,e,r,t,-1)}(e,t.head.line)}),{origin:"+move",bias:-1})},goLineRight:function(e){return e.extendSelectionsBy((function(t){var r=e.cursorCoords(t.head,"div").top+5;return e.coordsChar({left:e.display.lineDiv.offsetWidth+100,top:r},"div")}),K)},goLineLeft:function(e){return e.extendSelectionsBy((function(t){var r=e.cursorCoords(t.head,"div").top+5;return e.coordsChar({left:0,top:r},"div")}),K)},goLineLeftSmart:function(e){return e.extendSelectionsBy((function(t){var r=e.cursorCoords(t.head,"div").top+5,n=e.coordsChar({left:0,top:r},"div");return n.ch<e.getLine(n.line).search(/\S/)?nl(e,t.head):n}),K)},goLineUp:function(e){return e.moveV(-1,"line")},goLineDown:function(e){return e.moveV(1,"line")},goPageUp:function(e){return e.moveV(-1,"page")},goPageDown:function(e){return e.moveV(1,"page")},goCharLeft:function(e){return e.moveH(-1,"char")},goCharRight:function(e){return e.moveH(1,"char")},goColumnLeft:function(e){return e.moveH(-1,"column")},goColumnRight:function(e){return e.moveH(1,"column")},goWordLeft:function(e){return e.moveH(-1,"word")},goGroupRight:function(e){return e.moveH(1,"group")},goGroupLeft:function(e){return e.moveH(-1,"group")},goWordRight:function(e){return e.moveH(1,"word")},delCharBefore:function(e){return e.deleteH(-1,"codepoint")},delCharAfter:function(e){return e.deleteH(1,"char")},delWordBefore:function(e){return e.deleteH(-1,"word")},delWordAfter:function(e){return e.deleteH(1,"word")},delGroupBefore:function(e){return e.deleteH(-1,"group")},delGroupAfter:function(e){return e.deleteH(1,"group")},indentAuto:function(e){return e.indentSelection("smart")},indentMore:function(e){return e.indentSelection("add")},indentLess:function(e){return e.indentSelection("subtract")},insertTab:function(e){return e.replaceSelection("\t")},insertSoftTab:function(e){for(var t=[],r=e.listSelections(),n=e.options.tabSize,i=0;i<r.length;i++){var o=r[i].from(),l=R(e.getLine(o.line),o.ch,n);t.push(Y(n-l%n))}e.replaceSelections(t)},defaultTab:function(e){e.somethingSelected()?e.indentSelection("add"):e.execCommand("insertTab")},transposeChars:function(e){return Jn(e,(function(){for(var t=e.listSelections(),r=[],n=0;n<t.length;n++)if(t[n].empty()){var i=t[n].head,o=Xe(e.doc,i.line).text;if(o)if(i.ch==o.length&&(i=new et(i.line,i.ch-1)),i.ch>0)i=new et(i.line,i.ch+1),e.replaceRange(o.charAt(i.ch-1)+o.charAt(i.ch-2),et(i.line,i.ch-2),i,"+transpose");else if(i.line>e.doc.first){var l=Xe(e.doc,i.line-1).text;l&&(i=new et(i.line,1),e.replaceRange(o.charAt(0)+e.doc.lineSeparator()+l.charAt(l.length-1),et(i.line-1,l.length-1),i,"+transpose"))}r.push(new Si(i,i))}e.setSelections(r)}))},newlineAndIndent:function(e){return Jn(e,(function(){for(var t=e.listSelections(),r=t.length-1;r>=0;r--)e.replaceRange(e.doc.lineSeparator(),t[r].anchor,t[r].head,"+input");t=e.listSelections();for(var n=0;n<t.length;n++)e.indentLine(t[n].from().line,null,!0);Dn(e)}))},openLine:function(e){return e.replaceSelection("\n","start")},toggleOverwrite:function(e){return e.toggleOverwrite()}};function rl(e,t){var r=Xe(e.doc,t),n=Rt(r);return n!=r&&(t=qe(n)),el(!0,e,n,t,1)}function nl(e,t){var r=rl(e,t.line),n=Xe(e.doc,r.line),i=ue(n,e.doc.direction);if(!i||0==i[0].level){var o=Math.max(r.ch,n.text.search(/\S/)),l=t.line==r.line&&t.ch<=o&&t.ch;return et(r.line,l?0:o,r.sticky)}return r}function il(e,t,r){if("string"==typeof t&&!(t=tl[t]))return!1;e.display.input.ensurePolled();var n=e.display.shift,i=!1;try{e.isReadOnly()&&(e.state.suppressEdits=!0),r&&(e.display.shift=!1),i=t(e)!=G}finally{e.display.shift=n,e.state.suppressEdits=!1}return i}var ol=new z;function ll(e,t,r,n){var i=e.state.keySeq;if(i){if(Yo(t))return"handled";if(/\'$/.test(t)?e.state.keySeq=null:ol.set(50,(function(){e.state.keySeq==i&&(e.state.keySeq=null,e.display.input.reset())})),sl(e,i+" "+t,r,n))return!0}return sl(e,t,r,n)}function sl(e,t,r,n){var i=function(e,t,r){for(var n=0;n<e.state.keyMaps.length;n++){var i=Xo(t,e.state.keyMaps[n],r,e);if(i)return i}return e.options.extraKeys&&Xo(t,e.options.extraKeys,r,e)||Xo(t,e.options.keyMap,r,e)}(e,t,n);return"multi"==i&&(e.state.keySeq=t),"handled"==i&&sr(e,"keyHandled",e,t,r),"handled"!=i&&"multi"!=i||(be(r),xn(e)),!!i}function al(e,t){var r=$o(t,!0);return!!r&&(t.shiftKey&&!e.state.keySeq?ll(e,"Shift-"+r,t,(function(t){return il(e,t,!0)}))||ll(e,r,t,(function(t){if("string"==typeof t?/^go[A-Z]/.test(t):t.motion)return il(e,t)})):ll(e,r,t,(function(t){return il(e,t)})))}var ul=null;function cl(e){var t=this;if(!(e.target&&e.target!=t.display.input.getField()||(t.curOp.focus=W(),ge(t,e)))){l&&s<11&&27==e.keyCode&&(e.returnValue=!1);var n=e.keyCode;t.display.shift=16==n||e.shiftKey;var i=al(t,e);h&&(ul=i?n:null,i||88!=n||He||!(y?e.metaKey:e.ctrlKey)||t.replaceSelection("",null,"cut")),r&&!y&&!i&&46==n&&e.shiftKey&&!e.ctrlKey&&document.execCommand&&document.execCommand("cut"),18!=n||/\bCodeMirror-crosshair\b/.test(t.display.lineDiv.className)||function(e){var t=e.display.lineDiv;function r(e){18!=e.keyCode&&e.altKey||(T(t,"CodeMirror-crosshair"),de(document,"keyup",r),de(document,"mouseover",r))}H(t,"CodeMirror-crosshair"),he(document,"keyup",r),he(document,"mouseover",r)}(t)}}function hl(e){16==e.keyCode&&(this.doc.sel.shift=!1),ge(this,e)}function fl(e){var t=this;if(!(e.target&&e.target!=t.display.input.getField()||xr(t.display,e)||ge(t,e)||e.ctrlKey&&!e.altKey||y&&e.metaKey)){var r=e.keyCode,n=e.charCode;if(h&&r==ul)return ul=null,void be(e);if(!h||e.which&&!(e.which<10)||!al(t,e)){var i=String.fromCharCode(null==n?r:n);"\b"!=i&&(function(e,t,r){return ll(e,"'"+r+"'",t,(function(t){return il(e,t,!0)}))}(t,e,i)||t.display.input.onKeyPress(e))}}}var dl,pl,gl=function(e,t,r){this.time=e,this.pos=t,this.button=r};function vl(e){var t=this,r=t.display;if(!(ge(t,e)||r.activeTouch&&r.input.supportsTouch()))if(r.input.ensurePolled(),r.shift=e.shiftKey,xr(r,e))a||(r.scroller.draggable=!1,setTimeout((function(){return r.scroller.draggable=!0}),100));else if(!bl(t,e)){var n=un(t,e),i=Le(e),o=n?function(e,t){var r=+new Date;return pl&&pl.compare(r,e,t)?(dl=pl=null,"triple"):dl&&dl.compare(r,e,t)?(pl=new gl(r,e,t),dl=null,"double"):(dl=new gl(r,e,t),pl=null,"single")}(n,i):"single";window.focus(),1==i&&t.state.selectingText&&t.state.selectingText(e),n&&function(e,t,r,n,i){var o="Click";"double"==n?o="Double"+o:"triple"==n&&(o="Triple"+o);return ll(e,_o(o=(1==t?"Left":2==t?"Middle":"Right")+o,i),i,(function(t){if("string"==typeof t&&(t=tl[t]),!t)return!1;var n=!1;try{e.isReadOnly()&&(e.state.suppressEdits=!0),n=t(e,r)!=G}finally{e.state.suppressEdits=!1}return n}))}(t,i,n,o,e)||(1==i?n?function(e,t,r,n){l?setTimeout(E(Cn,e),0):e.curOp.focus=W();var i,o=function(e,t,r){var n=e.getOption("configureMouse"),i=n?n(e,t,r):{};if(null==i.unit){var o=b?r.shiftKey&&r.metaKey:r.altKey;i.unit=o?"rectangle":"single"==t?"char":"double"==t?"word":"line"}(null==i.extend||e.doc.extend)&&(i.extend=e.doc.extend||r.shiftKey);null==i.addNew&&(i.addNew=y?r.metaKey:r.ctrlKey);null==i.moveOnDrag&&(i.moveOnDrag=!(y?r.altKey:r.ctrlKey));return i}(e,r,n),u=e.doc.sel;e.options.dragDrop&&Me&&!e.isReadOnly()&&"single"==r&&(i=u.contains(t))>-1&&(tt((i=u.ranges[i]).from(),t)<0||t.xRel>0)&&(tt(i.to(),t)>0||t.xRel<0)?function(e,t,r,n){var i=e.display,o=!1,u=ei(e,(function(t){a&&(i.scroller.draggable=!1),e.state.draggingText=!1,e.state.delayingBlurEvent&&(e.hasFocus()?e.state.delayingBlurEvent=!1:Sn(e)),de(i.wrapper.ownerDocument,"mouseup",u),de(i.wrapper.ownerDocument,"mousemove",c),de(i.scroller,"dragstart",h),de(i.scroller,"drop",u),o||(be(t),n.addNew||_i(e.doc,r,null,null,n.extend),a&&!f||l&&9==s?setTimeout((function(){i.wrapper.ownerDocument.body.focus({preventScroll:!0}),i.input.focus()}),20):i.input.focus())})),c=function(e){o=o||Math.abs(t.clientX-e.clientX)+Math.abs(t.clientY-e.clientY)>=10},h=function(){return o=!0};a&&(i.scroller.draggable=!0);e.state.draggingText=u,u.copy=!n.moveOnDrag,he(i.wrapper.ownerDocument,"mouseup",u),he(i.wrapper.ownerDocument,"mousemove",c),he(i.scroller,"dragstart",h),he(i.scroller,"drop",u),e.state.delayingBlurEvent=!0,setTimeout((function(){return i.input.focus()}),20),i.scroller.dragDrop&&i.scroller.dragDrop()}(e,n,t,o):function(e,t,r,n){l&&Sn(e);var i=e.display,o=e.doc;be(t);var s,a,u=o.sel,c=u.ranges;n.addNew&&!n.extend?(a=o.sel.contains(r),s=a>-1?c[a]:new Si(r,r)):(s=o.sel.primary(),a=o.sel.primIndex);if("rectangle"==n.unit)n.addNew||(s=new Si(r,r)),r=un(e,t,!0,!0),a=-1;else{var h=ml(e,r,n.unit);s=n.extend?Yi(s,h.anchor,h.head,n.extend):h}n.addNew?-1==a?(a=c.length,Ji(o,Li(e,c.concat([s]),a),{scroll:!1,origin:"*mouse"})):c.length>1&&c[a].empty()&&"char"==n.unit&&!n.extend?(Ji(o,Li(e,c.slice(0,a).concat(c.slice(a+1)),0),{scroll:!1,origin:"*mouse"}),u=o.sel):qi(o,a,s,V):(a=0,Ji(o,new Ci([s],0),V),u=o.sel);var f=r;function d(t){if(0!=tt(f,t))if(f=t,"rectangle"==n.unit){for(var i=[],l=e.options.tabSize,c=R(Xe(o,r.line).text,r.ch,l),h=R(Xe(o,t.line).text,t.ch,l),d=Math.min(c,h),p=Math.max(c,h),g=Math.min(r.line,t.line),v=Math.min(e.lastLine(),Math.max(r.line,t.line));g<=v;g++){var m=Xe(o,g).text,y=j(m,d,l);d==p?i.push(new Si(et(g,y),et(g,y))):m.length>y&&i.push(new Si(et(g,y),et(g,j(m,p,l))))}i.length||i.push(new Si(r,r)),Ji(o,Li(e,u.ranges.slice(0,a).concat(i),a),{origin:"*mouse",scroll:!1}),e.scrollIntoView(t)}else{var b,w=s,x=ml(e,t,n.unit),C=w.anchor;tt(x.anchor,C)>0?(b=x.head,C=ot(w.from(),x.anchor)):(b=x.anchor,C=it(w.to(),x.head));var S=u.ranges.slice(0);S[a]=function(e,t){var r=t.anchor,n=t.head,i=Xe(e.doc,r.line);if(0==tt(r,n)&&r.sticky==n.sticky)return t;var o=ue(i);if(!o)return t;var l=se(o,r.ch,r.sticky),s=o[l];if(s.from!=r.ch&&s.to!=r.ch)return t;var a,u=l+(s.from==r.ch==(1!=s.level)?0:1);if(0==u||u==o.length)return t;if(n.line!=r.line)a=(n.line-r.line)*("ltr"==e.doc.direction?1:-1)>0;else{var c=se(o,n.ch,n.sticky),h=c-l||(n.ch-r.ch)*(1==s.level?-1:1);a=c==u-1||c==u?h<0:h>0}var f=o[u+(a?-1:0)],d=a==(1==f.level),p=d?f.from:f.to,g=d?"after":"before";return r.ch==p&&r.sticky==g?t:new Si(new et(r.line,p,g),n)}(e,new Si(st(o,C),b)),Ji(o,Li(e,S,a),V)}}var p=i.wrapper.getBoundingClientRect(),g=0;function v(t){var r=++g,l=un(e,t,!0,"rectangle"==n.unit);if(l)if(0!=tt(l,f)){e.curOp.focus=W(),d(l);var s=Nn(i,o);(l.line>=s.to||l.line<s.from)&&setTimeout(ei(e,(function(){g==r&&v(t)})),150)}else{var a=t.clientY<p.top?-20:t.clientY>p.bottom?20:0;a&&setTimeout(ei(e,(function(){g==r&&(i.scroller.scrollTop+=a,v(t))})),50)}}function m(t){e.state.selectingText=!1,g=1/0,t&&(be(t),i.input.focus()),de(i.wrapper.ownerDocument,"mousemove",y),de(i.wrapper.ownerDocument,"mouseup",b),o.history.lastSelOrigin=null}var y=ei(e,(function(e){0!==e.buttons&&Le(e)?v(e):m(e)})),b=ei(e,m);e.state.selectingText=b,he(i.wrapper.ownerDocument,"mousemove",y),he(i.wrapper.ownerDocument,"mouseup",b)}(e,n,t,o)}(t,n,o,e):Se(e)==r.scroller&&be(e):2==i?(n&&_i(t.doc,n),setTimeout((function(){return r.input.focus()}),20)):3==i&&(S?t.display.input.onContextMenu(e):Sn(t)))}}function ml(e,t,r){if("char"==r)return new Si(t,t);if("word"==r)return e.findWordAt(t);if("line"==r)return new Si(et(t.line,0),st(e.doc,et(t.line+1,0)));var n=r(e,t);return new Si(n.from,n.to)}function yl(e,t,r,n){var i,o;if(t.touches)i=t.touches[0].clientX,o=t.touches[0].clientY;else try{i=t.clientX,o=t.clientY}catch(e){return!1}if(i>=Math.floor(e.display.gutters.getBoundingClientRect().right))return!1;n&&be(t);var l=e.display,s=l.lineDiv.getBoundingClientRect();if(o>s.bottom||!me(e,r))return xe(t);o-=s.top-l.viewOffset;for(var a=0;a<e.display.gutterSpecs.length;++a){var u=l.gutters.childNodes[a];if(u&&u.getBoundingClientRect().right>=i)return pe(e,r,e,Ze(e.doc,o),e.display.gutterSpecs[a].className,t),xe(t)}}function bl(e,t){return yl(e,t,"gutterClick",!0)}function wl(e,t){xr(e.display,t)||function(e,t){if(!me(e,"gutterContextMenu"))return!1;return yl(e,t,"gutterContextMenu",!1)}(e,t)||ge(e,t,"contextmenu")||S||e.display.input.onContextMenu(t)}function xl(e){e.display.wrapper.className=e.display.wrapper.className.replace(/\s*cm-s-\S+/g,"")+e.options.theme.replace(/(^|\s)\s*/g," cm-s-"),zr(e)}gl.prototype.compare=function(e,t,r){return this.time+400>e&&0==tt(t,this.pos)&&r==this.button};var Cl={toString:function(){return"CodeMirror.Init"}},Sl={},Ll={};function kl(e,t,r){if(!t!=!(r&&r!=Cl)){var n=e.display.dragFunctions,i=t?he:de;i(e.display.scroller,"dragstart",n.start),i(e.display.scroller,"dragenter",n.enter),i(e.display.scroller,"dragover",n.over),i(e.display.scroller,"dragleave",n.leave),i(e.display.scroller,"drop",n.drop)}}function Tl(e){e.options.lineWrapping?(H(e.display.wrapper,"CodeMirror-wrap"),e.display.sizer.style.minWidth="",e.display.sizerWidth=null):(T(e.display.wrapper,"CodeMirror-wrap"),jt(e)),an(e),hn(e),zr(e),setTimeout((function(){return Gn(e)}),100)}function Ml(e,t){var r=this;if(!(this instanceof Ml))return new Ml(e,t);this.options=t=t?I(t):{},I(Sl,t,!1);var n=t.value;"string"==typeof n?n=new Do(n,t.mode,null,t.lineSeparator,t.direction):t.mode&&(n.modeOption=t.mode),this.doc=n;var i=new Ml.inputStyles[t.inputStyle](this),o=this.display=new vi(e,n,i,t);for(var u in o.wrapper.CodeMirror=this,xl(this),t.lineWrapping&&(this.display.wrapper.className+=" CodeMirror-wrap"),Kn(this),this.state={keyMaps:[],overlays:[],modeGen:0,overwrite:!1,delayingBlurEvent:!1,focused:!1,suppressEdits:!1,pasteIncoming:-1,cutIncoming:-1,selectingText:!1,draggingText:!1,highlight:new z,keySeq:null,specialChars:null},t.autofocus&&!m&&o.input.focus(),l&&s<11&&setTimeout((function(){return r.display.input.reset(!0)}),20),function(e){var t=e.display;he(t.scroller,"mousedown",ei(e,vl)),he(t.scroller,"dblclick",l&&s<11?ei(e,(function(t){if(!ge(e,t)){var r=un(e,t);if(r&&!bl(e,t)&&!xr(e.display,t)){be(t);var n=e.findWordAt(r);_i(e.doc,n.anchor,n.head)}}})):function(t){return ge(e,t)||be(t)});he(t.scroller,"contextmenu",(function(t){return wl(e,t)})),he(t.input.getField(),"contextmenu",(function(r){t.scroller.contains(r.target)||wl(e,r)}));var r,n={end:0};function i(){t.activeTouch&&(r=setTimeout((function(){return t.activeTouch=null}),1e3),(n=t.activeTouch).end=+new Date)}function o(e){if(1!=e.touches.length)return!1;var t=e.touches[0];return t.radiusX<=1&&t.radiusY<=1}function a(e,t){if(null==t.left)return!0;var r=t.left-e.left,n=t.top-e.top;return r*r+n*n>400}he(t.scroller,"touchstart",(function(i){if(!ge(e,i)&&!o(i)&&!bl(e,i)){t.input.ensurePolled(),clearTimeout(r);var l=+new Date;t.activeTouch={start:l,moved:!1,prev:l-n.end<=300?n:null},1==i.touches.length&&(t.activeTouch.left=i.touches[0].pageX,t.activeTouch.top=i.touches[0].pageY)}})),he(t.scroller,"touchmove",(function(){t.activeTouch&&(t.activeTouch.moved=!0)})),he(t.scroller,"touchend",(function(r){var n=t.activeTouch;if(n&&!xr(t,r)&&null!=n.left&&!n.moved&&new Date-n.start<300){var o,l=e.coordsChar(t.activeTouch,"page");o=!n.prev||a(n,n.prev)?new Si(l,l):!n.prev.prev||a(n,n.prev.prev)?e.findWordAt(l):new Si(et(l.line,0),st(e.doc,et(l.line+1,0))),e.setSelection(o.anchor,o.head),e.focus(),be(r)}i()})),he(t.scroller,"touchcancel",i),he(t.scroller,"scroll",(function(){t.scroller.clientHeight&&(Pn(e,t.scroller.scrollTop),In(e,t.scroller.scrollLeft,!0),pe(e,"scroll",e))})),he(t.scroller,"mousewheel",(function(t){return xi(e,t)})),he(t.scroller,"DOMMouseScroll",(function(t){return xi(e,t)})),he(t.wrapper,"scroll",(function(){return t.wrapper.scrollTop=t.wrapper.scrollLeft=0})),t.dragFunctions={enter:function(t){ge(e,t)||Ce(t)},over:function(t){ge(e,t)||(!function(e,t){var r=un(e,t);if(r){var n=document.createDocumentFragment();yn(e,r,n),e.display.dragCursor||(e.display.dragCursor=O("div",null,"CodeMirror-cursors CodeMirror-dragcursors"),e.display.lineSpace.insertBefore(e.display.dragCursor,e.display.cursorDiv)),N(e.display.dragCursor,n)}}(e,t),Ce(t))},start:function(t){return function(e,t){if(l&&(!e.state.draggingText||+new Date-Wo<100))Ce(t);else if(!ge(e,t)&&!xr(e.display,t)&&(t.dataTransfer.setData("Text",e.getSelection()),t.dataTransfer.effectAllowed="copyMove",t.dataTransfer.setDragImage&&!f)){var r=O("img",null,null,"position: fixed; left: 0; top: 0;");r.src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",h&&(r.width=r.height=1,e.display.wrapper.appendChild(r),r._top=r.offsetTop),t.dataTransfer.setDragImage(r,0,0),h&&r.parentNode.removeChild(r)}}(e,t)},drop:ei(e,Ho),leave:function(t){ge(e,t)||Fo(e)}};var u=t.input.getField();he(u,"keyup",(function(t){return hl.call(e,t)})),he(u,"keydown",ei(e,cl)),he(u,"keypress",ei(e,fl)),he(u,"focus",(function(t){return Ln(e,t)})),he(u,"blur",(function(t){return kn(e,t)}))}(this),Io(),Xn(this),this.curOp.forceUpdate=!0,Pi(this,n),t.autofocus&&!m||this.hasFocus()?setTimeout((function(){r.hasFocus()&&!r.state.focused&&Ln(r)}),20):kn(this),Ll)Ll.hasOwnProperty(u)&&Ll[u](this,t[u],Cl);fi(this),t.finishInit&&t.finishInit(this);for(var c=0;c<Nl.length;++c)Nl[c](this);Yn(this),a&&t.lineWrapping&&"optimizelegibility"==getComputedStyle(o.lineDiv).textRendering&&(o.lineDiv.style.textRendering="auto")}Ml.defaults=Sl,Ml.optionHandlers=Ll;var Nl=[];function Ol(e,t,r,n){var i,o=e.doc;null==r&&(r="add"),"smart"==r&&(o.mode.indent?i=dt(e,t).state:r="prev");var l=e.options.tabSize,s=Xe(o,t),a=R(s.text,null,l);s.stateAfter&&(s.stateAfter=null);var u,c=s.text.match(/^\s*/)[0];if(n||/\S/.test(s.text)){if("smart"==r&&((u=o.mode.indent(i,s.text.slice(c.length),s.text))==G||u>150)){if(!n)return;r="prev"}}else u=0,r="not";"prev"==r?u=t>o.first?R(Xe(o,t-1).text,null,l):0:"add"==r?u=a+e.options.indentUnit:"subtract"==r?u=a-e.options.indentUnit:"number"==typeof r&&(u=a+r),u=Math.max(0,u);var h="",f=0;if(e.options.indentWithTabs)for(var d=Math.floor(u/l);d;--d)f+=l,h+="\t";if(f<u&&(h+=Y(u-f)),h!=c)return go(o,h,et(t,0),et(t,c.length),"+input"),s.stateAfter=null,!0;for(var p=0;p<o.sel.ranges.length;p++){var g=o.sel.ranges[p];if(g.head.line==t&&g.head.ch<c.length){var v=et(t,c.length);qi(o,p,new Si(v,v));break}}}Ml.defineInitHook=function(e){return Nl.push(e)};var Al=null;function Dl(e){Al=e}function Wl(e,t,r,n,i){var o=e.doc;e.display.shift=!1,n||(n=o.sel);var l=+new Date-200,s="paste"==i||e.state.pasteIncoming>l,a=De(t),u=null;if(s&&n.ranges.length>1)if(Al&&Al.text.join("\n")==t){if(n.ranges.length%Al.text.length==0){u=[];for(var c=0;c<Al.text.length;c++)u.push(o.splitLines(Al.text[c]))}}else a.length==n.ranges.length&&e.options.pasteLinesPerSelection&&(u=$(a,(function(e){return[e]})));for(var h=e.curOp.updateInput,f=n.ranges.length-1;f>=0;f--){var d=n.ranges[f],p=d.from(),g=d.to();d.empty()&&(r&&r>0?p=et(p.line,p.ch-r):e.state.overwrite&&!s?g=et(g.line,Math.min(Xe(o,g.line).text.length,g.ch+_(a).length)):s&&Al&&Al.lineWise&&Al.text.join("\n")==a.join("\n")&&(p=g=et(p.line,0)));var v={from:p,to:g,text:u?u[f%u.length]:a,origin:i||(s?"paste":e.state.cutIncoming>l?"cut":"+input")};uo(e.doc,v),sr(e,"inputRead",e,v)}t&&!s&&Fl(e,t),Dn(e),e.curOp.updateInput<2&&(e.curOp.updateInput=h),e.curOp.typing=!0,e.state.pasteIncoming=e.state.cutIncoming=-1}function Hl(e,t){var r=e.clipboardData&&e.clipboardData.getData("Text");if(r)return e.preventDefault(),t.isReadOnly()||t.options.disableInput||Jn(t,(function(){return Wl(t,r,0,null,"paste")})),!0}function Fl(e,t){if(e.options.electricChars&&e.options.smartIndent)for(var r=e.doc.sel,n=r.ranges.length-1;n>=0;n--){var i=r.ranges[n];if(!(i.head.ch>100||n&&r.ranges[n-1].head.line==i.head.line)){var o=e.getModeAt(i.head),l=!1;if(o.electricChars){for(var s=0;s<o.electricChars.length;s++)if(t.indexOf(o.electricChars.charAt(s))>-1){l=Ol(e,i.head.line,"smart");break}}else o.electricInput&&o.electricInput.test(Xe(e.doc,i.head.line).text.slice(0,i.head.ch))&&(l=Ol(e,i.head.line,"smart"));l&&sr(e,"electricInput",e,i.head.line)}}}function Pl(e){for(var t=[],r=[],n=0;n<e.doc.sel.ranges.length;n++){var i=e.doc.sel.ranges[n].head.line,o={anchor:et(i,0),head:et(i+1,0)};r.push(o),t.push(e.getRange(o.anchor,o.head))}return{text:t,ranges:r}}function El(e,t,r,n){e.setAttribute("autocorrect",r?"":"off"),e.setAttribute("autocapitalize",n?"":"off"),e.setAttribute("spellcheck",!!t)}function Il(){var e=O("textarea",null,null,"position: absolute; bottom: -1em; padding: 0; width: 1px; height: 1em; outline: none"),t=O("div",[e],null,"overflow: hidden; position: relative; width: 3px; height: 0px;");return a?e.style.width="1000px":e.setAttribute("wrap","off"),g&&(e.style.border="1px solid black"),El(e),t}function Rl(e,t,r,n,i){var o=t,l=r,s=Xe(e,t.line),a=i&&"rtl"==e.direction?-r:r;function u(o){var l,u;if("codepoint"==n){var c=s.text.charCodeAt(t.ch+(r>0?0:-1));if(isNaN(c))l=null;else{var h=r>0?c>=55296&&c<56320:c>=56320&&c<57343;l=new et(t.line,Math.max(0,Math.min(s.text.length,t.ch+r*(h?2:1))),-r)}}else l=i?function(e,t,r,n){var i=ue(t,e.doc.direction);if(!i)return Jo(t,r,n);r.ch>=t.text.length?(r.ch=t.text.length,r.sticky="before"):r.ch<=0&&(r.ch=0,r.sticky="after");var o=se(i,r.ch,r.sticky),l=i[o];if("ltr"==e.doc.direction&&l.level%2==0&&(n>0?l.to>r.ch:l.from<r.ch))return Jo(t,r,n);var s,a=function(e,r){return Qo(t,e instanceof et?e.ch:e,r)},u=function(r){return e.options.lineWrapping?(s=s||Dr(e,t),Zr(e,t,s,r)):{begin:0,end:t.text.length}},c=u("before"==r.sticky?a(r,-1):r.ch);if("rtl"==e.doc.direction||1==l.level){var h=1==l.level==n<0,f=a(r,h?1:-1);if(null!=f&&(h?f<=l.to&&f<=c.end:f>=l.from&&f>=c.begin)){var d=h?"before":"after";return new et(r.line,f,d)}}var p=function(e,t,n){for(var o=function(e,t){return t?new et(r.line,a(e,1),"before"):new et(r.line,e,"after")};e>=0&&e<i.length;e+=t){var l=i[e],s=t>0==(1!=l.level),u=s?n.begin:a(n.end,-1);if(l.from<=u&&u<l.to)return o(u,s);if(u=s?l.from:a(l.to,-1),n.begin<=u&&u<n.end)return o(u,s)}},g=p(o+n,n,c);if(g)return g;var v=n>0?c.end:a(c.begin,-1);return null==v||n>0&&v==t.text.length||!(g=p(n>0?0:i.length-1,n,u(v)))?null:g}(e.cm,s,t,r):Jo(s,t,r);if(null==l){if(o||(u=t.line+a)<e.first||u>=e.first+e.size||(t=new et(u,t.ch,t.sticky),!(s=Xe(e,u))))return!1;t=el(i,e.cm,s,t.line,a)}else t=l;return!0}if("char"==n||"codepoint"==n)u();else if("column"==n)u(!0);else if("word"==n||"group"==n)for(var c=null,h="group"==n,f=e.cm&&e.cm.getHelper(t,"wordChars"),d=!0;!(r<0)||u(!d);d=!1){var p=s.text.charAt(t.ch)||"\n",g=ee(p,f)?"w":h&&"\n"==p?"n":!h||/\s/.test(p)?null:"p";if(!h||d||g||(g="s"),c&&c!=g){r<0&&(r=1,u(),t.sticky="after");break}if(g&&(c=g),r>0&&!u(!d))break}var v=oo(e,t,o,l,!0);return rt(o,v)&&(v.hitSide=!0),v}function zl(e,t,r,n){var i,o,l=e.doc,s=t.left;if("page"==n){var a=Math.min(e.display.wrapper.clientHeight,window.innerHeight||document.documentElement.clientHeight),u=Math.max(a-.5*rn(e.display),3);i=(r>0?t.bottom:t.top)+r*u}else"line"==n&&(i=r>0?t.bottom+3:t.top-3);for(;(o=$r(e,s,i)).outside;){if(r<0?i<=0:i>=l.height){o.hitSide=!0;break}i+=5*r}return o}var Bl=function(e){this.cm=e,this.lastAnchorNode=this.lastAnchorOffset=this.lastFocusNode=this.lastFocusOffset=null,this.polling=new z,this.composing=null,this.gracePeriod=!1,this.readDOMTimeout=null};function Gl(e,t){var r=Ar(e,t.line);if(!r||r.hidden)return null;var n=Xe(e.doc,t.line),i=Nr(r,n,t.line),o=ue(n,e.doc.direction),l="left";o&&(l=se(o,t.ch)%2?"right":"left");var s=Pr(i.map,t.ch,l);return s.offset="right"==s.collapse?s.end:s.start,s}function Ul(e,t){return t&&(e.bad=!0),e}function Vl(e,t,r){var n;if(t==e.display.lineDiv){if(!(n=e.display.lineDiv.childNodes[r]))return Ul(e.clipPos(et(e.display.viewTo-1)),!0);t=null,r=0}else for(n=t;;n=n.parentNode){if(!n||n==e.display.lineDiv)return null;if(n.parentNode&&n.parentNode==e.display.lineDiv)break}for(var i=0;i<e.display.view.length;i++){var o=e.display.view[i];if(o.node==n)return Kl(o,t,r)}}function Kl(e,t,r){var n=e.text.firstChild,i=!1;if(!t||!D(n,t))return Ul(et(qe(e.line),0),!0);if(t==n&&(i=!0,t=n.childNodes[r],r=0,!t)){var o=e.rest?_(e.rest):e.line;return Ul(et(qe(o),o.text.length),i)}var l=3==t.nodeType?t:null,s=t;for(l||1!=t.childNodes.length||3!=t.firstChild.nodeType||(l=t.firstChild,r&&(r=l.nodeValue.length));s.parentNode!=n;)s=s.parentNode;var a=e.measure,u=a.maps;function c(t,r,n){for(var i=-1;i<(u?u.length:0);i++)for(var o=i<0?a.map:u[i],l=0;l<o.length;l+=3){var s=o[l+2];if(s==t||s==r){var c=qe(i<0?e.line:e.rest[i]),h=o[l]+n;return(n<0||s!=t)&&(h=o[l+(n?1:0)]),et(c,h)}}}var h=c(l,s,r);if(h)return Ul(h,i);for(var f=s.nextSibling,d=l?l.nodeValue.length-r:0;f;f=f.nextSibling){if(h=c(f,f.firstChild,0))return Ul(et(h.line,h.ch-d),i);d+=f.textContent.length}for(var p=s.previousSibling,g=r;p;p=p.previousSibling){if(h=c(p,p.firstChild,-1))return Ul(et(h.line,h.ch+g),i);g+=p.textContent.length}}Bl.prototype.init=function(e){var t=this,r=this,n=r.cm,i=r.div=e.lineDiv;function o(e){for(var t=e.target;t;t=t.parentNode){if(t==i)return!0;if(/\bCodeMirror-(?:line)?widget\b/.test(t.className))break}return!1}function l(e){if(o(e)&&!ge(n,e)){if(n.somethingSelected())Dl({lineWise:!1,text:n.getSelections()}),"cut"==e.type&&n.replaceSelection("",null,"cut");else{if(!n.options.lineWiseCopyCut)return;var t=Pl(n);Dl({lineWise:!0,text:t.text}),"cut"==e.type&&n.operation((function(){n.setSelections(t.ranges,0,U),n.replaceSelection("",null,"cut")}))}if(e.clipboardData){e.clipboardData.clearData();var l=Al.text.join("\n");if(e.clipboardData.setData("Text",l),e.clipboardData.getData("Text")==l)return void e.preventDefault()}var s=Il(),a=s.firstChild;n.display.lineSpace.insertBefore(s,n.display.lineSpace.firstChild),a.value=Al.text.join("\n");var u=document.activeElement;P(a),setTimeout((function(){n.display.lineSpace.removeChild(s),u.focus(),u==i&&r.showPrimarySelection()}),50)}}El(i,n.options.spellcheck,n.options.autocorrect,n.options.autocapitalize),he(i,"paste",(function(e){!o(e)||ge(n,e)||Hl(e,n)||s<=11&&setTimeout(ei(n,(function(){return t.updateFromDOM()})),20)})),he(i,"compositionstart",(function(e){t.composing={data:e.data,done:!1}})),he(i,"compositionupdate",(function(e){t.composing||(t.composing={data:e.data,done:!1})})),he(i,"compositionend",(function(e){t.composing&&(e.data!=t.composing.data&&t.readFromDOMSoon(),t.composing.done=!0)})),he(i,"touchstart",(function(){return r.forceCompositionEnd()})),he(i,"input",(function(){t.composing||t.readFromDOMSoon()})),he(i,"copy",l),he(i,"cut",l)},Bl.prototype.screenReaderLabelChanged=function(e){e?this.div.setAttribute("aria-label",e):this.div.removeAttribute("aria-label")},Bl.prototype.prepareSelection=function(){var e=mn(this.cm,!1);return e.focus=document.activeElement==this.div,e},Bl.prototype.showSelection=function(e,t){e&&this.cm.display.view.length&&((e.focus||t)&&this.showPrimarySelection(),this.showMultipleSelections(e))},Bl.prototype.getSelection=function(){return this.cm.display.wrapper.ownerDocument.getSelection()},Bl.prototype.showPrimarySelection=function(){var e=this.getSelection(),t=this.cm,n=t.doc.sel.primary(),i=n.from(),o=n.to();if(t.display.viewTo==t.display.viewFrom||i.line>=t.display.viewTo||o.line<t.display.viewFrom)e.removeAllRanges();else{var l=Vl(t,e.anchorNode,e.anchorOffset),s=Vl(t,e.focusNode,e.focusOffset);if(!l||l.bad||!s||s.bad||0!=tt(ot(l,s),i)||0!=tt(it(l,s),o)){var a=t.display.view,u=i.line>=t.display.viewFrom&&Gl(t,i)||{node:a[0].measure.map[2],offset:0},c=o.line<t.display.viewTo&&Gl(t,o);if(!c){var h=a[a.length-1].measure,f=h.maps?h.maps[h.maps.length-1]:h.map;c={node:f[f.length-1],offset:f[f.length-2]-f[f.length-3]}}if(u&&c){var d,p=e.rangeCount&&e.getRangeAt(0);try{d=k(u.node,u.offset,c.offset,c.node)}catch(e){}d&&(!r&&t.state.focused?(e.collapse(u.node,u.offset),d.collapsed||(e.removeAllRanges(),e.addRange(d))):(e.removeAllRanges(),e.addRange(d)),p&&null==e.anchorNode?e.addRange(p):r&&this.startGracePeriod()),this.rememberSelection()}else e.removeAllRanges()}}},Bl.prototype.startGracePeriod=function(){var e=this;clearTimeout(this.gracePeriod),this.gracePeriod=setTimeout((function(){e.gracePeriod=!1,e.selectionChanged()&&e.cm.operation((function(){return e.cm.curOp.selectionChanged=!0}))}),20)},Bl.prototype.showMultipleSelections=function(e){N(this.cm.display.cursorDiv,e.cursors),N(this.cm.display.selectionDiv,e.selection)},Bl.prototype.rememberSelection=function(){var e=this.getSelection();this.lastAnchorNode=e.anchorNode,this.lastAnchorOffset=e.anchorOffset,this.lastFocusNode=e.focusNode,this.lastFocusOffset=e.focusOffset},Bl.prototype.selectionInEditor=function(){var e=this.getSelection();if(!e.rangeCount)return!1;var t=e.getRangeAt(0).commonAncestorContainer;return D(this.div,t)},Bl.prototype.focus=function(){"nocursor"!=this.cm.options.readOnly&&(this.selectionInEditor()&&document.activeElement==this.div||this.showSelection(this.prepareSelection(),!0),this.div.focus())},Bl.prototype.blur=function(){this.div.blur()},Bl.prototype.getField=function(){return this.div},Bl.prototype.supportsTouch=function(){return!0},Bl.prototype.receivedFocus=function(){var e=this;this.selectionInEditor()?this.pollSelection():Jn(this.cm,(function(){return e.cm.curOp.selectionChanged=!0})),this.polling.set(this.cm.options.pollInterval,(function t(){e.cm.state.focused&&(e.pollSelection(),e.polling.set(e.cm.options.pollInterval,t))}))},Bl.prototype.selectionChanged=function(){var e=this.getSelection();return e.anchorNode!=this.lastAnchorNode||e.anchorOffset!=this.lastAnchorOffset||e.focusNode!=this.lastFocusNode||e.focusOffset!=this.lastFocusOffset},Bl.prototype.pollSelection=function(){if(null==this.readDOMTimeout&&!this.gracePeriod&&this.selectionChanged()){var e=this.getSelection(),t=this.cm;if(v&&c&&this.cm.display.gutterSpecs.length&&function(e){for(var t=e;t;t=t.parentNode)if(/CodeMirror-gutter-wrapper/.test(t.className))return!0;return!1}(e.anchorNode))return this.cm.triggerOnKeyDown({type:"keydown",keyCode:8,preventDefault:Math.abs}),this.blur(),void this.focus();if(!this.composing){this.rememberSelection();var r=Vl(t,e.anchorNode,e.anchorOffset),n=Vl(t,e.focusNode,e.focusOffset);r&&n&&Jn(t,(function(){Ji(t.doc,ki(r,n),U),(r.bad||n.bad)&&(t.curOp.selectionChanged=!0)}))}}},Bl.prototype.pollContent=function(){null!=this.readDOMTimeout&&(clearTimeout(this.readDOMTimeout),this.readDOMTimeout=null);var e,t,r,n=this.cm,i=n.display,o=n.doc.sel.primary(),l=o.from(),s=o.to();if(0==l.ch&&l.line>n.firstLine()&&(l=et(l.line-1,Xe(n.doc,l.line-1).length)),s.ch==Xe(n.doc,s.line).text.length&&s.line<n.lastLine()&&(s=et(s.line+1,0)),l.line<i.viewFrom||s.line>i.viewTo-1)return!1;l.line==i.viewFrom||0==(e=cn(n,l.line))?(t=qe(i.view[0].line),r=i.view[0].node):(t=qe(i.view[e].line),r=i.view[e-1].node.nextSibling);var a,u,c=cn(n,s.line);if(c==i.view.length-1?(a=i.viewTo-1,u=i.lineDiv.lastChild):(a=qe(i.view[c+1].line)-1,u=i.view[c+1].node.previousSibling),!r)return!1;for(var h=n.doc.splitLines(function(e,t,r,n,i){var o="",l=!1,s=e.doc.lineSeparator(),a=!1;function u(e){return function(t){return t.id==e}}function c(){l&&(o+=s,a&&(o+=s),l=a=!1)}function h(e){e&&(c(),o+=e)}function f(t){if(1==t.nodeType){var r=t.getAttribute("cm-text");if(r)return void h(r);var o,d=t.getAttribute("cm-marker");if(d){var p=e.findMarks(et(n,0),et(i+1,0),u(+d));return void(p.length&&(o=p[0].find(0))&&h(Ye(e.doc,o.from,o.to).join(s)))}if("false"==t.getAttribute("contenteditable"))return;var g=/^(pre|div|p|li|table|br)$/i.test(t.nodeName);if(!/^br$/i.test(t.nodeName)&&0==t.textContent.length)return;g&&c();for(var v=0;v<t.childNodes.length;v++)f(t.childNodes[v]);/^(pre|p)$/i.test(t.nodeName)&&(a=!0),g&&(l=!0)}else 3==t.nodeType&&h(t.nodeValue.replace(/\u200b/g,"").replace(/\u00a0/g," "))}for(;f(t),t!=r;)t=t.nextSibling,a=!1;return o}(n,r,u,t,a)),f=Ye(n.doc,et(t,0),et(a,Xe(n.doc,a).text.length));h.length>1&&f.length>1;)if(_(h)==_(f))h.pop(),f.pop(),a--;else{if(h[0]!=f[0])break;h.shift(),f.shift(),t++}for(var d=0,p=0,g=h[0],v=f[0],m=Math.min(g.length,v.length);d<m&&g.charCodeAt(d)==v.charCodeAt(d);)++d;for(var y=_(h),b=_(f),w=Math.min(y.length-(1==h.length?d:0),b.length-(1==f.length?d:0));p<w&&y.charCodeAt(y.length-p-1)==b.charCodeAt(b.length-p-1);)++p;if(1==h.length&&1==f.length&&t==l.line)for(;d&&d>l.ch&&y.charCodeAt(y.length-p-1)==b.charCodeAt(b.length-p-1);)d--,p++;h[h.length-1]=y.slice(0,y.length-p).replace(/^\u200b+/,""),h[0]=h[0].slice(d).replace(/\u200b+$/,"");var x=et(t,d),C=et(a,f.length?_(f).length-p:0);return h.length>1||h[0]||tt(x,C)?(go(n.doc,h,x,C,"+input"),!0):void 0},Bl.prototype.ensurePolled=function(){this.forceCompositionEnd()},Bl.prototype.reset=function(){this.forceCompositionEnd()},Bl.prototype.forceCompositionEnd=function(){this.composing&&(clearTimeout(this.readDOMTimeout),this.composing=null,this.updateFromDOM(),this.div.blur(),this.div.focus())},Bl.prototype.readFromDOMSoon=function(){var e=this;null==this.readDOMTimeout&&(this.readDOMTimeout=setTimeout((function(){if(e.readDOMTimeout=null,e.composing){if(!e.composing.done)return;e.composing=null}e.updateFromDOM()}),80))},Bl.prototype.updateFromDOM=function(){var e=this;!this.cm.isReadOnly()&&this.pollContent()||Jn(this.cm,(function(){return hn(e.cm)}))},Bl.prototype.setUneditable=function(e){e.contentEditable="false"},Bl.prototype.onKeyPress=function(e){0==e.charCode||this.composing||(e.preventDefault(),this.cm.isReadOnly()||ei(this.cm,Wl)(this.cm,String.fromCharCode(null==e.charCode?e.keyCode:e.charCode),0))},Bl.prototype.readOnlyChanged=function(e){this.div.contentEditable=String("nocursor"!=e)},Bl.prototype.onContextMenu=function(){},Bl.prototype.resetPosition=function(){},Bl.prototype.needsContentAttribute=!0;var jl=function(e){this.cm=e,this.prevInput="",this.pollingFast=!1,this.polling=new z,this.hasSelection=!1,this.composing=null};jl.prototype.init=function(e){var t=this,r=this,n=this.cm;this.createField(e);var i=this.textarea;function o(e){if(!ge(n,e)){if(n.somethingSelected())Dl({lineWise:!1,text:n.getSelections()});else{if(!n.options.lineWiseCopyCut)return;var t=Pl(n);Dl({lineWise:!0,text:t.text}),"cut"==e.type?n.setSelections(t.ranges,null,U):(r.prevInput="",i.value=t.text.join("\n"),P(i))}"cut"==e.type&&(n.state.cutIncoming=+new Date)}}e.wrapper.insertBefore(this.wrapper,e.wrapper.firstChild),g&&(i.style.width="0px"),he(i,"input",(function(){l&&s>=9&&t.hasSelection&&(t.hasSelection=null),r.poll()})),he(i,"paste",(function(e){ge(n,e)||Hl(e,n)||(n.state.pasteIncoming=+new Date,r.fastPoll())})),he(i,"cut",o),he(i,"copy",o),he(e.scroller,"paste",(function(t){if(!xr(e,t)&&!ge(n,t)){if(!i.dispatchEvent)return n.state.pasteIncoming=+new Date,void r.focus();var o=new Event("paste");o.clipboardData=t.clipboardData,i.dispatchEvent(o)}})),he(e.lineSpace,"selectstart",(function(t){xr(e,t)||be(t)})),he(i,"compositionstart",(function(){var e=n.getCursor("from");r.composing&&r.composing.range.clear(),r.composing={start:e,range:n.markText(e,n.getCursor("to"),{className:"CodeMirror-composing"})}})),he(i,"compositionend",(function(){r.composing&&(r.poll(),r.composing.range.clear(),r.composing=null)}))},jl.prototype.createField=function(e){this.wrapper=Il(),this.textarea=this.wrapper.firstChild},jl.prototype.screenReaderLabelChanged=function(e){e?this.textarea.setAttribute("aria-label",e):this.textarea.removeAttribute("aria-label")},jl.prototype.prepareSelection=function(){var e=this.cm,t=e.display,r=e.doc,n=mn(e);if(e.options.moveInputWithCursor){var i=Xr(e,r.sel.primary().head,"div"),o=t.wrapper.getBoundingClientRect(),l=t.lineDiv.getBoundingClientRect();n.teTop=Math.max(0,Math.min(t.wrapper.clientHeight-10,i.top+l.top-o.top)),n.teLeft=Math.max(0,Math.min(t.wrapper.clientWidth-10,i.left+l.left-o.left))}return n},jl.prototype.showSelection=function(e){var t=this.cm.display;N(t.cursorDiv,e.cursors),N(t.selectionDiv,e.selection),null!=e.teTop&&(this.wrapper.style.top=e.teTop+"px",this.wrapper.style.left=e.teLeft+"px")},jl.prototype.reset=function(e){if(!this.contextMenuPending&&!this.composing){var t=this.cm;if(t.somethingSelected()){this.prevInput="";var r=t.getSelection();this.textarea.value=r,t.state.focused&&P(this.textarea),l&&s>=9&&(this.hasSelection=r)}else e||(this.prevInput=this.textarea.value="",l&&s>=9&&(this.hasSelection=null))}},jl.prototype.getField=function(){return this.textarea},jl.prototype.supportsTouch=function(){return!1},jl.prototype.focus=function(){if("nocursor"!=this.cm.options.readOnly&&(!m||W()!=this.textarea))try{this.textarea.focus()}catch(e){}},jl.prototype.blur=function(){this.textarea.blur()},jl.prototype.resetPosition=function(){this.wrapper.style.top=this.wrapper.style.left=0},jl.prototype.receivedFocus=function(){this.slowPoll()},jl.prototype.slowPoll=function(){var e=this;this.pollingFast||this.polling.set(this.cm.options.pollInterval,(function(){e.poll(),e.cm.state.focused&&e.slowPoll()}))},jl.prototype.fastPoll=function(){var e=!1,t=this;t.pollingFast=!0,t.polling.set(20,(function r(){t.poll()||e?(t.pollingFast=!1,t.slowPoll()):(e=!0,t.polling.set(60,r))}))},jl.prototype.poll=function(){var e=this,t=this.cm,r=this.textarea,n=this.prevInput;if(this.contextMenuPending||!t.state.focused||We(r)&&!n&&!this.composing||t.isReadOnly()||t.options.disableInput||t.state.keySeq)return!1;var i=r.value;if(i==n&&!t.somethingSelected())return!1;if(l&&s>=9&&this.hasSelection===i||y&&/[\uf700-\uf7ff]/.test(i))return t.display.input.reset(),!1;if(t.doc.sel==t.display.selForContextMenu){var o=i.charCodeAt(0);if(8203!=o||n||(n="​"),8666==o)return this.reset(),this.cm.execCommand("undo")}for(var a=0,u=Math.min(n.length,i.length);a<u&&n.charCodeAt(a)==i.charCodeAt(a);)++a;return Jn(t,(function(){Wl(t,i.slice(a),n.length-a,null,e.composing?"*compose":null),i.length>1e3||i.indexOf("\n")>-1?r.value=e.prevInput="":e.prevInput=i,e.composing&&(e.composing.range.clear(),e.composing.range=t.markText(e.composing.start,t.getCursor("to"),{className:"CodeMirror-composing"}))})),!0},jl.prototype.ensurePolled=function(){this.pollingFast&&this.poll()&&(this.pollingFast=!1)},jl.prototype.onKeyPress=function(){l&&s>=9&&(this.hasSelection=null),this.fastPoll()},jl.prototype.onContextMenu=function(e){var t=this,r=t.cm,n=r.display,i=t.textarea;t.contextMenuPending&&t.contextMenuPending();var o=un(r,e),u=n.scroller.scrollTop;if(o&&!h){r.options.resetSelectionOnContextMenu&&-1==r.doc.sel.contains(o)&&ei(r,Ji)(r.doc,ki(o),U);var c,f=i.style.cssText,d=t.wrapper.style.cssText,p=t.wrapper.offsetParent.getBoundingClientRect();if(t.wrapper.style.cssText="position: static",i.style.cssText="position: absolute; width: 30px; height: 30px;\n      top: "+(e.clientY-p.top-5)+"px; left: "+(e.clientX-p.left-5)+"px;\n      z-index: 1000; background: "+(l?"rgba(255, 255, 255, .05)":"transparent")+";\n      outline: none; border-width: 0; outline: none; overflow: hidden; opacity: .05; filter: alpha(opacity=5);",a&&(c=window.scrollY),n.input.focus(),a&&window.scrollTo(null,c),n.input.reset(),r.somethingSelected()||(i.value=t.prevInput=" "),t.contextMenuPending=m,n.selForContextMenu=r.doc.sel,clearTimeout(n.detectingSelectAll),l&&s>=9&&v(),S){Ce(e);var g=function(){de(window,"mouseup",g),setTimeout(m,20)};he(window,"mouseup",g)}else setTimeout(m,50)}function v(){if(null!=i.selectionStart){var e=r.somethingSelected(),o="​"+(e?i.value:"");i.value="⇚",i.value=o,t.prevInput=e?"":"​",i.selectionStart=1,i.selectionEnd=o.length,n.selForContextMenu=r.doc.sel}}function m(){if(t.contextMenuPending==m&&(t.contextMenuPending=!1,t.wrapper.style.cssText=d,i.style.cssText=f,l&&s<9&&n.scrollbars.setScrollTop(n.scroller.scrollTop=u),null!=i.selectionStart)){(!l||l&&s<9)&&v();var e=0,o=function(){n.selForContextMenu==r.doc.sel&&0==i.selectionStart&&i.selectionEnd>0&&"​"==t.prevInput?ei(r,so)(r):e++<10?n.detectingSelectAll=setTimeout(o,500):(n.selForContextMenu=null,n.input.reset())};n.detectingSelectAll=setTimeout(o,200)}}},jl.prototype.readOnlyChanged=function(e){e||this.reset(),this.textarea.disabled="nocursor"==e,this.textarea.readOnly=!!e},jl.prototype.setUneditable=function(){},jl.prototype.needsContentAttribute=!1,function(e){var t=e.optionHandlers;function r(r,n,i,o){e.defaults[r]=n,i&&(t[r]=o?function(e,t,r){r!=Cl&&i(e,t,r)}:i)}e.defineOption=r,e.Init=Cl,r("value","",(function(e,t){return e.setValue(t)}),!0),r("mode",null,(function(e,t){e.doc.modeOption=t,Ai(e)}),!0),r("indentUnit",2,Ai,!0),r("indentWithTabs",!1),r("smartIndent",!0),r("tabSize",4,(function(e){Di(e),zr(e),hn(e)}),!0),r("lineSeparator",null,(function(e,t){if(e.doc.lineSep=t,t){var r=[],n=e.doc.first;e.doc.iter((function(e){for(var i=0;;){var o=e.text.indexOf(t,i);if(-1==o)break;i=o+t.length,r.push(et(n,o))}n++}));for(var i=r.length-1;i>=0;i--)go(e.doc,t,r[i],et(r[i].line,r[i].ch+t.length))}})),r("specialChars",/[\u0000-\u001f\u007f-\u009f\u00ad\u061c\u200b\u200e\u200f\u2028\u2029\ufeff\ufff9-\ufffc]/g,(function(e,t,r){e.state.specialChars=new RegExp(t.source+(t.test("\t")?"":"|\t"),"g"),r!=Cl&&e.refresh()})),r("specialCharPlaceholder",Qt,(function(e){return e.refresh()}),!0),r("electricChars",!0),r("inputStyle",m?"contenteditable":"textarea",(function(){throw new Error("inputStyle can not (yet) be changed in a running editor")}),!0),r("spellcheck",!1,(function(e,t){return e.getInputField().spellcheck=t}),!0),r("autocorrect",!1,(function(e,t){return e.getInputField().autocorrect=t}),!0),r("autocapitalize",!1,(function(e,t){return e.getInputField().autocapitalize=t}),!0),r("rtlMoveVisually",!w),r("wholeLineUpdateBefore",!0),r("theme","default",(function(e){xl(e),gi(e)}),!0),r("keyMap","default",(function(e,t,r){var n=qo(t),i=r!=Cl&&qo(r);i&&i.detach&&i.detach(e,n),n.attach&&n.attach(e,i||null)})),r("extraKeys",null),r("configureMouse",null),r("lineWrapping",!1,Tl,!0),r("gutters",[],(function(e,t){e.display.gutterSpecs=di(t,e.options.lineNumbers),gi(e)}),!0),r("fixedGutter",!0,(function(e,t){e.display.gutters.style.left=t?ln(e.display)+"px":"0",e.refresh()}),!0),r("coverGutterNextToScrollbar",!1,(function(e){return Gn(e)}),!0),r("scrollbarStyle","native",(function(e){Kn(e),Gn(e),e.display.scrollbars.setScrollTop(e.doc.scrollTop),e.display.scrollbars.setScrollLeft(e.doc.scrollLeft)}),!0),r("lineNumbers",!1,(function(e,t){e.display.gutterSpecs=di(e.options.gutters,t),gi(e)}),!0),r("firstLineNumber",1,gi,!0),r("lineNumberFormatter",(function(e){return e}),gi,!0),r("showCursorWhenSelecting",!1,vn,!0),r("resetSelectionOnContextMenu",!0),r("lineWiseCopyCut",!0),r("pasteLinesPerSelection",!0),r("selectionsMayTouch",!1),r("readOnly",!1,(function(e,t){"nocursor"==t&&(kn(e),e.display.input.blur()),e.display.input.readOnlyChanged(t)})),r("screenReaderLabel",null,(function(e,t){t=""===t?null:t,e.display.input.screenReaderLabelChanged(t)})),r("disableInput",!1,(function(e,t){t||e.display.input.reset()}),!0),r("dragDrop",!0,kl),r("allowDropFileTypes",null),r("cursorBlinkRate",530),r("cursorScrollMargin",0),r("cursorHeight",1,vn,!0),r("singleCursorHeightPerLine",!0,vn,!0),r("workTime",100),r("workDelay",100),r("flattenSpans",!0,Di,!0),r("addModeClass",!1,Di,!0),r("pollInterval",100),r("undoDepth",200,(function(e,t){return e.doc.history.undoDepth=t})),r("historyEventDelay",1250),r("viewportMargin",10,(function(e){return e.refresh()}),!0),r("maxHighlightLength",1e4,Di,!0),r("moveInputWithCursor",!0,(function(e,t){t||e.display.input.resetPosition()})),r("tabindex",null,(function(e,t){return e.display.input.getField().tabIndex=t||""})),r("autofocus",null),r("direction","ltr",(function(e,t){return e.doc.setDirection(t)}),!0),r("phrases",null)}(Ml),function(e){var t=e.optionHandlers,r=e.helpers={};e.prototype={constructor:e,focus:function(){window.focus(),this.display.input.focus()},setOption:function(e,r){var n=this.options,i=n[e];n[e]==r&&"mode"!=e||(n[e]=r,t.hasOwnProperty(e)&&ei(this,t[e])(this,r,i),pe(this,"optionChange",this,e))},getOption:function(e){return this.options[e]},getDoc:function(){return this.doc},addKeyMap:function(e,t){this.state.keyMaps[t?"push":"unshift"](qo(e))},removeKeyMap:function(e){for(var t=this.state.keyMaps,r=0;r<t.length;++r)if(t[r]==e||t[r].name==e)return t.splice(r,1),!0},addOverlay:ti((function(t,r){var n=t.token?t:e.getMode(this.options,t);if(n.startState)throw new Error("Overlays may not be stateful.");!function(e,t,r){for(var n=0,i=r(t);n<e.length&&r(e[n])<=i;)n++;e.splice(n,0,t)}(this.state.overlays,{mode:n,modeSpec:t,opaque:r&&r.opaque,priority:r&&r.priority||0},(function(e){return e.priority})),this.state.modeGen++,hn(this)})),removeOverlay:ti((function(e){for(var t=this.state.overlays,r=0;r<t.length;++r){var n=t[r].modeSpec;if(n==e||"string"==typeof e&&n.name==e)return t.splice(r,1),this.state.modeGen++,void hn(this)}})),indentLine:ti((function(e,t,r){"string"!=typeof t&&"number"!=typeof t&&(t=null==t?this.options.smartIndent?"smart":"prev":t?"add":"subtract"),Qe(this.doc,e)&&Ol(this,e,t,r)})),indentSelection:ti((function(e){for(var t=this.doc.sel.ranges,r=-1,n=0;n<t.length;n++){var i=t[n];if(i.empty())i.head.line>r&&(Ol(this,i.head.line,e,!0),r=i.head.line,n==this.doc.sel.primIndex&&Dn(this));else{var o=i.from(),l=i.to(),s=Math.max(r,o.line);r=Math.min(this.lastLine(),l.line-(l.ch?0:1))+1;for(var a=s;a<r;++a)Ol(this,a,e);var u=this.doc.sel.ranges;0==o.ch&&t.length==u.length&&u[n].from().ch>0&&qi(this.doc,n,new Si(o,u[n].to()),U)}}})),getTokenAt:function(e,t){return yt(this,e,t)},getLineTokens:function(e,t){return yt(this,et(e),t,!0)},getTokenTypeAt:function(e){e=st(this.doc,e);var t,r=ft(this,Xe(this.doc,e.line)),n=0,i=(r.length-1)/2,o=e.ch;if(0==o)t=r[2];else for(;;){var l=n+i>>1;if((l?r[2*l-1]:0)>=o)i=l;else{if(!(r[2*l+1]<o)){t=r[2*l+2];break}n=l+1}}var s=t?t.indexOf("overlay "):-1;return s<0?t:0==s?null:t.slice(0,s-1)},getModeAt:function(t){var r=this.doc.mode;return r.innerMode?e.innerMode(r,this.getTokenAt(t).state).mode:r},getHelper:function(e,t){return this.getHelpers(e,t)[0]},getHelpers:function(e,t){var n=[];if(!r.hasOwnProperty(t))return n;var i=r[t],o=this.getModeAt(e);if("string"==typeof o[t])i[o[t]]&&n.push(i[o[t]]);else if(o[t])for(var l=0;l<o[t].length;l++){var s=i[o[t][l]];s&&n.push(s)}else o.helperType&&i[o.helperType]?n.push(i[o.helperType]):i[o.name]&&n.push(i[o.name]);for(var a=0;a<i._global.length;a++){var u=i._global[a];u.pred(o,this)&&-1==B(n,u.val)&&n.push(u.val)}return n},getStateAfter:function(e,t){var r=this.doc;return dt(this,(e=lt(r,null==e?r.first+r.size-1:e))+1,t).state},cursorCoords:function(e,t){var r=this.doc.sel.primary();return Xr(this,null==e?r.head:"object"==typeof e?st(this.doc,e):e?r.from():r.to(),t||"page")},charCoords:function(e,t){return jr(this,st(this.doc,e),t||"page")},coordsChar:function(e,t){return $r(this,(e=Kr(this,e,t||"page")).left,e.top)},lineAtHeight:function(e,t){return e=Kr(this,{top:e,left:0},t||"page").top,Ze(this.doc,e+this.display.viewOffset)},heightAtLine:function(e,t,r){var n,i=!1;if("number"==typeof e){var o=this.doc.first+this.doc.size-1;e<this.doc.first?e=this.doc.first:e>o&&(e=o,i=!0),n=Xe(this.doc,e)}else n=e;return Vr(this,n,{top:0,left:0},t||"page",r||i).top+(i?this.doc.height-Vt(n):0)},defaultTextHeight:function(){return rn(this.display)},defaultCharWidth:function(){return nn(this.display)},getViewport:function(){return{from:this.display.viewFrom,to:this.display.viewTo}},addWidget:function(e,t,r,n,i){var o,l,s,a=this.display,u=(e=Xr(this,st(this.doc,e))).bottom,c=e.left;if(t.style.position="absolute",t.setAttribute("cm-ignore-events","true"),this.display.input.setUneditable(t),a.sizer.appendChild(t),"over"==n)u=e.top;else if("above"==n||"near"==n){var h=Math.max(a.wrapper.clientHeight,this.doc.height),f=Math.max(a.sizer.clientWidth,a.lineSpace.clientWidth);("above"==n||e.bottom+t.offsetHeight>h)&&e.top>t.offsetHeight?u=e.top-t.offsetHeight:e.bottom+t.offsetHeight<=h&&(u=e.bottom),c+t.offsetWidth>f&&(c=f-t.offsetWidth)}t.style.top=u+"px",t.style.left=t.style.right="","right"==i?(c=a.sizer.clientWidth-t.offsetWidth,t.style.right="0px"):("left"==i?c=0:"middle"==i&&(c=(a.sizer.clientWidth-t.offsetWidth)/2),t.style.left=c+"px"),r&&(o=this,l={left:c,top:u,right:c+t.offsetWidth,bottom:u+t.offsetHeight},null!=(s=On(o,l)).scrollTop&&Pn(o,s.scrollTop),null!=s.scrollLeft&&In(o,s.scrollLeft))},triggerOnKeyDown:ti(cl),triggerOnKeyPress:ti(fl),triggerOnKeyUp:hl,triggerOnMouseDown:ti(vl),execCommand:function(e){if(tl.hasOwnProperty(e))return tl[e].call(null,this)},triggerElectric:ti((function(e){Fl(this,e)})),findPosH:function(e,t,r,n){var i=1;t<0&&(i=-1,t=-t);for(var o=st(this.doc,e),l=0;l<t&&!(o=Rl(this.doc,o,i,r,n)).hitSide;++l);return o},moveH:ti((function(e,t){var r=this;this.extendSelectionsBy((function(n){return r.display.shift||r.doc.extend||n.empty()?Rl(r.doc,n.head,e,t,r.options.rtlMoveVisually):e<0?n.from():n.to()}),K)})),deleteH:ti((function(e,t){var r=this.doc.sel,n=this.doc;r.somethingSelected()?n.replaceSelection("",null,"+delete"):Zo(this,(function(r){var i=Rl(n,r.head,e,t,!1);return e<0?{from:i,to:r.head}:{from:r.head,to:i}}))})),findPosV:function(e,t,r,n){var i=1,o=n;t<0&&(i=-1,t=-t);for(var l=st(this.doc,e),s=0;s<t;++s){var a=Xr(this,l,"div");if(null==o?o=a.left:a.left=o,(l=zl(this,a,i,r)).hitSide)break}return l},moveV:ti((function(e,t){var r=this,n=this.doc,i=[],o=!this.display.shift&&!n.extend&&n.sel.somethingSelected();if(n.extendSelectionsBy((function(l){if(o)return e<0?l.from():l.to();var s=Xr(r,l.head,"div");null!=l.goalColumn&&(s.left=l.goalColumn),i.push(s.left);var a=zl(r,s,e,t);return"page"==t&&l==n.sel.primary()&&An(r,jr(r,a,"div").top-s.top),a}),K),i.length)for(var l=0;l<n.sel.ranges.length;l++)n.sel.ranges[l].goalColumn=i[l]})),findWordAt:function(e){var t=Xe(this.doc,e.line).text,r=e.ch,n=e.ch;if(t){var i=this.getHelper(e,"wordChars");"before"!=e.sticky&&n!=t.length||!r?++n:--r;for(var o=t.charAt(r),l=ee(o,i)?function(e){return ee(e,i)}:/\s/.test(o)?function(e){return/\s/.test(e)}:function(e){return!/\s/.test(e)&&!ee(e)};r>0&&l(t.charAt(r-1));)--r;for(;n<t.length&&l(t.charAt(n));)++n}return new Si(et(e.line,r),et(e.line,n))},toggleOverwrite:function(e){null!=e&&e==this.state.overwrite||((this.state.overwrite=!this.state.overwrite)?H(this.display.cursorDiv,"CodeMirror-overwrite"):T(this.display.cursorDiv,"CodeMirror-overwrite"),pe(this,"overwriteToggle",this,this.state.overwrite))},hasFocus:function(){return this.display.input.getField()==W()},isReadOnly:function(){return!(!this.options.readOnly&&!this.doc.cantEdit)},scrollTo:ti((function(e,t){Wn(this,e,t)})),getScrollInfo:function(){var e=this.display.scroller;return{left:e.scrollLeft,top:e.scrollTop,height:e.scrollHeight-kr(this)-this.display.barHeight,width:e.scrollWidth-kr(this)-this.display.barWidth,clientHeight:Mr(this),clientWidth:Tr(this)}},scrollIntoView:ti((function(e,t){null==e?(e={from:this.doc.sel.primary().head,to:null},null==t&&(t=this.options.cursorScrollMargin)):"number"==typeof e?e={from:et(e,0),to:null}:null==e.from&&(e={from:e,to:null}),e.to||(e.to=e.from),e.margin=t||0,null!=e.from.line?function(e,t){Hn(e),e.curOp.scrollToPos=t}(this,e):Fn(this,e.from,e.to,e.margin)})),setSize:ti((function(e,t){var r=this,n=function(e){return"number"==typeof e||/^\d+$/.test(String(e))?e+"px":e};null!=e&&(this.display.wrapper.style.width=n(e)),null!=t&&(this.display.wrapper.style.height=n(t)),this.options.lineWrapping&&Rr(this);var i=this.display.viewFrom;this.doc.iter(i,this.display.viewTo,(function(e){if(e.widgets)for(var t=0;t<e.widgets.length;t++)if(e.widgets[t].noHScroll){fn(r,i,"widget");break}++i})),this.curOp.forceUpdate=!0,pe(this,"refresh",this)})),operation:function(e){return Jn(this,e)},startOperation:function(){return Xn(this)},endOperation:function(){return Yn(this)},refresh:ti((function(){var e=this.display.cachedTextHeight;hn(this),this.curOp.forceUpdate=!0,zr(this),Wn(this,this.doc.scrollLeft,this.doc.scrollTop),ui(this.display),(null==e||Math.abs(e-rn(this.display))>.5||this.options.lineWrapping)&&an(this),pe(this,"refresh",this)})),swapDoc:ti((function(e){var t=this.doc;return t.cm=null,this.state.selectingText&&this.state.selectingText(),Pi(this,e),zr(this),this.display.input.reset(),Wn(this,e.scrollLeft,e.scrollTop),this.curOp.forceScroll=!0,sr(this,"swapDoc",this,t),t})),phrase:function(e){var t=this.options.phrases;return t&&Object.prototype.hasOwnProperty.call(t,e)?t[e]:e},getInputField:function(){return this.display.input.getField()},getWrapperElement:function(){return this.display.wrapper},getScrollerElement:function(){return this.display.scroller},getGutterElement:function(){return this.display.gutters}},ye(e),e.registerHelper=function(t,n,i){r.hasOwnProperty(t)||(r[t]=e[t]={_global:[]}),r[t][n]=i},e.registerGlobalHelper=function(t,n,i,o){e.registerHelper(t,n,o),r[t]._global.push({pred:i,val:o})}}(Ml);var Xl="iter insert remove copy getEditor constructor".split(" ");for(var Yl in Do.prototype)Do.prototype.hasOwnProperty(Yl)&&B(Xl,Yl)<0&&(Ml.prototype[Yl]=function(e){return function(){return e.apply(this.doc,arguments)}}(Do.prototype[Yl]));return ye(Do),Ml.inputStyles={textarea:jl,contenteditable:Bl},Ml.defineMode=function(e){Ml.defaults.mode||"null"==e||(Ml.defaults.mode=e),Ie.apply(this,arguments)},Ml.defineMIME=function(e,t){Ee[e]=t},Ml.defineMode("null",(function(){return{token:function(e){return e.skipToEnd()}}})),Ml.defineMIME("text/plain","null"),Ml.defineExtension=function(e,t){Ml.prototype[e]=t},Ml.defineDocExtension=function(e,t){Do.prototype[e]=t},Ml.fromTextArea=function(e,t){if((t=t?I(t):{}).value=e.value,!t.tabindex&&e.tabIndex&&(t.tabindex=e.tabIndex),!t.placeholder&&e.placeholder&&(t.placeholder=e.placeholder),null==t.autofocus){var r=W();t.autofocus=r==e||null!=e.getAttribute("autofocus")&&r==document.body}function n(){e.value=s.getValue()}var i;if(e.form&&(he(e.form,"submit",n),!t.leaveSubmitMethodAlone)){var o=e.form;i=o.submit;try{var l=o.submit=function(){n(),o.submit=i,o.submit(),o.submit=l}}catch(e){}}t.finishInit=function(r){r.save=n,r.getTextArea=function(){return e},r.toTextArea=function(){r.toTextArea=isNaN,n(),e.parentNode.removeChild(r.getWrapperElement()),e.style.display="",e.form&&(de(e.form,"submit",n),t.leaveSubmitMethodAlone||"function"!=typeof e.form.submit||(e.form.submit=i))}},e.style.display="none";var s=Ml((function(t){return e.parentNode.insertBefore(t,e.nextSibling)}),t);return s},function(e){e.off=de,e.on=he,e.wheelEventPixels=wi,e.Doc=Do,e.splitLines=De,e.countColumn=R,e.findColumn=j,e.isWordChar=J,e.Pass=G,e.signal=pe,e.Line=Xt,e.changeEnd=Ti,e.scrollbarModel=Vn,e.Pos=et,e.cmpPos=tt,e.modes=Pe,e.mimeModes=Ee,e.resolveMode=Re,e.getMode=ze,e.modeExtensions=Be,e.extendMode=Ge,e.copyState=Ue,e.startState=Ke,e.innerMode=Ve,e.commands=tl,e.keyMap=Vo,e.keyName=$o,e.isModifierKey=Yo,e.lookupKey=Xo,e.normalizeKeyMap=jo,e.StringStream=je,e.SharedTextMarker=Mo,e.TextMarker=ko,e.LineWidget=Co,e.e_preventDefault=be,e.e_stopPropagation=we,e.e_stop=Ce,e.addClass=H,e.contains=D,e.rmClass=T,e.keyNames=zo}(Ml),Ml.version="5.59.4",Ml}));
EOF
fi





echo -e "======================== $dir_panel_js/comment.js ========================\n"
if [ ! -f $dir_panel_js/comment.js ];then
  cat>$dir_panel_js/comment.js<<\EOF
// CodeMirror, copyright (c) by Marijn Haverbeke and others
// Distributed under an MIT license: https://codemirror.net/LICENSE

(function(mod) {
  if (typeof exports == "object" && typeof module == "object") // CommonJS
    mod(require("../../lib/codemirror"));
  else if (typeof define == "function" && define.amd) // AMD
    define(["../../lib/codemirror"], mod);
  else // Plain browser env
    mod(CodeMirror);
})(function(CodeMirror) {
  "use strict";

  var noOptions = {};
  var nonWS = /[^\s\u00a0]/;
  var Pos = CodeMirror.Pos, cmp = CodeMirror.cmpPos;

  function firstNonWS(str) {
    var found = str.search(nonWS);
    return found == -1 ? 0 : found;
  }

  CodeMirror.commands.toggleComment = function(cm) {
    cm.toggleComment();
  };

  CodeMirror.defineExtension("toggleComment", function(options) {
    if (!options) options = noOptions;
    var cm = this;
    var minLine = Infinity, ranges = this.listSelections(), mode = null;
    for (var i = ranges.length - 1; i >= 0; i--) {
      var from = ranges[i].from(), to = ranges[i].to();
      if (from.line >= minLine) continue;
      if (to.line >= minLine) to = Pos(minLine, 0);
      minLine = from.line;
      if (mode == null) {
        if (cm.uncomment(from, to, options)) mode = "un";
        else { cm.lineComment(from, to, options); mode = "line"; }
      } else if (mode == "un") {
        cm.uncomment(from, to, options);
      } else {
        cm.lineComment(from, to, options);
      }
    }
  });

  // Rough heuristic to try and detect lines that are part of multi-line string
  function probablyInsideString(cm, pos, line) {
    return /\bstring\b/.test(cm.getTokenTypeAt(Pos(pos.line, 0))) && !/^[\'\"\`]/.test(line)
  }

  function getMode(cm, pos) {
    var mode = cm.getMode()
    return mode.useInnerComments === false || !mode.innerMode ? mode : cm.getModeAt(pos)
  }

  CodeMirror.defineExtension("lineComment", function(from, to, options) {
    if (!options) options = noOptions;
    var self = this, mode = getMode(self, from);
    var firstLine = self.getLine(from.line);
    if (firstLine == null || probablyInsideString(self, from, firstLine)) return;

    var commentString = options.lineComment || mode.lineComment;
    if (!commentString) {
      if (options.blockCommentStart || mode.blockCommentStart) {
        options.fullLines = true;
        self.blockComment(from, to, options);
      }
      return;
    }

    var end = Math.min(to.ch != 0 || to.line == from.line ? to.line + 1 : to.line, self.lastLine() + 1);
    var pad = options.padding == null ? " " : options.padding;
    var blankLines = options.commentBlankLines || from.line == to.line;

    self.operation(function() {
      if (options.indent) {
        var baseString = null;
        for (var i = from.line; i < end; ++i) {
          var line = self.getLine(i);
          var whitespace = line.slice(0, firstNonWS(line));
          if (baseString == null || baseString.length > whitespace.length) {
            baseString = whitespace;
          }
        }
        for (var i = from.line; i < end; ++i) {
          var line = self.getLine(i), cut = baseString.length;
          if (!blankLines && !nonWS.test(line)) continue;
          if (line.slice(0, cut) != baseString) cut = firstNonWS(line);
          self.replaceRange(baseString + commentString + pad, Pos(i, 0), Pos(i, cut));
        }
      } else {
        for (var i = from.line; i < end; ++i) {
          if (blankLines || nonWS.test(self.getLine(i)))
            self.replaceRange(commentString + pad, Pos(i, 0));
        }
      }
    });
  });

  CodeMirror.defineExtension("blockComment", function(from, to, options) {
    if (!options) options = noOptions;
    var self = this, mode = getMode(self, from);
    var startString = options.blockCommentStart || mode.blockCommentStart;
    var endString = options.blockCommentEnd || mode.blockCommentEnd;
    if (!startString || !endString) {
      if ((options.lineComment || mode.lineComment) && options.fullLines != false)
        self.lineComment(from, to, options);
      return;
    }
    if (/\bcomment\b/.test(self.getTokenTypeAt(Pos(from.line, 0)))) return

    var end = Math.min(to.line, self.lastLine());
    if (end != from.line && to.ch == 0 && nonWS.test(self.getLine(end))) --end;

    var pad = options.padding == null ? " " : options.padding;
    if (from.line > end) return;

    self.operation(function() {
      if (options.fullLines != false) {
        var lastLineHasText = nonWS.test(self.getLine(end));
        self.replaceRange(pad + endString, Pos(end));
        self.replaceRange(startString + pad, Pos(from.line, 0));
        var lead = options.blockCommentLead || mode.blockCommentLead;
        if (lead != null) for (var i = from.line + 1; i <= end; ++i)
          if (i != end || lastLineHasText)
            self.replaceRange(lead + pad, Pos(i, 0));
      } else {
        var atCursor = cmp(self.getCursor("to"), to) == 0, empty = !self.somethingSelected()
        self.replaceRange(endString, to);
        if (atCursor) self.setSelection(empty ? to : self.getCursor("from"), to)
        self.replaceRange(startString, from);
      }
    });
  });

  CodeMirror.defineExtension("uncomment", function(from, to, options) {
    if (!options) options = noOptions;
    var self = this, mode = getMode(self, from);
    var end = Math.min(to.ch != 0 || to.line == from.line ? to.line : to.line - 1, self.lastLine()), start = Math.min(from.line, end);

    // Try finding line comments
    var lineString = options.lineComment || mode.lineComment, lines = [];
    var pad = options.padding == null ? " " : options.padding, didSomething;
    lineComment: {
      if (!lineString) break lineComment;
      for (var i = start; i <= end; ++i) {
        var line = self.getLine(i);
        var found = line.indexOf(lineString);
        if (found > -1 && !/comment/.test(self.getTokenTypeAt(Pos(i, found + 1)))) found = -1;
        if (found == -1 && nonWS.test(line)) break lineComment;
        if (found > -1 && nonWS.test(line.slice(0, found))) break lineComment;
        lines.push(line);
      }
      self.operation(function() {
        for (var i = start; i <= end; ++i) {
          var line = lines[i - start];
          var pos = line.indexOf(lineString), endPos = pos + lineString.length;
          if (pos < 0) continue;
          if (line.slice(endPos, endPos + pad.length) == pad) endPos += pad.length;
          didSomething = true;
          self.replaceRange("", Pos(i, pos), Pos(i, endPos));
        }
      });
      if (didSomething) return true;
    }

    // Try block comments
    var startString = options.blockCommentStart || mode.blockCommentStart;
    var endString = options.blockCommentEnd || mode.blockCommentEnd;
    if (!startString || !endString) return false;
    var lead = options.blockCommentLead || mode.blockCommentLead;
    var startLine = self.getLine(start), open = startLine.indexOf(startString)
    if (open == -1) return false
    var endLine = end == start ? startLine : self.getLine(end)
    var close = endLine.indexOf(endString, end == start ? open + startString.length : 0);
    var insideStart = Pos(start, open + 1), insideEnd = Pos(end, close + 1)
    if (close == -1 ||
        !/comment/.test(self.getTokenTypeAt(insideStart)) ||
        !/comment/.test(self.getTokenTypeAt(insideEnd)) ||
        self.getRange(insideStart, insideEnd, "\n").indexOf(endString) > -1)
      return false;

    // Avoid killing block comments completely outside the selection.
    // Positions of the last startString before the start of the selection, and the first endString after it.
    var lastStart = startLine.lastIndexOf(startString, from.ch);
    var firstEnd = lastStart == -1 ? -1 : startLine.slice(0, from.ch).indexOf(endString, lastStart + startString.length);
    if (lastStart != -1 && firstEnd != -1 && firstEnd + endString.length != from.ch) return false;
    // Positions of the first endString after the end of the selection, and the last startString before it.
    firstEnd = endLine.indexOf(endString, to.ch);
    var almostLastStart = endLine.slice(to.ch).lastIndexOf(startString, firstEnd - to.ch);
    lastStart = (firstEnd == -1 || almostLastStart == -1) ? -1 : to.ch + almostLastStart;
    if (firstEnd != -1 && lastStart != -1 && lastStart != to.ch) return false;

    self.operation(function() {
      self.replaceRange("", Pos(end, close - (pad && endLine.slice(close - pad.length, close) == pad ? pad.length : 0)),
                        Pos(end, close + endString.length));
      var openEnd = open + startString.length;
      if (pad && startLine.slice(openEnd, openEnd + pad.length) == pad) openEnd += pad.length;
      self.replaceRange("", Pos(start, open), Pos(start, openEnd));
      if (lead) for (var i = start + 1; i <= end; ++i) {
        var line = self.getLine(i), found = line.indexOf(lead);
        if (found == -1 || nonWS.test(line.slice(0, found))) continue;
        var foundEnd = found + lead.length;
        if (pad && line.slice(foundEnd, foundEnd + pad.length) == pad) foundEnd += pad.length;
        self.replaceRange("", Pos(i, found), Pos(i, foundEnd));
      }
    });
    return true;
  });
});
EOF
fi





echo -e "======================== $dir_panel_js/diff_match_patch.js ========================\n"
if [ ! -f $dir_panel_js/diff_match_patch.js ];then
  cat>$dir_panel_js/diff_match_patch.js<<\EOF
var diff_match_patch=function(){this.Diff_Timeout=1;this.Diff_EditCost=4;this.Match_Threshold=.5;this.Match_Distance=1E3;this.Patch_DeleteThreshold=.5;this.Patch_Margin=4;this.Match_MaxBits=32},DIFF_DELETE=-1,DIFF_INSERT=1,DIFF_EQUAL=0;diff_match_patch.Diff=function(a,b){this[0]=a;this[1]=b};diff_match_patch.Diff.prototype.length=2;diff_match_patch.Diff.prototype.toString=function(){return this[0]+","+this[1]};
diff_match_patch.prototype.diff_main=function(a,b,c,d){"undefined"==typeof d&&(d=0>=this.Diff_Timeout?Number.MAX_VALUE:(new Date).getTime()+1E3*this.Diff_Timeout);if(null==a||null==b)throw Error("Null input. (diff_main)");if(a==b)return a?[new diff_match_patch.Diff(DIFF_EQUAL,a)]:[];"undefined"==typeof c&&(c=!0);var e=c,f=this.diff_commonPrefix(a,b);c=a.substring(0,f);a=a.substring(f);b=b.substring(f);f=this.diff_commonSuffix(a,b);var g=a.substring(a.length-f);a=a.substring(0,a.length-f);b=b.substring(0,
b.length-f);a=this.diff_compute_(a,b,e,d);c&&a.unshift(new diff_match_patch.Diff(DIFF_EQUAL,c));g&&a.push(new diff_match_patch.Diff(DIFF_EQUAL,g));this.diff_cleanupMerge(a);return a};
diff_match_patch.prototype.diff_compute_=function(a,b,c,d){if(!a)return[new diff_match_patch.Diff(DIFF_INSERT,b)];if(!b)return[new diff_match_patch.Diff(DIFF_DELETE,a)];var e=a.length>b.length?a:b,f=a.length>b.length?b:a,g=e.indexOf(f);return-1!=g?(c=[new diff_match_patch.Diff(DIFF_INSERT,e.substring(0,g)),new diff_match_patch.Diff(DIFF_EQUAL,f),new diff_match_patch.Diff(DIFF_INSERT,e.substring(g+f.length))],a.length>b.length&&(c[0][0]=c[2][0]=DIFF_DELETE),c):1==f.length?[new diff_match_patch.Diff(DIFF_DELETE,
a),new diff_match_patch.Diff(DIFF_INSERT,b)]:(e=this.diff_halfMatch_(a,b))?(b=e[1],f=e[3],a=e[4],e=this.diff_main(e[0],e[2],c,d),c=this.diff_main(b,f,c,d),e.concat([new diff_match_patch.Diff(DIFF_EQUAL,a)],c)):c&&100<a.length&&100<b.length?this.diff_lineMode_(a,b,d):this.diff_bisect_(a,b,d)};
diff_match_patch.prototype.diff_lineMode_=function(a,b,c){var d=this.diff_linesToChars_(a,b);a=d.chars1;b=d.chars2;d=d.lineArray;a=this.diff_main(a,b,!1,c);this.diff_charsToLines_(a,d);this.diff_cleanupSemantic(a);a.push(new diff_match_patch.Diff(DIFF_EQUAL,""));for(var e=d=b=0,f="",g="";b<a.length;){switch(a[b][0]){case DIFF_INSERT:e++;g+=a[b][1];break;case DIFF_DELETE:d++;f+=a[b][1];break;case DIFF_EQUAL:if(1<=d&&1<=e){a.splice(b-d-e,d+e);b=b-d-e;d=this.diff_main(f,g,!1,c);for(e=d.length-1;0<=e;e--)a.splice(b,
0,d[e]);b+=d.length}d=e=0;g=f=""}b++}a.pop();return a};
diff_match_patch.prototype.diff_bisect_=function(a,b,c){for(var d=a.length,e=b.length,f=Math.ceil((d+e)/2),g=2*f,h=Array(g),l=Array(g),k=0;k<g;k++)h[k]=-1,l[k]=-1;h[f+1]=0;l[f+1]=0;k=d-e;for(var m=0!=k%2,p=0,x=0,w=0,q=0,t=0;t<f&&!((new Date).getTime()>c);t++){for(var v=-t+p;v<=t-x;v+=2){var n=f+v;var r=v==-t||v!=t&&h[n-1]<h[n+1]?h[n+1]:h[n-1]+1;for(var y=r-v;r<d&&y<e&&a.charAt(r)==b.charAt(y);)r++,y++;h[n]=r;if(r>d)x+=2;else if(y>e)p+=2;else if(m&&(n=f+k-v,0<=n&&n<g&&-1!=l[n])){var u=d-l[n];if(r>=
u)return this.diff_bisectSplit_(a,b,r,y,c)}}for(v=-t+w;v<=t-q;v+=2){n=f+v;u=v==-t||v!=t&&l[n-1]<l[n+1]?l[n+1]:l[n-1]+1;for(r=u-v;u<d&&r<e&&a.charAt(d-u-1)==b.charAt(e-r-1);)u++,r++;l[n]=u;if(u>d)q+=2;else if(r>e)w+=2;else if(!m&&(n=f+k-v,0<=n&&n<g&&-1!=h[n]&&(r=h[n],y=f+r-n,u=d-u,r>=u)))return this.diff_bisectSplit_(a,b,r,y,c)}}return[new diff_match_patch.Diff(DIFF_DELETE,a),new diff_match_patch.Diff(DIFF_INSERT,b)]};
diff_match_patch.prototype.diff_bisectSplit_=function(a,b,c,d,e){var f=a.substring(0,c),g=b.substring(0,d);a=a.substring(c);b=b.substring(d);f=this.diff_main(f,g,!1,e);e=this.diff_main(a,b,!1,e);return f.concat(e)};
diff_match_patch.prototype.diff_linesToChars_=function(a,b){function c(a){for(var b="",c=0,g=-1,h=d.length;g<a.length-1;){g=a.indexOf("\n",c);-1==g&&(g=a.length-1);var l=a.substring(c,g+1);(e.hasOwnProperty?e.hasOwnProperty(l):void 0!==e[l])?b+=String.fromCharCode(e[l]):(h==f&&(l=a.substring(c),g=a.length),b+=String.fromCharCode(h),e[l]=h,d[h++]=l);c=g+1}return b}var d=[],e={};d[0]="";var f=4E4,g=c(a);f=65535;var h=c(b);return{chars1:g,chars2:h,lineArray:d}};
diff_match_patch.prototype.diff_charsToLines_=function(a,b){for(var c=0;c<a.length;c++){for(var d=a[c][1],e=[],f=0;f<d.length;f++)e[f]=b[d.charCodeAt(f)];a[c][1]=e.join("")}};diff_match_patch.prototype.diff_commonPrefix=function(a,b){if(!a||!b||a.charAt(0)!=b.charAt(0))return 0;for(var c=0,d=Math.min(a.length,b.length),e=d,f=0;c<e;)a.substring(f,e)==b.substring(f,e)?f=c=e:d=e,e=Math.floor((d-c)/2+c);return e};
diff_match_patch.prototype.diff_commonSuffix=function(a,b){if(!a||!b||a.charAt(a.length-1)!=b.charAt(b.length-1))return 0;for(var c=0,d=Math.min(a.length,b.length),e=d,f=0;c<e;)a.substring(a.length-e,a.length-f)==b.substring(b.length-e,b.length-f)?f=c=e:d=e,e=Math.floor((d-c)/2+c);return e};
diff_match_patch.prototype.diff_commonOverlap_=function(a,b){var c=a.length,d=b.length;if(0==c||0==d)return 0;c>d?a=a.substring(c-d):c<d&&(b=b.substring(0,c));c=Math.min(c,d);if(a==b)return c;d=0;for(var e=1;;){var f=a.substring(c-e);f=b.indexOf(f);if(-1==f)return d;e+=f;if(0==f||a.substring(c-e)==b.substring(0,e))d=e,e++}};
diff_match_patch.prototype.diff_halfMatch_=function(a,b){function c(a,b,c){for(var d=a.substring(c,c+Math.floor(a.length/4)),e=-1,g="",h,k,l,m;-1!=(e=b.indexOf(d,e+1));){var p=f.diff_commonPrefix(a.substring(c),b.substring(e)),u=f.diff_commonSuffix(a.substring(0,c),b.substring(0,e));g.length<u+p&&(g=b.substring(e-u,e)+b.substring(e,e+p),h=a.substring(0,c-u),k=a.substring(c+p),l=b.substring(0,e-u),m=b.substring(e+p))}return 2*g.length>=a.length?[h,k,l,m,g]:null}if(0>=this.Diff_Timeout)return null;
var d=a.length>b.length?a:b,e=a.length>b.length?b:a;if(4>d.length||2*e.length<d.length)return null;var f=this,g=c(d,e,Math.ceil(d.length/4));d=c(d,e,Math.ceil(d.length/2));if(g||d)g=d?g?g[4].length>d[4].length?g:d:d:g;else return null;if(a.length>b.length){d=g[0];e=g[1];var h=g[2];var l=g[3]}else h=g[0],l=g[1],d=g[2],e=g[3];return[d,e,h,l,g[4]]};
diff_match_patch.prototype.diff_cleanupSemantic=function(a){for(var b=!1,c=[],d=0,e=null,f=0,g=0,h=0,l=0,k=0;f<a.length;)a[f][0]==DIFF_EQUAL?(c[d++]=f,g=l,h=k,k=l=0,e=a[f][1]):(a[f][0]==DIFF_INSERT?l+=a[f][1].length:k+=a[f][1].length,e&&e.length<=Math.max(g,h)&&e.length<=Math.max(l,k)&&(a.splice(c[d-1],0,new diff_match_patch.Diff(DIFF_DELETE,e)),a[c[d-1]+1][0]=DIFF_INSERT,d--,d--,f=0<d?c[d-1]:-1,k=l=h=g=0,e=null,b=!0)),f++;b&&this.diff_cleanupMerge(a);this.diff_cleanupSemanticLossless(a);for(f=1;f<
a.length;){if(a[f-1][0]==DIFF_DELETE&&a[f][0]==DIFF_INSERT){b=a[f-1][1];c=a[f][1];d=this.diff_commonOverlap_(b,c);e=this.diff_commonOverlap_(c,b);if(d>=e){if(d>=b.length/2||d>=c.length/2)a.splice(f,0,new diff_match_patch.Diff(DIFF_EQUAL,c.substring(0,d))),a[f-1][1]=b.substring(0,b.length-d),a[f+1][1]=c.substring(d),f++}else if(e>=b.length/2||e>=c.length/2)a.splice(f,0,new diff_match_patch.Diff(DIFF_EQUAL,b.substring(0,e))),a[f-1][0]=DIFF_INSERT,a[f-1][1]=c.substring(0,c.length-e),a[f+1][0]=DIFF_DELETE,
a[f+1][1]=b.substring(e),f++;f++}f++}};
diff_match_patch.prototype.diff_cleanupSemanticLossless=function(a){function b(a,b){if(!a||!b)return 6;var c=a.charAt(a.length-1),d=b.charAt(0),e=c.match(diff_match_patch.nonAlphaNumericRegex_),f=d.match(diff_match_patch.nonAlphaNumericRegex_),g=e&&c.match(diff_match_patch.whitespaceRegex_),h=f&&d.match(diff_match_patch.whitespaceRegex_);c=g&&c.match(diff_match_patch.linebreakRegex_);d=h&&d.match(diff_match_patch.linebreakRegex_);var k=c&&a.match(diff_match_patch.blanklineEndRegex_),l=d&&b.match(diff_match_patch.blanklineStartRegex_);
return k||l?5:c||d?4:e&&!g&&h?3:g||h?2:e||f?1:0}for(var c=1;c<a.length-1;){if(a[c-1][0]==DIFF_EQUAL&&a[c+1][0]==DIFF_EQUAL){var d=a[c-1][1],e=a[c][1],f=a[c+1][1],g=this.diff_commonSuffix(d,e);if(g){var h=e.substring(e.length-g);d=d.substring(0,d.length-g);e=h+e.substring(0,e.length-g);f=h+f}g=d;h=e;for(var l=f,k=b(d,e)+b(e,f);e.charAt(0)===f.charAt(0);){d+=e.charAt(0);e=e.substring(1)+f.charAt(0);f=f.substring(1);var m=b(d,e)+b(e,f);m>=k&&(k=m,g=d,h=e,l=f)}a[c-1][1]!=g&&(g?a[c-1][1]=g:(a.splice(c-
1,1),c--),a[c][1]=h,l?a[c+1][1]=l:(a.splice(c+1,1),c--))}c++}};diff_match_patch.nonAlphaNumericRegex_=/[^a-zA-Z0-9]/;diff_match_patch.whitespaceRegex_=/\s/;diff_match_patch.linebreakRegex_=/[\r\n]/;diff_match_patch.blanklineEndRegex_=/\n\r?\n$/;diff_match_patch.blanklineStartRegex_=/^\r?\n\r?\n/;
diff_match_patch.prototype.diff_cleanupEfficiency=function(a){for(var b=!1,c=[],d=0,e=null,f=0,g=!1,h=!1,l=!1,k=!1;f<a.length;)a[f][0]==DIFF_EQUAL?(a[f][1].length<this.Diff_EditCost&&(l||k)?(c[d++]=f,g=l,h=k,e=a[f][1]):(d=0,e=null),l=k=!1):(a[f][0]==DIFF_DELETE?k=!0:l=!0,e&&(g&&h&&l&&k||e.length<this.Diff_EditCost/2&&3==g+h+l+k)&&(a.splice(c[d-1],0,new diff_match_patch.Diff(DIFF_DELETE,e)),a[c[d-1]+1][0]=DIFF_INSERT,d--,e=null,g&&h?(l=k=!0,d=0):(d--,f=0<d?c[d-1]:-1,l=k=!1),b=!0)),f++;b&&this.diff_cleanupMerge(a)};
diff_match_patch.prototype.diff_cleanupMerge=function(a){a.push(new diff_match_patch.Diff(DIFF_EQUAL,""));for(var b=0,c=0,d=0,e="",f="",g;b<a.length;)switch(a[b][0]){case DIFF_INSERT:d++;f+=a[b][1];b++;break;case DIFF_DELETE:c++;e+=a[b][1];b++;break;case DIFF_EQUAL:1<c+d?(0!==c&&0!==d&&(g=this.diff_commonPrefix(f,e),0!==g&&(0<b-c-d&&a[b-c-d-1][0]==DIFF_EQUAL?a[b-c-d-1][1]+=f.substring(0,g):(a.splice(0,0,new diff_match_patch.Diff(DIFF_EQUAL,f.substring(0,g))),b++),f=f.substring(g),e=e.substring(g)),
g=this.diff_commonSuffix(f,e),0!==g&&(a[b][1]=f.substring(f.length-g)+a[b][1],f=f.substring(0,f.length-g),e=e.substring(0,e.length-g))),b-=c+d,a.splice(b,c+d),e.length&&(a.splice(b,0,new diff_match_patch.Diff(DIFF_DELETE,e)),b++),f.length&&(a.splice(b,0,new diff_match_patch.Diff(DIFF_INSERT,f)),b++),b++):0!==b&&a[b-1][0]==DIFF_EQUAL?(a[b-1][1]+=a[b][1],a.splice(b,1)):b++,c=d=0,f=e=""}""===a[a.length-1][1]&&a.pop();c=!1;for(b=1;b<a.length-1;)a[b-1][0]==DIFF_EQUAL&&a[b+1][0]==DIFF_EQUAL&&(a[b][1].substring(a[b][1].length-
a[b-1][1].length)==a[b-1][1]?(a[b][1]=a[b-1][1]+a[b][1].substring(0,a[b][1].length-a[b-1][1].length),a[b+1][1]=a[b-1][1]+a[b+1][1],a.splice(b-1,1),c=!0):a[b][1].substring(0,a[b+1][1].length)==a[b+1][1]&&(a[b-1][1]+=a[b+1][1],a[b][1]=a[b][1].substring(a[b+1][1].length)+a[b+1][1],a.splice(b+1,1),c=!0)),b++;c&&this.diff_cleanupMerge(a)};
diff_match_patch.prototype.diff_xIndex=function(a,b){var c=0,d=0,e=0,f=0,g;for(g=0;g<a.length;g++){a[g][0]!==DIFF_INSERT&&(c+=a[g][1].length);a[g][0]!==DIFF_DELETE&&(d+=a[g][1].length);if(c>b)break;e=c;f=d}return a.length!=g&&a[g][0]===DIFF_DELETE?f:f+(b-e)};
diff_match_patch.prototype.diff_prettyHtml=function(a){for(var b=[],c=/&/g,d=/</g,e=/>/g,f=/\n/g,g=0;g<a.length;g++){var h=a[g][0],l=a[g][1].replace(c,"&amp;").replace(d,"&lt;").replace(e,"&gt;").replace(f,"&para;<br>");switch(h){case DIFF_INSERT:b[g]='<ins style="background:#e6ffe6;">'+l+"</ins>";break;case DIFF_DELETE:b[g]='<del style="background:#ffe6e6;">'+l+"</del>";break;case DIFF_EQUAL:b[g]="<span>"+l+"</span>"}}return b.join("")};
diff_match_patch.prototype.diff_text1=function(a){for(var b=[],c=0;c<a.length;c++)a[c][0]!==DIFF_INSERT&&(b[c]=a[c][1]);return b.join("")};diff_match_patch.prototype.diff_text2=function(a){for(var b=[],c=0;c<a.length;c++)a[c][0]!==DIFF_DELETE&&(b[c]=a[c][1]);return b.join("")};
diff_match_patch.prototype.diff_levenshtein=function(a){for(var b=0,c=0,d=0,e=0;e<a.length;e++){var f=a[e][1];switch(a[e][0]){case DIFF_INSERT:c+=f.length;break;case DIFF_DELETE:d+=f.length;break;case DIFF_EQUAL:b+=Math.max(c,d),d=c=0}}return b+=Math.max(c,d)};
diff_match_patch.prototype.diff_toDelta=function(a){for(var b=[],c=0;c<a.length;c++)switch(a[c][0]){case DIFF_INSERT:b[c]="+"+encodeURI(a[c][1]);break;case DIFF_DELETE:b[c]="-"+a[c][1].length;break;case DIFF_EQUAL:b[c]="="+a[c][1].length}return b.join("\t").replace(/%20/g," ")};
diff_match_patch.prototype.diff_fromDelta=function(a,b){for(var c=[],d=0,e=0,f=b.split(/\t/g),g=0;g<f.length;g++){var h=f[g].substring(1);switch(f[g].charAt(0)){case "+":try{c[d++]=new diff_match_patch.Diff(DIFF_INSERT,decodeURI(h))}catch(k){throw Error("Illegal escape in diff_fromDelta: "+h);}break;case "-":case "=":var l=parseInt(h,10);if(isNaN(l)||0>l)throw Error("Invalid number in diff_fromDelta: "+h);h=a.substring(e,e+=l);"="==f[g].charAt(0)?c[d++]=new diff_match_patch.Diff(DIFF_EQUAL,h):c[d++]=
new diff_match_patch.Diff(DIFF_DELETE,h);break;default:if(f[g])throw Error("Invalid diff operation in diff_fromDelta: "+f[g]);}}if(e!=a.length)throw Error("Delta length ("+e+") does not equal source text length ("+a.length+").");return c};diff_match_patch.prototype.match_main=function(a,b,c){if(null==a||null==b||null==c)throw Error("Null input. (match_main)");c=Math.max(0,Math.min(c,a.length));return a==b?0:a.length?a.substring(c,c+b.length)==b?c:this.match_bitap_(a,b,c):-1};
diff_match_patch.prototype.match_bitap_=function(a,b,c){function d(a,d){var e=a/b.length,g=Math.abs(c-d);return f.Match_Distance?e+g/f.Match_Distance:g?1:e}if(b.length>this.Match_MaxBits)throw Error("Pattern too long for this browser.");var e=this.match_alphabet_(b),f=this,g=this.Match_Threshold,h=a.indexOf(b,c);-1!=h&&(g=Math.min(d(0,h),g),h=a.lastIndexOf(b,c+b.length),-1!=h&&(g=Math.min(d(0,h),g)));var l=1<<b.length-1;h=-1;for(var k,m,p=b.length+a.length,x,w=0;w<b.length;w++){k=0;for(m=p;k<m;)d(w,
c+m)<=g?k=m:p=m,m=Math.floor((p-k)/2+k);p=m;k=Math.max(1,c-m+1);var q=Math.min(c+m,a.length)+b.length;m=Array(q+2);for(m[q+1]=(1<<w)-1;q>=k;q--){var t=e[a.charAt(q-1)];m[q]=0===w?(m[q+1]<<1|1)&t:(m[q+1]<<1|1)&t|(x[q+1]|x[q])<<1|1|x[q+1];if(m[q]&l&&(t=d(w,q-1),t<=g))if(g=t,h=q-1,h>c)k=Math.max(1,2*c-h);else break}if(d(w+1,c)>g)break;x=m}return h};
diff_match_patch.prototype.match_alphabet_=function(a){for(var b={},c=0;c<a.length;c++)b[a.charAt(c)]=0;for(c=0;c<a.length;c++)b[a.charAt(c)]|=1<<a.length-c-1;return b};
diff_match_patch.prototype.patch_addContext_=function(a,b){if(0!=b.length){if(null===a.start2)throw Error("patch not initialized");for(var c=b.substring(a.start2,a.start2+a.length1),d=0;b.indexOf(c)!=b.lastIndexOf(c)&&c.length<this.Match_MaxBits-this.Patch_Margin-this.Patch_Margin;)d+=this.Patch_Margin,c=b.substring(a.start2-d,a.start2+a.length1+d);d+=this.Patch_Margin;(c=b.substring(a.start2-d,a.start2))&&a.diffs.unshift(new diff_match_patch.Diff(DIFF_EQUAL,c));(d=b.substring(a.start2+a.length1,
a.start2+a.length1+d))&&a.diffs.push(new diff_match_patch.Diff(DIFF_EQUAL,d));a.start1-=c.length;a.start2-=c.length;a.length1+=c.length+d.length;a.length2+=c.length+d.length}};
diff_match_patch.prototype.patch_make=function(a,b,c){if("string"==typeof a&&"string"==typeof b&&"undefined"==typeof c){var d=a;b=this.diff_main(d,b,!0);2<b.length&&(this.diff_cleanupSemantic(b),this.diff_cleanupEfficiency(b))}else if(a&&"object"==typeof a&&"undefined"==typeof b&&"undefined"==typeof c)b=a,d=this.diff_text1(b);else if("string"==typeof a&&b&&"object"==typeof b&&"undefined"==typeof c)d=a;else if("string"==typeof a&&"string"==typeof b&&c&&"object"==typeof c)d=a,b=c;else throw Error("Unknown call format to patch_make.");
if(0===b.length)return[];c=[];a=new diff_match_patch.patch_obj;for(var e=0,f=0,g=0,h=d,l=0;l<b.length;l++){var k=b[l][0],m=b[l][1];e||k===DIFF_EQUAL||(a.start1=f,a.start2=g);switch(k){case DIFF_INSERT:a.diffs[e++]=b[l];a.length2+=m.length;d=d.substring(0,g)+m+d.substring(g);break;case DIFF_DELETE:a.length1+=m.length;a.diffs[e++]=b[l];d=d.substring(0,g)+d.substring(g+m.length);break;case DIFF_EQUAL:m.length<=2*this.Patch_Margin&&e&&b.length!=l+1?(a.diffs[e++]=b[l],a.length1+=m.length,a.length2+=m.length):
m.length>=2*this.Patch_Margin&&e&&(this.patch_addContext_(a,h),c.push(a),a=new diff_match_patch.patch_obj,e=0,h=d,f=g)}k!==DIFF_INSERT&&(f+=m.length);k!==DIFF_DELETE&&(g+=m.length)}e&&(this.patch_addContext_(a,h),c.push(a));return c};
diff_match_patch.prototype.patch_deepCopy=function(a){for(var b=[],c=0;c<a.length;c++){var d=a[c],e=new diff_match_patch.patch_obj;e.diffs=[];for(var f=0;f<d.diffs.length;f++)e.diffs[f]=new diff_match_patch.Diff(d.diffs[f][0],d.diffs[f][1]);e.start1=d.start1;e.start2=d.start2;e.length1=d.length1;e.length2=d.length2;b[c]=e}return b};
diff_match_patch.prototype.patch_apply=function(a,b){if(0==a.length)return[b,[]];a=this.patch_deepCopy(a);var c=this.patch_addPadding(a);b=c+b+c;this.patch_splitMax(a);for(var d=0,e=[],f=0;f<a.length;f++){var g=a[f].start2+d,h=this.diff_text1(a[f].diffs),l=-1;if(h.length>this.Match_MaxBits){var k=this.match_main(b,h.substring(0,this.Match_MaxBits),g);-1!=k&&(l=this.match_main(b,h.substring(h.length-this.Match_MaxBits),g+h.length-this.Match_MaxBits),-1==l||k>=l)&&(k=-1)}else k=this.match_main(b,h,
g);if(-1==k)e[f]=!1,d-=a[f].length2-a[f].length1;else if(e[f]=!0,d=k-g,g=-1==l?b.substring(k,k+h.length):b.substring(k,l+this.Match_MaxBits),h==g)b=b.substring(0,k)+this.diff_text2(a[f].diffs)+b.substring(k+h.length);else if(g=this.diff_main(h,g,!1),h.length>this.Match_MaxBits&&this.diff_levenshtein(g)/h.length>this.Patch_DeleteThreshold)e[f]=!1;else{this.diff_cleanupSemanticLossless(g);h=0;var m;for(l=0;l<a[f].diffs.length;l++){var p=a[f].diffs[l];p[0]!==DIFF_EQUAL&&(m=this.diff_xIndex(g,h));p[0]===
DIFF_INSERT?b=b.substring(0,k+m)+p[1]+b.substring(k+m):p[0]===DIFF_DELETE&&(b=b.substring(0,k+m)+b.substring(k+this.diff_xIndex(g,h+p[1].length)));p[0]!==DIFF_DELETE&&(h+=p[1].length)}}}b=b.substring(c.length,b.length-c.length);return[b,e]};
diff_match_patch.prototype.patch_addPadding=function(a){for(var b=this.Patch_Margin,c="",d=1;d<=b;d++)c+=String.fromCharCode(d);for(d=0;d<a.length;d++)a[d].start1+=b,a[d].start2+=b;d=a[0];var e=d.diffs;if(0==e.length||e[0][0]!=DIFF_EQUAL)e.unshift(new diff_match_patch.Diff(DIFF_EQUAL,c)),d.start1-=b,d.start2-=b,d.length1+=b,d.length2+=b;else if(b>e[0][1].length){var f=b-e[0][1].length;e[0][1]=c.substring(e[0][1].length)+e[0][1];d.start1-=f;d.start2-=f;d.length1+=f;d.length2+=f}d=a[a.length-1];e=d.diffs;
0==e.length||e[e.length-1][0]!=DIFF_EQUAL?(e.push(new diff_match_patch.Diff(DIFF_EQUAL,c)),d.length1+=b,d.length2+=b):b>e[e.length-1][1].length&&(f=b-e[e.length-1][1].length,e[e.length-1][1]+=c.substring(0,f),d.length1+=f,d.length2+=f);return c};
diff_match_patch.prototype.patch_splitMax=function(a){for(var b=this.Match_MaxBits,c=0;c<a.length;c++)if(!(a[c].length1<=b)){var d=a[c];a.splice(c--,1);for(var e=d.start1,f=d.start2,g="";0!==d.diffs.length;){var h=new diff_match_patch.patch_obj,l=!0;h.start1=e-g.length;h.start2=f-g.length;""!==g&&(h.length1=h.length2=g.length,h.diffs.push(new diff_match_patch.Diff(DIFF_EQUAL,g)));for(;0!==d.diffs.length&&h.length1<b-this.Patch_Margin;){g=d.diffs[0][0];var k=d.diffs[0][1];g===DIFF_INSERT?(h.length2+=
k.length,f+=k.length,h.diffs.push(d.diffs.shift()),l=!1):g===DIFF_DELETE&&1==h.diffs.length&&h.diffs[0][0]==DIFF_EQUAL&&k.length>2*b?(h.length1+=k.length,e+=k.length,l=!1,h.diffs.push(new diff_match_patch.Diff(g,k)),d.diffs.shift()):(k=k.substring(0,b-h.length1-this.Patch_Margin),h.length1+=k.length,e+=k.length,g===DIFF_EQUAL?(h.length2+=k.length,f+=k.length):l=!1,h.diffs.push(new diff_match_patch.Diff(g,k)),k==d.diffs[0][1]?d.diffs.shift():d.diffs[0][1]=d.diffs[0][1].substring(k.length))}g=this.diff_text2(h.diffs);
g=g.substring(g.length-this.Patch_Margin);k=this.diff_text1(d.diffs).substring(0,this.Patch_Margin);""!==k&&(h.length1+=k.length,h.length2+=k.length,0!==h.diffs.length&&h.diffs[h.diffs.length-1][0]===DIFF_EQUAL?h.diffs[h.diffs.length-1][1]+=k:h.diffs.push(new diff_match_patch.Diff(DIFF_EQUAL,k)));l||a.splice(++c,0,h)}}};diff_match_patch.prototype.patch_toText=function(a){for(var b=[],c=0;c<a.length;c++)b[c]=a[c];return b.join("")};
diff_match_patch.prototype.patch_fromText=function(a){var b=[];if(!a)return b;a=a.split("\n");for(var c=0,d=/^@@ -(\d+),?(\d*) \+(\d+),?(\d*) @@$/;c<a.length;){var e=a[c].match(d);if(!e)throw Error("Invalid patch string: "+a[c]);var f=new diff_match_patch.patch_obj;b.push(f);f.start1=parseInt(e[1],10);""===e[2]?(f.start1--,f.length1=1):"0"==e[2]?f.length1=0:(f.start1--,f.length1=parseInt(e[2],10));f.start2=parseInt(e[3],10);""===e[4]?(f.start2--,f.length2=1):"0"==e[4]?f.length2=0:(f.start2--,f.length2=
parseInt(e[4],10));for(c++;c<a.length;){e=a[c].charAt(0);try{var g=decodeURI(a[c].substring(1))}catch(h){throw Error("Illegal escape in patch_fromText: "+g);}if("-"==e)f.diffs.push(new diff_match_patch.Diff(DIFF_DELETE,g));else if("+"==e)f.diffs.push(new diff_match_patch.Diff(DIFF_INSERT,g));else if(" "==e)f.diffs.push(new diff_match_patch.Diff(DIFF_EQUAL,g));else if("@"==e)break;else if(""!==e)throw Error('Invalid patch mode "'+e+'" in: '+g);c++}}return b};
diff_match_patch.patch_obj=function(){this.diffs=[];this.start2=this.start1=null;this.length2=this.length1=0};
diff_match_patch.patch_obj.prototype.toString=function(){for(var a=["@@ -"+(0===this.length1?this.start1+",0":1==this.length1?this.start1+1:this.start1+1+","+this.length1)+" +"+(0===this.length2?this.start2+",0":1==this.length2?this.start2+1:this.start2+1+","+this.length2)+" @@\n"],b,c=0;c<this.diffs.length;c++){switch(this.diffs[c][0]){case DIFF_INSERT:b="+";break;case DIFF_DELETE:b="-";break;case DIFF_EQUAL:b=" "}a[c+1]=b+encodeURI(this.diffs[c][1])+"\n"}return a.join("").replace(/%20/g," ")};
this.diff_match_patch=diff_match_patch;this.DIFF_DELETE=DIFF_DELETE;this.DIFF_INSERT=DIFF_INSERT;this.DIFF_EQUAL=DIFF_EQUAL;
EOF
fi





echo -e "======================== $dir_panel_js/javascript.js ========================\n"
if [ ! -f $dir_panel_js/javascript.js ];then
  cat>$dir_panel_js/javascript.js<<\EOF
// CodeMirror, copyright (c) by Marijn Haverbeke and others
// Distributed under an MIT license: https://codemirror.net/LICENSE

(function(mod) {
  if (typeof exports == "object" && typeof module == "object") // CommonJS
    mod(require("../../lib/codemirror"));
  else if (typeof define == "function" && define.amd) // AMD
    define(["../../lib/codemirror"], mod);
  else // Plain browser env
    mod(CodeMirror);
})(function(CodeMirror) {
"use strict";

CodeMirror.defineMode("javascript", function(config, parserConfig) {
  var indentUnit = config.indentUnit;
  var statementIndent = parserConfig.statementIndent;
  var jsonldMode = parserConfig.jsonld;
  var jsonMode = parserConfig.json || jsonldMode;
  var isTS = parserConfig.typescript;
  var wordRE = parserConfig.wordCharacters || /[\w$\xa1-\uffff]/;

  // Tokenizer

  var keywords = function(){
    function kw(type) {return {type: type, style: "keyword"};}
    var A = kw("keyword a"), B = kw("keyword b"), C = kw("keyword c"), D = kw("keyword d");
    var operator = kw("operator"), atom = {type: "atom", style: "atom"};

    return {
      "if": kw("if"), "while": A, "with": A, "else": B, "do": B, "try": B, "finally": B,
      "return": D, "break": D, "continue": D, "new": kw("new"), "delete": C, "void": C, "throw": C,
      "debugger": kw("debugger"), "var": kw("var"), "const": kw("var"), "let": kw("var"),
      "function": kw("function"), "catch": kw("catch"),
      "for": kw("for"), "switch": kw("switch"), "case": kw("case"), "default": kw("default"),
      "in": operator, "typeof": operator, "instanceof": operator,
      "true": atom, "false": atom, "null": atom, "undefined": atom, "NaN": atom, "Infinity": atom,
      "this": kw("this"), "class": kw("class"), "super": kw("atom"),
      "yield": C, "export": kw("export"), "import": kw("import"), "extends": C,
      "await": C
    };
  }();

  var isOperatorChar = /[+\-*&%=<>!?|~^@]/;
  var isJsonldKeyword = /^@(context|id|value|language|type|container|list|set|reverse|index|base|vocab|graph)"/;

  function readRegexp(stream) {
    var escaped = false, next, inSet = false;
    while ((next = stream.next()) != null) {
      if (!escaped) {
        if (next == "/" && !inSet) return;
        if (next == "[") inSet = true;
        else if (inSet && next == "]") inSet = false;
      }
      escaped = !escaped && next == "\\";
    }
  }

  // Used as scratch variables to communicate multiple values without
  // consing up tons of objects.
  var type, content;
  function ret(tp, style, cont) {
    type = tp; content = cont;
    return style;
  }
  function tokenBase(stream, state) {
    var ch = stream.next();
    if (ch == '"' || ch == "'") {
      state.tokenize = tokenString(ch);
      return state.tokenize(stream, state);
    } else if (ch == "." && stream.match(/^\d[\d_]*(?:[eE][+\-]?[\d_]+)?/)) {
      return ret("number", "number");
    } else if (ch == "." && stream.match("..")) {
      return ret("spread", "meta");
    } else if (/[\[\]{}\(\),;\:\.]/.test(ch)) {
      return ret(ch);
    } else if (ch == "=" && stream.eat(">")) {
      return ret("=>", "operator");
    } else if (ch == "0" && stream.match(/^(?:x[\dA-Fa-f_]+|o[0-7_]+|b[01_]+)n?/)) {
      return ret("number", "number");
    } else if (/\d/.test(ch)) {
      stream.match(/^[\d_]*(?:n|(?:\.[\d_]*)?(?:[eE][+\-]?[\d_]+)?)?/);
      return ret("number", "number");
    } else if (ch == "/") {
      if (stream.eat("*")) {
        state.tokenize = tokenComment;
        return tokenComment(stream, state);
      } else if (stream.eat("/")) {
        stream.skipToEnd();
        return ret("comment", "comment");
      } else if (expressionAllowed(stream, state, 1)) {
        readRegexp(stream);
        stream.match(/^\b(([gimyus])(?![gimyus]*\2))+\b/);
        return ret("regexp", "string-2");
      } else {
        stream.eat("=");
        return ret("operator", "operator", stream.current());
      }
    } else if (ch == "`") {
      state.tokenize = tokenQuasi;
      return tokenQuasi(stream, state);
    } else if (ch == "#" && stream.peek() == "!") {
      stream.skipToEnd();
      return ret("meta", "meta");
    } else if (ch == "#" && stream.eatWhile(wordRE)) {
      return ret("variable", "property")
    } else if (ch == "<" && stream.match("!--") ||
               (ch == "-" && stream.match("->") && !/\S/.test(stream.string.slice(0, stream.start)))) {
      stream.skipToEnd()
      return ret("comment", "comment")
    } else if (isOperatorChar.test(ch)) {
      if (ch != ">" || !state.lexical || state.lexical.type != ">") {
        if (stream.eat("=")) {
          if (ch == "!" || ch == "=") stream.eat("=")
        } else if (/[<>*+\-|&?]/.test(ch)) {
          stream.eat(ch)
          if (ch == ">") stream.eat(ch)
        }
      }
      if (ch == "?" && stream.eat(".")) return ret(".")
      return ret("operator", "operator", stream.current());
    } else if (wordRE.test(ch)) {
      stream.eatWhile(wordRE);
      var word = stream.current()
      if (state.lastType != ".") {
        if (keywords.propertyIsEnumerable(word)) {
          var kw = keywords[word]
          return ret(kw.type, kw.style, word)
        }
        if (word == "async" && stream.match(/^(\s|\/\*([^*]|\*(?!\/))*?\*\/)*[\[\(\w]/, false))
          return ret("async", "keyword", word)
      }
      return ret("variable", "variable", word)
    }
  }

  function tokenString(quote) {
    return function(stream, state) {
      var escaped = false, next;
      if (jsonldMode && stream.peek() == "@" && stream.match(isJsonldKeyword)){
        state.tokenize = tokenBase;
        return ret("jsonld-keyword", "meta");
      }
      while ((next = stream.next()) != null) {
        if (next == quote && !escaped) break;
        escaped = !escaped && next == "\\";
      }
      if (!escaped) state.tokenize = tokenBase;
      return ret("string", "string");
    };
  }

  function tokenComment(stream, state) {
    var maybeEnd = false, ch;
    while (ch = stream.next()) {
      if (ch == "/" && maybeEnd) {
        state.tokenize = tokenBase;
        break;
      }
      maybeEnd = (ch == "*");
    }
    return ret("comment", "comment");
  }

  function tokenQuasi(stream, state) {
    var escaped = false, next;
    while ((next = stream.next()) != null) {
      if (!escaped && (next == "`" || next == "$" && stream.eat("{"))) {
        state.tokenize = tokenBase;
        break;
      }
      escaped = !escaped && next == "\\";
    }
    return ret("quasi", "string-2", stream.current());
  }

  var brackets = "([{}])";
  // This is a crude lookahead trick to try and notice that we're
  // parsing the argument patterns for a fat-arrow function before we
  // actually hit the arrow token. It only works if the arrow is on
  // the same line as the arguments and there's no strange noise
  // (comments) in between. Fallback is to only notice when we hit the
  // arrow, and not declare the arguments as locals for the arrow
  // body.
  function findFatArrow(stream, state) {
    if (state.fatArrowAt) state.fatArrowAt = null;
    var arrow = stream.string.indexOf("=>", stream.start);
    if (arrow < 0) return;

    if (isTS) { // Try to skip TypeScript return type declarations after the arguments
      var m = /:\s*(?:\w+(?:<[^>]*>|\[\])?|\{[^}]*\})\s*$/.exec(stream.string.slice(stream.start, arrow))
      if (m) arrow = m.index
    }

    var depth = 0, sawSomething = false;
    for (var pos = arrow - 1; pos >= 0; --pos) {
      var ch = stream.string.charAt(pos);
      var bracket = brackets.indexOf(ch);
      if (bracket >= 0 && bracket < 3) {
        if (!depth) { ++pos; break; }
        if (--depth == 0) { if (ch == "(") sawSomething = true; break; }
      } else if (bracket >= 3 && bracket < 6) {
        ++depth;
      } else if (wordRE.test(ch)) {
        sawSomething = true;
      } else if (/["'\/`]/.test(ch)) {
        for (;; --pos) {
          if (pos == 0) return
          var next = stream.string.charAt(pos - 1)
          if (next == ch && stream.string.charAt(pos - 2) != "\\") { pos--; break }
        }
      } else if (sawSomething && !depth) {
        ++pos;
        break;
      }
    }
    if (sawSomething && !depth) state.fatArrowAt = pos;
  }

  // Parser

  var atomicTypes = {"atom": true, "number": true, "variable": true, "string": true, "regexp": true, "this": true, "jsonld-keyword": true};

  function JSLexical(indented, column, type, align, prev, info) {
    this.indented = indented;
    this.column = column;
    this.type = type;
    this.prev = prev;
    this.info = info;
    if (align != null) this.align = align;
  }

  function inScope(state, varname) {
    for (var v = state.localVars; v; v = v.next)
      if (v.name == varname) return true;
    for (var cx = state.context; cx; cx = cx.prev) {
      for (var v = cx.vars; v; v = v.next)
        if (v.name == varname) return true;
    }
  }

  function parseJS(state, style, type, content, stream) {
    var cc = state.cc;
    // Communicate our context to the combinators.
    // (Less wasteful than consing up a hundred closures on every call.)
    cx.state = state; cx.stream = stream; cx.marked = null, cx.cc = cc; cx.style = style;

    if (!state.lexical.hasOwnProperty("align"))
      state.lexical.align = true;

    while(true) {
      var combinator = cc.length ? cc.pop() : jsonMode ? expression : statement;
      if (combinator(type, content)) {
        while(cc.length && cc[cc.length - 1].lex)
          cc.pop()();
        if (cx.marked) return cx.marked;
        if (type == "variable" && inScope(state, content)) return "variable-2";
        return style;
      }
    }
  }

  // Combinator utils

  var cx = {state: null, column: null, marked: null, cc: null};
  function pass() {
    for (var i = arguments.length - 1; i >= 0; i--) cx.cc.push(arguments[i]);
  }
  function cont() {
    pass.apply(null, arguments);
    return true;
  }
  function inList(name, list) {
    for (var v = list; v; v = v.next) if (v.name == name) return true
    return false;
  }
  function register(varname) {
    var state = cx.state;
    cx.marked = "def";
    if (state.context) {
      if (state.lexical.info == "var" && state.context && state.context.block) {
        // FIXME function decls are also not block scoped
        var newContext = registerVarScoped(varname, state.context)
        if (newContext != null) {
          state.context = newContext
          return
        }
      } else if (!inList(varname, state.localVars)) {
        state.localVars = new Var(varname, state.localVars)
        return
      }
    }
    // Fall through means this is global
    if (parserConfig.globalVars && !inList(varname, state.globalVars))
      state.globalVars = new Var(varname, state.globalVars)
  }
  function registerVarScoped(varname, context) {
    if (!context) {
      return null
    } else if (context.block) {
      var inner = registerVarScoped(varname, context.prev)
      if (!inner) return null
      if (inner == context.prev) return context
      return new Context(inner, context.vars, true)
    } else if (inList(varname, context.vars)) {
      return context
    } else {
      return new Context(context.prev, new Var(varname, context.vars), false)
    }
  }

  function isModifier(name) {
    return name == "public" || name == "private" || name == "protected" || name == "abstract" || name == "readonly"
  }

  // Combinators

  function Context(prev, vars, block) { this.prev = prev; this.vars = vars; this.block = block }
  function Var(name, next) { this.name = name; this.next = next }

  var defaultVars = new Var("this", new Var("arguments", null))
  function pushcontext() {
    cx.state.context = new Context(cx.state.context, cx.state.localVars, false)
    cx.state.localVars = defaultVars
  }
  function pushblockcontext() {
    cx.state.context = new Context(cx.state.context, cx.state.localVars, true)
    cx.state.localVars = null
  }
  function popcontext() {
    cx.state.localVars = cx.state.context.vars
    cx.state.context = cx.state.context.prev
  }
  popcontext.lex = true
  function pushlex(type, info) {
    var result = function() {
      var state = cx.state, indent = state.indented;
      if (state.lexical.type == "stat") indent = state.lexical.indented;
      else for (var outer = state.lexical; outer && outer.type == ")" && outer.align; outer = outer.prev)
        indent = outer.indented;
      state.lexical = new JSLexical(indent, cx.stream.column(), type, null, state.lexical, info);
    };
    result.lex = true;
    return result;
  }
  function poplex() {
    var state = cx.state;
    if (state.lexical.prev) {
      if (state.lexical.type == ")")
        state.indented = state.lexical.indented;
      state.lexical = state.lexical.prev;
    }
  }
  poplex.lex = true;

  function expect(wanted) {
    function exp(type) {
      if (type == wanted) return cont();
      else if (wanted == ";" || type == "}" || type == ")" || type == "]") return pass();
      else return cont(exp);
    };
    return exp;
  }

  function statement(type, value) {
    if (type == "var") return cont(pushlex("vardef", value), vardef, expect(";"), poplex);
    if (type == "keyword a") return cont(pushlex("form"), parenExpr, statement, poplex);
    if (type == "keyword b") return cont(pushlex("form"), statement, poplex);
    if (type == "keyword d") return cx.stream.match(/^\s*$/, false) ? cont() : cont(pushlex("stat"), maybeexpression, expect(";"), poplex);
    if (type == "debugger") return cont(expect(";"));
    if (type == "{") return cont(pushlex("}"), pushblockcontext, block, poplex, popcontext);
    if (type == ";") return cont();
    if (type == "if") {
      if (cx.state.lexical.info == "else" && cx.state.cc[cx.state.cc.length - 1] == poplex)
        cx.state.cc.pop()();
      return cont(pushlex("form"), parenExpr, statement, poplex, maybeelse);
    }
    if (type == "function") return cont(functiondef);
    if (type == "for") return cont(pushlex("form"), forspec, statement, poplex);
    if (type == "class" || (isTS && value == "interface")) {
      cx.marked = "keyword"
      return cont(pushlex("form", type == "class" ? type : value), className, poplex)
    }
    if (type == "variable") {
      if (isTS && value == "declare") {
        cx.marked = "keyword"
        return cont(statement)
      } else if (isTS && (value == "module" || value == "enum" || value == "type") && cx.stream.match(/^\s*\w/, false)) {
        cx.marked = "keyword"
        if (value == "enum") return cont(enumdef);
        else if (value == "type") return cont(typename, expect("operator"), typeexpr, expect(";"));
        else return cont(pushlex("form"), pattern, expect("{"), pushlex("}"), block, poplex, poplex)
      } else if (isTS && value == "namespace") {
        cx.marked = "keyword"
        return cont(pushlex("form"), expression, statement, poplex)
      } else if (isTS && value == "abstract") {
        cx.marked = "keyword"
        return cont(statement)
      } else {
        return cont(pushlex("stat"), maybelabel);
      }
    }
    if (type == "switch") return cont(pushlex("form"), parenExpr, expect("{"), pushlex("}", "switch"), pushblockcontext,
                                      block, poplex, poplex, popcontext);
    if (type == "case") return cont(expression, expect(":"));
    if (type == "default") return cont(expect(":"));
    if (type == "catch") return cont(pushlex("form"), pushcontext, maybeCatchBinding, statement, poplex, popcontext);
    if (type == "export") return cont(pushlex("stat"), afterExport, poplex);
    if (type == "import") return cont(pushlex("stat"), afterImport, poplex);
    if (type == "async") return cont(statement)
    if (value == "@") return cont(expression, statement)
    return pass(pushlex("stat"), expression, expect(";"), poplex);
  }
  function maybeCatchBinding(type) {
    if (type == "(") return cont(funarg, expect(")"))
  }
  function expression(type, value) {
    return expressionInner(type, value, false);
  }
  function expressionNoComma(type, value) {
    return expressionInner(type, value, true);
  }
  function parenExpr(type) {
    if (type != "(") return pass()
    return cont(pushlex(")"), maybeexpression, expect(")"), poplex)
  }
  function expressionInner(type, value, noComma) {
    if (cx.state.fatArrowAt == cx.stream.start) {
      var body = noComma ? arrowBodyNoComma : arrowBody;
      if (type == "(") return cont(pushcontext, pushlex(")"), commasep(funarg, ")"), poplex, expect("=>"), body, popcontext);
      else if (type == "variable") return pass(pushcontext, pattern, expect("=>"), body, popcontext);
    }

    var maybeop = noComma ? maybeoperatorNoComma : maybeoperatorComma;
    if (atomicTypes.hasOwnProperty(type)) return cont(maybeop);
    if (type == "function") return cont(functiondef, maybeop);
    if (type == "class" || (isTS && value == "interface")) { cx.marked = "keyword"; return cont(pushlex("form"), classExpression, poplex); }
    if (type == "keyword c" || type == "async") return cont(noComma ? expressionNoComma : expression);
    if (type == "(") return cont(pushlex(")"), maybeexpression, expect(")"), poplex, maybeop);
    if (type == "operator" || type == "spread") return cont(noComma ? expressionNoComma : expression);
    if (type == "[") return cont(pushlex("]"), arrayLiteral, poplex, maybeop);
    if (type == "{") return contCommasep(objprop, "}", null, maybeop);
    if (type == "quasi") return pass(quasi, maybeop);
    if (type == "new") return cont(maybeTarget(noComma));
    if (type == "import") return cont(expression);
    return cont();
  }
  function maybeexpression(type) {
    if (type.match(/[;\}\)\],]/)) return pass();
    return pass(expression);
  }

  function maybeoperatorComma(type, value) {
    if (type == ",") return cont(maybeexpression);
    return maybeoperatorNoComma(type, value, false);
  }
  function maybeoperatorNoComma(type, value, noComma) {
    var me = noComma == false ? maybeoperatorComma : maybeoperatorNoComma;
    var expr = noComma == false ? expression : expressionNoComma;
    if (type == "=>") return cont(pushcontext, noComma ? arrowBodyNoComma : arrowBody, popcontext);
    if (type == "operator") {
      if (/\+\+|--/.test(value) || isTS && value == "!") return cont(me);
      if (isTS && value == "<" && cx.stream.match(/^([^<>]|<[^<>]*>)*>\s*\(/, false))
        return cont(pushlex(">"), commasep(typeexpr, ">"), poplex, me);
      if (value == "?") return cont(expression, expect(":"), expr);
      return cont(expr);
    }
    if (type == "quasi") { return pass(quasi, me); }
    if (type == ";") return;
    if (type == "(") return contCommasep(expressionNoComma, ")", "call", me);
    if (type == ".") return cont(property, me);
    if (type == "[") return cont(pushlex("]"), maybeexpression, expect("]"), poplex, me);
    if (isTS && value == "as") { cx.marked = "keyword"; return cont(typeexpr, me) }
    if (type == "regexp") {
      cx.state.lastType = cx.marked = "operator"
      cx.stream.backUp(cx.stream.pos - cx.stream.start - 1)
      return cont(expr)
    }
  }
  function quasi(type, value) {
    if (type != "quasi") return pass();
    if (value.slice(value.length - 2) != "${") return cont(quasi);
    return cont(expression, continueQuasi);
  }
  function continueQuasi(type) {
    if (type == "}") {
      cx.marked = "string-2";
      cx.state.tokenize = tokenQuasi;
      return cont(quasi);
    }
  }
  function arrowBody(type) {
    findFatArrow(cx.stream, cx.state);
    return pass(type == "{" ? statement : expression);
  }
  function arrowBodyNoComma(type) {
    findFatArrow(cx.stream, cx.state);
    return pass(type == "{" ? statement : expressionNoComma);
  }
  function maybeTarget(noComma) {
    return function(type) {
      if (type == ".") return cont(noComma ? targetNoComma : target);
      else if (type == "variable" && isTS) return cont(maybeTypeArgs, noComma ? maybeoperatorNoComma : maybeoperatorComma)
      else return pass(noComma ? expressionNoComma : expression);
    };
  }
  function target(_, value) {
    if (value == "target") { cx.marked = "keyword"; return cont(maybeoperatorComma); }
  }
  function targetNoComma(_, value) {
    if (value == "target") { cx.marked = "keyword"; return cont(maybeoperatorNoComma); }
  }
  function maybelabel(type) {
    if (type == ":") return cont(poplex, statement);
    return pass(maybeoperatorComma, expect(";"), poplex);
  }
  function property(type) {
    if (type == "variable") {cx.marked = "property"; return cont();}
  }
  function objprop(type, value) {
    if (type == "async") {
      cx.marked = "property";
      return cont(objprop);
    } else if (type == "variable" || cx.style == "keyword") {
      cx.marked = "property";
      if (value == "get" || value == "set") return cont(getterSetter);
      var m // Work around fat-arrow-detection complication for detecting typescript typed arrow params
      if (isTS && cx.state.fatArrowAt == cx.stream.start && (m = cx.stream.match(/^\s*:\s*/, false)))
        cx.state.fatArrowAt = cx.stream.pos + m[0].length
      return cont(afterprop);
    } else if (type == "number" || type == "string") {
      cx.marked = jsonldMode ? "property" : (cx.style + " property");
      return cont(afterprop);
    } else if (type == "jsonld-keyword") {
      return cont(afterprop);
    } else if (isTS && isModifier(value)) {
      cx.marked = "keyword"
      return cont(objprop)
    } else if (type == "[") {
      return cont(expression, maybetype, expect("]"), afterprop);
    } else if (type == "spread") {
      return cont(expressionNoComma, afterprop);
    } else if (value == "*") {
      cx.marked = "keyword";
      return cont(objprop);
    } else if (type == ":") {
      return pass(afterprop)
    }
  }
  function getterSetter(type) {
    if (type != "variable") return pass(afterprop);
    cx.marked = "property";
    return cont(functiondef);
  }
  function afterprop(type) {
    if (type == ":") return cont(expressionNoComma);
    if (type == "(") return pass(functiondef);
  }
  function commasep(what, end, sep) {
    function proceed(type, value) {
      if (sep ? sep.indexOf(type) > -1 : type == ",") {
        var lex = cx.state.lexical;
        if (lex.info == "call") lex.pos = (lex.pos || 0) + 1;
        return cont(function(type, value) {
          if (type == end || value == end) return pass()
          return pass(what)
        }, proceed);
      }
      if (type == end || value == end) return cont();
      if (sep && sep.indexOf(";") > -1) return pass(what)
      return cont(expect(end));
    }
    return function(type, value) {
      if (type == end || value == end) return cont();
      return pass(what, proceed);
    };
  }
  function contCommasep(what, end, info) {
    for (var i = 3; i < arguments.length; i++)
      cx.cc.push(arguments[i]);
    return cont(pushlex(end, info), commasep(what, end), poplex);
  }
  function block(type) {
    if (type == "}") return cont();
    return pass(statement, block);
  }
  function maybetype(type, value) {
    if (isTS) {
      if (type == ":") return cont(typeexpr);
      if (value == "?") return cont(maybetype);
    }
  }
  function maybetypeOrIn(type, value) {
    if (isTS && (type == ":" || value == "in")) return cont(typeexpr)
  }
  function mayberettype(type) {
    if (isTS && type == ":") {
      if (cx.stream.match(/^\s*\w+\s+is\b/, false)) return cont(expression, isKW, typeexpr)
      else return cont(typeexpr)
    }
  }
  function isKW(_, value) {
    if (value == "is") {
      cx.marked = "keyword"
      return cont()
    }
  }
  function typeexpr(type, value) {
    if (value == "keyof" || value == "typeof" || value == "infer") {
      cx.marked = "keyword"
      return cont(value == "typeof" ? expressionNoComma : typeexpr)
    }
    if (type == "variable" || value == "void") {
      cx.marked = "type"
      return cont(afterType)
    }
    if (value == "|" || value == "&") return cont(typeexpr)
    if (type == "string" || type == "number" || type == "atom") return cont(afterType);
    if (type == "[") return cont(pushlex("]"), commasep(typeexpr, "]", ","), poplex, afterType)
    if (type == "{") return cont(pushlex("}"), typeprops, poplex, afterType)
    if (type == "(") return cont(commasep(typearg, ")"), maybeReturnType, afterType)
    if (type == "<") return cont(commasep(typeexpr, ">"), typeexpr)
  }
  function maybeReturnType(type) {
    if (type == "=>") return cont(typeexpr)
  }
  function typeprops(type) {
    if (type.match(/[\}\)\]]/)) return cont()
    if (type == "," || type == ";") return cont(typeprops)
    return pass(typeprop, typeprops)
  }
  function typeprop(type, value) {
    if (type == "variable" || cx.style == "keyword") {
      cx.marked = "property"
      return cont(typeprop)
    } else if (value == "?" || type == "number" || type == "string") {
      return cont(typeprop)
    } else if (type == ":") {
      return cont(typeexpr)
    } else if (type == "[") {
      return cont(expect("variable"), maybetypeOrIn, expect("]"), typeprop)
    } else if (type == "(") {
      return pass(functiondecl, typeprop)
    } else if (!type.match(/[;\}\)\],]/)) {
      return cont()
    }
  }
  function typearg(type, value) {
    if (type == "variable" && cx.stream.match(/^\s*[?:]/, false) || value == "?") return cont(typearg)
    if (type == ":") return cont(typeexpr)
    if (type == "spread") return cont(typearg)
    return pass(typeexpr)
  }
  function afterType(type, value) {
    if (value == "<") return cont(pushlex(">"), commasep(typeexpr, ">"), poplex, afterType)
    if (value == "|" || type == "." || value == "&") return cont(typeexpr)
    if (type == "[") return cont(typeexpr, expect("]"), afterType)
    if (value == "extends" || value == "implements") { cx.marked = "keyword"; return cont(typeexpr) }
    if (value == "?") return cont(typeexpr, expect(":"), typeexpr)
  }
  function maybeTypeArgs(_, value) {
    if (value == "<") return cont(pushlex(">"), commasep(typeexpr, ">"), poplex, afterType)
  }
  function typeparam() {
    return pass(typeexpr, maybeTypeDefault)
  }
  function maybeTypeDefault(_, value) {
    if (value == "=") return cont(typeexpr)
  }
  function vardef(_, value) {
    if (value == "enum") {cx.marked = "keyword"; return cont(enumdef)}
    return pass(pattern, maybetype, maybeAssign, vardefCont);
  }
  function pattern(type, value) {
    if (isTS && isModifier(value)) { cx.marked = "keyword"; return cont(pattern) }
    if (type == "variable") { register(value); return cont(); }
    if (type == "spread") return cont(pattern);
    if (type == "[") return contCommasep(eltpattern, "]");
    if (type == "{") return contCommasep(proppattern, "}");
  }
  function proppattern(type, value) {
    if (type == "variable" && !cx.stream.match(/^\s*:/, false)) {
      register(value);
      return cont(maybeAssign);
    }
    if (type == "variable") cx.marked = "property";
    if (type == "spread") return cont(pattern);
    if (type == "}") return pass();
    if (type == "[") return cont(expression, expect(']'), expect(':'), proppattern);
    return cont(expect(":"), pattern, maybeAssign);
  }
  function eltpattern() {
    return pass(pattern, maybeAssign)
  }
  function maybeAssign(_type, value) {
    if (value == "=") return cont(expressionNoComma);
  }
  function vardefCont(type) {
    if (type == ",") return cont(vardef);
  }
  function maybeelse(type, value) {
    if (type == "keyword b" && value == "else") return cont(pushlex("form", "else"), statement, poplex);
  }
  function forspec(type, value) {
    if (value == "await") return cont(forspec);
    if (type == "(") return cont(pushlex(")"), forspec1, poplex);
  }
  function forspec1(type) {
    if (type == "var") return cont(vardef, forspec2);
    if (type == "variable") return cont(forspec2);
    return pass(forspec2)
  }
  function forspec2(type, value) {
    if (type == ")") return cont()
    if (type == ";") return cont(forspec2)
    if (value == "in" || value == "of") { cx.marked = "keyword"; return cont(expression, forspec2) }
    return pass(expression, forspec2)
  }
  function functiondef(type, value) {
    if (value == "*") {cx.marked = "keyword"; return cont(functiondef);}
    if (type == "variable") {register(value); return cont(functiondef);}
    if (type == "(") return cont(pushcontext, pushlex(")"), commasep(funarg, ")"), poplex, mayberettype, statement, popcontext);
    if (isTS && value == "<") return cont(pushlex(">"), commasep(typeparam, ">"), poplex, functiondef)
  }
  function functiondecl(type, value) {
    if (value == "*") {cx.marked = "keyword"; return cont(functiondecl);}
    if (type == "variable") {register(value); return cont(functiondecl);}
    if (type == "(") return cont(pushcontext, pushlex(")"), commasep(funarg, ")"), poplex, mayberettype, popcontext);
    if (isTS && value == "<") return cont(pushlex(">"), commasep(typeparam, ">"), poplex, functiondecl)
  }
  function typename(type, value) {
    if (type == "keyword" || type == "variable") {
      cx.marked = "type"
      return cont(typename)
    } else if (value == "<") {
      return cont(pushlex(">"), commasep(typeparam, ">"), poplex)
    }
  }
  function funarg(type, value) {
    if (value == "@") cont(expression, funarg)
    if (type == "spread") return cont(funarg);
    if (isTS && isModifier(value)) { cx.marked = "keyword"; return cont(funarg); }
    if (isTS && type == "this") return cont(maybetype, maybeAssign)
    return pass(pattern, maybetype, maybeAssign);
  }
  function classExpression(type, value) {
    // Class expressions may have an optional name.
    if (type == "variable") return className(type, value);
    return classNameAfter(type, value);
  }
  function className(type, value) {
    if (type == "variable") {register(value); return cont(classNameAfter);}
  }
  function classNameAfter(type, value) {
    if (value == "<") return cont(pushlex(">"), commasep(typeparam, ">"), poplex, classNameAfter)
    if (value == "extends" || value == "implements" || (isTS && type == ",")) {
      if (value == "implements") cx.marked = "keyword";
      return cont(isTS ? typeexpr : expression, classNameAfter);
    }
    if (type == "{") return cont(pushlex("}"), classBody, poplex);
  }
  function classBody(type, value) {
    if (type == "async" ||
        (type == "variable" &&
         (value == "static" || value == "get" || value == "set" || (isTS && isModifier(value))) &&
         cx.stream.match(/^\s+[\w$\xa1-\uffff]/, false))) {
      cx.marked = "keyword";
      return cont(classBody);
    }
    if (type == "variable" || cx.style == "keyword") {
      cx.marked = "property";
      return cont(classfield, classBody);
    }
    if (type == "number" || type == "string") return cont(classfield, classBody);
    if (type == "[")
      return cont(expression, maybetype, expect("]"), classfield, classBody)
    if (value == "*") {
      cx.marked = "keyword";
      return cont(classBody);
    }
    if (isTS && type == "(") return pass(functiondecl, classBody)
    if (type == ";" || type == ",") return cont(classBody);
    if (type == "}") return cont();
    if (value == "@") return cont(expression, classBody)
  }
  function classfield(type, value) {
    if (value == "?") return cont(classfield)
    if (type == ":") return cont(typeexpr, maybeAssign)
    if (value == "=") return cont(expressionNoComma)
    var context = cx.state.lexical.prev, isInterface = context && context.info == "interface"
    return pass(isInterface ? functiondecl : functiondef)
  }
  function afterExport(type, value) {
    if (value == "*") { cx.marked = "keyword"; return cont(maybeFrom, expect(";")); }
    if (value == "default") { cx.marked = "keyword"; return cont(expression, expect(";")); }
    if (type == "{") return cont(commasep(exportField, "}"), maybeFrom, expect(";"));
    return pass(statement);
  }
  function exportField(type, value) {
    if (value == "as") { cx.marked = "keyword"; return cont(expect("variable")); }
    if (type == "variable") return pass(expressionNoComma, exportField);
  }
  function afterImport(type) {
    if (type == "string") return cont();
    if (type == "(") return pass(expression);
    return pass(importSpec, maybeMoreImports, maybeFrom);
  }
  function importSpec(type, value) {
    if (type == "{") return contCommasep(importSpec, "}");
    if (type == "variable") register(value);
    if (value == "*") cx.marked = "keyword";
    return cont(maybeAs);
  }
  function maybeMoreImports(type) {
    if (type == ",") return cont(importSpec, maybeMoreImports)
  }
  function maybeAs(_type, value) {
    if (value == "as") { cx.marked = "keyword"; return cont(importSpec); }
  }
  function maybeFrom(_type, value) {
    if (value == "from") { cx.marked = "keyword"; return cont(expression); }
  }
  function arrayLiteral(type) {
    if (type == "]") return cont();
    return pass(commasep(expressionNoComma, "]"));
  }
  function enumdef() {
    return pass(pushlex("form"), pattern, expect("{"), pushlex("}"), commasep(enummember, "}"), poplex, poplex)
  }
  function enummember() {
    return pass(pattern, maybeAssign);
  }

  function isContinuedStatement(state, textAfter) {
    return state.lastType == "operator" || state.lastType == "," ||
      isOperatorChar.test(textAfter.charAt(0)) ||
      /[,.]/.test(textAfter.charAt(0));
  }

  function expressionAllowed(stream, state, backUp) {
    return state.tokenize == tokenBase &&
      /^(?:operator|sof|keyword [bcd]|case|new|export|default|spread|[\[{}\(,;:]|=>)$/.test(state.lastType) ||
      (state.lastType == "quasi" && /\{\s*$/.test(stream.string.slice(0, stream.pos - (backUp || 0))))
  }

  // Interface

  return {
    startState: function(basecolumn) {
      var state = {
        tokenize: tokenBase,
        lastType: "sof",
        cc: [],
        lexical: new JSLexical((basecolumn || 0) - indentUnit, 0, "block", false),
        localVars: parserConfig.localVars,
        context: parserConfig.localVars && new Context(null, null, false),
        indented: basecolumn || 0
      };
      if (parserConfig.globalVars && typeof parserConfig.globalVars == "object")
        state.globalVars = parserConfig.globalVars;
      return state;
    },

    token: function(stream, state) {
      if (stream.sol()) {
        if (!state.lexical.hasOwnProperty("align"))
          state.lexical.align = false;
        state.indented = stream.indentation();
        findFatArrow(stream, state);
      }
      if (state.tokenize != tokenComment && stream.eatSpace()) return null;
      var style = state.tokenize(stream, state);
      if (type == "comment") return style;
      state.lastType = type == "operator" && (content == "++" || content == "--") ? "incdec" : type;
      return parseJS(state, style, type, content, stream);
    },

    indent: function(state, textAfter) {
      if (state.tokenize == tokenComment || state.tokenize == tokenQuasi) return CodeMirror.Pass;
      if (state.tokenize != tokenBase) return 0;
      var firstChar = textAfter && textAfter.charAt(0), lexical = state.lexical, top
      // Kludge to prevent 'maybelse' from blocking lexical scope pops
      if (!/^\s*else\b/.test(textAfter)) for (var i = state.cc.length - 1; i >= 0; --i) {
        var c = state.cc[i];
        if (c == poplex) lexical = lexical.prev;
        else if (c != maybeelse) break;
      }
      while ((lexical.type == "stat" || lexical.type == "form") &&
             (firstChar == "}" || ((top = state.cc[state.cc.length - 1]) &&
                                   (top == maybeoperatorComma || top == maybeoperatorNoComma) &&
                                   !/^[,\.=+\-*:?[\(]/.test(textAfter))))
        lexical = lexical.prev;
      if (statementIndent && lexical.type == ")" && lexical.prev.type == "stat")
        lexical = lexical.prev;
      var type = lexical.type, closing = firstChar == type;

      if (type == "vardef") return lexical.indented + (state.lastType == "operator" || state.lastType == "," ? lexical.info.length + 1 : 0);
      else if (type == "form" && firstChar == "{") return lexical.indented;
      else if (type == "form") return lexical.indented + indentUnit;
      else if (type == "stat")
        return lexical.indented + (isContinuedStatement(state, textAfter) ? statementIndent || indentUnit : 0);
      else if (lexical.info == "switch" && !closing && parserConfig.doubleIndentSwitch != false)
        return lexical.indented + (/^(?:case|default)\b/.test(textAfter) ? indentUnit : 2 * indentUnit);
      else if (lexical.align) return lexical.column + (closing ? 0 : 1);
      else return lexical.indented + (closing ? 0 : indentUnit);
    },

    electricInput: /^\s*(?:case .*?:|default:|\{|\})$/,
    blockCommentStart: jsonMode ? null : "/*",
    blockCommentEnd: jsonMode ? null : "*/",
    blockCommentContinue: jsonMode ? null : " * ",
    lineComment: jsonMode ? null : "//",
    fold: "brace",
    closeBrackets: "()[]{}''\"\"``",

    helperType: jsonMode ? "json" : "javascript",
    jsonldMode: jsonldMode,
    jsonMode: jsonMode,

    expressionAllowed: expressionAllowed,

    skipExpression: function(state) {
      var top = state.cc[state.cc.length - 1]
      if (top == expression || top == expressionNoComma) state.cc.pop()
    }
  };
});

CodeMirror.registerHelper("wordChars", "javascript", /[\w$]/);

CodeMirror.defineMIME("text/javascript", "javascript");
CodeMirror.defineMIME("text/ecmascript", "javascript");
CodeMirror.defineMIME("application/javascript", "javascript");
CodeMirror.defineMIME("application/x-javascript", "javascript");
CodeMirror.defineMIME("application/ecmascript", "javascript");
CodeMirror.defineMIME("application/json", { name: "javascript", json: true });
CodeMirror.defineMIME("application/x-json", { name: "javascript", json: true });
CodeMirror.defineMIME("application/manifest+json", { name: "javascript", json: true })
CodeMirror.defineMIME("application/ld+json", { name: "javascript", jsonld: true });
CodeMirror.defineMIME("text/typescript", { name: "javascript", typescript: true });
CodeMirror.defineMIME("application/typescript", { name: "javascript", typescript: true });

});
EOF
fi





echo -e "======================== $dir_panel_js/jquery.min.js ========================\n"
if [ ! -f $dir_panel_js/jquery.min.js ];then
  cat>$dir_panel_js/jquery.min.js<<\EOF
/*! jQuery v1.11.2 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */
!function(a,b){"object"==typeof module&&"object"==typeof module.exports?module.exports=a.document?b(a,!0):function(a){if(!a.document)throw new Error("jQuery requires a window with a document");return b(a)}:b(a)}("undefined"!=typeof window?window:this,function(a,b){var c=[],d=c.slice,e=c.concat,f=c.push,g=c.indexOf,h={},i=h.toString,j=h.hasOwnProperty,k={},l="1.11.2",m=function(a,b){return new m.fn.init(a,b)},n=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,o=/^-ms-/,p=/-([\da-z])/gi,q=function(a,b){return b.toUpperCase()};m.fn=m.prototype={jquery:l,constructor:m,selector:"",length:0,toArray:function(){return d.call(this)},get:function(a){return null!=a?0>a?this[a+this.length]:this[a]:d.call(this)},pushStack:function(a){var b=m.merge(this.constructor(),a);return b.prevObject=this,b.context=this.context,b},each:function(a,b){return m.each(this,a,b)},map:function(a){return this.pushStack(m.map(this,function(b,c){return a.call(b,c,b)}))},slice:function(){return this.pushStack(d.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(a){var b=this.length,c=+a+(0>a?b:0);return this.pushStack(c>=0&&b>c?[this[c]]:[])},end:function(){return this.prevObject||this.constructor(null)},push:f,sort:c.sort,splice:c.splice},m.extend=m.fn.extend=function(){var a,b,c,d,e,f,g=arguments[0]||{},h=1,i=arguments.length,j=!1;for("boolean"==typeof g&&(j=g,g=arguments[h]||{},h++),"object"==typeof g||m.isFunction(g)||(g={}),h===i&&(g=this,h--);i>h;h++)if(null!=(e=arguments[h]))for(d in e)a=g[d],c=e[d],g!==c&&(j&&c&&(m.isPlainObject(c)||(b=m.isArray(c)))?(b?(b=!1,f=a&&m.isArray(a)?a:[]):f=a&&m.isPlainObject(a)?a:{},g[d]=m.extend(j,f,c)):void 0!==c&&(g[d]=c));return g},m.extend({expando:"jQuery"+(l+Math.random()).replace(/\D/g,""),isReady:!0,error:function(a){throw new Error(a)},noop:function(){},isFunction:function(a){return"function"===m.type(a)},isArray:Array.isArray||function(a){return"array"===m.type(a)},isWindow:function(a){return null!=a&&a==a.window},isNumeric:function(a){return!m.isArray(a)&&a-parseFloat(a)+1>=0},isEmptyObject:function(a){var b;for(b in a)return!1;return!0},isPlainObject:function(a){var b;if(!a||"object"!==m.type(a)||a.nodeType||m.isWindow(a))return!1;try{if(a.constructor&&!j.call(a,"constructor")&&!j.call(a.constructor.prototype,"isPrototypeOf"))return!1}catch(c){return!1}if(k.ownLast)for(b in a)return j.call(a,b);for(b in a);return void 0===b||j.call(a,b)},type:function(a){return null==a?a+"":"object"==typeof a||"function"==typeof a?h[i.call(a)]||"object":typeof a},globalEval:function(b){b&&m.trim(b)&&(a.execScript||function(b){a.eval.call(a,b)})(b)},camelCase:function(a){return a.replace(o,"ms-").replace(p,q)},nodeName:function(a,b){return a.nodeName&&a.nodeName.toLowerCase()===b.toLowerCase()},each:function(a,b,c){var d,e=0,f=a.length,g=r(a);if(c){if(g){for(;f>e;e++)if(d=b.apply(a[e],c),d===!1)break}else for(e in a)if(d=b.apply(a[e],c),d===!1)break}else if(g){for(;f>e;e++)if(d=b.call(a[e],e,a[e]),d===!1)break}else for(e in a)if(d=b.call(a[e],e,a[e]),d===!1)break;return a},trim:function(a){return null==a?"":(a+"").replace(n,"")},makeArray:function(a,b){var c=b||[];return null!=a&&(r(Object(a))?m.merge(c,"string"==typeof a?[a]:a):f.call(c,a)),c},inArray:function(a,b,c){var d;if(b){if(g)return g.call(b,a,c);for(d=b.length,c=c?0>c?Math.max(0,d+c):c:0;d>c;c++)if(c in b&&b[c]===a)return c}return-1},merge:function(a,b){var c=+b.length,d=0,e=a.length;while(c>d)a[e++]=b[d++];if(c!==c)while(void 0!==b[d])a[e++]=b[d++];return a.length=e,a},grep:function(a,b,c){for(var d,e=[],f=0,g=a.length,h=!c;g>f;f++)d=!b(a[f],f),d!==h&&e.push(a[f]);return e},map:function(a,b,c){var d,f=0,g=a.length,h=r(a),i=[];if(h)for(;g>f;f++)d=b(a[f],f,c),null!=d&&i.push(d);else for(f in a)d=b(a[f],f,c),null!=d&&i.push(d);return e.apply([],i)},guid:1,proxy:function(a,b){var c,e,f;return"string"==typeof b&&(f=a[b],b=a,a=f),m.isFunction(a)?(c=d.call(arguments,2),e=function(){return a.apply(b||this,c.concat(d.call(arguments)))},e.guid=a.guid=a.guid||m.guid++,e):void 0},now:function(){return+new Date},support:k}),m.each("Boolean Number String Function Array Date RegExp Object Error".split(" "),function(a,b){h["[object "+b+"]"]=b.toLowerCase()});function r(a){var b=a.length,c=m.type(a);return"function"===c||m.isWindow(a)?!1:1===a.nodeType&&b?!0:"array"===c||0===b||"number"==typeof b&&b>0&&b-1 in a}var s=function(a){var b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u="sizzle"+1*new Date,v=a.document,w=0,x=0,y=hb(),z=hb(),A=hb(),B=function(a,b){return a===b&&(l=!0),0},C=1<<31,D={}.hasOwnProperty,E=[],F=E.pop,G=E.push,H=E.push,I=E.slice,J=function(a,b){for(var c=0,d=a.length;d>c;c++)if(a[c]===b)return c;return-1},K="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",L="[\\x20\\t\\r\\n\\f]",M="(?:\\\\.|[\\w-]|[^\\x00-\\xa0])+",N=M.replace("w","w#"),O="\\["+L+"*("+M+")(?:"+L+"*([*^$|!~]?=)"+L+"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|("+N+"))|)"+L+"*\\]",P=":("+M+")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|"+O+")*)|.*)\\)|)",Q=new RegExp(L+"+","g"),R=new RegExp("^"+L+"+|((?:^|[^\\\\])(?:\\\\.)*)"+L+"+$","g"),S=new RegExp("^"+L+"*,"+L+"*"),T=new RegExp("^"+L+"*([>+~]|"+L+")"+L+"*"),U=new RegExp("="+L+"*([^\\]'\"]*?)"+L+"*\\]","g"),V=new RegExp(P),W=new RegExp("^"+N+"$"),X={ID:new RegExp("^#("+M+")"),CLASS:new RegExp("^\\.("+M+")"),TAG:new RegExp("^("+M.replace("w","w*")+")"),ATTR:new RegExp("^"+O),PSEUDO:new RegExp("^"+P),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+L+"*(even|odd|(([+-]|)(\\d*)n|)"+L+"*(?:([+-]|)"+L+"*(\\d+)|))"+L+"*\\)|)","i"),bool:new RegExp("^(?:"+K+")$","i"),needsContext:new RegExp("^"+L+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+L+"*((?:-\\d)?\\d*)"+L+"*\\)|)(?=[^-]|$)","i")},Y=/^(?:input|select|textarea|button)$/i,Z=/^h\d$/i,$=/^[^{]+\{\s*\[native \w/,_=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,ab=/[+~]/,bb=/'|\\/g,cb=new RegExp("\\\\([\\da-f]{1,6}"+L+"?|("+L+")|.)","ig"),db=function(a,b,c){var d="0x"+b-65536;return d!==d||c?b:0>d?String.fromCharCode(d+65536):String.fromCharCode(d>>10|55296,1023&d|56320)},eb=function(){m()};try{H.apply(E=I.call(v.childNodes),v.childNodes),E[v.childNodes.length].nodeType}catch(fb){H={apply:E.length?function(a,b){G.apply(a,I.call(b))}:function(a,b){var c=a.length,d=0;while(a[c++]=b[d++]);a.length=c-1}}}function gb(a,b,d,e){var f,h,j,k,l,o,r,s,w,x;if((b?b.ownerDocument||b:v)!==n&&m(b),b=b||n,d=d||[],k=b.nodeType,"string"!=typeof a||!a||1!==k&&9!==k&&11!==k)return d;if(!e&&p){if(11!==k&&(f=_.exec(a)))if(j=f[1]){if(9===k){if(h=b.getElementById(j),!h||!h.parentNode)return d;if(h.id===j)return d.push(h),d}else if(b.ownerDocument&&(h=b.ownerDocument.getElementById(j))&&t(b,h)&&h.id===j)return d.push(h),d}else{if(f[2])return H.apply(d,b.getElementsByTagName(a)),d;if((j=f[3])&&c.getElementsByClassName)return H.apply(d,b.getElementsByClassName(j)),d}if(c.qsa&&(!q||!q.test(a))){if(s=r=u,w=b,x=1!==k&&a,1===k&&"object"!==b.nodeName.toLowerCase()){o=g(a),(r=b.getAttribute("id"))?s=r.replace(bb,"\\$&"):b.setAttribute("id",s),s="[id='"+s+"'] ",l=o.length;while(l--)o[l]=s+rb(o[l]);w=ab.test(a)&&pb(b.parentNode)||b,x=o.join(",")}if(x)try{return H.apply(d,w.querySelectorAll(x)),d}catch(y){}finally{r||b.removeAttribute("id")}}}return i(a.replace(R,"$1"),b,d,e)}function hb(){var a=[];function b(c,e){return a.push(c+" ")>d.cacheLength&&delete b[a.shift()],b[c+" "]=e}return b}function ib(a){return a[u]=!0,a}function jb(a){var b=n.createElement("div");try{return!!a(b)}catch(c){return!1}finally{b.parentNode&&b.parentNode.removeChild(b),b=null}}function kb(a,b){var c=a.split("|"),e=a.length;while(e--)d.attrHandle[c[e]]=b}function lb(a,b){var c=b&&a,d=c&&1===a.nodeType&&1===b.nodeType&&(~b.sourceIndex||C)-(~a.sourceIndex||C);if(d)return d;if(c)while(c=c.nextSibling)if(c===b)return-1;return a?1:-1}function mb(a){return function(b){var c=b.nodeName.toLowerCase();return"input"===c&&b.type===a}}function nb(a){return function(b){var c=b.nodeName.toLowerCase();return("input"===c||"button"===c)&&b.type===a}}function ob(a){return ib(function(b){return b=+b,ib(function(c,d){var e,f=a([],c.length,b),g=f.length;while(g--)c[e=f[g]]&&(c[e]=!(d[e]=c[e]))})})}function pb(a){return a&&"undefined"!=typeof a.getElementsByTagName&&a}c=gb.support={},f=gb.isXML=function(a){var b=a&&(a.ownerDocument||a).documentElement;return b?"HTML"!==b.nodeName:!1},m=gb.setDocument=function(a){var b,e,g=a?a.ownerDocument||a:v;return g!==n&&9===g.nodeType&&g.documentElement?(n=g,o=g.documentElement,e=g.defaultView,e&&e!==e.top&&(e.addEventListener?e.addEventListener("unload",eb,!1):e.attachEvent&&e.attachEvent("onunload",eb)),p=!f(g),c.attributes=jb(function(a){return a.className="i",!a.getAttribute("className")}),c.getElementsByTagName=jb(function(a){return a.appendChild(g.createComment("")),!a.getElementsByTagName("*").length}),c.getElementsByClassName=$.test(g.getElementsByClassName),c.getById=jb(function(a){return o.appendChild(a).id=u,!g.getElementsByName||!g.getElementsByName(u).length}),c.getById?(d.find.ID=function(a,b){if("undefined"!=typeof b.getElementById&&p){var c=b.getElementById(a);return c&&c.parentNode?[c]:[]}},d.filter.ID=function(a){var b=a.replace(cb,db);return function(a){return a.getAttribute("id")===b}}):(delete d.find.ID,d.filter.ID=function(a){var b=a.replace(cb,db);return function(a){var c="undefined"!=typeof a.getAttributeNode&&a.getAttributeNode("id");return c&&c.value===b}}),d.find.TAG=c.getElementsByTagName?function(a,b){return"undefined"!=typeof b.getElementsByTagName?b.getElementsByTagName(a):c.qsa?b.querySelectorAll(a):void 0}:function(a,b){var c,d=[],e=0,f=b.getElementsByTagName(a);if("*"===a){while(c=f[e++])1===c.nodeType&&d.push(c);return d}return f},d.find.CLASS=c.getElementsByClassName&&function(a,b){return p?b.getElementsByClassName(a):void 0},r=[],q=[],(c.qsa=$.test(g.querySelectorAll))&&(jb(function(a){o.appendChild(a).innerHTML="<a id='"+u+"'></a><select id='"+u+"-\f]' msallowcapture=''><option selected=''></option></select>",a.querySelectorAll("[msallowcapture^='']").length&&q.push("[*^$]="+L+"*(?:''|\"\")"),a.querySelectorAll("[selected]").length||q.push("\\["+L+"*(?:value|"+K+")"),a.querySelectorAll("[id~="+u+"-]").length||q.push("~="),a.querySelectorAll(":checked").length||q.push(":checked"),a.querySelectorAll("a#"+u+"+*").length||q.push(".#.+[+~]")}),jb(function(a){var b=g.createElement("input");b.setAttribute("type","hidden"),a.appendChild(b).setAttribute("name","D"),a.querySelectorAll("[name=d]").length&&q.push("name"+L+"*[*^$|!~]?="),a.querySelectorAll(":enabled").length||q.push(":enabled",":disabled"),a.querySelectorAll("*,:x"),q.push(",.*:")})),(c.matchesSelector=$.test(s=o.matches||o.webkitMatchesSelector||o.mozMatchesSelector||o.oMatchesSelector||o.msMatchesSelector))&&jb(function(a){c.disconnectedMatch=s.call(a,"div"),s.call(a,"[s!='']:x"),r.push("!=",P)}),q=q.length&&new RegExp(q.join("|")),r=r.length&&new RegExp(r.join("|")),b=$.test(o.compareDocumentPosition),t=b||$.test(o.contains)?function(a,b){var c=9===a.nodeType?a.documentElement:a,d=b&&b.parentNode;return a===d||!(!d||1!==d.nodeType||!(c.contains?c.contains(d):a.compareDocumentPosition&&16&a.compareDocumentPosition(d)))}:function(a,b){if(b)while(b=b.parentNode)if(b===a)return!0;return!1},B=b?function(a,b){if(a===b)return l=!0,0;var d=!a.compareDocumentPosition-!b.compareDocumentPosition;return d?d:(d=(a.ownerDocument||a)===(b.ownerDocument||b)?a.compareDocumentPosition(b):1,1&d||!c.sortDetached&&b.compareDocumentPosition(a)===d?a===g||a.ownerDocument===v&&t(v,a)?-1:b===g||b.ownerDocument===v&&t(v,b)?1:k?J(k,a)-J(k,b):0:4&d?-1:1)}:function(a,b){if(a===b)return l=!0,0;var c,d=0,e=a.parentNode,f=b.parentNode,h=[a],i=[b];if(!e||!f)return a===g?-1:b===g?1:e?-1:f?1:k?J(k,a)-J(k,b):0;if(e===f)return lb(a,b);c=a;while(c=c.parentNode)h.unshift(c);c=b;while(c=c.parentNode)i.unshift(c);while(h[d]===i[d])d++;return d?lb(h[d],i[d]):h[d]===v?-1:i[d]===v?1:0},g):n},gb.matches=function(a,b){return gb(a,null,null,b)},gb.matchesSelector=function(a,b){if((a.ownerDocument||a)!==n&&m(a),b=b.replace(U,"='$1']"),!(!c.matchesSelector||!p||r&&r.test(b)||q&&q.test(b)))try{var d=s.call(a,b);if(d||c.disconnectedMatch||a.document&&11!==a.document.nodeType)return d}catch(e){}return gb(b,n,null,[a]).length>0},gb.contains=function(a,b){return(a.ownerDocument||a)!==n&&m(a),t(a,b)},gb.attr=function(a,b){(a.ownerDocument||a)!==n&&m(a);var e=d.attrHandle[b.toLowerCase()],f=e&&D.call(d.attrHandle,b.toLowerCase())?e(a,b,!p):void 0;return void 0!==f?f:c.attributes||!p?a.getAttribute(b):(f=a.getAttributeNode(b))&&f.specified?f.value:null},gb.error=function(a){throw new Error("Syntax error, unrecognized expression: "+a)},gb.uniqueSort=function(a){var b,d=[],e=0,f=0;if(l=!c.detectDuplicates,k=!c.sortStable&&a.slice(0),a.sort(B),l){while(b=a[f++])b===a[f]&&(e=d.push(f));while(e--)a.splice(d[e],1)}return k=null,a},e=gb.getText=function(a){var b,c="",d=0,f=a.nodeType;if(f){if(1===f||9===f||11===f){if("string"==typeof a.textContent)return a.textContent;for(a=a.firstChild;a;a=a.nextSibling)c+=e(a)}else if(3===f||4===f)return a.nodeValue}else while(b=a[d++])c+=e(b);return c},d=gb.selectors={cacheLength:50,createPseudo:ib,match:X,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(a){return a[1]=a[1].replace(cb,db),a[3]=(a[3]||a[4]||a[5]||"").replace(cb,db),"~="===a[2]&&(a[3]=" "+a[3]+" "),a.slice(0,4)},CHILD:function(a){return a[1]=a[1].toLowerCase(),"nth"===a[1].slice(0,3)?(a[3]||gb.error(a[0]),a[4]=+(a[4]?a[5]+(a[6]||1):2*("even"===a[3]||"odd"===a[3])),a[5]=+(a[7]+a[8]||"odd"===a[3])):a[3]&&gb.error(a[0]),a},PSEUDO:function(a){var b,c=!a[6]&&a[2];return X.CHILD.test(a[0])?null:(a[3]?a[2]=a[4]||a[5]||"":c&&V.test(c)&&(b=g(c,!0))&&(b=c.indexOf(")",c.length-b)-c.length)&&(a[0]=a[0].slice(0,b),a[2]=c.slice(0,b)),a.slice(0,3))}},filter:{TAG:function(a){var b=a.replace(cb,db).toLowerCase();return"*"===a?function(){return!0}:function(a){return a.nodeName&&a.nodeName.toLowerCase()===b}},CLASS:function(a){var b=y[a+" "];return b||(b=new RegExp("(^|"+L+")"+a+"("+L+"|$)"))&&y(a,function(a){return b.test("string"==typeof a.className&&a.className||"undefined"!=typeof a.getAttribute&&a.getAttribute("class")||"")})},ATTR:function(a,b,c){return function(d){var e=gb.attr(d,a);return null==e?"!="===b:b?(e+="","="===b?e===c:"!="===b?e!==c:"^="===b?c&&0===e.indexOf(c):"*="===b?c&&e.indexOf(c)>-1:"$="===b?c&&e.slice(-c.length)===c:"~="===b?(" "+e.replace(Q," ")+" ").indexOf(c)>-1:"|="===b?e===c||e.slice(0,c.length+1)===c+"-":!1):!0}},CHILD:function(a,b,c,d,e){var f="nth"!==a.slice(0,3),g="last"!==a.slice(-4),h="of-type"===b;return 1===d&&0===e?function(a){return!!a.parentNode}:function(b,c,i){var j,k,l,m,n,o,p=f!==g?"nextSibling":"previousSibling",q=b.parentNode,r=h&&b.nodeName.toLowerCase(),s=!i&&!h;if(q){if(f){while(p){l=b;while(l=l[p])if(h?l.nodeName.toLowerCase()===r:1===l.nodeType)return!1;o=p="only"===a&&!o&&"nextSibling"}return!0}if(o=[g?q.firstChild:q.lastChild],g&&s){k=q[u]||(q[u]={}),j=k[a]||[],n=j[0]===w&&j[1],m=j[0]===w&&j[2],l=n&&q.childNodes[n];while(l=++n&&l&&l[p]||(m=n=0)||o.pop())if(1===l.nodeType&&++m&&l===b){k[a]=[w,n,m];break}}else if(s&&(j=(b[u]||(b[u]={}))[a])&&j[0]===w)m=j[1];else while(l=++n&&l&&l[p]||(m=n=0)||o.pop())if((h?l.nodeName.toLowerCase()===r:1===l.nodeType)&&++m&&(s&&((l[u]||(l[u]={}))[a]=[w,m]),l===b))break;return m-=e,m===d||m%d===0&&m/d>=0}}},PSEUDO:function(a,b){var c,e=d.pseudos[a]||d.setFilters[a.toLowerCase()]||gb.error("unsupported pseudo: "+a);return e[u]?e(b):e.length>1?(c=[a,a,"",b],d.setFilters.hasOwnProperty(a.toLowerCase())?ib(function(a,c){var d,f=e(a,b),g=f.length;while(g--)d=J(a,f[g]),a[d]=!(c[d]=f[g])}):function(a){return e(a,0,c)}):e}},pseudos:{not:ib(function(a){var b=[],c=[],d=h(a.replace(R,"$1"));return d[u]?ib(function(a,b,c,e){var f,g=d(a,null,e,[]),h=a.length;while(h--)(f=g[h])&&(a[h]=!(b[h]=f))}):function(a,e,f){return b[0]=a,d(b,null,f,c),b[0]=null,!c.pop()}}),has:ib(function(a){return function(b){return gb(a,b).length>0}}),contains:ib(function(a){return a=a.replace(cb,db),function(b){return(b.textContent||b.innerText||e(b)).indexOf(a)>-1}}),lang:ib(function(a){return W.test(a||"")||gb.error("unsupported lang: "+a),a=a.replace(cb,db).toLowerCase(),function(b){var c;do if(c=p?b.lang:b.getAttribute("xml:lang")||b.getAttribute("lang"))return c=c.toLowerCase(),c===a||0===c.indexOf(a+"-");while((b=b.parentNode)&&1===b.nodeType);return!1}}),target:function(b){var c=a.location&&a.location.hash;return c&&c.slice(1)===b.id},root:function(a){return a===o},focus:function(a){return a===n.activeElement&&(!n.hasFocus||n.hasFocus())&&!!(a.type||a.href||~a.tabIndex)},enabled:function(a){return a.disabled===!1},disabled:function(a){return a.disabled===!0},checked:function(a){var b=a.nodeName.toLowerCase();return"input"===b&&!!a.checked||"option"===b&&!!a.selected},selected:function(a){return a.parentNode&&a.parentNode.selectedIndex,a.selected===!0},empty:function(a){for(a=a.firstChild;a;a=a.nextSibling)if(a.nodeType<6)return!1;return!0},parent:function(a){return!d.pseudos.empty(a)},header:function(a){return Z.test(a.nodeName)},input:function(a){return Y.test(a.nodeName)},button:function(a){var b=a.nodeName.toLowerCase();return"input"===b&&"button"===a.type||"button"===b},text:function(a){var b;return"input"===a.nodeName.toLowerCase()&&"text"===a.type&&(null==(b=a.getAttribute("type"))||"text"===b.toLowerCase())},first:ob(function(){return[0]}),last:ob(function(a,b){return[b-1]}),eq:ob(function(a,b,c){return[0>c?c+b:c]}),even:ob(function(a,b){for(var c=0;b>c;c+=2)a.push(c);return a}),odd:ob(function(a,b){for(var c=1;b>c;c+=2)a.push(c);return a}),lt:ob(function(a,b,c){for(var d=0>c?c+b:c;--d>=0;)a.push(d);return a}),gt:ob(function(a,b,c){for(var d=0>c?c+b:c;++d<b;)a.push(d);return a})}},d.pseudos.nth=d.pseudos.eq;for(b in{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})d.pseudos[b]=mb(b);for(b in{submit:!0,reset:!0})d.pseudos[b]=nb(b);function qb(){}qb.prototype=d.filters=d.pseudos,d.setFilters=new qb,g=gb.tokenize=function(a,b){var c,e,f,g,h,i,j,k=z[a+" "];if(k)return b?0:k.slice(0);h=a,i=[],j=d.preFilter;while(h){(!c||(e=S.exec(h)))&&(e&&(h=h.slice(e[0].length)||h),i.push(f=[])),c=!1,(e=T.exec(h))&&(c=e.shift(),f.push({value:c,type:e[0].replace(R," ")}),h=h.slice(c.length));for(g in d.filter)!(e=X[g].exec(h))||j[g]&&!(e=j[g](e))||(c=e.shift(),f.push({value:c,type:g,matches:e}),h=h.slice(c.length));if(!c)break}return b?h.length:h?gb.error(a):z(a,i).slice(0)};function rb(a){for(var b=0,c=a.length,d="";c>b;b++)d+=a[b].value;return d}function sb(a,b,c){var d=b.dir,e=c&&"parentNode"===d,f=x++;return b.first?function(b,c,f){while(b=b[d])if(1===b.nodeType||e)return a(b,c,f)}:function(b,c,g){var h,i,j=[w,f];if(g){while(b=b[d])if((1===b.nodeType||e)&&a(b,c,g))return!0}else while(b=b[d])if(1===b.nodeType||e){if(i=b[u]||(b[u]={}),(h=i[d])&&h[0]===w&&h[1]===f)return j[2]=h[2];if(i[d]=j,j[2]=a(b,c,g))return!0}}}function tb(a){return a.length>1?function(b,c,d){var e=a.length;while(e--)if(!a[e](b,c,d))return!1;return!0}:a[0]}function ub(a,b,c){for(var d=0,e=b.length;e>d;d++)gb(a,b[d],c);return c}function vb(a,b,c,d,e){for(var f,g=[],h=0,i=a.length,j=null!=b;i>h;h++)(f=a[h])&&(!c||c(f,d,e))&&(g.push(f),j&&b.push(h));return g}function wb(a,b,c,d,e,f){return d&&!d[u]&&(d=wb(d)),e&&!e[u]&&(e=wb(e,f)),ib(function(f,g,h,i){var j,k,l,m=[],n=[],o=g.length,p=f||ub(b||"*",h.nodeType?[h]:h,[]),q=!a||!f&&b?p:vb(p,m,a,h,i),r=c?e||(f?a:o||d)?[]:g:q;if(c&&c(q,r,h,i),d){j=vb(r,n),d(j,[],h,i),k=j.length;while(k--)(l=j[k])&&(r[n[k]]=!(q[n[k]]=l))}if(f){if(e||a){if(e){j=[],k=r.length;while(k--)(l=r[k])&&j.push(q[k]=l);e(null,r=[],j,i)}k=r.length;while(k--)(l=r[k])&&(j=e?J(f,l):m[k])>-1&&(f[j]=!(g[j]=l))}}else r=vb(r===g?r.splice(o,r.length):r),e?e(null,g,r,i):H.apply(g,r)})}function xb(a){for(var b,c,e,f=a.length,g=d.relative[a[0].type],h=g||d.relative[" "],i=g?1:0,k=sb(function(a){return a===b},h,!0),l=sb(function(a){return J(b,a)>-1},h,!0),m=[function(a,c,d){var e=!g&&(d||c!==j)||((b=c).nodeType?k(a,c,d):l(a,c,d));return b=null,e}];f>i;i++)if(c=d.relative[a[i].type])m=[sb(tb(m),c)];else{if(c=d.filter[a[i].type].apply(null,a[i].matches),c[u]){for(e=++i;f>e;e++)if(d.relative[a[e].type])break;return wb(i>1&&tb(m),i>1&&rb(a.slice(0,i-1).concat({value:" "===a[i-2].type?"*":""})).replace(R,"$1"),c,e>i&&xb(a.slice(i,e)),f>e&&xb(a=a.slice(e)),f>e&&rb(a))}m.push(c)}return tb(m)}function yb(a,b){var c=b.length>0,e=a.length>0,f=function(f,g,h,i,k){var l,m,o,p=0,q="0",r=f&&[],s=[],t=j,u=f||e&&d.find.TAG("*",k),v=w+=null==t?1:Math.random()||.1,x=u.length;for(k&&(j=g!==n&&g);q!==x&&null!=(l=u[q]);q++){if(e&&l){m=0;while(o=a[m++])if(o(l,g,h)){i.push(l);break}k&&(w=v)}c&&((l=!o&&l)&&p--,f&&r.push(l))}if(p+=q,c&&q!==p){m=0;while(o=b[m++])o(r,s,g,h);if(f){if(p>0)while(q--)r[q]||s[q]||(s[q]=F.call(i));s=vb(s)}H.apply(i,s),k&&!f&&s.length>0&&p+b.length>1&&gb.uniqueSort(i)}return k&&(w=v,j=t),r};return c?ib(f):f}return h=gb.compile=function(a,b){var c,d=[],e=[],f=A[a+" "];if(!f){b||(b=g(a)),c=b.length;while(c--)f=xb(b[c]),f[u]?d.push(f):e.push(f);f=A(a,yb(e,d)),f.selector=a}return f},i=gb.select=function(a,b,e,f){var i,j,k,l,m,n="function"==typeof a&&a,o=!f&&g(a=n.selector||a);if(e=e||[],1===o.length){if(j=o[0]=o[0].slice(0),j.length>2&&"ID"===(k=j[0]).type&&c.getById&&9===b.nodeType&&p&&d.relative[j[1].type]){if(b=(d.find.ID(k.matches[0].replace(cb,db),b)||[])[0],!b)return e;n&&(b=b.parentNode),a=a.slice(j.shift().value.length)}i=X.needsContext.test(a)?0:j.length;while(i--){if(k=j[i],d.relative[l=k.type])break;if((m=d.find[l])&&(f=m(k.matches[0].replace(cb,db),ab.test(j[0].type)&&pb(b.parentNode)||b))){if(j.splice(i,1),a=f.length&&rb(j),!a)return H.apply(e,f),e;break}}}return(n||h(a,o))(f,b,!p,e,ab.test(a)&&pb(b.parentNode)||b),e},c.sortStable=u.split("").sort(B).join("")===u,c.detectDuplicates=!!l,m(),c.sortDetached=jb(function(a){return 1&a.compareDocumentPosition(n.createElement("div"))}),jb(function(a){return a.innerHTML="<a href='#'></a>","#"===a.firstChild.getAttribute("href")})||kb("type|href|height|width",function(a,b,c){return c?void 0:a.getAttribute(b,"type"===b.toLowerCase()?1:2)}),c.attributes&&jb(function(a){return a.innerHTML="<input/>",a.firstChild.setAttribute("value",""),""===a.firstChild.getAttribute("value")})||kb("value",function(a,b,c){return c||"input"!==a.nodeName.toLowerCase()?void 0:a.defaultValue}),jb(function(a){return null==a.getAttribute("disabled")})||kb(K,function(a,b,c){var d;return c?void 0:a[b]===!0?b.toLowerCase():(d=a.getAttributeNode(b))&&d.specified?d.value:null}),gb}(a);m.find=s,m.expr=s.selectors,m.expr[":"]=m.expr.pseudos,m.unique=s.uniqueSort,m.text=s.getText,m.isXMLDoc=s.isXML,m.contains=s.contains;var t=m.expr.match.needsContext,u=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,v=/^.[^:#\[\.,]*$/;function w(a,b,c){if(m.isFunction(b))return m.grep(a,function(a,d){return!!b.call(a,d,a)!==c});if(b.nodeType)return m.grep(a,function(a){return a===b!==c});if("string"==typeof b){if(v.test(b))return m.filter(b,a,c);b=m.filter(b,a)}return m.grep(a,function(a){return m.inArray(a,b)>=0!==c})}m.filter=function(a,b,c){var d=b[0];return c&&(a=":not("+a+")"),1===b.length&&1===d.nodeType?m.find.matchesSelector(d,a)?[d]:[]:m.find.matches(a,m.grep(b,function(a){return 1===a.nodeType}))},m.fn.extend({find:function(a){var b,c=[],d=this,e=d.length;if("string"!=typeof a)return this.pushStack(m(a).filter(function(){for(b=0;e>b;b++)if(m.contains(d[b],this))return!0}));for(b=0;e>b;b++)m.find(a,d[b],c);return c=this.pushStack(e>1?m.unique(c):c),c.selector=this.selector?this.selector+" "+a:a,c},filter:function(a){return this.pushStack(w(this,a||[],!1))},not:function(a){return this.pushStack(w(this,a||[],!0))},is:function(a){return!!w(this,"string"==typeof a&&t.test(a)?m(a):a||[],!1).length}});var x,y=a.document,z=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/,A=m.fn.init=function(a,b){var c,d;if(!a)return this;if("string"==typeof a){if(c="<"===a.charAt(0)&&">"===a.charAt(a.length-1)&&a.length>=3?[null,a,null]:z.exec(a),!c||!c[1]&&b)return!b||b.jquery?(b||x).find(a):this.constructor(b).find(a);if(c[1]){if(b=b instanceof m?b[0]:b,m.merge(this,m.parseHTML(c[1],b&&b.nodeType?b.ownerDocument||b:y,!0)),u.test(c[1])&&m.isPlainObject(b))for(c in b)m.isFunction(this[c])?this[c](b[c]):this.attr(c,b[c]);return this}if(d=y.getElementById(c[2]),d&&d.parentNode){if(d.id!==c[2])return x.find(a);this.length=1,this[0]=d}return this.context=y,this.selector=a,this}return a.nodeType?(this.context=this[0]=a,this.length=1,this):m.isFunction(a)?"undefined"!=typeof x.ready?x.ready(a):a(m):(void 0!==a.selector&&(this.selector=a.selector,this.context=a.context),m.makeArray(a,this))};A.prototype=m.fn,x=m(y);var B=/^(?:parents|prev(?:Until|All))/,C={children:!0,contents:!0,next:!0,prev:!0};m.extend({dir:function(a,b,c){var d=[],e=a[b];while(e&&9!==e.nodeType&&(void 0===c||1!==e.nodeType||!m(e).is(c)))1===e.nodeType&&d.push(e),e=e[b];return d},sibling:function(a,b){for(var c=[];a;a=a.nextSibling)1===a.nodeType&&a!==b&&c.push(a);return c}}),m.fn.extend({has:function(a){var b,c=m(a,this),d=c.length;return this.filter(function(){for(b=0;d>b;b++)if(m.contains(this,c[b]))return!0})},closest:function(a,b){for(var c,d=0,e=this.length,f=[],g=t.test(a)||"string"!=typeof a?m(a,b||this.context):0;e>d;d++)for(c=this[d];c&&c!==b;c=c.parentNode)if(c.nodeType<11&&(g?g.index(c)>-1:1===c.nodeType&&m.find.matchesSelector(c,a))){f.push(c);break}return this.pushStack(f.length>1?m.unique(f):f)},index:function(a){return a?"string"==typeof a?m.inArray(this[0],m(a)):m.inArray(a.jquery?a[0]:a,this):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(a,b){return this.pushStack(m.unique(m.merge(this.get(),m(a,b))))},addBack:function(a){return this.add(null==a?this.prevObject:this.prevObject.filter(a))}});function D(a,b){do a=a[b];while(a&&1!==a.nodeType);return a}m.each({parent:function(a){var b=a.parentNode;return b&&11!==b.nodeType?b:null},parents:function(a){return m.dir(a,"parentNode")},parentsUntil:function(a,b,c){return m.dir(a,"parentNode",c)},next:function(a){return D(a,"nextSibling")},prev:function(a){return D(a,"previousSibling")},nextAll:function(a){return m.dir(a,"nextSibling")},prevAll:function(a){return m.dir(a,"previousSibling")},nextUntil:function(a,b,c){return m.dir(a,"nextSibling",c)},prevUntil:function(a,b,c){return m.dir(a,"previousSibling",c)},siblings:function(a){return m.sibling((a.parentNode||{}).firstChild,a)},children:function(a){return m.sibling(a.firstChild)},contents:function(a){return m.nodeName(a,"iframe")?a.contentDocument||a.contentWindow.document:m.merge([],a.childNodes)}},function(a,b){m.fn[a]=function(c,d){var e=m.map(this,b,c);return"Until"!==a.slice(-5)&&(d=c),d&&"string"==typeof d&&(e=m.filter(d,e)),this.length>1&&(C[a]||(e=m.unique(e)),B.test(a)&&(e=e.reverse())),this.pushStack(e)}});var E=/\S+/g,F={};function G(a){var b=F[a]={};return m.each(a.match(E)||[],function(a,c){b[c]=!0}),b}m.Callbacks=function(a){a="string"==typeof a?F[a]||G(a):m.extend({},a);var b,c,d,e,f,g,h=[],i=!a.once&&[],j=function(l){for(c=a.memory&&l,d=!0,f=g||0,g=0,e=h.length,b=!0;h&&e>f;f++)if(h[f].apply(l[0],l[1])===!1&&a.stopOnFalse){c=!1;break}b=!1,h&&(i?i.length&&j(i.shift()):c?h=[]:k.disable())},k={add:function(){if(h){var d=h.length;!function f(b){m.each(b,function(b,c){var d=m.type(c);"function"===d?a.unique&&k.has(c)||h.push(c):c&&c.length&&"string"!==d&&f(c)})}(arguments),b?e=h.length:c&&(g=d,j(c))}return this},remove:function(){return h&&m.each(arguments,function(a,c){var d;while((d=m.inArray(c,h,d))>-1)h.splice(d,1),b&&(e>=d&&e--,f>=d&&f--)}),this},has:function(a){return a?m.inArray(a,h)>-1:!(!h||!h.length)},empty:function(){return h=[],e=0,this},disable:function(){return h=i=c=void 0,this},disabled:function(){return!h},lock:function(){return i=void 0,c||k.disable(),this},locked:function(){return!i},fireWith:function(a,c){return!h||d&&!i||(c=c||[],c=[a,c.slice?c.slice():c],b?i.push(c):j(c)),this},fire:function(){return k.fireWith(this,arguments),this},fired:function(){return!!d}};return k},m.extend({Deferred:function(a){var b=[["resolve","done",m.Callbacks("once memory"),"resolved"],["reject","fail",m.Callbacks("once memory"),"rejected"],["notify","progress",m.Callbacks("memory")]],c="pending",d={state:function(){return c},always:function(){return e.done(arguments).fail(arguments),this},then:function(){var a=arguments;return m.Deferred(function(c){m.each(b,function(b,f){var g=m.isFunction(a[b])&&a[b];e[f[1]](function(){var a=g&&g.apply(this,arguments);a&&m.isFunction(a.promise)?a.promise().done(c.resolve).fail(c.reject).progress(c.notify):c[f[0]+"With"](this===d?c.promise():this,g?[a]:arguments)})}),a=null}).promise()},promise:function(a){return null!=a?m.extend(a,d):d}},e={};return d.pipe=d.then,m.each(b,function(a,f){var g=f[2],h=f[3];d[f[1]]=g.add,h&&g.add(function(){c=h},b[1^a][2].disable,b[2][2].lock),e[f[0]]=function(){return e[f[0]+"With"](this===e?d:this,arguments),this},e[f[0]+"With"]=g.fireWith}),d.promise(e),a&&a.call(e,e),e},when:function(a){var b=0,c=d.call(arguments),e=c.length,f=1!==e||a&&m.isFunction(a.promise)?e:0,g=1===f?a:m.Deferred(),h=function(a,b,c){return function(e){b[a]=this,c[a]=arguments.length>1?d.call(arguments):e,c===i?g.notifyWith(b,c):--f||g.resolveWith(b,c)}},i,j,k;if(e>1)for(i=new Array(e),j=new Array(e),k=new Array(e);e>b;b++)c[b]&&m.isFunction(c[b].promise)?c[b].promise().done(h(b,k,c)).fail(g.reject).progress(h(b,j,i)):--f;return f||g.resolveWith(k,c),g.promise()}});var H;m.fn.ready=function(a){return m.ready.promise().done(a),this},m.extend({isReady:!1,readyWait:1,holdReady:function(a){a?m.readyWait++:m.ready(!0)},ready:function(a){if(a===!0?!--m.readyWait:!m.isReady){if(!y.body)return setTimeout(m.ready);m.isReady=!0,a!==!0&&--m.readyWait>0||(H.resolveWith(y,[m]),m.fn.triggerHandler&&(m(y).triggerHandler("ready"),m(y).off("ready")))}}});function I(){y.addEventListener?(y.removeEventListener("DOMContentLoaded",J,!1),a.removeEventListener("load",J,!1)):(y.detachEvent("onreadystatechange",J),a.detachEvent("onload",J))}function J(){(y.addEventListener||"load"===event.type||"complete"===y.readyState)&&(I(),m.ready())}m.ready.promise=function(b){if(!H)if(H=m.Deferred(),"complete"===y.readyState)setTimeout(m.ready);else if(y.addEventListener)y.addEventListener("DOMContentLoaded",J,!1),a.addEventListener("load",J,!1);else{y.attachEvent("onreadystatechange",J),a.attachEvent("onload",J);var c=!1;try{c=null==a.frameElement&&y.documentElement}catch(d){}c&&c.doScroll&&!function e(){if(!m.isReady){try{c.doScroll("left")}catch(a){return setTimeout(e,50)}I(),m.ready()}}()}return H.promise(b)};var K="undefined",L;for(L in m(k))break;k.ownLast="0"!==L,k.inlineBlockNeedsLayout=!1,m(function(){var a,b,c,d;c=y.getElementsByTagName("body")[0],c&&c.style&&(b=y.createElement("div"),d=y.createElement("div"),d.style.cssText="position:absolute;border:0;width:0;height:0;top:0;left:-9999px",c.appendChild(d).appendChild(b),typeof b.style.zoom!==K&&(b.style.cssText="display:inline;margin:0;border:0;padding:1px;width:1px;zoom:1",k.inlineBlockNeedsLayout=a=3===b.offsetWidth,a&&(c.style.zoom=1)),c.removeChild(d))}),function(){var a=y.createElement("div");if(null==k.deleteExpando){k.deleteExpando=!0;try{delete a.test}catch(b){k.deleteExpando=!1}}a=null}(),m.acceptData=function(a){var b=m.noData[(a.nodeName+" ").toLowerCase()],c=+a.nodeType||1;return 1!==c&&9!==c?!1:!b||b!==!0&&a.getAttribute("classid")===b};var M=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,N=/([A-Z])/g;function O(a,b,c){if(void 0===c&&1===a.nodeType){var d="data-"+b.replace(N,"-$1").toLowerCase();if(c=a.getAttribute(d),"string"==typeof c){try{c="true"===c?!0:"false"===c?!1:"null"===c?null:+c+""===c?+c:M.test(c)?m.parseJSON(c):c}catch(e){}m.data(a,b,c)}else c=void 0}return c}function P(a){var b;for(b in a)if(("data"!==b||!m.isEmptyObject(a[b]))&&"toJSON"!==b)return!1;
return!0}function Q(a,b,d,e){if(m.acceptData(a)){var f,g,h=m.expando,i=a.nodeType,j=i?m.cache:a,k=i?a[h]:a[h]&&h;if(k&&j[k]&&(e||j[k].data)||void 0!==d||"string"!=typeof b)return k||(k=i?a[h]=c.pop()||m.guid++:h),j[k]||(j[k]=i?{}:{toJSON:m.noop}),("object"==typeof b||"function"==typeof b)&&(e?j[k]=m.extend(j[k],b):j[k].data=m.extend(j[k].data,b)),g=j[k],e||(g.data||(g.data={}),g=g.data),void 0!==d&&(g[m.camelCase(b)]=d),"string"==typeof b?(f=g[b],null==f&&(f=g[m.camelCase(b)])):f=g,f}}function R(a,b,c){if(m.acceptData(a)){var d,e,f=a.nodeType,g=f?m.cache:a,h=f?a[m.expando]:m.expando;if(g[h]){if(b&&(d=c?g[h]:g[h].data)){m.isArray(b)?b=b.concat(m.map(b,m.camelCase)):b in d?b=[b]:(b=m.camelCase(b),b=b in d?[b]:b.split(" ")),e=b.length;while(e--)delete d[b[e]];if(c?!P(d):!m.isEmptyObject(d))return}(c||(delete g[h].data,P(g[h])))&&(f?m.cleanData([a],!0):k.deleteExpando||g!=g.window?delete g[h]:g[h]=null)}}}m.extend({cache:{},noData:{"applet ":!0,"embed ":!0,"object ":"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"},hasData:function(a){return a=a.nodeType?m.cache[a[m.expando]]:a[m.expando],!!a&&!P(a)},data:function(a,b,c){return Q(a,b,c)},removeData:function(a,b){return R(a,b)},_data:function(a,b,c){return Q(a,b,c,!0)},_removeData:function(a,b){return R(a,b,!0)}}),m.fn.extend({data:function(a,b){var c,d,e,f=this[0],g=f&&f.attributes;if(void 0===a){if(this.length&&(e=m.data(f),1===f.nodeType&&!m._data(f,"parsedAttrs"))){c=g.length;while(c--)g[c]&&(d=g[c].name,0===d.indexOf("data-")&&(d=m.camelCase(d.slice(5)),O(f,d,e[d])));m._data(f,"parsedAttrs",!0)}return e}return"object"==typeof a?this.each(function(){m.data(this,a)}):arguments.length>1?this.each(function(){m.data(this,a,b)}):f?O(f,a,m.data(f,a)):void 0},removeData:function(a){return this.each(function(){m.removeData(this,a)})}}),m.extend({queue:function(a,b,c){var d;return a?(b=(b||"fx")+"queue",d=m._data(a,b),c&&(!d||m.isArray(c)?d=m._data(a,b,m.makeArray(c)):d.push(c)),d||[]):void 0},dequeue:function(a,b){b=b||"fx";var c=m.queue(a,b),d=c.length,e=c.shift(),f=m._queueHooks(a,b),g=function(){m.dequeue(a,b)};"inprogress"===e&&(e=c.shift(),d--),e&&("fx"===b&&c.unshift("inprogress"),delete f.stop,e.call(a,g,f)),!d&&f&&f.empty.fire()},_queueHooks:function(a,b){var c=b+"queueHooks";return m._data(a,c)||m._data(a,c,{empty:m.Callbacks("once memory").add(function(){m._removeData(a,b+"queue"),m._removeData(a,c)})})}}),m.fn.extend({queue:function(a,b){var c=2;return"string"!=typeof a&&(b=a,a="fx",c--),arguments.length<c?m.queue(this[0],a):void 0===b?this:this.each(function(){var c=m.queue(this,a,b);m._queueHooks(this,a),"fx"===a&&"inprogress"!==c[0]&&m.dequeue(this,a)})},dequeue:function(a){return this.each(function(){m.dequeue(this,a)})},clearQueue:function(a){return this.queue(a||"fx",[])},promise:function(a,b){var c,d=1,e=m.Deferred(),f=this,g=this.length,h=function(){--d||e.resolveWith(f,[f])};"string"!=typeof a&&(b=a,a=void 0),a=a||"fx";while(g--)c=m._data(f[g],a+"queueHooks"),c&&c.empty&&(d++,c.empty.add(h));return h(),e.promise(b)}});var S=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,T=["Top","Right","Bottom","Left"],U=function(a,b){return a=b||a,"none"===m.css(a,"display")||!m.contains(a.ownerDocument,a)},V=m.access=function(a,b,c,d,e,f,g){var h=0,i=a.length,j=null==c;if("object"===m.type(c)){e=!0;for(h in c)m.access(a,b,h,c[h],!0,f,g)}else if(void 0!==d&&(e=!0,m.isFunction(d)||(g=!0),j&&(g?(b.call(a,d),b=null):(j=b,b=function(a,b,c){return j.call(m(a),c)})),b))for(;i>h;h++)b(a[h],c,g?d:d.call(a[h],h,b(a[h],c)));return e?a:j?b.call(a):i?b(a[0],c):f},W=/^(?:checkbox|radio)$/i;!function(){var a=y.createElement("input"),b=y.createElement("div"),c=y.createDocumentFragment();if(b.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",k.leadingWhitespace=3===b.firstChild.nodeType,k.tbody=!b.getElementsByTagName("tbody").length,k.htmlSerialize=!!b.getElementsByTagName("link").length,k.html5Clone="<:nav></:nav>"!==y.createElement("nav").cloneNode(!0).outerHTML,a.type="checkbox",a.checked=!0,c.appendChild(a),k.appendChecked=a.checked,b.innerHTML="<textarea>x</textarea>",k.noCloneChecked=!!b.cloneNode(!0).lastChild.defaultValue,c.appendChild(b),b.innerHTML="<input type='radio' checked='checked' name='t'/>",k.checkClone=b.cloneNode(!0).cloneNode(!0).lastChild.checked,k.noCloneEvent=!0,b.attachEvent&&(b.attachEvent("onclick",function(){k.noCloneEvent=!1}),b.cloneNode(!0).click()),null==k.deleteExpando){k.deleteExpando=!0;try{delete b.test}catch(d){k.deleteExpando=!1}}}(),function(){var b,c,d=y.createElement("div");for(b in{submit:!0,change:!0,focusin:!0})c="on"+b,(k[b+"Bubbles"]=c in a)||(d.setAttribute(c,"t"),k[b+"Bubbles"]=d.attributes[c].expando===!1);d=null}();var X=/^(?:input|select|textarea)$/i,Y=/^key/,Z=/^(?:mouse|pointer|contextmenu)|click/,$=/^(?:focusinfocus|focusoutblur)$/,_=/^([^.]*)(?:\.(.+)|)$/;function ab(){return!0}function bb(){return!1}function cb(){try{return y.activeElement}catch(a){}}m.event={global:{},add:function(a,b,c,d,e){var f,g,h,i,j,k,l,n,o,p,q,r=m._data(a);if(r){c.handler&&(i=c,c=i.handler,e=i.selector),c.guid||(c.guid=m.guid++),(g=r.events)||(g=r.events={}),(k=r.handle)||(k=r.handle=function(a){return typeof m===K||a&&m.event.triggered===a.type?void 0:m.event.dispatch.apply(k.elem,arguments)},k.elem=a),b=(b||"").match(E)||[""],h=b.length;while(h--)f=_.exec(b[h])||[],o=q=f[1],p=(f[2]||"").split(".").sort(),o&&(j=m.event.special[o]||{},o=(e?j.delegateType:j.bindType)||o,j=m.event.special[o]||{},l=m.extend({type:o,origType:q,data:d,handler:c,guid:c.guid,selector:e,needsContext:e&&m.expr.match.needsContext.test(e),namespace:p.join(".")},i),(n=g[o])||(n=g[o]=[],n.delegateCount=0,j.setup&&j.setup.call(a,d,p,k)!==!1||(a.addEventListener?a.addEventListener(o,k,!1):a.attachEvent&&a.attachEvent("on"+o,k))),j.add&&(j.add.call(a,l),l.handler.guid||(l.handler.guid=c.guid)),e?n.splice(n.delegateCount++,0,l):n.push(l),m.event.global[o]=!0);a=null}},remove:function(a,b,c,d,e){var f,g,h,i,j,k,l,n,o,p,q,r=m.hasData(a)&&m._data(a);if(r&&(k=r.events)){b=(b||"").match(E)||[""],j=b.length;while(j--)if(h=_.exec(b[j])||[],o=q=h[1],p=(h[2]||"").split(".").sort(),o){l=m.event.special[o]||{},o=(d?l.delegateType:l.bindType)||o,n=k[o]||[],h=h[2]&&new RegExp("(^|\\.)"+p.join("\\.(?:.*\\.|)")+"(\\.|$)"),i=f=n.length;while(f--)g=n[f],!e&&q!==g.origType||c&&c.guid!==g.guid||h&&!h.test(g.namespace)||d&&d!==g.selector&&("**"!==d||!g.selector)||(n.splice(f,1),g.selector&&n.delegateCount--,l.remove&&l.remove.call(a,g));i&&!n.length&&(l.teardown&&l.teardown.call(a,p,r.handle)!==!1||m.removeEvent(a,o,r.handle),delete k[o])}else for(o in k)m.event.remove(a,o+b[j],c,d,!0);m.isEmptyObject(k)&&(delete r.handle,m._removeData(a,"events"))}},trigger:function(b,c,d,e){var f,g,h,i,k,l,n,o=[d||y],p=j.call(b,"type")?b.type:b,q=j.call(b,"namespace")?b.namespace.split("."):[];if(h=l=d=d||y,3!==d.nodeType&&8!==d.nodeType&&!$.test(p+m.event.triggered)&&(p.indexOf(".")>=0&&(q=p.split("."),p=q.shift(),q.sort()),g=p.indexOf(":")<0&&"on"+p,b=b[m.expando]?b:new m.Event(p,"object"==typeof b&&b),b.isTrigger=e?2:3,b.namespace=q.join("."),b.namespace_re=b.namespace?new RegExp("(^|\\.)"+q.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,b.result=void 0,b.target||(b.target=d),c=null==c?[b]:m.makeArray(c,[b]),k=m.event.special[p]||{},e||!k.trigger||k.trigger.apply(d,c)!==!1)){if(!e&&!k.noBubble&&!m.isWindow(d)){for(i=k.delegateType||p,$.test(i+p)||(h=h.parentNode);h;h=h.parentNode)o.push(h),l=h;l===(d.ownerDocument||y)&&o.push(l.defaultView||l.parentWindow||a)}n=0;while((h=o[n++])&&!b.isPropagationStopped())b.type=n>1?i:k.bindType||p,f=(m._data(h,"events")||{})[b.type]&&m._data(h,"handle"),f&&f.apply(h,c),f=g&&h[g],f&&f.apply&&m.acceptData(h)&&(b.result=f.apply(h,c),b.result===!1&&b.preventDefault());if(b.type=p,!e&&!b.isDefaultPrevented()&&(!k._default||k._default.apply(o.pop(),c)===!1)&&m.acceptData(d)&&g&&d[p]&&!m.isWindow(d)){l=d[g],l&&(d[g]=null),m.event.triggered=p;try{d[p]()}catch(r){}m.event.triggered=void 0,l&&(d[g]=l)}return b.result}},dispatch:function(a){a=m.event.fix(a);var b,c,e,f,g,h=[],i=d.call(arguments),j=(m._data(this,"events")||{})[a.type]||[],k=m.event.special[a.type]||{};if(i[0]=a,a.delegateTarget=this,!k.preDispatch||k.preDispatch.call(this,a)!==!1){h=m.event.handlers.call(this,a,j),b=0;while((f=h[b++])&&!a.isPropagationStopped()){a.currentTarget=f.elem,g=0;while((e=f.handlers[g++])&&!a.isImmediatePropagationStopped())(!a.namespace_re||a.namespace_re.test(e.namespace))&&(a.handleObj=e,a.data=e.data,c=((m.event.special[e.origType]||{}).handle||e.handler).apply(f.elem,i),void 0!==c&&(a.result=c)===!1&&(a.preventDefault(),a.stopPropagation()))}return k.postDispatch&&k.postDispatch.call(this,a),a.result}},handlers:function(a,b){var c,d,e,f,g=[],h=b.delegateCount,i=a.target;if(h&&i.nodeType&&(!a.button||"click"!==a.type))for(;i!=this;i=i.parentNode||this)if(1===i.nodeType&&(i.disabled!==!0||"click"!==a.type)){for(e=[],f=0;h>f;f++)d=b[f],c=d.selector+" ",void 0===e[c]&&(e[c]=d.needsContext?m(c,this).index(i)>=0:m.find(c,this,null,[i]).length),e[c]&&e.push(d);e.length&&g.push({elem:i,handlers:e})}return h<b.length&&g.push({elem:this,handlers:b.slice(h)}),g},fix:function(a){if(a[m.expando])return a;var b,c,d,e=a.type,f=a,g=this.fixHooks[e];g||(this.fixHooks[e]=g=Z.test(e)?this.mouseHooks:Y.test(e)?this.keyHooks:{}),d=g.props?this.props.concat(g.props):this.props,a=new m.Event(f),b=d.length;while(b--)c=d[b],a[c]=f[c];return a.target||(a.target=f.srcElement||y),3===a.target.nodeType&&(a.target=a.target.parentNode),a.metaKey=!!a.metaKey,g.filter?g.filter(a,f):a},props:"altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(a,b){return null==a.which&&(a.which=null!=b.charCode?b.charCode:b.keyCode),a}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(a,b){var c,d,e,f=b.button,g=b.fromElement;return null==a.pageX&&null!=b.clientX&&(d=a.target.ownerDocument||y,e=d.documentElement,c=d.body,a.pageX=b.clientX+(e&&e.scrollLeft||c&&c.scrollLeft||0)-(e&&e.clientLeft||c&&c.clientLeft||0),a.pageY=b.clientY+(e&&e.scrollTop||c&&c.scrollTop||0)-(e&&e.clientTop||c&&c.clientTop||0)),!a.relatedTarget&&g&&(a.relatedTarget=g===a.target?b.toElement:g),a.which||void 0===f||(a.which=1&f?1:2&f?3:4&f?2:0),a}},special:{load:{noBubble:!0},focus:{trigger:function(){if(this!==cb()&&this.focus)try{return this.focus(),!1}catch(a){}},delegateType:"focusin"},blur:{trigger:function(){return this===cb()&&this.blur?(this.blur(),!1):void 0},delegateType:"focusout"},click:{trigger:function(){return m.nodeName(this,"input")&&"checkbox"===this.type&&this.click?(this.click(),!1):void 0},_default:function(a){return m.nodeName(a.target,"a")}},beforeunload:{postDispatch:function(a){void 0!==a.result&&a.originalEvent&&(a.originalEvent.returnValue=a.result)}}},simulate:function(a,b,c,d){var e=m.extend(new m.Event,c,{type:a,isSimulated:!0,originalEvent:{}});d?m.event.trigger(e,null,b):m.event.dispatch.call(b,e),e.isDefaultPrevented()&&c.preventDefault()}},m.removeEvent=y.removeEventListener?function(a,b,c){a.removeEventListener&&a.removeEventListener(b,c,!1)}:function(a,b,c){var d="on"+b;a.detachEvent&&(typeof a[d]===K&&(a[d]=null),a.detachEvent(d,c))},m.Event=function(a,b){return this instanceof m.Event?(a&&a.type?(this.originalEvent=a,this.type=a.type,this.isDefaultPrevented=a.defaultPrevented||void 0===a.defaultPrevented&&a.returnValue===!1?ab:bb):this.type=a,b&&m.extend(this,b),this.timeStamp=a&&a.timeStamp||m.now(),void(this[m.expando]=!0)):new m.Event(a,b)},m.Event.prototype={isDefaultPrevented:bb,isPropagationStopped:bb,isImmediatePropagationStopped:bb,preventDefault:function(){var a=this.originalEvent;this.isDefaultPrevented=ab,a&&(a.preventDefault?a.preventDefault():a.returnValue=!1)},stopPropagation:function(){var a=this.originalEvent;this.isPropagationStopped=ab,a&&(a.stopPropagation&&a.stopPropagation(),a.cancelBubble=!0)},stopImmediatePropagation:function(){var a=this.originalEvent;this.isImmediatePropagationStopped=ab,a&&a.stopImmediatePropagation&&a.stopImmediatePropagation(),this.stopPropagation()}},m.each({mouseenter:"mouseover",mouseleave:"mouseout",pointerenter:"pointerover",pointerleave:"pointerout"},function(a,b){m.event.special[a]={delegateType:b,bindType:b,handle:function(a){var c,d=this,e=a.relatedTarget,f=a.handleObj;return(!e||e!==d&&!m.contains(d,e))&&(a.type=f.origType,c=f.handler.apply(this,arguments),a.type=b),c}}}),k.submitBubbles||(m.event.special.submit={setup:function(){return m.nodeName(this,"form")?!1:void m.event.add(this,"click._submit keypress._submit",function(a){var b=a.target,c=m.nodeName(b,"input")||m.nodeName(b,"button")?b.form:void 0;c&&!m._data(c,"submitBubbles")&&(m.event.add(c,"submit._submit",function(a){a._submit_bubble=!0}),m._data(c,"submitBubbles",!0))})},postDispatch:function(a){a._submit_bubble&&(delete a._submit_bubble,this.parentNode&&!a.isTrigger&&m.event.simulate("submit",this.parentNode,a,!0))},teardown:function(){return m.nodeName(this,"form")?!1:void m.event.remove(this,"._submit")}}),k.changeBubbles||(m.event.special.change={setup:function(){return X.test(this.nodeName)?(("checkbox"===this.type||"radio"===this.type)&&(m.event.add(this,"propertychange._change",function(a){"checked"===a.originalEvent.propertyName&&(this._just_changed=!0)}),m.event.add(this,"click._change",function(a){this._just_changed&&!a.isTrigger&&(this._just_changed=!1),m.event.simulate("change",this,a,!0)})),!1):void m.event.add(this,"beforeactivate._change",function(a){var b=a.target;X.test(b.nodeName)&&!m._data(b,"changeBubbles")&&(m.event.add(b,"change._change",function(a){!this.parentNode||a.isSimulated||a.isTrigger||m.event.simulate("change",this.parentNode,a,!0)}),m._data(b,"changeBubbles",!0))})},handle:function(a){var b=a.target;return this!==b||a.isSimulated||a.isTrigger||"radio"!==b.type&&"checkbox"!==b.type?a.handleObj.handler.apply(this,arguments):void 0},teardown:function(){return m.event.remove(this,"._change"),!X.test(this.nodeName)}}),k.focusinBubbles||m.each({focus:"focusin",blur:"focusout"},function(a,b){var c=function(a){m.event.simulate(b,a.target,m.event.fix(a),!0)};m.event.special[b]={setup:function(){var d=this.ownerDocument||this,e=m._data(d,b);e||d.addEventListener(a,c,!0),m._data(d,b,(e||0)+1)},teardown:function(){var d=this.ownerDocument||this,e=m._data(d,b)-1;e?m._data(d,b,e):(d.removeEventListener(a,c,!0),m._removeData(d,b))}}}),m.fn.extend({on:function(a,b,c,d,e){var f,g;if("object"==typeof a){"string"!=typeof b&&(c=c||b,b=void 0);for(f in a)this.on(f,b,c,a[f],e);return this}if(null==c&&null==d?(d=b,c=b=void 0):null==d&&("string"==typeof b?(d=c,c=void 0):(d=c,c=b,b=void 0)),d===!1)d=bb;else if(!d)return this;return 1===e&&(g=d,d=function(a){return m().off(a),g.apply(this,arguments)},d.guid=g.guid||(g.guid=m.guid++)),this.each(function(){m.event.add(this,a,d,c,b)})},one:function(a,b,c,d){return this.on(a,b,c,d,1)},off:function(a,b,c){var d,e;if(a&&a.preventDefault&&a.handleObj)return d=a.handleObj,m(a.delegateTarget).off(d.namespace?d.origType+"."+d.namespace:d.origType,d.selector,d.handler),this;if("object"==typeof a){for(e in a)this.off(e,b,a[e]);return this}return(b===!1||"function"==typeof b)&&(c=b,b=void 0),c===!1&&(c=bb),this.each(function(){m.event.remove(this,a,c,b)})},trigger:function(a,b){return this.each(function(){m.event.trigger(a,b,this)})},triggerHandler:function(a,b){var c=this[0];return c?m.event.trigger(a,b,c,!0):void 0}});function db(a){var b=eb.split("|"),c=a.createDocumentFragment();if(c.createElement)while(b.length)c.createElement(b.pop());return c}var eb="abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",fb=/ jQuery\d+="(?:null|\d+)"/g,gb=new RegExp("<(?:"+eb+")[\\s/>]","i"),hb=/^\s+/,ib=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,jb=/<([\w:]+)/,kb=/<tbody/i,lb=/<|&#?\w+;/,mb=/<(?:script|style|link)/i,nb=/checked\s*(?:[^=]|=\s*.checked.)/i,ob=/^$|\/(?:java|ecma)script/i,pb=/^true\/(.*)/,qb=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g,rb={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],area:[1,"<map>","</map>"],param:[1,"<object>","</object>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:k.htmlSerialize?[0,"",""]:[1,"X<div>","</div>"]},sb=db(y),tb=sb.appendChild(y.createElement("div"));rb.optgroup=rb.option,rb.tbody=rb.tfoot=rb.colgroup=rb.caption=rb.thead,rb.th=rb.td;function ub(a,b){var c,d,e=0,f=typeof a.getElementsByTagName!==K?a.getElementsByTagName(b||"*"):typeof a.querySelectorAll!==K?a.querySelectorAll(b||"*"):void 0;if(!f)for(f=[],c=a.childNodes||a;null!=(d=c[e]);e++)!b||m.nodeName(d,b)?f.push(d):m.merge(f,ub(d,b));return void 0===b||b&&m.nodeName(a,b)?m.merge([a],f):f}function vb(a){W.test(a.type)&&(a.defaultChecked=a.checked)}function wb(a,b){return m.nodeName(a,"table")&&m.nodeName(11!==b.nodeType?b:b.firstChild,"tr")?a.getElementsByTagName("tbody")[0]||a.appendChild(a.ownerDocument.createElement("tbody")):a}function xb(a){return a.type=(null!==m.find.attr(a,"type"))+"/"+a.type,a}function yb(a){var b=pb.exec(a.type);return b?a.type=b[1]:a.removeAttribute("type"),a}function zb(a,b){for(var c,d=0;null!=(c=a[d]);d++)m._data(c,"globalEval",!b||m._data(b[d],"globalEval"))}function Ab(a,b){if(1===b.nodeType&&m.hasData(a)){var c,d,e,f=m._data(a),g=m._data(b,f),h=f.events;if(h){delete g.handle,g.events={};for(c in h)for(d=0,e=h[c].length;e>d;d++)m.event.add(b,c,h[c][d])}g.data&&(g.data=m.extend({},g.data))}}function Bb(a,b){var c,d,e;if(1===b.nodeType){if(c=b.nodeName.toLowerCase(),!k.noCloneEvent&&b[m.expando]){e=m._data(b);for(d in e.events)m.removeEvent(b,d,e.handle);b.removeAttribute(m.expando)}"script"===c&&b.text!==a.text?(xb(b).text=a.text,yb(b)):"object"===c?(b.parentNode&&(b.outerHTML=a.outerHTML),k.html5Clone&&a.innerHTML&&!m.trim(b.innerHTML)&&(b.innerHTML=a.innerHTML)):"input"===c&&W.test(a.type)?(b.defaultChecked=b.checked=a.checked,b.value!==a.value&&(b.value=a.value)):"option"===c?b.defaultSelected=b.selected=a.defaultSelected:("input"===c||"textarea"===c)&&(b.defaultValue=a.defaultValue)}}m.extend({clone:function(a,b,c){var d,e,f,g,h,i=m.contains(a.ownerDocument,a);if(k.html5Clone||m.isXMLDoc(a)||!gb.test("<"+a.nodeName+">")?f=a.cloneNode(!0):(tb.innerHTML=a.outerHTML,tb.removeChild(f=tb.firstChild)),!(k.noCloneEvent&&k.noCloneChecked||1!==a.nodeType&&11!==a.nodeType||m.isXMLDoc(a)))for(d=ub(f),h=ub(a),g=0;null!=(e=h[g]);++g)d[g]&&Bb(e,d[g]);if(b)if(c)for(h=h||ub(a),d=d||ub(f),g=0;null!=(e=h[g]);g++)Ab(e,d[g]);else Ab(a,f);return d=ub(f,"script"),d.length>0&&zb(d,!i&&ub(a,"script")),d=h=e=null,f},buildFragment:function(a,b,c,d){for(var e,f,g,h,i,j,l,n=a.length,o=db(b),p=[],q=0;n>q;q++)if(f=a[q],f||0===f)if("object"===m.type(f))m.merge(p,f.nodeType?[f]:f);else if(lb.test(f)){h=h||o.appendChild(b.createElement("div")),i=(jb.exec(f)||["",""])[1].toLowerCase(),l=rb[i]||rb._default,h.innerHTML=l[1]+f.replace(ib,"<$1></$2>")+l[2],e=l[0];while(e--)h=h.lastChild;if(!k.leadingWhitespace&&hb.test(f)&&p.push(b.createTextNode(hb.exec(f)[0])),!k.tbody){f="table"!==i||kb.test(f)?"<table>"!==l[1]||kb.test(f)?0:h:h.firstChild,e=f&&f.childNodes.length;while(e--)m.nodeName(j=f.childNodes[e],"tbody")&&!j.childNodes.length&&f.removeChild(j)}m.merge(p,h.childNodes),h.textContent="";while(h.firstChild)h.removeChild(h.firstChild);h=o.lastChild}else p.push(b.createTextNode(f));h&&o.removeChild(h),k.appendChecked||m.grep(ub(p,"input"),vb),q=0;while(f=p[q++])if((!d||-1===m.inArray(f,d))&&(g=m.contains(f.ownerDocument,f),h=ub(o.appendChild(f),"script"),g&&zb(h),c)){e=0;while(f=h[e++])ob.test(f.type||"")&&c.push(f)}return h=null,o},cleanData:function(a,b){for(var d,e,f,g,h=0,i=m.expando,j=m.cache,l=k.deleteExpando,n=m.event.special;null!=(d=a[h]);h++)if((b||m.acceptData(d))&&(f=d[i],g=f&&j[f])){if(g.events)for(e in g.events)n[e]?m.event.remove(d,e):m.removeEvent(d,e,g.handle);j[f]&&(delete j[f],l?delete d[i]:typeof d.removeAttribute!==K?d.removeAttribute(i):d[i]=null,c.push(f))}}}),m.fn.extend({text:function(a){return V(this,function(a){return void 0===a?m.text(this):this.empty().append((this[0]&&this[0].ownerDocument||y).createTextNode(a))},null,a,arguments.length)},append:function(){return this.domManip(arguments,function(a){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var b=wb(this,a);b.appendChild(a)}})},prepend:function(){return this.domManip(arguments,function(a){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var b=wb(this,a);b.insertBefore(a,b.firstChild)}})},before:function(){return this.domManip(arguments,function(a){this.parentNode&&this.parentNode.insertBefore(a,this)})},after:function(){return this.domManip(arguments,function(a){this.parentNode&&this.parentNode.insertBefore(a,this.nextSibling)})},remove:function(a,b){for(var c,d=a?m.filter(a,this):this,e=0;null!=(c=d[e]);e++)b||1!==c.nodeType||m.cleanData(ub(c)),c.parentNode&&(b&&m.contains(c.ownerDocument,c)&&zb(ub(c,"script")),c.parentNode.removeChild(c));return this},empty:function(){for(var a,b=0;null!=(a=this[b]);b++){1===a.nodeType&&m.cleanData(ub(a,!1));while(a.firstChild)a.removeChild(a.firstChild);a.options&&m.nodeName(a,"select")&&(a.options.length=0)}return this},clone:function(a,b){return a=null==a?!1:a,b=null==b?a:b,this.map(function(){return m.clone(this,a,b)})},html:function(a){return V(this,function(a){var b=this[0]||{},c=0,d=this.length;if(void 0===a)return 1===b.nodeType?b.innerHTML.replace(fb,""):void 0;if(!("string"!=typeof a||mb.test(a)||!k.htmlSerialize&&gb.test(a)||!k.leadingWhitespace&&hb.test(a)||rb[(jb.exec(a)||["",""])[1].toLowerCase()])){a=a.replace(ib,"<$1></$2>");try{for(;d>c;c++)b=this[c]||{},1===b.nodeType&&(m.cleanData(ub(b,!1)),b.innerHTML=a);b=0}catch(e){}}b&&this.empty().append(a)},null,a,arguments.length)},replaceWith:function(){var a=arguments[0];return this.domManip(arguments,function(b){a=this.parentNode,m.cleanData(ub(this)),a&&a.replaceChild(b,this)}),a&&(a.length||a.nodeType)?this:this.remove()},detach:function(a){return this.remove(a,!0)},domManip:function(a,b){a=e.apply([],a);var c,d,f,g,h,i,j=0,l=this.length,n=this,o=l-1,p=a[0],q=m.isFunction(p);if(q||l>1&&"string"==typeof p&&!k.checkClone&&nb.test(p))return this.each(function(c){var d=n.eq(c);q&&(a[0]=p.call(this,c,d.html())),d.domManip(a,b)});if(l&&(i=m.buildFragment(a,this[0].ownerDocument,!1,this),c=i.firstChild,1===i.childNodes.length&&(i=c),c)){for(g=m.map(ub(i,"script"),xb),f=g.length;l>j;j++)d=i,j!==o&&(d=m.clone(d,!0,!0),f&&m.merge(g,ub(d,"script"))),b.call(this[j],d,j);if(f)for(h=g[g.length-1].ownerDocument,m.map(g,yb),j=0;f>j;j++)d=g[j],ob.test(d.type||"")&&!m._data(d,"globalEval")&&m.contains(h,d)&&(d.src?m._evalUrl&&m._evalUrl(d.src):m.globalEval((d.text||d.textContent||d.innerHTML||"").replace(qb,"")));i=c=null}return this}}),m.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(a,b){m.fn[a]=function(a){for(var c,d=0,e=[],g=m(a),h=g.length-1;h>=d;d++)c=d===h?this:this.clone(!0),m(g[d])[b](c),f.apply(e,c.get());return this.pushStack(e)}});var Cb,Db={};function Eb(b,c){var d,e=m(c.createElement(b)).appendTo(c.body),f=a.getDefaultComputedStyle&&(d=a.getDefaultComputedStyle(e[0]))?d.display:m.css(e[0],"display");return e.detach(),f}function Fb(a){var b=y,c=Db[a];return c||(c=Eb(a,b),"none"!==c&&c||(Cb=(Cb||m("<iframe frameborder='0' width='0' height='0'/>")).appendTo(b.documentElement),b=(Cb[0].contentWindow||Cb[0].contentDocument).document,b.write(),b.close(),c=Eb(a,b),Cb.detach()),Db[a]=c),c}!function(){var a;k.shrinkWrapBlocks=function(){if(null!=a)return a;a=!1;var b,c,d;return c=y.getElementsByTagName("body")[0],c&&c.style?(b=y.createElement("div"),d=y.createElement("div"),d.style.cssText="position:absolute;border:0;width:0;height:0;top:0;left:-9999px",c.appendChild(d).appendChild(b),typeof b.style.zoom!==K&&(b.style.cssText="-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;margin:0;border:0;padding:1px;width:1px;zoom:1",b.appendChild(y.createElement("div")).style.width="5px",a=3!==b.offsetWidth),c.removeChild(d),a):void 0}}();var Gb=/^margin/,Hb=new RegExp("^("+S+")(?!px)[a-z%]+$","i"),Ib,Jb,Kb=/^(top|right|bottom|left)$/;a.getComputedStyle?(Ib=function(b){return b.ownerDocument.defaultView.opener?b.ownerDocument.defaultView.getComputedStyle(b,null):a.getComputedStyle(b,null)},Jb=function(a,b,c){var d,e,f,g,h=a.style;return c=c||Ib(a),g=c?c.getPropertyValue(b)||c[b]:void 0,c&&(""!==g||m.contains(a.ownerDocument,a)||(g=m.style(a,b)),Hb.test(g)&&Gb.test(b)&&(d=h.width,e=h.minWidth,f=h.maxWidth,h.minWidth=h.maxWidth=h.width=g,g=c.width,h.width=d,h.minWidth=e,h.maxWidth=f)),void 0===g?g:g+""}):y.documentElement.currentStyle&&(Ib=function(a){return a.currentStyle},Jb=function(a,b,c){var d,e,f,g,h=a.style;return c=c||Ib(a),g=c?c[b]:void 0,null==g&&h&&h[b]&&(g=h[b]),Hb.test(g)&&!Kb.test(b)&&(d=h.left,e=a.runtimeStyle,f=e&&e.left,f&&(e.left=a.currentStyle.left),h.left="fontSize"===b?"1em":g,g=h.pixelLeft+"px",h.left=d,f&&(e.left=f)),void 0===g?g:g+""||"auto"});function Lb(a,b){return{get:function(){var c=a();if(null!=c)return c?void delete this.get:(this.get=b).apply(this,arguments)}}}!function(){var b,c,d,e,f,g,h;if(b=y.createElement("div"),b.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",d=b.getElementsByTagName("a")[0],c=d&&d.style){c.cssText="float:left;opacity:.5",k.opacity="0.5"===c.opacity,k.cssFloat=!!c.cssFloat,b.style.backgroundClip="content-box",b.cloneNode(!0).style.backgroundClip="",k.clearCloneStyle="content-box"===b.style.backgroundClip,k.boxSizing=""===c.boxSizing||""===c.MozBoxSizing||""===c.WebkitBoxSizing,m.extend(k,{reliableHiddenOffsets:function(){return null==g&&i(),g},boxSizingReliable:function(){return null==f&&i(),f},pixelPosition:function(){return null==e&&i(),e},reliableMarginRight:function(){return null==h&&i(),h}});function i(){var b,c,d,i;c=y.getElementsByTagName("body")[0],c&&c.style&&(b=y.createElement("div"),d=y.createElement("div"),d.style.cssText="position:absolute;border:0;width:0;height:0;top:0;left:-9999px",c.appendChild(d).appendChild(b),b.style.cssText="-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;display:block;margin-top:1%;top:1%;border:1px;padding:1px;width:4px;position:absolute",e=f=!1,h=!0,a.getComputedStyle&&(e="1%"!==(a.getComputedStyle(b,null)||{}).top,f="4px"===(a.getComputedStyle(b,null)||{width:"4px"}).width,i=b.appendChild(y.createElement("div")),i.style.cssText=b.style.cssText="-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;margin:0;border:0;padding:0",i.style.marginRight=i.style.width="0",b.style.width="1px",h=!parseFloat((a.getComputedStyle(i,null)||{}).marginRight),b.removeChild(i)),b.innerHTML="<table><tr><td></td><td>t</td></tr></table>",i=b.getElementsByTagName("td"),i[0].style.cssText="margin:0;border:0;padding:0;display:none",g=0===i[0].offsetHeight,g&&(i[0].style.display="",i[1].style.display="none",g=0===i[0].offsetHeight),c.removeChild(d))}}}(),m.swap=function(a,b,c,d){var e,f,g={};for(f in b)g[f]=a.style[f],a.style[f]=b[f];e=c.apply(a,d||[]);for(f in b)a.style[f]=g[f];return e};var Mb=/alpha\([^)]*\)/i,Nb=/opacity\s*=\s*([^)]*)/,Ob=/^(none|table(?!-c[ea]).+)/,Pb=new RegExp("^("+S+")(.*)$","i"),Qb=new RegExp("^([+-])=("+S+")","i"),Rb={position:"absolute",visibility:"hidden",display:"block"},Sb={letterSpacing:"0",fontWeight:"400"},Tb=["Webkit","O","Moz","ms"];function Ub(a,b){if(b in a)return b;var c=b.charAt(0).toUpperCase()+b.slice(1),d=b,e=Tb.length;while(e--)if(b=Tb[e]+c,b in a)return b;return d}function Vb(a,b){for(var c,d,e,f=[],g=0,h=a.length;h>g;g++)d=a[g],d.style&&(f[g]=m._data(d,"olddisplay"),c=d.style.display,b?(f[g]||"none"!==c||(d.style.display=""),""===d.style.display&&U(d)&&(f[g]=m._data(d,"olddisplay",Fb(d.nodeName)))):(e=U(d),(c&&"none"!==c||!e)&&m._data(d,"olddisplay",e?c:m.css(d,"display"))));for(g=0;h>g;g++)d=a[g],d.style&&(b&&"none"!==d.style.display&&""!==d.style.display||(d.style.display=b?f[g]||"":"none"));return a}function Wb(a,b,c){var d=Pb.exec(b);return d?Math.max(0,d[1]-(c||0))+(d[2]||"px"):b}function Xb(a,b,c,d,e){for(var f=c===(d?"border":"content")?4:"width"===b?1:0,g=0;4>f;f+=2)"margin"===c&&(g+=m.css(a,c+T[f],!0,e)),d?("content"===c&&(g-=m.css(a,"padding"+T[f],!0,e)),"margin"!==c&&(g-=m.css(a,"border"+T[f]+"Width",!0,e))):(g+=m.css(a,"padding"+T[f],!0,e),"padding"!==c&&(g+=m.css(a,"border"+T[f]+"Width",!0,e)));return g}function Yb(a,b,c){var d=!0,e="width"===b?a.offsetWidth:a.offsetHeight,f=Ib(a),g=k.boxSizing&&"border-box"===m.css(a,"boxSizing",!1,f);if(0>=e||null==e){if(e=Jb(a,b,f),(0>e||null==e)&&(e=a.style[b]),Hb.test(e))return e;d=g&&(k.boxSizingReliable()||e===a.style[b]),e=parseFloat(e)||0}return e+Xb(a,b,c||(g?"border":"content"),d,f)+"px"}m.extend({cssHooks:{opacity:{get:function(a,b){if(b){var c=Jb(a,"opacity");return""===c?"1":c}}}},cssNumber:{columnCount:!0,fillOpacity:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":k.cssFloat?"cssFloat":"styleFloat"},style:function(a,b,c,d){if(a&&3!==a.nodeType&&8!==a.nodeType&&a.style){var e,f,g,h=m.camelCase(b),i=a.style;if(b=m.cssProps[h]||(m.cssProps[h]=Ub(i,h)),g=m.cssHooks[b]||m.cssHooks[h],void 0===c)return g&&"get"in g&&void 0!==(e=g.get(a,!1,d))?e:i[b];if(f=typeof c,"string"===f&&(e=Qb.exec(c))&&(c=(e[1]+1)*e[2]+parseFloat(m.css(a,b)),f="number"),null!=c&&c===c&&("number"!==f||m.cssNumber[h]||(c+="px"),k.clearCloneStyle||""!==c||0!==b.indexOf("background")||(i[b]="inherit"),!(g&&"set"in g&&void 0===(c=g.set(a,c,d)))))try{i[b]=c}catch(j){}}},css:function(a,b,c,d){var e,f,g,h=m.camelCase(b);return b=m.cssProps[h]||(m.cssProps[h]=Ub(a.style,h)),g=m.cssHooks[b]||m.cssHooks[h],g&&"get"in g&&(f=g.get(a,!0,c)),void 0===f&&(f=Jb(a,b,d)),"normal"===f&&b in Sb&&(f=Sb[b]),""===c||c?(e=parseFloat(f),c===!0||m.isNumeric(e)?e||0:f):f}}),m.each(["height","width"],function(a,b){m.cssHooks[b]={get:function(a,c,d){return c?Ob.test(m.css(a,"display"))&&0===a.offsetWidth?m.swap(a,Rb,function(){return Yb(a,b,d)}):Yb(a,b,d):void 0},set:function(a,c,d){var e=d&&Ib(a);return Wb(a,c,d?Xb(a,b,d,k.boxSizing&&"border-box"===m.css(a,"boxSizing",!1,e),e):0)}}}),k.opacity||(m.cssHooks.opacity={get:function(a,b){return Nb.test((b&&a.currentStyle?a.currentStyle.filter:a.style.filter)||"")?.01*parseFloat(RegExp.$1)+"":b?"1":""},set:function(a,b){var c=a.style,d=a.currentStyle,e=m.isNumeric(b)?"alpha(opacity="+100*b+")":"",f=d&&d.filter||c.filter||"";c.zoom=1,(b>=1||""===b)&&""===m.trim(f.replace(Mb,""))&&c.removeAttribute&&(c.removeAttribute("filter"),""===b||d&&!d.filter)||(c.filter=Mb.test(f)?f.replace(Mb,e):f+" "+e)}}),m.cssHooks.marginRight=Lb(k.reliableMarginRight,function(a,b){return b?m.swap(a,{display:"inline-block"},Jb,[a,"marginRight"]):void 0}),m.each({margin:"",padding:"",border:"Width"},function(a,b){m.cssHooks[a+b]={expand:function(c){for(var d=0,e={},f="string"==typeof c?c.split(" "):[c];4>d;d++)e[a+T[d]+b]=f[d]||f[d-2]||f[0];return e}},Gb.test(a)||(m.cssHooks[a+b].set=Wb)}),m.fn.extend({css:function(a,b){return V(this,function(a,b,c){var d,e,f={},g=0;if(m.isArray(b)){for(d=Ib(a),e=b.length;e>g;g++)f[b[g]]=m.css(a,b[g],!1,d);return f}return void 0!==c?m.style(a,b,c):m.css(a,b)},a,b,arguments.length>1)},show:function(){return Vb(this,!0)},hide:function(){return Vb(this)},toggle:function(a){return"boolean"==typeof a?a?this.show():this.hide():this.each(function(){U(this)?m(this).show():m(this).hide()})}});function Zb(a,b,c,d,e){return new Zb.prototype.init(a,b,c,d,e)
}m.Tween=Zb,Zb.prototype={constructor:Zb,init:function(a,b,c,d,e,f){this.elem=a,this.prop=c,this.easing=e||"swing",this.options=b,this.start=this.now=this.cur(),this.end=d,this.unit=f||(m.cssNumber[c]?"":"px")},cur:function(){var a=Zb.propHooks[this.prop];return a&&a.get?a.get(this):Zb.propHooks._default.get(this)},run:function(a){var b,c=Zb.propHooks[this.prop];return this.pos=b=this.options.duration?m.easing[this.easing](a,this.options.duration*a,0,1,this.options.duration):a,this.now=(this.end-this.start)*b+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),c&&c.set?c.set(this):Zb.propHooks._default.set(this),this}},Zb.prototype.init.prototype=Zb.prototype,Zb.propHooks={_default:{get:function(a){var b;return null==a.elem[a.prop]||a.elem.style&&null!=a.elem.style[a.prop]?(b=m.css(a.elem,a.prop,""),b&&"auto"!==b?b:0):a.elem[a.prop]},set:function(a){m.fx.step[a.prop]?m.fx.step[a.prop](a):a.elem.style&&(null!=a.elem.style[m.cssProps[a.prop]]||m.cssHooks[a.prop])?m.style(a.elem,a.prop,a.now+a.unit):a.elem[a.prop]=a.now}}},Zb.propHooks.scrollTop=Zb.propHooks.scrollLeft={set:function(a){a.elem.nodeType&&a.elem.parentNode&&(a.elem[a.prop]=a.now)}},m.easing={linear:function(a){return a},swing:function(a){return.5-Math.cos(a*Math.PI)/2}},m.fx=Zb.prototype.init,m.fx.step={};var $b,_b,ac=/^(?:toggle|show|hide)$/,bc=new RegExp("^(?:([+-])=|)("+S+")([a-z%]*)$","i"),cc=/queueHooks$/,dc=[ic],ec={"*":[function(a,b){var c=this.createTween(a,b),d=c.cur(),e=bc.exec(b),f=e&&e[3]||(m.cssNumber[a]?"":"px"),g=(m.cssNumber[a]||"px"!==f&&+d)&&bc.exec(m.css(c.elem,a)),h=1,i=20;if(g&&g[3]!==f){f=f||g[3],e=e||[],g=+d||1;do h=h||".5",g/=h,m.style(c.elem,a,g+f);while(h!==(h=c.cur()/d)&&1!==h&&--i)}return e&&(g=c.start=+g||+d||0,c.unit=f,c.end=e[1]?g+(e[1]+1)*e[2]:+e[2]),c}]};function fc(){return setTimeout(function(){$b=void 0}),$b=m.now()}function gc(a,b){var c,d={height:a},e=0;for(b=b?1:0;4>e;e+=2-b)c=T[e],d["margin"+c]=d["padding"+c]=a;return b&&(d.opacity=d.width=a),d}function hc(a,b,c){for(var d,e=(ec[b]||[]).concat(ec["*"]),f=0,g=e.length;g>f;f++)if(d=e[f].call(c,b,a))return d}function ic(a,b,c){var d,e,f,g,h,i,j,l,n=this,o={},p=a.style,q=a.nodeType&&U(a),r=m._data(a,"fxshow");c.queue||(h=m._queueHooks(a,"fx"),null==h.unqueued&&(h.unqueued=0,i=h.empty.fire,h.empty.fire=function(){h.unqueued||i()}),h.unqueued++,n.always(function(){n.always(function(){h.unqueued--,m.queue(a,"fx").length||h.empty.fire()})})),1===a.nodeType&&("height"in b||"width"in b)&&(c.overflow=[p.overflow,p.overflowX,p.overflowY],j=m.css(a,"display"),l="none"===j?m._data(a,"olddisplay")||Fb(a.nodeName):j,"inline"===l&&"none"===m.css(a,"float")&&(k.inlineBlockNeedsLayout&&"inline"!==Fb(a.nodeName)?p.zoom=1:p.display="inline-block")),c.overflow&&(p.overflow="hidden",k.shrinkWrapBlocks()||n.always(function(){p.overflow=c.overflow[0],p.overflowX=c.overflow[1],p.overflowY=c.overflow[2]}));for(d in b)if(e=b[d],ac.exec(e)){if(delete b[d],f=f||"toggle"===e,e===(q?"hide":"show")){if("show"!==e||!r||void 0===r[d])continue;q=!0}o[d]=r&&r[d]||m.style(a,d)}else j=void 0;if(m.isEmptyObject(o))"inline"===("none"===j?Fb(a.nodeName):j)&&(p.display=j);else{r?"hidden"in r&&(q=r.hidden):r=m._data(a,"fxshow",{}),f&&(r.hidden=!q),q?m(a).show():n.done(function(){m(a).hide()}),n.done(function(){var b;m._removeData(a,"fxshow");for(b in o)m.style(a,b,o[b])});for(d in o)g=hc(q?r[d]:0,d,n),d in r||(r[d]=g.start,q&&(g.end=g.start,g.start="width"===d||"height"===d?1:0))}}function jc(a,b){var c,d,e,f,g;for(c in a)if(d=m.camelCase(c),e=b[d],f=a[c],m.isArray(f)&&(e=f[1],f=a[c]=f[0]),c!==d&&(a[d]=f,delete a[c]),g=m.cssHooks[d],g&&"expand"in g){f=g.expand(f),delete a[d];for(c in f)c in a||(a[c]=f[c],b[c]=e)}else b[d]=e}function kc(a,b,c){var d,e,f=0,g=dc.length,h=m.Deferred().always(function(){delete i.elem}),i=function(){if(e)return!1;for(var b=$b||fc(),c=Math.max(0,j.startTime+j.duration-b),d=c/j.duration||0,f=1-d,g=0,i=j.tweens.length;i>g;g++)j.tweens[g].run(f);return h.notifyWith(a,[j,f,c]),1>f&&i?c:(h.resolveWith(a,[j]),!1)},j=h.promise({elem:a,props:m.extend({},b),opts:m.extend(!0,{specialEasing:{}},c),originalProperties:b,originalOptions:c,startTime:$b||fc(),duration:c.duration,tweens:[],createTween:function(b,c){var d=m.Tween(a,j.opts,b,c,j.opts.specialEasing[b]||j.opts.easing);return j.tweens.push(d),d},stop:function(b){var c=0,d=b?j.tweens.length:0;if(e)return this;for(e=!0;d>c;c++)j.tweens[c].run(1);return b?h.resolveWith(a,[j,b]):h.rejectWith(a,[j,b]),this}}),k=j.props;for(jc(k,j.opts.specialEasing);g>f;f++)if(d=dc[f].call(j,a,k,j.opts))return d;return m.map(k,hc,j),m.isFunction(j.opts.start)&&j.opts.start.call(a,j),m.fx.timer(m.extend(i,{elem:a,anim:j,queue:j.opts.queue})),j.progress(j.opts.progress).done(j.opts.done,j.opts.complete).fail(j.opts.fail).always(j.opts.always)}m.Animation=m.extend(kc,{tweener:function(a,b){m.isFunction(a)?(b=a,a=["*"]):a=a.split(" ");for(var c,d=0,e=a.length;e>d;d++)c=a[d],ec[c]=ec[c]||[],ec[c].unshift(b)},prefilter:function(a,b){b?dc.unshift(a):dc.push(a)}}),m.speed=function(a,b,c){var d=a&&"object"==typeof a?m.extend({},a):{complete:c||!c&&b||m.isFunction(a)&&a,duration:a,easing:c&&b||b&&!m.isFunction(b)&&b};return d.duration=m.fx.off?0:"number"==typeof d.duration?d.duration:d.duration in m.fx.speeds?m.fx.speeds[d.duration]:m.fx.speeds._default,(null==d.queue||d.queue===!0)&&(d.queue="fx"),d.old=d.complete,d.complete=function(){m.isFunction(d.old)&&d.old.call(this),d.queue&&m.dequeue(this,d.queue)},d},m.fn.extend({fadeTo:function(a,b,c,d){return this.filter(U).css("opacity",0).show().end().animate({opacity:b},a,c,d)},animate:function(a,b,c,d){var e=m.isEmptyObject(a),f=m.speed(b,c,d),g=function(){var b=kc(this,m.extend({},a),f);(e||m._data(this,"finish"))&&b.stop(!0)};return g.finish=g,e||f.queue===!1?this.each(g):this.queue(f.queue,g)},stop:function(a,b,c){var d=function(a){var b=a.stop;delete a.stop,b(c)};return"string"!=typeof a&&(c=b,b=a,a=void 0),b&&a!==!1&&this.queue(a||"fx",[]),this.each(function(){var b=!0,e=null!=a&&a+"queueHooks",f=m.timers,g=m._data(this);if(e)g[e]&&g[e].stop&&d(g[e]);else for(e in g)g[e]&&g[e].stop&&cc.test(e)&&d(g[e]);for(e=f.length;e--;)f[e].elem!==this||null!=a&&f[e].queue!==a||(f[e].anim.stop(c),b=!1,f.splice(e,1));(b||!c)&&m.dequeue(this,a)})},finish:function(a){return a!==!1&&(a=a||"fx"),this.each(function(){var b,c=m._data(this),d=c[a+"queue"],e=c[a+"queueHooks"],f=m.timers,g=d?d.length:0;for(c.finish=!0,m.queue(this,a,[]),e&&e.stop&&e.stop.call(this,!0),b=f.length;b--;)f[b].elem===this&&f[b].queue===a&&(f[b].anim.stop(!0),f.splice(b,1));for(b=0;g>b;b++)d[b]&&d[b].finish&&d[b].finish.call(this);delete c.finish})}}),m.each(["toggle","show","hide"],function(a,b){var c=m.fn[b];m.fn[b]=function(a,d,e){return null==a||"boolean"==typeof a?c.apply(this,arguments):this.animate(gc(b,!0),a,d,e)}}),m.each({slideDown:gc("show"),slideUp:gc("hide"),slideToggle:gc("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(a,b){m.fn[a]=function(a,c,d){return this.animate(b,a,c,d)}}),m.timers=[],m.fx.tick=function(){var a,b=m.timers,c=0;for($b=m.now();c<b.length;c++)a=b[c],a()||b[c]!==a||b.splice(c--,1);b.length||m.fx.stop(),$b=void 0},m.fx.timer=function(a){m.timers.push(a),a()?m.fx.start():m.timers.pop()},m.fx.interval=13,m.fx.start=function(){_b||(_b=setInterval(m.fx.tick,m.fx.interval))},m.fx.stop=function(){clearInterval(_b),_b=null},m.fx.speeds={slow:600,fast:200,_default:400},m.fn.delay=function(a,b){return a=m.fx?m.fx.speeds[a]||a:a,b=b||"fx",this.queue(b,function(b,c){var d=setTimeout(b,a);c.stop=function(){clearTimeout(d)}})},function(){var a,b,c,d,e;b=y.createElement("div"),b.setAttribute("className","t"),b.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",d=b.getElementsByTagName("a")[0],c=y.createElement("select"),e=c.appendChild(y.createElement("option")),a=b.getElementsByTagName("input")[0],d.style.cssText="top:1px",k.getSetAttribute="t"!==b.className,k.style=/top/.test(d.getAttribute("style")),k.hrefNormalized="/a"===d.getAttribute("href"),k.checkOn=!!a.value,k.optSelected=e.selected,k.enctype=!!y.createElement("form").enctype,c.disabled=!0,k.optDisabled=!e.disabled,a=y.createElement("input"),a.setAttribute("value",""),k.input=""===a.getAttribute("value"),a.value="t",a.setAttribute("type","radio"),k.radioValue="t"===a.value}();var lc=/\r/g;m.fn.extend({val:function(a){var b,c,d,e=this[0];{if(arguments.length)return d=m.isFunction(a),this.each(function(c){var e;1===this.nodeType&&(e=d?a.call(this,c,m(this).val()):a,null==e?e="":"number"==typeof e?e+="":m.isArray(e)&&(e=m.map(e,function(a){return null==a?"":a+""})),b=m.valHooks[this.type]||m.valHooks[this.nodeName.toLowerCase()],b&&"set"in b&&void 0!==b.set(this,e,"value")||(this.value=e))});if(e)return b=m.valHooks[e.type]||m.valHooks[e.nodeName.toLowerCase()],b&&"get"in b&&void 0!==(c=b.get(e,"value"))?c:(c=e.value,"string"==typeof c?c.replace(lc,""):null==c?"":c)}}}),m.extend({valHooks:{option:{get:function(a){var b=m.find.attr(a,"value");return null!=b?b:m.trim(m.text(a))}},select:{get:function(a){for(var b,c,d=a.options,e=a.selectedIndex,f="select-one"===a.type||0>e,g=f?null:[],h=f?e+1:d.length,i=0>e?h:f?e:0;h>i;i++)if(c=d[i],!(!c.selected&&i!==e||(k.optDisabled?c.disabled:null!==c.getAttribute("disabled"))||c.parentNode.disabled&&m.nodeName(c.parentNode,"optgroup"))){if(b=m(c).val(),f)return b;g.push(b)}return g},set:function(a,b){var c,d,e=a.options,f=m.makeArray(b),g=e.length;while(g--)if(d=e[g],m.inArray(m.valHooks.option.get(d),f)>=0)try{d.selected=c=!0}catch(h){d.scrollHeight}else d.selected=!1;return c||(a.selectedIndex=-1),e}}}}),m.each(["radio","checkbox"],function(){m.valHooks[this]={set:function(a,b){return m.isArray(b)?a.checked=m.inArray(m(a).val(),b)>=0:void 0}},k.checkOn||(m.valHooks[this].get=function(a){return null===a.getAttribute("value")?"on":a.value})});var mc,nc,oc=m.expr.attrHandle,pc=/^(?:checked|selected)$/i,qc=k.getSetAttribute,rc=k.input;m.fn.extend({attr:function(a,b){return V(this,m.attr,a,b,arguments.length>1)},removeAttr:function(a){return this.each(function(){m.removeAttr(this,a)})}}),m.extend({attr:function(a,b,c){var d,e,f=a.nodeType;if(a&&3!==f&&8!==f&&2!==f)return typeof a.getAttribute===K?m.prop(a,b,c):(1===f&&m.isXMLDoc(a)||(b=b.toLowerCase(),d=m.attrHooks[b]||(m.expr.match.bool.test(b)?nc:mc)),void 0===c?d&&"get"in d&&null!==(e=d.get(a,b))?e:(e=m.find.attr(a,b),null==e?void 0:e):null!==c?d&&"set"in d&&void 0!==(e=d.set(a,c,b))?e:(a.setAttribute(b,c+""),c):void m.removeAttr(a,b))},removeAttr:function(a,b){var c,d,e=0,f=b&&b.match(E);if(f&&1===a.nodeType)while(c=f[e++])d=m.propFix[c]||c,m.expr.match.bool.test(c)?rc&&qc||!pc.test(c)?a[d]=!1:a[m.camelCase("default-"+c)]=a[d]=!1:m.attr(a,c,""),a.removeAttribute(qc?c:d)},attrHooks:{type:{set:function(a,b){if(!k.radioValue&&"radio"===b&&m.nodeName(a,"input")){var c=a.value;return a.setAttribute("type",b),c&&(a.value=c),b}}}}}),nc={set:function(a,b,c){return b===!1?m.removeAttr(a,c):rc&&qc||!pc.test(c)?a.setAttribute(!qc&&m.propFix[c]||c,c):a[m.camelCase("default-"+c)]=a[c]=!0,c}},m.each(m.expr.match.bool.source.match(/\w+/g),function(a,b){var c=oc[b]||m.find.attr;oc[b]=rc&&qc||!pc.test(b)?function(a,b,d){var e,f;return d||(f=oc[b],oc[b]=e,e=null!=c(a,b,d)?b.toLowerCase():null,oc[b]=f),e}:function(a,b,c){return c?void 0:a[m.camelCase("default-"+b)]?b.toLowerCase():null}}),rc&&qc||(m.attrHooks.value={set:function(a,b,c){return m.nodeName(a,"input")?void(a.defaultValue=b):mc&&mc.set(a,b,c)}}),qc||(mc={set:function(a,b,c){var d=a.getAttributeNode(c);return d||a.setAttributeNode(d=a.ownerDocument.createAttribute(c)),d.value=b+="","value"===c||b===a.getAttribute(c)?b:void 0}},oc.id=oc.name=oc.coords=function(a,b,c){var d;return c?void 0:(d=a.getAttributeNode(b))&&""!==d.value?d.value:null},m.valHooks.button={get:function(a,b){var c=a.getAttributeNode(b);return c&&c.specified?c.value:void 0},set:mc.set},m.attrHooks.contenteditable={set:function(a,b,c){mc.set(a,""===b?!1:b,c)}},m.each(["width","height"],function(a,b){m.attrHooks[b]={set:function(a,c){return""===c?(a.setAttribute(b,"auto"),c):void 0}}})),k.style||(m.attrHooks.style={get:function(a){return a.style.cssText||void 0},set:function(a,b){return a.style.cssText=b+""}});var sc=/^(?:input|select|textarea|button|object)$/i,tc=/^(?:a|area)$/i;m.fn.extend({prop:function(a,b){return V(this,m.prop,a,b,arguments.length>1)},removeProp:function(a){return a=m.propFix[a]||a,this.each(function(){try{this[a]=void 0,delete this[a]}catch(b){}})}}),m.extend({propFix:{"for":"htmlFor","class":"className"},prop:function(a,b,c){var d,e,f,g=a.nodeType;if(a&&3!==g&&8!==g&&2!==g)return f=1!==g||!m.isXMLDoc(a),f&&(b=m.propFix[b]||b,e=m.propHooks[b]),void 0!==c?e&&"set"in e&&void 0!==(d=e.set(a,c,b))?d:a[b]=c:e&&"get"in e&&null!==(d=e.get(a,b))?d:a[b]},propHooks:{tabIndex:{get:function(a){var b=m.find.attr(a,"tabindex");return b?parseInt(b,10):sc.test(a.nodeName)||tc.test(a.nodeName)&&a.href?0:-1}}}}),k.hrefNormalized||m.each(["href","src"],function(a,b){m.propHooks[b]={get:function(a){return a.getAttribute(b,4)}}}),k.optSelected||(m.propHooks.selected={get:function(a){var b=a.parentNode;return b&&(b.selectedIndex,b.parentNode&&b.parentNode.selectedIndex),null}}),m.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){m.propFix[this.toLowerCase()]=this}),k.enctype||(m.propFix.enctype="encoding");var uc=/[\t\r\n\f]/g;m.fn.extend({addClass:function(a){var b,c,d,e,f,g,h=0,i=this.length,j="string"==typeof a&&a;if(m.isFunction(a))return this.each(function(b){m(this).addClass(a.call(this,b,this.className))});if(j)for(b=(a||"").match(E)||[];i>h;h++)if(c=this[h],d=1===c.nodeType&&(c.className?(" "+c.className+" ").replace(uc," "):" ")){f=0;while(e=b[f++])d.indexOf(" "+e+" ")<0&&(d+=e+" ");g=m.trim(d),c.className!==g&&(c.className=g)}return this},removeClass:function(a){var b,c,d,e,f,g,h=0,i=this.length,j=0===arguments.length||"string"==typeof a&&a;if(m.isFunction(a))return this.each(function(b){m(this).removeClass(a.call(this,b,this.className))});if(j)for(b=(a||"").match(E)||[];i>h;h++)if(c=this[h],d=1===c.nodeType&&(c.className?(" "+c.className+" ").replace(uc," "):"")){f=0;while(e=b[f++])while(d.indexOf(" "+e+" ")>=0)d=d.replace(" "+e+" "," ");g=a?m.trim(d):"",c.className!==g&&(c.className=g)}return this},toggleClass:function(a,b){var c=typeof a;return"boolean"==typeof b&&"string"===c?b?this.addClass(a):this.removeClass(a):this.each(m.isFunction(a)?function(c){m(this).toggleClass(a.call(this,c,this.className,b),b)}:function(){if("string"===c){var b,d=0,e=m(this),f=a.match(E)||[];while(b=f[d++])e.hasClass(b)?e.removeClass(b):e.addClass(b)}else(c===K||"boolean"===c)&&(this.className&&m._data(this,"__className__",this.className),this.className=this.className||a===!1?"":m._data(this,"__className__")||"")})},hasClass:function(a){for(var b=" "+a+" ",c=0,d=this.length;d>c;c++)if(1===this[c].nodeType&&(" "+this[c].className+" ").replace(uc," ").indexOf(b)>=0)return!0;return!1}}),m.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(a,b){m.fn[b]=function(a,c){return arguments.length>0?this.on(b,null,a,c):this.trigger(b)}}),m.fn.extend({hover:function(a,b){return this.mouseenter(a).mouseleave(b||a)},bind:function(a,b,c){return this.on(a,null,b,c)},unbind:function(a,b){return this.off(a,null,b)},delegate:function(a,b,c,d){return this.on(b,a,c,d)},undelegate:function(a,b,c){return 1===arguments.length?this.off(a,"**"):this.off(b,a||"**",c)}});var vc=m.now(),wc=/\?/,xc=/(,)|(\[|{)|(}|])|"(?:[^"\\\r\n]|\\["\\\/bfnrt]|\\u[\da-fA-F]{4})*"\s*:?|true|false|null|-?(?!0\d)\d+(?:\.\d+|)(?:[eE][+-]?\d+|)/g;m.parseJSON=function(b){if(a.JSON&&a.JSON.parse)return a.JSON.parse(b+"");var c,d=null,e=m.trim(b+"");return e&&!m.trim(e.replace(xc,function(a,b,e,f){return c&&b&&(d=0),0===d?a:(c=e||b,d+=!f-!e,"")}))?Function("return "+e)():m.error("Invalid JSON: "+b)},m.parseXML=function(b){var c,d;if(!b||"string"!=typeof b)return null;try{a.DOMParser?(d=new DOMParser,c=d.parseFromString(b,"text/xml")):(c=new ActiveXObject("Microsoft.XMLDOM"),c.async="false",c.loadXML(b))}catch(e){c=void 0}return c&&c.documentElement&&!c.getElementsByTagName("parsererror").length||m.error("Invalid XML: "+b),c};var yc,zc,Ac=/#.*$/,Bc=/([?&])_=[^&]*/,Cc=/^(.*?):[ \t]*([^\r\n]*)\r?$/gm,Dc=/^(?:about|app|app-storage|.+-extension|file|res|widget):$/,Ec=/^(?:GET|HEAD)$/,Fc=/^\/\//,Gc=/^([\w.+-]+:)(?:\/\/(?:[^\/?#]*@|)([^\/?#:]*)(?::(\d+)|)|)/,Hc={},Ic={},Jc="*/".concat("*");try{zc=location.href}catch(Kc){zc=y.createElement("a"),zc.href="",zc=zc.href}yc=Gc.exec(zc.toLowerCase())||[];function Lc(a){return function(b,c){"string"!=typeof b&&(c=b,b="*");var d,e=0,f=b.toLowerCase().match(E)||[];if(m.isFunction(c))while(d=f[e++])"+"===d.charAt(0)?(d=d.slice(1)||"*",(a[d]=a[d]||[]).unshift(c)):(a[d]=a[d]||[]).push(c)}}function Mc(a,b,c,d){var e={},f=a===Ic;function g(h){var i;return e[h]=!0,m.each(a[h]||[],function(a,h){var j=h(b,c,d);return"string"!=typeof j||f||e[j]?f?!(i=j):void 0:(b.dataTypes.unshift(j),g(j),!1)}),i}return g(b.dataTypes[0])||!e["*"]&&g("*")}function Nc(a,b){var c,d,e=m.ajaxSettings.flatOptions||{};for(d in b)void 0!==b[d]&&((e[d]?a:c||(c={}))[d]=b[d]);return c&&m.extend(!0,a,c),a}function Oc(a,b,c){var d,e,f,g,h=a.contents,i=a.dataTypes;while("*"===i[0])i.shift(),void 0===e&&(e=a.mimeType||b.getResponseHeader("Content-Type"));if(e)for(g in h)if(h[g]&&h[g].test(e)){i.unshift(g);break}if(i[0]in c)f=i[0];else{for(g in c){if(!i[0]||a.converters[g+" "+i[0]]){f=g;break}d||(d=g)}f=f||d}return f?(f!==i[0]&&i.unshift(f),c[f]):void 0}function Pc(a,b,c,d){var e,f,g,h,i,j={},k=a.dataTypes.slice();if(k[1])for(g in a.converters)j[g.toLowerCase()]=a.converters[g];f=k.shift();while(f)if(a.responseFields[f]&&(c[a.responseFields[f]]=b),!i&&d&&a.dataFilter&&(b=a.dataFilter(b,a.dataType)),i=f,f=k.shift())if("*"===f)f=i;else if("*"!==i&&i!==f){if(g=j[i+" "+f]||j["* "+f],!g)for(e in j)if(h=e.split(" "),h[1]===f&&(g=j[i+" "+h[0]]||j["* "+h[0]])){g===!0?g=j[e]:j[e]!==!0&&(f=h[0],k.unshift(h[1]));break}if(g!==!0)if(g&&a["throws"])b=g(b);else try{b=g(b)}catch(l){return{state:"parsererror",error:g?l:"No conversion from "+i+" to "+f}}}return{state:"success",data:b}}m.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:zc,type:"GET",isLocal:Dc.test(yc[1]),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":Jc,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":m.parseJSON,"text xml":m.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(a,b){return b?Nc(Nc(a,m.ajaxSettings),b):Nc(m.ajaxSettings,a)},ajaxPrefilter:Lc(Hc),ajaxTransport:Lc(Ic),ajax:function(a,b){"object"==typeof a&&(b=a,a=void 0),b=b||{};var c,d,e,f,g,h,i,j,k=m.ajaxSetup({},b),l=k.context||k,n=k.context&&(l.nodeType||l.jquery)?m(l):m.event,o=m.Deferred(),p=m.Callbacks("once memory"),q=k.statusCode||{},r={},s={},t=0,u="canceled",v={readyState:0,getResponseHeader:function(a){var b;if(2===t){if(!j){j={};while(b=Cc.exec(f))j[b[1].toLowerCase()]=b[2]}b=j[a.toLowerCase()]}return null==b?null:b},getAllResponseHeaders:function(){return 2===t?f:null},setRequestHeader:function(a,b){var c=a.toLowerCase();return t||(a=s[c]=s[c]||a,r[a]=b),this},overrideMimeType:function(a){return t||(k.mimeType=a),this},statusCode:function(a){var b;if(a)if(2>t)for(b in a)q[b]=[q[b],a[b]];else v.always(a[v.status]);return this},abort:function(a){var b=a||u;return i&&i.abort(b),x(0,b),this}};if(o.promise(v).complete=p.add,v.success=v.done,v.error=v.fail,k.url=((a||k.url||zc)+"").replace(Ac,"").replace(Fc,yc[1]+"//"),k.type=b.method||b.type||k.method||k.type,k.dataTypes=m.trim(k.dataType||"*").toLowerCase().match(E)||[""],null==k.crossDomain&&(c=Gc.exec(k.url.toLowerCase()),k.crossDomain=!(!c||c[1]===yc[1]&&c[2]===yc[2]&&(c[3]||("http:"===c[1]?"80":"443"))===(yc[3]||("http:"===yc[1]?"80":"443")))),k.data&&k.processData&&"string"!=typeof k.data&&(k.data=m.param(k.data,k.traditional)),Mc(Hc,k,b,v),2===t)return v;h=m.event&&k.global,h&&0===m.active++&&m.event.trigger("ajaxStart"),k.type=k.type.toUpperCase(),k.hasContent=!Ec.test(k.type),e=k.url,k.hasContent||(k.data&&(e=k.url+=(wc.test(e)?"&":"?")+k.data,delete k.data),k.cache===!1&&(k.url=Bc.test(e)?e.replace(Bc,"$1_="+vc++):e+(wc.test(e)?"&":"?")+"_="+vc++)),k.ifModified&&(m.lastModified[e]&&v.setRequestHeader("If-Modified-Since",m.lastModified[e]),m.etag[e]&&v.setRequestHeader("If-None-Match",m.etag[e])),(k.data&&k.hasContent&&k.contentType!==!1||b.contentType)&&v.setRequestHeader("Content-Type",k.contentType),v.setRequestHeader("Accept",k.dataTypes[0]&&k.accepts[k.dataTypes[0]]?k.accepts[k.dataTypes[0]]+("*"!==k.dataTypes[0]?", "+Jc+"; q=0.01":""):k.accepts["*"]);for(d in k.headers)v.setRequestHeader(d,k.headers[d]);if(k.beforeSend&&(k.beforeSend.call(l,v,k)===!1||2===t))return v.abort();u="abort";for(d in{success:1,error:1,complete:1})v[d](k[d]);if(i=Mc(Ic,k,b,v)){v.readyState=1,h&&n.trigger("ajaxSend",[v,k]),k.async&&k.timeout>0&&(g=setTimeout(function(){v.abort("timeout")},k.timeout));try{t=1,i.send(r,x)}catch(w){if(!(2>t))throw w;x(-1,w)}}else x(-1,"No Transport");function x(a,b,c,d){var j,r,s,u,w,x=b;2!==t&&(t=2,g&&clearTimeout(g),i=void 0,f=d||"",v.readyState=a>0?4:0,j=a>=200&&300>a||304===a,c&&(u=Oc(k,v,c)),u=Pc(k,u,v,j),j?(k.ifModified&&(w=v.getResponseHeader("Last-Modified"),w&&(m.lastModified[e]=w),w=v.getResponseHeader("etag"),w&&(m.etag[e]=w)),204===a||"HEAD"===k.type?x="nocontent":304===a?x="notmodified":(x=u.state,r=u.data,s=u.error,j=!s)):(s=x,(a||!x)&&(x="error",0>a&&(a=0))),v.status=a,v.statusText=(b||x)+"",j?o.resolveWith(l,[r,x,v]):o.rejectWith(l,[v,x,s]),v.statusCode(q),q=void 0,h&&n.trigger(j?"ajaxSuccess":"ajaxError",[v,k,j?r:s]),p.fireWith(l,[v,x]),h&&(n.trigger("ajaxComplete",[v,k]),--m.active||m.event.trigger("ajaxStop")))}return v},getJSON:function(a,b,c){return m.get(a,b,c,"json")},getScript:function(a,b){return m.get(a,void 0,b,"script")}}),m.each(["get","post"],function(a,b){m[b]=function(a,c,d,e){return m.isFunction(c)&&(e=e||d,d=c,c=void 0),m.ajax({url:a,type:b,dataType:e,data:c,success:d})}}),m._evalUrl=function(a){return m.ajax({url:a,type:"GET",dataType:"script",async:!1,global:!1,"throws":!0})},m.fn.extend({wrapAll:function(a){if(m.isFunction(a))return this.each(function(b){m(this).wrapAll(a.call(this,b))});if(this[0]){var b=m(a,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&b.insertBefore(this[0]),b.map(function(){var a=this;while(a.firstChild&&1===a.firstChild.nodeType)a=a.firstChild;return a}).append(this)}return this},wrapInner:function(a){return this.each(m.isFunction(a)?function(b){m(this).wrapInner(a.call(this,b))}:function(){var b=m(this),c=b.contents();c.length?c.wrapAll(a):b.append(a)})},wrap:function(a){var b=m.isFunction(a);return this.each(function(c){m(this).wrapAll(b?a.call(this,c):a)})},unwrap:function(){return this.parent().each(function(){m.nodeName(this,"body")||m(this).replaceWith(this.childNodes)}).end()}}),m.expr.filters.hidden=function(a){return a.offsetWidth<=0&&a.offsetHeight<=0||!k.reliableHiddenOffsets()&&"none"===(a.style&&a.style.display||m.css(a,"display"))},m.expr.filters.visible=function(a){return!m.expr.filters.hidden(a)};var Qc=/%20/g,Rc=/\[\]$/,Sc=/\r?\n/g,Tc=/^(?:submit|button|image|reset|file)$/i,Uc=/^(?:input|select|textarea|keygen)/i;function Vc(a,b,c,d){var e;if(m.isArray(b))m.each(b,function(b,e){c||Rc.test(a)?d(a,e):Vc(a+"["+("object"==typeof e?b:"")+"]",e,c,d)});else if(c||"object"!==m.type(b))d(a,b);else for(e in b)Vc(a+"["+e+"]",b[e],c,d)}m.param=function(a,b){var c,d=[],e=function(a,b){b=m.isFunction(b)?b():null==b?"":b,d[d.length]=encodeURIComponent(a)+"="+encodeURIComponent(b)};if(void 0===b&&(b=m.ajaxSettings&&m.ajaxSettings.traditional),m.isArray(a)||a.jquery&&!m.isPlainObject(a))m.each(a,function(){e(this.name,this.value)});else for(c in a)Vc(c,a[c],b,e);return d.join("&").replace(Qc,"+")},m.fn.extend({serialize:function(){return m.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var a=m.prop(this,"elements");return a?m.makeArray(a):this}).filter(function(){var a=this.type;return this.name&&!m(this).is(":disabled")&&Uc.test(this.nodeName)&&!Tc.test(a)&&(this.checked||!W.test(a))}).map(function(a,b){var c=m(this).val();return null==c?null:m.isArray(c)?m.map(c,function(a){return{name:b.name,value:a.replace(Sc,"\r\n")}}):{name:b.name,value:c.replace(Sc,"\r\n")}}).get()}}),m.ajaxSettings.xhr=void 0!==a.ActiveXObject?function(){return!this.isLocal&&/^(get|post|head|put|delete|options)$/i.test(this.type)&&Zc()||$c()}:Zc;var Wc=0,Xc={},Yc=m.ajaxSettings.xhr();a.attachEvent&&a.attachEvent("onunload",function(){for(var a in Xc)Xc[a](void 0,!0)}),k.cors=!!Yc&&"withCredentials"in Yc,Yc=k.ajax=!!Yc,Yc&&m.ajaxTransport(function(a){if(!a.crossDomain||k.cors){var b;return{send:function(c,d){var e,f=a.xhr(),g=++Wc;if(f.open(a.type,a.url,a.async,a.username,a.password),a.xhrFields)for(e in a.xhrFields)f[e]=a.xhrFields[e];a.mimeType&&f.overrideMimeType&&f.overrideMimeType(a.mimeType),a.crossDomain||c["X-Requested-With"]||(c["X-Requested-With"]="XMLHttpRequest");for(e in c)void 0!==c[e]&&f.setRequestHeader(e,c[e]+"");f.send(a.hasContent&&a.data||null),b=function(c,e){var h,i,j;if(b&&(e||4===f.readyState))if(delete Xc[g],b=void 0,f.onreadystatechange=m.noop,e)4!==f.readyState&&f.abort();else{j={},h=f.status,"string"==typeof f.responseText&&(j.text=f.responseText);try{i=f.statusText}catch(k){i=""}h||!a.isLocal||a.crossDomain?1223===h&&(h=204):h=j.text?200:404}j&&d(h,i,j,f.getAllResponseHeaders())},a.async?4===f.readyState?setTimeout(b):f.onreadystatechange=Xc[g]=b:b()},abort:function(){b&&b(void 0,!0)}}}});function Zc(){try{return new a.XMLHttpRequest}catch(b){}}function $c(){try{return new a.ActiveXObject("Microsoft.XMLHTTP")}catch(b){}}m.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/(?:java|ecma)script/},converters:{"text script":function(a){return m.globalEval(a),a}}}),m.ajaxPrefilter("script",function(a){void 0===a.cache&&(a.cache=!1),a.crossDomain&&(a.type="GET",a.global=!1)}),m.ajaxTransport("script",function(a){if(a.crossDomain){var b,c=y.head||m("head")[0]||y.documentElement;return{send:function(d,e){b=y.createElement("script"),b.async=!0,a.scriptCharset&&(b.charset=a.scriptCharset),b.src=a.url,b.onload=b.onreadystatechange=function(a,c){(c||!b.readyState||/loaded|complete/.test(b.readyState))&&(b.onload=b.onreadystatechange=null,b.parentNode&&b.parentNode.removeChild(b),b=null,c||e(200,"success"))},c.insertBefore(b,c.firstChild)},abort:function(){b&&b.onload(void 0,!0)}}}});var _c=[],ad=/(=)\?(?=&|$)|\?\?/;m.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var a=_c.pop()||m.expando+"_"+vc++;return this[a]=!0,a}}),m.ajaxPrefilter("json jsonp",function(b,c,d){var e,f,g,h=b.jsonp!==!1&&(ad.test(b.url)?"url":"string"==typeof b.data&&!(b.contentType||"").indexOf("application/x-www-form-urlencoded")&&ad.test(b.data)&&"data");return h||"jsonp"===b.dataTypes[0]?(e=b.jsonpCallback=m.isFunction(b.jsonpCallback)?b.jsonpCallback():b.jsonpCallback,h?b[h]=b[h].replace(ad,"$1"+e):b.jsonp!==!1&&(b.url+=(wc.test(b.url)?"&":"?")+b.jsonp+"="+e),b.converters["script json"]=function(){return g||m.error(e+" was not called"),g[0]},b.dataTypes[0]="json",f=a[e],a[e]=function(){g=arguments},d.always(function(){a[e]=f,b[e]&&(b.jsonpCallback=c.jsonpCallback,_c.push(e)),g&&m.isFunction(f)&&f(g[0]),g=f=void 0}),"script"):void 0}),m.parseHTML=function(a,b,c){if(!a||"string"!=typeof a)return null;"boolean"==typeof b&&(c=b,b=!1),b=b||y;var d=u.exec(a),e=!c&&[];return d?[b.createElement(d[1])]:(d=m.buildFragment([a],b,e),e&&e.length&&m(e).remove(),m.merge([],d.childNodes))};var bd=m.fn.load;m.fn.load=function(a,b,c){if("string"!=typeof a&&bd)return bd.apply(this,arguments);var d,e,f,g=this,h=a.indexOf(" ");return h>=0&&(d=m.trim(a.slice(h,a.length)),a=a.slice(0,h)),m.isFunction(b)?(c=b,b=void 0):b&&"object"==typeof b&&(f="POST"),g.length>0&&m.ajax({url:a,type:f,dataType:"html",data:b}).done(function(a){e=arguments,g.html(d?m("<div>").append(m.parseHTML(a)).find(d):a)}).complete(c&&function(a,b){g.each(c,e||[a.responseText,b,a])}),this},m.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(a,b){m.fn[b]=function(a){return this.on(b,a)}}),m.expr.filters.animated=function(a){return m.grep(m.timers,function(b){return a===b.elem}).length};var cd=a.document.documentElement;function dd(a){return m.isWindow(a)?a:9===a.nodeType?a.defaultView||a.parentWindow:!1}m.offset={setOffset:function(a,b,c){var d,e,f,g,h,i,j,k=m.css(a,"position"),l=m(a),n={};"static"===k&&(a.style.position="relative"),h=l.offset(),f=m.css(a,"top"),i=m.css(a,"left"),j=("absolute"===k||"fixed"===k)&&m.inArray("auto",[f,i])>-1,j?(d=l.position(),g=d.top,e=d.left):(g=parseFloat(f)||0,e=parseFloat(i)||0),m.isFunction(b)&&(b=b.call(a,c,h)),null!=b.top&&(n.top=b.top-h.top+g),null!=b.left&&(n.left=b.left-h.left+e),"using"in b?b.using.call(a,n):l.css(n)}},m.fn.extend({offset:function(a){if(arguments.length)return void 0===a?this:this.each(function(b){m.offset.setOffset(this,a,b)});var b,c,d={top:0,left:0},e=this[0],f=e&&e.ownerDocument;if(f)return b=f.documentElement,m.contains(b,e)?(typeof e.getBoundingClientRect!==K&&(d=e.getBoundingClientRect()),c=dd(f),{top:d.top+(c.pageYOffset||b.scrollTop)-(b.clientTop||0),left:d.left+(c.pageXOffset||b.scrollLeft)-(b.clientLeft||0)}):d},position:function(){if(this[0]){var a,b,c={top:0,left:0},d=this[0];return"fixed"===m.css(d,"position")?b=d.getBoundingClientRect():(a=this.offsetParent(),b=this.offset(),m.nodeName(a[0],"html")||(c=a.offset()),c.top+=m.css(a[0],"borderTopWidth",!0),c.left+=m.css(a[0],"borderLeftWidth",!0)),{top:b.top-c.top-m.css(d,"marginTop",!0),left:b.left-c.left-m.css(d,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){var a=this.offsetParent||cd;while(a&&!m.nodeName(a,"html")&&"static"===m.css(a,"position"))a=a.offsetParent;return a||cd})}}),m.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(a,b){var c=/Y/.test(b);m.fn[a]=function(d){return V(this,function(a,d,e){var f=dd(a);return void 0===e?f?b in f?f[b]:f.document.documentElement[d]:a[d]:void(f?f.scrollTo(c?m(f).scrollLeft():e,c?e:m(f).scrollTop()):a[d]=e)},a,d,arguments.length,null)}}),m.each(["top","left"],function(a,b){m.cssHooks[b]=Lb(k.pixelPosition,function(a,c){return c?(c=Jb(a,b),Hb.test(c)?m(a).position()[b]+"px":c):void 0})}),m.each({Height:"height",Width:"width"},function(a,b){m.each({padding:"inner"+a,content:b,"":"outer"+a},function(c,d){m.fn[d]=function(d,e){var f=arguments.length&&(c||"boolean"!=typeof d),g=c||(d===!0||e===!0?"margin":"border");return V(this,function(b,c,d){var e;return m.isWindow(b)?b.document.documentElement["client"+a]:9===b.nodeType?(e=b.documentElement,Math.max(b.body["scroll"+a],e["scroll"+a],b.body["offset"+a],e["offset"+a],e["client"+a])):void 0===d?m.css(b,c,g):m.style(b,c,d,g)},b,f?d:void 0,f,null)}})}),m.fn.size=function(){return this.length},m.fn.andSelf=m.fn.addBack,"function"==typeof define&&define.amd&&define("jquery",[],function(){return m});var ed=a.jQuery,fd=a.$;return m.noConflict=function(b){return a.$===m&&(a.$=fd),b&&a.jQuery===m&&(a.jQuery=ed),m},typeof b===K&&(a.jQuery=a.$=m),m});
//# sourceMappingURL=jquery.min.map
EOF
fi





echo -e "======================== $dir_panel_js/merge.js ========================\n"
if [ ! -f $dir_panel_js/merge.js ];then
  cat>$dir_panel_js/merge.js<<\EOF
// CodeMirror, copyright (c) by Marijn Haverbeke and others
// Distributed under an MIT license: https://codemirror.net/LICENSE

// declare global: diff_match_patch, DIFF_INSERT, DIFF_DELETE, DIFF_EQUAL

(function(mod) {
  if (typeof exports == "object" && typeof module == "object") // CommonJS
    mod(require("../../lib/codemirror")); // Note non-packaged dependency diff_match_patch
  else if (typeof define == "function" && define.amd) // AMD
    define(["../../lib/codemirror", "diff_match_patch"], mod);
  else // Plain browser env
    mod(CodeMirror);
})(function(CodeMirror) {
  "use strict";
  var Pos = CodeMirror.Pos;
  var svgNS = "http://www.w3.org/2000/svg";

  function DiffView(mv, type) {
    this.mv = mv;
    this.type = type;
    this.classes = type == "left"
      ? {chunk: "CodeMirror-merge-l-chunk",
         start: "CodeMirror-merge-l-chunk-start",
         end: "CodeMirror-merge-l-chunk-end",
         insert: "CodeMirror-merge-l-inserted",
         del: "CodeMirror-merge-l-deleted",
         connect: "CodeMirror-merge-l-connect"}
      : {chunk: "CodeMirror-merge-r-chunk",
         start: "CodeMirror-merge-r-chunk-start",
         end: "CodeMirror-merge-r-chunk-end",
         insert: "CodeMirror-merge-r-inserted",
         del: "CodeMirror-merge-r-deleted",
         connect: "CodeMirror-merge-r-connect"};
  }

  DiffView.prototype = {
    constructor: DiffView,
    init: function(pane, orig, options) {
      this.edit = this.mv.edit;
      ;(this.edit.state.diffViews || (this.edit.state.diffViews = [])).push(this);
      this.orig = CodeMirror(pane, copyObj({value: orig, readOnly: !this.mv.options.allowEditingOriginals}, copyObj(options)));
      if (this.mv.options.connect == "align") {
        if (!this.edit.state.trackAlignable) this.edit.state.trackAlignable = new TrackAlignable(this.edit)
        this.orig.state.trackAlignable = new TrackAlignable(this.orig)
      }
      this.lockButton.title = this.edit.phrase("Toggle locked scrolling");

      this.orig.state.diffViews = [this];
      var classLocation = options.chunkClassLocation || "background";
      if (Object.prototype.toString.call(classLocation) != "[object Array]") classLocation = [classLocation]
      this.classes.classLocation = classLocation

      this.diff = getDiff(asString(orig), asString(options.value), this.mv.options.ignoreWhitespace);
      this.chunks = getChunks(this.diff);
      this.diffOutOfDate = this.dealigned = false;
      this.needsScrollSync = null

      this.showDifferences = options.showDifferences !== false;
    },
    registerEvents: function(otherDv) {
      this.forceUpdate = registerUpdate(this);
      setScrollLock(this, true, false);
      registerScroll(this, otherDv);
    },
    setShowDifferences: function(val) {
      val = val !== false;
      if (val != this.showDifferences) {
        this.showDifferences = val;
        this.forceUpdate("full");
      }
    }
  };

  function ensureDiff(dv) {
    if (dv.diffOutOfDate) {
      dv.diff = getDiff(dv.orig.getValue(), dv.edit.getValue(), dv.mv.options.ignoreWhitespace);
      dv.chunks = getChunks(dv.diff);
      dv.diffOutOfDate = false;
      CodeMirror.signal(dv.edit, "updateDiff", dv.diff);
    }
  }

  var updating = false;
  function registerUpdate(dv) {
    var edit = {from: 0, to: 0, marked: []};
    var orig = {from: 0, to: 0, marked: []};
    var debounceChange, updatingFast = false;
    function update(mode) {
      updating = true;
      updatingFast = false;
      if (mode == "full") {
        if (dv.svg) clear(dv.svg);
        if (dv.copyButtons) clear(dv.copyButtons);
        clearMarks(dv.edit, edit.marked, dv.classes);
        clearMarks(dv.orig, orig.marked, dv.classes);
        edit.from = edit.to = orig.from = orig.to = 0;
      }
      ensureDiff(dv);
      if (dv.showDifferences) {
        updateMarks(dv.edit, dv.diff, edit, DIFF_INSERT, dv.classes);
        updateMarks(dv.orig, dv.diff, orig, DIFF_DELETE, dv.classes);
      }

      if (dv.mv.options.connect == "align")
        alignChunks(dv);
      makeConnections(dv);
      if (dv.needsScrollSync != null) syncScroll(dv, dv.needsScrollSync)

      updating = false;
    }
    function setDealign(fast) {
      if (updating) return;
      dv.dealigned = true;
      set(fast);
    }
    function set(fast) {
      if (updating || updatingFast) return;
      clearTimeout(debounceChange);
      if (fast === true) updatingFast = true;
      debounceChange = setTimeout(update, fast === true ? 20 : 250);
    }
    function change(_cm, change) {
      if (!dv.diffOutOfDate) {
        dv.diffOutOfDate = true;
        edit.from = edit.to = orig.from = orig.to = 0;
      }
      // Update faster when a line was added/removed
      setDealign(change.text.length - 1 != change.to.line - change.from.line);
    }
    function swapDoc() {
      dv.diffOutOfDate = true;
      dv.dealigned = true;
      update("full");
    }
    dv.edit.on("change", change);
    dv.orig.on("change", change);
    dv.edit.on("swapDoc", swapDoc);
    dv.orig.on("swapDoc", swapDoc);
    if (dv.mv.options.connect == "align") {
      CodeMirror.on(dv.edit.state.trackAlignable, "realign", setDealign)
      CodeMirror.on(dv.orig.state.trackAlignable, "realign", setDealign)
    }
    dv.edit.on("viewportChange", function() { set(false); });
    dv.orig.on("viewportChange", function() { set(false); });
    update();
    return update;
  }

  function registerScroll(dv, otherDv) {
    dv.edit.on("scroll", function() {
      syncScroll(dv, true) && makeConnections(dv);
    });
    dv.orig.on("scroll", function() {
      syncScroll(dv, false) && makeConnections(dv);
      if (otherDv) syncScroll(otherDv, true) && makeConnections(otherDv);
    });
  }

  function syncScroll(dv, toOrig) {
    // Change handler will do a refresh after a timeout when diff is out of date
    if (dv.diffOutOfDate) {
      if (dv.lockScroll && dv.needsScrollSync == null) dv.needsScrollSync = toOrig
      return false
    }
    dv.needsScrollSync = null
    if (!dv.lockScroll) return true;
    var editor, other, now = +new Date;
    if (toOrig) { editor = dv.edit; other = dv.orig; }
    else { editor = dv.orig; other = dv.edit; }
    // Don't take action if the position of this editor was recently set
    // (to prevent feedback loops)
    if (editor.state.scrollSetBy == dv && (editor.state.scrollSetAt || 0) + 250 > now) return false;

    var sInfo = editor.getScrollInfo();
    if (dv.mv.options.connect == "align") {
      targetPos = sInfo.top;
    } else {
      var halfScreen = .5 * sInfo.clientHeight, midY = sInfo.top + halfScreen;
      var mid = editor.lineAtHeight(midY, "local");
      var around = chunkBoundariesAround(dv.chunks, mid, toOrig);
      var off = getOffsets(editor, toOrig ? around.edit : around.orig);
      var offOther = getOffsets(other, toOrig ? around.orig : around.edit);
      var ratio = (midY - off.top) / (off.bot - off.top);
      var targetPos = (offOther.top - halfScreen) + ratio * (offOther.bot - offOther.top);

      var botDist, mix;
      // Some careful tweaking to make sure no space is left out of view
      // when scrolling to top or bottom.
      if (targetPos > sInfo.top && (mix = sInfo.top / halfScreen) < 1) {
        targetPos = targetPos * mix + sInfo.top * (1 - mix);
      } else if ((botDist = sInfo.height - sInfo.clientHeight - sInfo.top) < halfScreen) {
        var otherInfo = other.getScrollInfo();
        var botDistOther = otherInfo.height - otherInfo.clientHeight - targetPos;
        if (botDistOther > botDist && (mix = botDist / halfScreen) < 1)
          targetPos = targetPos * mix + (otherInfo.height - otherInfo.clientHeight - botDist) * (1 - mix);
      }
    }

    other.scrollTo(sInfo.left, targetPos);
    other.state.scrollSetAt = now;
    other.state.scrollSetBy = dv;
    return true;
  }

  function getOffsets(editor, around) {
    var bot = around.after;
    if (bot == null) bot = editor.lastLine() + 1;
    return {top: editor.heightAtLine(around.before || 0, "local"),
            bot: editor.heightAtLine(bot, "local")};
  }

  function setScrollLock(dv, val, action) {
    dv.lockScroll = val;
    if (val && action != false) syncScroll(dv, DIFF_INSERT) && makeConnections(dv);
    (val ? CodeMirror.addClass : CodeMirror.rmClass)(dv.lockButton, "CodeMirror-merge-scrolllock-enabled");
  }

  // Updating the marks for editor content

  function removeClass(editor, line, classes) {
    var locs = classes.classLocation
    for (var i = 0; i < locs.length; i++) {
      editor.removeLineClass(line, locs[i], classes.chunk);
      editor.removeLineClass(line, locs[i], classes.start);
      editor.removeLineClass(line, locs[i], classes.end);
    }
  }

  function clearMarks(editor, arr, classes) {
    for (var i = 0; i < arr.length; ++i) {
      var mark = arr[i];
      if (mark instanceof CodeMirror.TextMarker)
        mark.clear();
      else if (mark.parent)
        removeClass(editor, mark, classes);
    }
    arr.length = 0;
  }

  // FIXME maybe add a margin around viewport to prevent too many updates
  function updateMarks(editor, diff, state, type, classes) {
    var vp = editor.getViewport();
    editor.operation(function() {
      if (state.from == state.to || vp.from - state.to > 20 || state.from - vp.to > 20) {
        clearMarks(editor, state.marked, classes);
        markChanges(editor, diff, type, state.marked, vp.from, vp.to, classes);
        state.from = vp.from; state.to = vp.to;
      } else {
        if (vp.from < state.from) {
          markChanges(editor, diff, type, state.marked, vp.from, state.from, classes);
          state.from = vp.from;
        }
        if (vp.to > state.to) {
          markChanges(editor, diff, type, state.marked, state.to, vp.to, classes);
          state.to = vp.to;
        }
      }
    });
  }

  function addClass(editor, lineNr, classes, main, start, end) {
    var locs = classes.classLocation, line = editor.getLineHandle(lineNr);
    for (var i = 0; i < locs.length; i++) {
      if (main) editor.addLineClass(line, locs[i], classes.chunk);
      if (start) editor.addLineClass(line, locs[i], classes.start);
      if (end) editor.addLineClass(line, locs[i], classes.end);
    }
    return line;
  }

  function markChanges(editor, diff, type, marks, from, to, classes) {
    var pos = Pos(0, 0);
    var top = Pos(from, 0), bot = editor.clipPos(Pos(to - 1));
    var cls = type == DIFF_DELETE ? classes.del : classes.insert;
    function markChunk(start, end) {
      var bfrom = Math.max(from, start), bto = Math.min(to, end);
      for (var i = bfrom; i < bto; ++i)
        marks.push(addClass(editor, i, classes, true, i == start, i == end - 1));
      // When the chunk is empty, make sure a horizontal line shows up
      if (start == end && bfrom == end && bto == end) {
        if (bfrom)
          marks.push(addClass(editor, bfrom - 1, classes, false, false, true));
        else
          marks.push(addClass(editor, bfrom, classes, false, true, false));
      }
    }

    var chunkStart = 0, pending = false;
    for (var i = 0; i < diff.length; ++i) {
      var part = diff[i], tp = part[0], str = part[1];
      if (tp == DIFF_EQUAL) {
        var cleanFrom = pos.line + (startOfLineClean(diff, i) ? 0 : 1);
        moveOver(pos, str);
        var cleanTo = pos.line + (endOfLineClean(diff, i) ? 1 : 0);
        if (cleanTo > cleanFrom) {
          if (pending) { markChunk(chunkStart, cleanFrom); pending = false }
          chunkStart = cleanTo;
        }
      } else {
        pending = true
        if (tp == type) {
          var end = moveOver(pos, str, true);
          var a = posMax(top, pos), b = posMin(bot, end);
          if (!posEq(a, b))
            marks.push(editor.markText(a, b, {className: cls}));
          pos = end;
        }
      }
    }
    if (pending) markChunk(chunkStart, pos.line + 1);
  }

  // Updating the gap between editor and original

  function makeConnections(dv) {
    if (!dv.showDifferences) return;

    if (dv.svg) {
      clear(dv.svg);
      var w = dv.gap.offsetWidth;
      attrs(dv.svg, "width", w, "height", dv.gap.offsetHeight);
    }
    if (dv.copyButtons) clear(dv.copyButtons);

    var vpEdit = dv.edit.getViewport(), vpOrig = dv.orig.getViewport();
    var outerTop = dv.mv.wrap.getBoundingClientRect().top
    var sTopEdit = outerTop - dv.edit.getScrollerElement().getBoundingClientRect().top + dv.edit.getScrollInfo().top
    var sTopOrig = outerTop - dv.orig.getScrollerElement().getBoundingClientRect().top + dv.orig.getScrollInfo().top;
    for (var i = 0; i < dv.chunks.length; i++) {
      var ch = dv.chunks[i];
      if (ch.editFrom <= vpEdit.to && ch.editTo >= vpEdit.from &&
          ch.origFrom <= vpOrig.to && ch.origTo >= vpOrig.from)
        drawConnectorsForChunk(dv, ch, sTopOrig, sTopEdit, w);
    }
  }

  function getMatchingOrigLine(editLine, chunks) {
    var editStart = 0, origStart = 0;
    for (var i = 0; i < chunks.length; i++) {
      var chunk = chunks[i];
      if (chunk.editTo > editLine && chunk.editFrom <= editLine) return null;
      if (chunk.editFrom > editLine) break;
      editStart = chunk.editTo;
      origStart = chunk.origTo;
    }
    return origStart + (editLine - editStart);
  }

  // Combines information about chunks and widgets/markers to return
  // an array of lines, in a single editor, that probably need to be
  // aligned with their counterparts in the editor next to it.
  function alignableFor(cm, chunks, isOrig) {
    var tracker = cm.state.trackAlignable
    var start = cm.firstLine(), trackI = 0
    var result = []
    for (var i = 0;; i++) {
      var chunk = chunks[i]
      var chunkStart = !chunk ? 1e9 : isOrig ? chunk.origFrom : chunk.editFrom
      for (; trackI < tracker.alignable.length; trackI += 2) {
        var n = tracker.alignable[trackI] + 1
        if (n <= start) continue
        if (n <= chunkStart) result.push(n)
        else break
      }
      if (!chunk) break
      result.push(start = isOrig ? chunk.origTo : chunk.editTo)
    }
    return result
  }

  // Given information about alignable lines in two editors, fill in
  // the result (an array of three-element arrays) to reflect the
  // lines that need to be aligned with each other.
  function mergeAlignable(result, origAlignable, chunks, setIndex) {
    var rI = 0, origI = 0, chunkI = 0, diff = 0
    outer: for (;; rI++) {
      var nextR = result[rI], nextO = origAlignable[origI]
      if (!nextR && nextO == null) break

      var rLine = nextR ? nextR[0] : 1e9, oLine = nextO == null ? 1e9 : nextO
      while (chunkI < chunks.length) {
        var chunk = chunks[chunkI]
        if (chunk.origFrom <= oLine && chunk.origTo > oLine) {
          origI++
          rI--
          continue outer;
        }
        if (chunk.editTo > rLine) {
          if (chunk.editFrom <= rLine) continue outer;
          break
        }
        diff += (chunk.origTo - chunk.origFrom) - (chunk.editTo - chunk.editFrom)
        chunkI++
      }
      if (rLine == oLine - diff) {
        nextR[setIndex] = oLine
        origI++
      } else if (rLine < oLine - diff) {
        nextR[setIndex] = rLine + diff
      } else {
        var record = [oLine - diff, null, null]
        record[setIndex] = oLine
        result.splice(rI, 0, record)
        origI++
      }
    }
  }

  function findAlignedLines(dv, other) {
    var alignable = alignableFor(dv.edit, dv.chunks, false), result = []
    if (other) for (var i = 0, j = 0; i < other.chunks.length; i++) {
      var n = other.chunks[i].editTo
      while (j < alignable.length && alignable[j] < n) j++
      if (j == alignable.length || alignable[j] != n) alignable.splice(j++, 0, n)
    }
    for (var i = 0; i < alignable.length; i++)
      result.push([alignable[i], null, null])

    mergeAlignable(result, alignableFor(dv.orig, dv.chunks, true), dv.chunks, 1)
    if (other)
      mergeAlignable(result, alignableFor(other.orig, other.chunks, true), other.chunks, 2)

    return result
  }

  function alignChunks(dv, force) {
    if (!dv.dealigned && !force) return;
    if (!dv.orig.curOp) return dv.orig.operation(function() {
      alignChunks(dv, force);
    });

    dv.dealigned = false;
    var other = dv.mv.left == dv ? dv.mv.right : dv.mv.left;
    if (other) {
      ensureDiff(other);
      other.dealigned = false;
    }
    var linesToAlign = findAlignedLines(dv, other);

    // Clear old aligners
    var aligners = dv.mv.aligners;
    for (var i = 0; i < aligners.length; i++)
      aligners[i].clear();
    aligners.length = 0;

    var cm = [dv.edit, dv.orig], scroll = [], offset = []
    if (other) cm.push(other.orig);
    for (var i = 0; i < cm.length; i++) {
      scroll.push(cm[i].getScrollInfo().top);
      offset.push(-cm[i].getScrollerElement().getBoundingClientRect().top)
    }

    if (offset[0] != offset[1] || cm.length == 3 && offset[1] != offset[2])
      alignLines(cm, offset, [0, 0, 0], aligners)
    for (var ln = 0; ln < linesToAlign.length; ln++)
      alignLines(cm, offset, linesToAlign[ln], aligners);

    for (var i = 0; i < cm.length; i++)
      cm[i].scrollTo(null, scroll[i]);
  }

  function alignLines(cm, cmOffset, lines, aligners) {
    var maxOffset = -1e8, offset = [];
    for (var i = 0; i < cm.length; i++) if (lines[i] != null) {
      var off = cm[i].heightAtLine(lines[i], "local") - cmOffset[i];
      offset[i] = off;
      maxOffset = Math.max(maxOffset, off);
    }
    for (var i = 0; i < cm.length; i++) if (lines[i] != null) {
      var diff = maxOffset - offset[i];
      if (diff > 1)
        aligners.push(padAbove(cm[i], lines[i], diff));
    }
  }

  function padAbove(cm, line, size) {
    var above = true;
    if (line > cm.lastLine()) {
      line--;
      above = false;
    }
    var elt = document.createElement("div");
    elt.className = "CodeMirror-merge-spacer";
    elt.style.height = size + "px"; elt.style.minWidth = "1px";
    return cm.addLineWidget(line, elt, {height: size, above: above, mergeSpacer: true, handleMouseEvents: true});
  }

  function drawConnectorsForChunk(dv, chunk, sTopOrig, sTopEdit, w) {
    var flip = dv.type == "left";
    var top = dv.orig.heightAtLine(chunk.origFrom, "local", true) - sTopOrig;
    if (dv.svg) {
      var topLpx = top;
      var topRpx = dv.edit.heightAtLine(chunk.editFrom, "local", true) - sTopEdit;
      if (flip) { var tmp = topLpx; topLpx = topRpx; topRpx = tmp; }
      var botLpx = dv.orig.heightAtLine(chunk.origTo, "local", true) - sTopOrig;
      var botRpx = dv.edit.heightAtLine(chunk.editTo, "local", true) - sTopEdit;
      if (flip) { var tmp = botLpx; botLpx = botRpx; botRpx = tmp; }
      var curveTop = " C " + w/2 + " " + topRpx + " " + w/2 + " " + topLpx + " " + (w + 2) + " " + topLpx;
      var curveBot = " C " + w/2 + " " + botLpx + " " + w/2 + " " + botRpx + " -1 " + botRpx;
      attrs(dv.svg.appendChild(document.createElementNS(svgNS, "path")),
            "d", "M -1 " + topRpx + curveTop + " L " + (w + 2) + " " + botLpx + curveBot + " z",
            "class", dv.classes.connect);
    }
    if (dv.copyButtons) {
      var copy = dv.copyButtons.appendChild(elt("div", dv.type == "left" ? "\u21dd" : "\u21dc",
                                                "CodeMirror-merge-copy"));
      var editOriginals = dv.mv.options.allowEditingOriginals;
      copy.title = dv.edit.phrase(editOriginals ? "Push to left" : "Revert chunk");
      copy.chunk = chunk;
      copy.style.top = (chunk.origTo > chunk.origFrom ? top : dv.edit.heightAtLine(chunk.editFrom, "local") - sTopEdit) + "px";

      if (editOriginals) {
        var topReverse = dv.edit.heightAtLine(chunk.editFrom, "local") - sTopEdit;
        var copyReverse = dv.copyButtons.appendChild(elt("div", dv.type == "right" ? "\u21dd" : "\u21dc",
                                                         "CodeMirror-merge-copy-reverse"));
        copyReverse.title = "Push to right";
        copyReverse.chunk = {editFrom: chunk.origFrom, editTo: chunk.origTo,
                             origFrom: chunk.editFrom, origTo: chunk.editTo};
        copyReverse.style.top = topReverse + "px";
        dv.type == "right" ? copyReverse.style.left = "2px" : copyReverse.style.right = "2px";
      }
    }
  }

  function copyChunk(dv, to, from, chunk) {
    if (dv.diffOutOfDate) return;
    var origStart = chunk.origTo > from.lastLine() ? Pos(chunk.origFrom - 1) : Pos(chunk.origFrom, 0)
    var origEnd = Pos(chunk.origTo, 0)
    var editStart = chunk.editTo > to.lastLine() ? Pos(chunk.editFrom - 1) : Pos(chunk.editFrom, 0)
    var editEnd = Pos(chunk.editTo, 0)
    var handler = dv.mv.options.revertChunk
    if (handler)
      handler(dv.mv, from, origStart, origEnd, to, editStart, editEnd)
    else
      to.replaceRange(from.getRange(origStart, origEnd), editStart, editEnd)
  }

  // Merge view, containing 0, 1, or 2 diff views.

  var MergeView = CodeMirror.MergeView = function(node, options) {
    if (!(this instanceof MergeView)) return new MergeView(node, options);

    this.options = options;
    var origLeft = options.origLeft, origRight = options.origRight == null ? options.orig : options.origRight;

    var hasLeft = origLeft != null, hasRight = origRight != null;
    var panes = 1 + (hasLeft ? 1 : 0) + (hasRight ? 1 : 0);
    var wrap = [], left = this.left = null, right = this.right = null;
    var self = this;

    if (hasLeft) {
      left = this.left = new DiffView(this, "left");
      var leftPane = elt("div", null, "CodeMirror-merge-pane CodeMirror-merge-left");
      wrap.push(leftPane);
      wrap.push(buildGap(left));
    }

    var editPane = elt("div", null, "CodeMirror-merge-pane CodeMirror-merge-editor");
    wrap.push(editPane);

    if (hasRight) {
      right = this.right = new DiffView(this, "right");
      wrap.push(buildGap(right));
      var rightPane = elt("div", null, "CodeMirror-merge-pane CodeMirror-merge-right");
      wrap.push(rightPane);
    }

    (hasRight ? rightPane : editPane).className += " CodeMirror-merge-pane-rightmost";

    wrap.push(elt("div", null, null, "height: 0; clear: both;"));

    var wrapElt = this.wrap = node.appendChild(elt("div", wrap, "CodeMirror-merge CodeMirror-merge-" + panes + "pane"));
    this.edit = CodeMirror(editPane, copyObj(options));

    if (left) left.init(leftPane, origLeft, options);
    if (right) right.init(rightPane, origRight, options);
    if (options.collapseIdentical)
      this.editor().operation(function() {
        collapseIdenticalStretches(self, options.collapseIdentical);
      });
    if (options.connect == "align") {
      this.aligners = [];
      alignChunks(this.left || this.right, true);
    }
    if (left) left.registerEvents(right)
    if (right) right.registerEvents(left)


    var onResize = function() {
      if (left) makeConnections(left);
      if (right) makeConnections(right);
    };
    CodeMirror.on(window, "resize", onResize);
    var resizeInterval = setInterval(function() {
      for (var p = wrapElt.parentNode; p && p != document.body; p = p.parentNode) {}
      if (!p) { clearInterval(resizeInterval); CodeMirror.off(window, "resize", onResize); }
    }, 5000);
  };

  function buildGap(dv) {
    var lock = dv.lockButton = elt("div", null, "CodeMirror-merge-scrolllock");
    var lockWrap = elt("div", [lock], "CodeMirror-merge-scrolllock-wrap");
    CodeMirror.on(lock, "click", function() { setScrollLock(dv, !dv.lockScroll); });
    var gapElts = [lockWrap];
    if (dv.mv.options.revertButtons !== false) {
      dv.copyButtons = elt("div", null, "CodeMirror-merge-copybuttons-" + dv.type);
      CodeMirror.on(dv.copyButtons, "click", function(e) {
        var node = e.target || e.srcElement;
        if (!node.chunk) return;
        if (node.className == "CodeMirror-merge-copy-reverse") {
          copyChunk(dv, dv.orig, dv.edit, node.chunk);
          return;
        }
        copyChunk(dv, dv.edit, dv.orig, node.chunk);
      });
      gapElts.unshift(dv.copyButtons);
    }
    if (dv.mv.options.connect != "align") {
      var svg = document.createElementNS && document.createElementNS(svgNS, "svg");
      if (svg && !svg.createSVGRect) svg = null;
      dv.svg = svg;
      if (svg) gapElts.push(svg);
    }

    return dv.gap = elt("div", gapElts, "CodeMirror-merge-gap");
  }

  MergeView.prototype = {
    constructor: MergeView,
    editor: function() { return this.edit; },
    rightOriginal: function() { return this.right && this.right.orig; },
    leftOriginal: function() { return this.left && this.left.orig; },
    setShowDifferences: function(val) {
      if (this.right) this.right.setShowDifferences(val);
      if (this.left) this.left.setShowDifferences(val);
    },
    rightChunks: function() {
      if (this.right) { ensureDiff(this.right); return this.right.chunks; }
    },
    leftChunks: function() {
      if (this.left) { ensureDiff(this.left); return this.left.chunks; }
    }
  };

  function asString(obj) {
    if (typeof obj == "string") return obj;
    else return obj.getValue();
  }

  // Operations on diffs
  var dmp;
  function getDiff(a, b, ignoreWhitespace) {
    if (!dmp) dmp = new diff_match_patch();

    var diff = dmp.diff_main(a, b);
    // The library sometimes leaves in empty parts, which confuse the algorithm
    for (var i = 0; i < diff.length; ++i) {
      var part = diff[i];
      if (ignoreWhitespace ? !/[^ \t]/.test(part[1]) : !part[1]) {
        diff.splice(i--, 1);
      } else if (i && diff[i - 1][0] == part[0]) {
        diff.splice(i--, 1);
        diff[i][1] += part[1];
      }
    }
    return diff;
  }

  function getChunks(diff) {
    var chunks = [];
    if (!diff.length) return chunks;
    var startEdit = 0, startOrig = 0;
    var edit = Pos(0, 0), orig = Pos(0, 0);
    for (var i = 0; i < diff.length; ++i) {
      var part = diff[i], tp = part[0];
      if (tp == DIFF_EQUAL) {
        var startOff = !startOfLineClean(diff, i) || edit.line < startEdit || orig.line < startOrig ? 1 : 0;
        var cleanFromEdit = edit.line + startOff, cleanFromOrig = orig.line + startOff;
        moveOver(edit, part[1], null, orig);
        var endOff = endOfLineClean(diff, i) ? 1 : 0;
        var cleanToEdit = edit.line + endOff, cleanToOrig = orig.line + endOff;
        if (cleanToEdit > cleanFromEdit) {
          if (i) chunks.push({origFrom: startOrig, origTo: cleanFromOrig,
                              editFrom: startEdit, editTo: cleanFromEdit});
          startEdit = cleanToEdit; startOrig = cleanToOrig;
        }
      } else {
        moveOver(tp == DIFF_INSERT ? edit : orig, part[1]);
      }
    }
    if (startEdit <= edit.line || startOrig <= orig.line)
      chunks.push({origFrom: startOrig, origTo: orig.line + 1,
                   editFrom: startEdit, editTo: edit.line + 1});
    return chunks;
  }

  function endOfLineClean(diff, i) {
    if (i == diff.length - 1) return true;
    var next = diff[i + 1][1];
    if ((next.length == 1 && i < diff.length - 2) || next.charCodeAt(0) != 10) return false;
    if (i == diff.length - 2) return true;
    next = diff[i + 2][1];
    return (next.length > 1 || i == diff.length - 3) && next.charCodeAt(0) == 10;
  }

  function startOfLineClean(diff, i) {
    if (i == 0) return true;
    var last = diff[i - 1][1];
    if (last.charCodeAt(last.length - 1) != 10) return false;
    if (i == 1) return true;
    last = diff[i - 2][1];
    return last.charCodeAt(last.length - 1) == 10;
  }

  function chunkBoundariesAround(chunks, n, nInEdit) {
    var beforeE, afterE, beforeO, afterO;
    for (var i = 0; i < chunks.length; i++) {
      var chunk = chunks[i];
      var fromLocal = nInEdit ? chunk.editFrom : chunk.origFrom;
      var toLocal = nInEdit ? chunk.editTo : chunk.origTo;
      if (afterE == null) {
        if (fromLocal > n) { afterE = chunk.editFrom; afterO = chunk.origFrom; }
        else if (toLocal > n) { afterE = chunk.editTo; afterO = chunk.origTo; }
      }
      if (toLocal <= n) { beforeE = chunk.editTo; beforeO = chunk.origTo; }
      else if (fromLocal <= n) { beforeE = chunk.editFrom; beforeO = chunk.origFrom; }
    }
    return {edit: {before: beforeE, after: afterE}, orig: {before: beforeO, after: afterO}};
  }

  function collapseSingle(cm, from, to) {
    cm.addLineClass(from, "wrap", "CodeMirror-merge-collapsed-line");
    var widget = document.createElement("span");
    widget.className = "CodeMirror-merge-collapsed-widget";
    widget.title = cm.phrase("Identical text collapsed. Click to expand.");
    var mark = cm.markText(Pos(from, 0), Pos(to - 1), {
      inclusiveLeft: true,
      inclusiveRight: true,
      replacedWith: widget,
      clearOnEnter: true
    });
    function clear() {
      mark.clear();
      cm.removeLineClass(from, "wrap", "CodeMirror-merge-collapsed-line");
    }
    if (mark.explicitlyCleared) clear();
    CodeMirror.on(widget, "click", clear);
    mark.on("clear", clear);
    CodeMirror.on(widget, "click", clear);
    return {mark: mark, clear: clear};
  }

  function collapseStretch(size, editors) {
    var marks = [];
    function clear() {
      for (var i = 0; i < marks.length; i++) marks[i].clear();
    }
    for (var i = 0; i < editors.length; i++) {
      var editor = editors[i];
      var mark = collapseSingle(editor.cm, editor.line, editor.line + size);
      marks.push(mark);
      mark.mark.on("clear", clear);
    }
    return marks[0].mark;
  }

  function unclearNearChunks(dv, margin, off, clear) {
    for (var i = 0; i < dv.chunks.length; i++) {
      var chunk = dv.chunks[i];
      for (var l = chunk.editFrom - margin; l < chunk.editTo + margin; l++) {
        var pos = l + off;
        if (pos >= 0 && pos < clear.length) clear[pos] = false;
      }
    }
  }

  function collapseIdenticalStretches(mv, margin) {
    if (typeof margin != "number") margin = 2;
    var clear = [], edit = mv.editor(), off = edit.firstLine();
    for (var l = off, e = edit.lastLine(); l <= e; l++) clear.push(true);
    if (mv.left) unclearNearChunks(mv.left, margin, off, clear);
    if (mv.right) unclearNearChunks(mv.right, margin, off, clear);

    for (var i = 0; i < clear.length; i++) {
      if (clear[i]) {
        var line = i + off;
        for (var size = 1; i < clear.length - 1 && clear[i + 1]; i++, size++) {}
        if (size > margin) {
          var editors = [{line: line, cm: edit}];
          if (mv.left) editors.push({line: getMatchingOrigLine(line, mv.left.chunks), cm: mv.left.orig});
          if (mv.right) editors.push({line: getMatchingOrigLine(line, mv.right.chunks), cm: mv.right.orig});
          var mark = collapseStretch(size, editors);
          if (mv.options.onCollapse) mv.options.onCollapse(mv, line, size, mark);
        }
      }
    }
  }

  // General utilities

  function elt(tag, content, className, style) {
    var e = document.createElement(tag);
    if (className) e.className = className;
    if (style) e.style.cssText = style;
    if (typeof content == "string") e.appendChild(document.createTextNode(content));
    else if (content) for (var i = 0; i < content.length; ++i) e.appendChild(content[i]);
    return e;
  }

  function clear(node) {
    for (var count = node.childNodes.length; count > 0; --count)
      node.removeChild(node.firstChild);
  }

  function attrs(elt) {
    for (var i = 1; i < arguments.length; i += 2)
      elt.setAttribute(arguments[i], arguments[i+1]);
  }

  function copyObj(obj, target) {
    if (!target) target = {};
    for (var prop in obj) if (obj.hasOwnProperty(prop)) target[prop] = obj[prop];
    return target;
  }

  function moveOver(pos, str, copy, other) {
    var out = copy ? Pos(pos.line, pos.ch) : pos, at = 0;
    for (;;) {
      var nl = str.indexOf("\n", at);
      if (nl == -1) break;
      ++out.line;
      if (other) ++other.line;
      at = nl + 1;
    }
    out.ch = (at ? 0 : out.ch) + (str.length - at);
    if (other) other.ch = (at ? 0 : other.ch) + (str.length - at);
    return out;
  }

  // Tracks collapsed markers and line widgets, in order to be able to
  // accurately align the content of two editors.

  var F_WIDGET = 1, F_WIDGET_BELOW = 2, F_MARKER = 4

  function TrackAlignable(cm) {
    this.cm = cm
    this.alignable = []
    this.height = cm.doc.height
    var self = this
    cm.on("markerAdded", function(_, marker) {
      if (!marker.collapsed) return
      var found = marker.find(1)
      if (found != null) self.set(found.line, F_MARKER)
    })
    cm.on("markerCleared", function(_, marker, _min, max) {
      if (max != null && marker.collapsed)
        self.check(max, F_MARKER, self.hasMarker)
    })
    cm.on("markerChanged", this.signal.bind(this))
    cm.on("lineWidgetAdded", function(_, widget, lineNo) {
      if (widget.mergeSpacer) return
      if (widget.above) self.set(lineNo - 1, F_WIDGET_BELOW)
      else self.set(lineNo, F_WIDGET)
    })
    cm.on("lineWidgetCleared", function(_, widget, lineNo) {
      if (widget.mergeSpacer) return
      if (widget.above) self.check(lineNo - 1, F_WIDGET_BELOW, self.hasWidgetBelow)
      else self.check(lineNo, F_WIDGET, self.hasWidget)
    })
    cm.on("lineWidgetChanged", this.signal.bind(this))
    cm.on("change", function(_, change) {
      var start = change.from.line, nBefore = change.to.line - change.from.line
      var nAfter = change.text.length - 1, end = start + nAfter
      if (nBefore || nAfter) self.map(start, nBefore, nAfter)
      self.check(end, F_MARKER, self.hasMarker)
      if (nBefore || nAfter) self.check(change.from.line, F_MARKER, self.hasMarker)
    })
    cm.on("viewportChange", function() {
      if (self.cm.doc.height != self.height) self.signal()
    })
  }

  TrackAlignable.prototype = {
    signal: function() {
      CodeMirror.signal(this, "realign")
      this.height = this.cm.doc.height
    },

    set: function(n, flags) {
      var pos = -1
      for (; pos < this.alignable.length; pos += 2) {
        var diff = this.alignable[pos] - n
        if (diff == 0) {
          if ((this.alignable[pos + 1] & flags) == flags) return
          this.alignable[pos + 1] |= flags
          this.signal()
          return
        }
        if (diff > 0) break
      }
      this.signal()
      this.alignable.splice(pos, 0, n, flags)
    },

    find: function(n) {
      for (var i = 0; i < this.alignable.length; i += 2)
        if (this.alignable[i] == n) return i
      return -1
    },

    check: function(n, flag, pred) {
      var found = this.find(n)
      if (found == -1 || !(this.alignable[found + 1] & flag)) return
      if (!pred.call(this, n)) {
        this.signal()
        var flags = this.alignable[found + 1] & ~flag
        if (flags) this.alignable[found + 1] = flags
        else this.alignable.splice(found, 2)
      }
    },

    hasMarker: function(n) {
      var handle = this.cm.getLineHandle(n)
      if (handle.markedSpans) for (var i = 0; i < handle.markedSpans.length; i++)
        if (handle.markedSpans[i].marker.collapsed && handle.markedSpans[i].to != null)
          return true
      return false
    },

    hasWidget: function(n) {
      var handle = this.cm.getLineHandle(n)
      if (handle.widgets) for (var i = 0; i < handle.widgets.length; i++)
        if (!handle.widgets[i].above && !handle.widgets[i].mergeSpacer) return true
      return false
    },

    hasWidgetBelow: function(n) {
      if (n == this.cm.lastLine()) return false
      var handle = this.cm.getLineHandle(n + 1)
      if (handle.widgets) for (var i = 0; i < handle.widgets.length; i++)
        if (handle.widgets[i].above && !handle.widgets[i].mergeSpacer) return true
      return false
    },

    map: function(from, nBefore, nAfter) {
      var diff = nAfter - nBefore, to = from + nBefore, widgetFrom = -1, widgetTo = -1
      for (var i = 0; i < this.alignable.length; i += 2) {
        var n = this.alignable[i]
        if (n == from && (this.alignable[i + 1] & F_WIDGET_BELOW)) widgetFrom = i
        if (n == to && (this.alignable[i + 1] & F_WIDGET_BELOW)) widgetTo = i
        if (n <= from) continue
        else if (n < to) this.alignable.splice(i--, 2)
        else this.alignable[i] += diff
      }
      if (widgetFrom > -1) {
        var flags = this.alignable[widgetFrom + 1]
        if (flags == F_WIDGET_BELOW) this.alignable.splice(widgetFrom, 2)
        else this.alignable[widgetFrom + 1] = flags & ~F_WIDGET_BELOW
      }
      if (widgetTo > -1 && nAfter)
        this.set(from + nAfter, F_WIDGET_BELOW)
    }
  }

  function posMin(a, b) { return (a.line - b.line || a.ch - b.ch) < 0 ? a : b; }
  function posMax(a, b) { return (a.line - b.line || a.ch - b.ch) > 0 ? a : b; }
  function posEq(a, b) { return a.line == b.line && a.ch == b.ch; }

  function findPrevDiff(chunks, start, isOrig) {
    for (var i = chunks.length - 1; i >= 0; i--) {
      var chunk = chunks[i];
      var to = (isOrig ? chunk.origTo : chunk.editTo) - 1;
      if (to < start) return to;
    }
  }

  function findNextDiff(chunks, start, isOrig) {
    for (var i = 0; i < chunks.length; i++) {
      var chunk = chunks[i];
      var from = (isOrig ? chunk.origFrom : chunk.editFrom);
      if (from > start) return from;
    }
  }

  function goNearbyDiff(cm, dir) {
    var found = null, views = cm.state.diffViews, line = cm.getCursor().line;
    if (views) for (var i = 0; i < views.length; i++) {
      var dv = views[i], isOrig = cm == dv.orig;
      ensureDiff(dv);
      var pos = dir < 0 ? findPrevDiff(dv.chunks, line, isOrig) : findNextDiff(dv.chunks, line, isOrig);
      if (pos != null && (found == null || (dir < 0 ? pos > found : pos < found)))
        found = pos;
    }
    if (found != null)
      cm.setCursor(found, 0);
    else
      return CodeMirror.Pass;
  }

  CodeMirror.commands.goNextDiff = function(cm) {
    return goNearbyDiff(cm, 1);
  };
  CodeMirror.commands.goPrevDiff = function(cm) {
    return goNearbyDiff(cm, -1);
  };
});
EOF
fi





echo -e "======================== $dir_panel_js/qrcode.min.js ========================\n"
if [ ! -f $dir_panel_js/qrcode.min.js ];then
  cat>$dir_panel_js/qrcode.min.js<<\EOF
var QRCode;!function(){function a(a){this.mode=c.MODE_8BIT_BYTE,this.data=a,this.parsedData=[];for(var b=[],d=0,e=this.data.length;e>d;d++){var f=this.data.charCodeAt(d);f>65536?(b[0]=240|(1835008&f)>>>18,b[1]=128|(258048&f)>>>12,b[2]=128|(4032&f)>>>6,b[3]=128|63&f):f>2048?(b[0]=224|(61440&f)>>>12,b[1]=128|(4032&f)>>>6,b[2]=128|63&f):f>128?(b[0]=192|(1984&f)>>>6,b[1]=128|63&f):b[0]=f,this.parsedData=this.parsedData.concat(b)}this.parsedData.length!=this.data.length&&(this.parsedData.unshift(191),this.parsedData.unshift(187),this.parsedData.unshift(239))}function b(a,b){this.typeNumber=a,this.errorCorrectLevel=b,this.modules=null,this.moduleCount=0,this.dataCache=null,this.dataList=[]}function i(a,b){if(void 0==a.length)throw new Error(a.length+"/"+b);for(var c=0;c<a.length&&0==a[c];)c++;this.num=new Array(a.length-c+b);for(var d=0;d<a.length-c;d++)this.num[d]=a[d+c]}function j(a,b){this.totalCount=a,this.dataCount=b}function k(){this.buffer=[],this.length=0}function m(){return"undefined"!=typeof CanvasRenderingContext2D}function n(){var a=!1,b=navigator.userAgent;return/android/i.test(b)&&(a=!0,aMat=b.toString().match(/android ([0-9]\.[0-9])/i),aMat&&aMat[1]&&(a=parseFloat(aMat[1]))),a}function r(a,b){for(var c=1,e=s(a),f=0,g=l.length;g>=f;f++){var h=0;switch(b){case d.L:h=l[f][0];break;case d.M:h=l[f][1];break;case d.Q:h=l[f][2];break;case d.H:h=l[f][3]}if(h>=e)break;c++}if(c>l.length)throw new Error("Too long data");return c}function s(a){var b=encodeURI(a).toString().replace(/\%[0-9a-fA-F]{2}/g,"a");return b.length+(b.length!=a?3:0)}a.prototype={getLength:function(){return this.parsedData.length},write:function(a){for(var b=0,c=this.parsedData.length;c>b;b++)a.put(this.parsedData[b],8)}},b.prototype={addData:function(b){var c=new a(b);this.dataList.push(c),this.dataCache=null},isDark:function(a,b){if(0>a||this.moduleCount<=a||0>b||this.moduleCount<=b)throw new Error(a+","+b);return this.modules[a][b]},getModuleCount:function(){return this.moduleCount},make:function(){this.makeImpl(!1,this.getBestMaskPattern())},makeImpl:function(a,c){this.moduleCount=4*this.typeNumber+17,this.modules=new Array(this.moduleCount);for(var d=0;d<this.moduleCount;d++){this.modules[d]=new Array(this.moduleCount);for(var e=0;e<this.moduleCount;e++)this.modules[d][e]=null}this.setupPositionProbePattern(0,0),this.setupPositionProbePattern(this.moduleCount-7,0),this.setupPositionProbePattern(0,this.moduleCount-7),this.setupPositionAdjustPattern(),this.setupTimingPattern(),this.setupTypeInfo(a,c),this.typeNumber>=7&&this.setupTypeNumber(a),null==this.dataCache&&(this.dataCache=b.createData(this.typeNumber,this.errorCorrectLevel,this.dataList)),this.mapData(this.dataCache,c)},setupPositionProbePattern:function(a,b){for(var c=-1;7>=c;c++)if(!(-1>=a+c||this.moduleCount<=a+c))for(var d=-1;7>=d;d++)-1>=b+d||this.moduleCount<=b+d||(this.modules[a+c][b+d]=c>=0&&6>=c&&(0==d||6==d)||d>=0&&6>=d&&(0==c||6==c)||c>=2&&4>=c&&d>=2&&4>=d?!0:!1)},getBestMaskPattern:function(){for(var a=0,b=0,c=0;8>c;c++){this.makeImpl(!0,c);var d=f.getLostPoint(this);(0==c||a>d)&&(a=d,b=c)}return b},createMovieClip:function(a,b,c){var d=a.createEmptyMovieClip(b,c),e=1;this.make();for(var f=0;f<this.modules.length;f++)for(var g=f*e,h=0;h<this.modules[f].length;h++){var i=h*e,j=this.modules[f][h];j&&(d.beginFill(0,100),d.moveTo(i,g),d.lineTo(i+e,g),d.lineTo(i+e,g+e),d.lineTo(i,g+e),d.endFill())}return d},setupTimingPattern:function(){for(var a=8;a<this.moduleCount-8;a++)null==this.modules[a][6]&&(this.modules[a][6]=0==a%2);for(var b=8;b<this.moduleCount-8;b++)null==this.modules[6][b]&&(this.modules[6][b]=0==b%2)},setupPositionAdjustPattern:function(){for(var a=f.getPatternPosition(this.typeNumber),b=0;b<a.length;b++)for(var c=0;c<a.length;c++){var d=a[b],e=a[c];if(null==this.modules[d][e])for(var g=-2;2>=g;g++)for(var h=-2;2>=h;h++)this.modules[d+g][e+h]=-2==g||2==g||-2==h||2==h||0==g&&0==h?!0:!1}},setupTypeNumber:function(a){for(var b=f.getBCHTypeNumber(this.typeNumber),c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[Math.floor(c/3)][c%3+this.moduleCount-8-3]=d}for(var c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[c%3+this.moduleCount-8-3][Math.floor(c/3)]=d}},setupTypeInfo:function(a,b){for(var c=this.errorCorrectLevel<<3|b,d=f.getBCHTypeInfo(c),e=0;15>e;e++){var g=!a&&1==(1&d>>e);6>e?this.modules[e][8]=g:8>e?this.modules[e+1][8]=g:this.modules[this.moduleCount-15+e][8]=g}for(var e=0;15>e;e++){var g=!a&&1==(1&d>>e);8>e?this.modules[8][this.moduleCount-e-1]=g:9>e?this.modules[8][15-e-1+1]=g:this.modules[8][15-e-1]=g}this.modules[this.moduleCount-8][8]=!a},mapData:function(a,b){for(var c=-1,d=this.moduleCount-1,e=7,g=0,h=this.moduleCount-1;h>0;h-=2)for(6==h&&h--;;){for(var i=0;2>i;i++)if(null==this.modules[d][h-i]){var j=!1;g<a.length&&(j=1==(1&a[g]>>>e));var k=f.getMask(b,d,h-i);k&&(j=!j),this.modules[d][h-i]=j,e--,-1==e&&(g++,e=7)}if(d+=c,0>d||this.moduleCount<=d){d-=c,c=-c;break}}}},b.PAD0=236,b.PAD1=17,b.createData=function(a,c,d){for(var e=j.getRSBlocks(a,c),g=new k,h=0;h<d.length;h++){var i=d[h];g.put(i.mode,4),g.put(i.getLength(),f.getLengthInBits(i.mode,a)),i.write(g)}for(var l=0,h=0;h<e.length;h++)l+=e[h].dataCount;if(g.getLengthInBits()>8*l)throw new Error("code length overflow. ("+g.getLengthInBits()+">"+8*l+")");for(g.getLengthInBits()+4<=8*l&&g.put(0,4);0!=g.getLengthInBits()%8;)g.putBit(!1);for(;;){if(g.getLengthInBits()>=8*l)break;if(g.put(b.PAD0,8),g.getLengthInBits()>=8*l)break;g.put(b.PAD1,8)}return b.createBytes(g,e)},b.createBytes=function(a,b){for(var c=0,d=0,e=0,g=new Array(b.length),h=new Array(b.length),j=0;j<b.length;j++){var k=b[j].dataCount,l=b[j].totalCount-k;d=Math.max(d,k),e=Math.max(e,l),g[j]=new Array(k);for(var m=0;m<g[j].length;m++)g[j][m]=255&a.buffer[m+c];c+=k;var n=f.getErrorCorrectPolynomial(l),o=new i(g[j],n.getLength()-1),p=o.mod(n);h[j]=new Array(n.getLength()-1);for(var m=0;m<h[j].length;m++){var q=m+p.getLength()-h[j].length;h[j][m]=q>=0?p.get(q):0}}for(var r=0,m=0;m<b.length;m++)r+=b[m].totalCount;for(var s=new Array(r),t=0,m=0;d>m;m++)for(var j=0;j<b.length;j++)m<g[j].length&&(s[t++]=g[j][m]);for(var m=0;e>m;m++)for(var j=0;j<b.length;j++)m<h[j].length&&(s[t++]=h[j][m]);return s};for(var c={MODE_NUMBER:1,MODE_ALPHA_NUM:2,MODE_8BIT_BYTE:4,MODE_KANJI:8},d={L:1,M:0,Q:3,H:2},e={PATTERN000:0,PATTERN001:1,PATTERN010:2,PATTERN011:3,PATTERN100:4,PATTERN101:5,PATTERN110:6,PATTERN111:7},f={PATTERN_POSITION_TABLE:[[],[6,18],[6,22],[6,26],[6,30],[6,34],[6,22,38],[6,24,42],[6,26,46],[6,28,50],[6,30,54],[6,32,58],[6,34,62],[6,26,46,66],[6,26,48,70],[6,26,50,74],[6,30,54,78],[6,30,56,82],[6,30,58,86],[6,34,62,90],[6,28,50,72,94],[6,26,50,74,98],[6,30,54,78,102],[6,28,54,80,106],[6,32,58,84,110],[6,30,58,86,114],[6,34,62,90,118],[6,26,50,74,98,122],[6,30,54,78,102,126],[6,26,52,78,104,130],[6,30,56,82,108,134],[6,34,60,86,112,138],[6,30,58,86,114,142],[6,34,62,90,118,146],[6,30,54,78,102,126,150],[6,24,50,76,102,128,154],[6,28,54,80,106,132,158],[6,32,58,84,110,136,162],[6,26,54,82,110,138,166],[6,30,58,86,114,142,170]],G15:1335,G18:7973,G15_MASK:21522,getBCHTypeInfo:function(a){for(var b=a<<10;f.getBCHDigit(b)-f.getBCHDigit(f.G15)>=0;)b^=f.G15<<f.getBCHDigit(b)-f.getBCHDigit(f.G15);return(a<<10|b)^f.G15_MASK},getBCHTypeNumber:function(a){for(var b=a<<12;f.getBCHDigit(b)-f.getBCHDigit(f.G18)>=0;)b^=f.G18<<f.getBCHDigit(b)-f.getBCHDigit(f.G18);return a<<12|b},getBCHDigit:function(a){for(var b=0;0!=a;)b++,a>>>=1;return b},getPatternPosition:function(a){return f.PATTERN_POSITION_TABLE[a-1]},getMask:function(a,b,c){switch(a){case e.PATTERN000:return 0==(b+c)%2;case e.PATTERN001:return 0==b%2;case e.PATTERN010:return 0==c%3;case e.PATTERN011:return 0==(b+c)%3;case e.PATTERN100:return 0==(Math.floor(b/2)+Math.floor(c/3))%2;case e.PATTERN101:return 0==b*c%2+b*c%3;case e.PATTERN110:return 0==(b*c%2+b*c%3)%2;case e.PATTERN111:return 0==(b*c%3+(b+c)%2)%2;default:throw new Error("bad maskPattern:"+a)}},getErrorCorrectPolynomial:function(a){for(var b=new i([1],0),c=0;a>c;c++)b=b.multiply(new i([1,g.gexp(c)],0));return b},getLengthInBits:function(a,b){if(b>=1&&10>b)switch(a){case c.MODE_NUMBER:return 10;case c.MODE_ALPHA_NUM:return 9;case c.MODE_8BIT_BYTE:return 8;case c.MODE_KANJI:return 8;default:throw new Error("mode:"+a)}else if(27>b)switch(a){case c.MODE_NUMBER:return 12;case c.MODE_ALPHA_NUM:return 11;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 10;default:throw new Error("mode:"+a)}else{if(!(41>b))throw new Error("type:"+b);switch(a){case c.MODE_NUMBER:return 14;case c.MODE_ALPHA_NUM:return 13;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 12;default:throw new Error("mode:"+a)}}},getLostPoint:function(a){for(var b=a.getModuleCount(),c=0,d=0;b>d;d++)for(var e=0;b>e;e++){for(var f=0,g=a.isDark(d,e),h=-1;1>=h;h++)if(!(0>d+h||d+h>=b))for(var i=-1;1>=i;i++)0>e+i||e+i>=b||(0!=h||0!=i)&&g==a.isDark(d+h,e+i)&&f++;f>5&&(c+=3+f-5)}for(var d=0;b-1>d;d++)for(var e=0;b-1>e;e++){var j=0;a.isDark(d,e)&&j++,a.isDark(d+1,e)&&j++,a.isDark(d,e+1)&&j++,a.isDark(d+1,e+1)&&j++,(0==j||4==j)&&(c+=3)}for(var d=0;b>d;d++)for(var e=0;b-6>e;e++)a.isDark(d,e)&&!a.isDark(d,e+1)&&a.isDark(d,e+2)&&a.isDark(d,e+3)&&a.isDark(d,e+4)&&!a.isDark(d,e+5)&&a.isDark(d,e+6)&&(c+=40);for(var e=0;b>e;e++)for(var d=0;b-6>d;d++)a.isDark(d,e)&&!a.isDark(d+1,e)&&a.isDark(d+2,e)&&a.isDark(d+3,e)&&a.isDark(d+4,e)&&!a.isDark(d+5,e)&&a.isDark(d+6,e)&&(c+=40);for(var k=0,e=0;b>e;e++)for(var d=0;b>d;d++)a.isDark(d,e)&&k++;var l=Math.abs(100*k/b/b-50)/5;return c+=10*l}},g={glog:function(a){if(1>a)throw new Error("glog("+a+")");return g.LOG_TABLE[a]},gexp:function(a){for(;0>a;)a+=255;for(;a>=256;)a-=255;return g.EXP_TABLE[a]},EXP_TABLE:new Array(256),LOG_TABLE:new Array(256)},h=0;8>h;h++)g.EXP_TABLE[h]=1<<h;for(var h=8;256>h;h++)g.EXP_TABLE[h]=g.EXP_TABLE[h-4]^g.EXP_TABLE[h-5]^g.EXP_TABLE[h-6]^g.EXP_TABLE[h-8];for(var h=0;255>h;h++)g.LOG_TABLE[g.EXP_TABLE[h]]=h;i.prototype={get:function(a){return this.num[a]},getLength:function(){return this.num.length},multiply:function(a){for(var b=new Array(this.getLength()+a.getLength()-1),c=0;c<this.getLength();c++)for(var d=0;d<a.getLength();d++)b[c+d]^=g.gexp(g.glog(this.get(c))+g.glog(a.get(d)));return new i(b,0)},mod:function(a){if(this.getLength()-a.getLength()<0)return this;for(var b=g.glog(this.get(0))-g.glog(a.get(0)),c=new Array(this.getLength()),d=0;d<this.getLength();d++)c[d]=this.get(d);for(var d=0;d<a.getLength();d++)c[d]^=g.gexp(g.glog(a.get(d))+b);return new i(c,0).mod(a)}},j.RS_BLOCK_TABLE=[[1,26,19],[1,26,16],[1,26,13],[1,26,9],[1,44,34],[1,44,28],[1,44,22],[1,44,16],[1,70,55],[1,70,44],[2,35,17],[2,35,13],[1,100,80],[2,50,32],[2,50,24],[4,25,9],[1,134,108],[2,67,43],[2,33,15,2,34,16],[2,33,11,2,34,12],[2,86,68],[4,43,27],[4,43,19],[4,43,15],[2,98,78],[4,49,31],[2,32,14,4,33,15],[4,39,13,1,40,14],[2,121,97],[2,60,38,2,61,39],[4,40,18,2,41,19],[4,40,14,2,41,15],[2,146,116],[3,58,36,2,59,37],[4,36,16,4,37,17],[4,36,12,4,37,13],[2,86,68,2,87,69],[4,69,43,1,70,44],[6,43,19,2,44,20],[6,43,15,2,44,16],[4,101,81],[1,80,50,4,81,51],[4,50,22,4,51,23],[3,36,12,8,37,13],[2,116,92,2,117,93],[6,58,36,2,59,37],[4,46,20,6,47,21],[7,42,14,4,43,15],[4,133,107],[8,59,37,1,60,38],[8,44,20,4,45,21],[12,33,11,4,34,12],[3,145,115,1,146,116],[4,64,40,5,65,41],[11,36,16,5,37,17],[11,36,12,5,37,13],[5,109,87,1,110,88],[5,65,41,5,66,42],[5,54,24,7,55,25],[11,36,12],[5,122,98,1,123,99],[7,73,45,3,74,46],[15,43,19,2,44,20],[3,45,15,13,46,16],[1,135,107,5,136,108],[10,74,46,1,75,47],[1,50,22,15,51,23],[2,42,14,17,43,15],[5,150,120,1,151,121],[9,69,43,4,70,44],[17,50,22,1,51,23],[2,42,14,19,43,15],[3,141,113,4,142,114],[3,70,44,11,71,45],[17,47,21,4,48,22],[9,39,13,16,40,14],[3,135,107,5,136,108],[3,67,41,13,68,42],[15,54,24,5,55,25],[15,43,15,10,44,16],[4,144,116,4,145,117],[17,68,42],[17,50,22,6,51,23],[19,46,16,6,47,17],[2,139,111,7,140,112],[17,74,46],[7,54,24,16,55,25],[34,37,13],[4,151,121,5,152,122],[4,75,47,14,76,48],[11,54,24,14,55,25],[16,45,15,14,46,16],[6,147,117,4,148,118],[6,73,45,14,74,46],[11,54,24,16,55,25],[30,46,16,2,47,17],[8,132,106,4,133,107],[8,75,47,13,76,48],[7,54,24,22,55,25],[22,45,15,13,46,16],[10,142,114,2,143,115],[19,74,46,4,75,47],[28,50,22,6,51,23],[33,46,16,4,47,17],[8,152,122,4,153,123],[22,73,45,3,74,46],[8,53,23,26,54,24],[12,45,15,28,46,16],[3,147,117,10,148,118],[3,73,45,23,74,46],[4,54,24,31,55,25],[11,45,15,31,46,16],[7,146,116,7,147,117],[21,73,45,7,74,46],[1,53,23,37,54,24],[19,45,15,26,46,16],[5,145,115,10,146,116],[19,75,47,10,76,48],[15,54,24,25,55,25],[23,45,15,25,46,16],[13,145,115,3,146,116],[2,74,46,29,75,47],[42,54,24,1,55,25],[23,45,15,28,46,16],[17,145,115],[10,74,46,23,75,47],[10,54,24,35,55,25],[19,45,15,35,46,16],[17,145,115,1,146,116],[14,74,46,21,75,47],[29,54,24,19,55,25],[11,45,15,46,46,16],[13,145,115,6,146,116],[14,74,46,23,75,47],[44,54,24,7,55,25],[59,46,16,1,47,17],[12,151,121,7,152,122],[12,75,47,26,76,48],[39,54,24,14,55,25],[22,45,15,41,46,16],[6,151,121,14,152,122],[6,75,47,34,76,48],[46,54,24,10,55,25],[2,45,15,64,46,16],[17,152,122,4,153,123],[29,74,46,14,75,47],[49,54,24,10,55,25],[24,45,15,46,46,16],[4,152,122,18,153,123],[13,74,46,32,75,47],[48,54,24,14,55,25],[42,45,15,32,46,16],[20,147,117,4,148,118],[40,75,47,7,76,48],[43,54,24,22,55,25],[10,45,15,67,46,16],[19,148,118,6,149,119],[18,75,47,31,76,48],[34,54,24,34,55,25],[20,45,15,61,46,16]],j.getRSBlocks=function(a,b){var c=j.getRsBlockTable(a,b);if(void 0==c)throw new Error("bad rs block @ typeNumber:"+a+"/errorCorrectLevel:"+b);for(var d=c.length/3,e=[],f=0;d>f;f++)for(var g=c[3*f+0],h=c[3*f+1],i=c[3*f+2],k=0;g>k;k++)e.push(new j(h,i));return e},j.getRsBlockTable=function(a,b){switch(b){case d.L:return j.RS_BLOCK_TABLE[4*(a-1)+0];case d.M:return j.RS_BLOCK_TABLE[4*(a-1)+1];case d.Q:return j.RS_BLOCK_TABLE[4*(a-1)+2];case d.H:return j.RS_BLOCK_TABLE[4*(a-1)+3];default:return void 0}},k.prototype={get:function(a){var b=Math.floor(a/8);return 1==(1&this.buffer[b]>>>7-a%8)},put:function(a,b){for(var c=0;b>c;c++)this.putBit(1==(1&a>>>b-c-1))},getLengthInBits:function(){return this.length},putBit:function(a){var b=Math.floor(this.length/8);this.buffer.length<=b&&this.buffer.push(0),a&&(this.buffer[b]|=128>>>this.length%8),this.length++}};var l=[[17,14,11,7],[32,26,20,14],[53,42,32,24],[78,62,46,34],[106,84,60,44],[134,106,74,58],[154,122,86,64],[192,152,108,84],[230,180,130,98],[271,213,151,119],[321,251,177,137],[367,287,203,155],[425,331,241,177],[458,362,258,194],[520,412,292,220],[586,450,322,250],[644,504,364,280],[718,560,394,310],[792,624,442,338],[858,666,482,382],[929,711,509,403],[1003,779,565,439],[1091,857,611,461],[1171,911,661,511],[1273,997,715,535],[1367,1059,751,593],[1465,1125,805,625],[1528,1190,868,658],[1628,1264,908,698],[1732,1370,982,742],[1840,1452,1030,790],[1952,1538,1112,842],[2068,1628,1168,898],[2188,1722,1228,958],[2303,1809,1283,983],[2431,1911,1351,1051],[2563,1989,1423,1093],[2699,2099,1499,1139],[2809,2213,1579,1219],[2953,2331,1663,1273]],o=function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){function g(a,b){var c=document.createElementNS("http://www.w3.org/2000/svg",a);for(var d in b)b.hasOwnProperty(d)&&c.setAttribute(d,b[d]);return c}var b=this._htOption,c=this._el,d=a.getModuleCount();Math.floor(b.width/d),Math.floor(b.height/d),this.clear();var h=g("svg",{viewBox:"0 0 "+String(d)+" "+String(d),width:"100%",height:"100%",fill:b.colorLight});h.setAttributeNS("http://www.w3.org/2000/xmlns/","xmlns:xlink","http://www.w3.org/1999/xlink"),c.appendChild(h),h.appendChild(g("rect",{fill:b.colorDark,width:"1",height:"1",id:"template"}));for(var i=0;d>i;i++)for(var j=0;d>j;j++)if(a.isDark(i,j)){var k=g("use",{x:String(i),y:String(j)});k.setAttributeNS("http://www.w3.org/1999/xlink","href","#template"),h.appendChild(k)}},a.prototype.clear=function(){for(;this._el.hasChildNodes();)this._el.removeChild(this._el.lastChild)},a}(),p="svg"===document.documentElement.tagName.toLowerCase(),q=p?o:m()?function(){function a(){this._elImage.src=this._elCanvas.toDataURL("image/png"),this._elImage.style.display="block",this._elCanvas.style.display="none"}function d(a,b){var c=this;if(c._fFail=b,c._fSuccess=a,null===c._bSupportDataURI){var d=document.createElement("img"),e=function(){c._bSupportDataURI=!1,c._fFail&&_fFail.call(c)},f=function(){c._bSupportDataURI=!0,c._fSuccess&&c._fSuccess.call(c)};return d.onabort=e,d.onerror=e,d.onload=f,d.src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==",void 0}c._bSupportDataURI===!0&&c._fSuccess?c._fSuccess.call(c):c._bSupportDataURI===!1&&c._fFail&&c._fFail.call(c)}if(this._android&&this._android<=2.1){var b=1/window.devicePixelRatio,c=CanvasRenderingContext2D.prototype.drawImage;CanvasRenderingContext2D.prototype.drawImage=function(a,d,e,f,g,h,i,j){if("nodeName"in a&&/img/i.test(a.nodeName))for(var l=arguments.length-1;l>=1;l--)arguments[l]=arguments[l]*b;else"undefined"==typeof j&&(arguments[1]*=b,arguments[2]*=b,arguments[3]*=b,arguments[4]*=b);c.apply(this,arguments)}}var e=function(a,b){this._bIsPainted=!1,this._android=n(),this._htOption=b,this._elCanvas=document.createElement("canvas"),this._elCanvas.width=b.width,this._elCanvas.height=b.height,a.appendChild(this._elCanvas),this._el=a,this._oContext=this._elCanvas.getContext("2d"),this._bIsPainted=!1,this._elImage=document.createElement("img"),this._elImage.style.display="none",this._el.appendChild(this._elImage),this._bSupportDataURI=null};return e.prototype.draw=function(a){var b=this._elImage,c=this._oContext,d=this._htOption,e=a.getModuleCount(),f=d.width/e,g=d.height/e,h=Math.round(f),i=Math.round(g);b.style.display="none",this.clear();for(var j=0;e>j;j++)for(var k=0;e>k;k++){var l=a.isDark(j,k),m=k*f,n=j*g;c.strokeStyle=l?d.colorDark:d.colorLight,c.lineWidth=1,c.fillStyle=l?d.colorDark:d.colorLight,c.fillRect(m,n,f,g),c.strokeRect(Math.floor(m)+.5,Math.floor(n)+.5,h,i),c.strokeRect(Math.ceil(m)-.5,Math.ceil(n)-.5,h,i)}this._bIsPainted=!0},e.prototype.makeImage=function(){this._bIsPainted&&d.call(this,a)},e.prototype.isPainted=function(){return this._bIsPainted},e.prototype.clear=function(){this._oContext.clearRect(0,0,this._elCanvas.width,this._elCanvas.height),this._bIsPainted=!1},e.prototype.round=function(a){return a?Math.floor(1e3*a)/1e3:a},e}():function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){for(var b=this._htOption,c=this._el,d=a.getModuleCount(),e=Math.floor(b.width/d),f=Math.floor(b.height/d),g=['<table style="border:0;border-collapse:collapse;">'],h=0;d>h;h++){g.push("<tr>");for(var i=0;d>i;i++)g.push('<td style="border:0;border-collapse:collapse;padding:0;margin:0;width:'+e+"px;height:"+f+"px;background-color:"+(a.isDark(h,i)?b.colorDark:b.colorLight)+';"></td>');g.push("</tr>")}g.push("</table>"),c.innerHTML=g.join("");var j=c.childNodes[0],k=(b.width-j.offsetWidth)/2,l=(b.height-j.offsetHeight)/2;k>0&&l>0&&(j.style.margin=l+"px "+k+"px")},a.prototype.clear=function(){this._el.innerHTML=""},a}();QRCode=function(a,b){if(this._htOption={width:256,height:256,typeNumber:4,colorDark:"#000000",colorLight:"#ffffff",correctLevel:d.H},"string"==typeof b&&(b={text:b}),b)for(var c in b)this._htOption[c]=b[c];"string"==typeof a&&(a=document.getElementById(a)),this._android=n(),this._el=a,this._oQRCode=null,this._oDrawing=new q(this._el,this._htOption),this._htOption.text&&this.makeCode(this._htOption.text)},QRCode.prototype.makeCode=function(a){this._oQRCode=new b(r(a,this._htOption.correctLevel),this._htOption.correctLevel),this._oQRCode.addData(a),this._oQRCode.make(),this._el.title=a,this._oDrawing.draw(this._oQRCode),this.makeImage()},QRCode.prototype.makeImage=function(){"function"==typeof this._oDrawing.makeImage&&(!this._android||this._android>=3)&&this._oDrawing.makeImage()},QRCode.prototype.clear=function(){this._oDrawing.clear()},QRCode.CorrectLevel=d}();
EOF
fi





echo -e "======================== $dir_panel_js/shell.js ========================\n"
if [ ! -f $dir_panel_js/shell.js ];then
  cat>$dir_panel_js/shell.js<<\EOF
// CodeMirror, copyright (c) by Marijn Haverbeke and others
// Distributed under an MIT license: https://codemirror.net/LICENSE

(function(mod) {
  if (typeof exports == "object" && typeof module == "object") // CommonJS
    mod(require("../../lib/codemirror"));
  else if (typeof define == "function" && define.amd) // AMD
    define(["../../lib/codemirror"], mod);
  else // Plain browser env
    mod(CodeMirror);
})(function(CodeMirror) {
"use strict";

CodeMirror.defineMode('shell', function() {

  var words = {};
  function define(style, dict) {
    for(var i = 0; i < dict.length; i++) {
      words[dict[i]] = style;
    }
  };

  var commonAtoms = ["true", "false"];
  var commonKeywords = ["if", "then", "do", "else", "elif", "while", "until", "for", "in", "esac", "fi",
    "fin", "fil", "done", "exit", "set", "unset", "export", "function"];
  var commonCommands = ["ab", "awk", "bash", "beep", "cat", "cc", "cd", "chown", "chmod", "chroot", "clear",
    "cp", "curl", "cut", "diff", "echo", "find", "gawk", "gcc", "get", "git", "grep", "hg", "kill", "killall",
    "ln", "ls", "make", "mkdir", "openssl", "mv", "nc", "nl", "node", "npm", "ping", "ps", "restart", "rm",
    "rmdir", "sed", "service", "sh", "shopt", "shred", "source", "sort", "sleep", "ssh", "start", "stop",
    "su", "sudo", "svn", "tee", "telnet", "top", "touch", "vi", "vim", "wall", "wc", "wget", "who", "write",
    "yes", "zsh"];

  CodeMirror.registerHelper("hintWords", "shell", commonAtoms.concat(commonKeywords, commonCommands));

  define('atom', commonAtoms);
  define('keyword', commonKeywords);
  define('builtin', commonCommands);

  function tokenBase(stream, state) {
    if (stream.eatSpace()) return null;

    var sol = stream.sol();
    var ch = stream.next();

    if (ch === '\\') {
      stream.next();
      return null;
    }
    if (ch === '\'' || ch === '"' || ch === '`') {
      state.tokens.unshift(tokenString(ch, ch === "`" ? "quote" : "string"));
      return tokenize(stream, state);
    }
    if (ch === '#') {
      if (sol && stream.eat('!')) {
        stream.skipToEnd();
        return 'meta'; // 'comment'?
      }
      stream.skipToEnd();
      return 'comment';
    }
    if (ch === '$') {
      state.tokens.unshift(tokenDollar);
      return tokenize(stream, state);
    }
    if (ch === '+' || ch === '=') {
      return 'operator';
    }
    if (ch === '-') {
      stream.eat('-');
      stream.eatWhile(/\w/);
      return 'attribute';
    }
    if (ch == "<") {
      if (stream.match("<<")) return "operator"
      var heredoc = stream.match(/^<-?\s*['"]?([^'"]*)['"]?/)
      if (heredoc) {
        state.tokens.unshift(tokenHeredoc(heredoc[1]))
        return 'string-2'
      }
    }
    if (/\d/.test(ch)) {
      stream.eatWhile(/\d/);
      if(stream.eol() || !/\w/.test(stream.peek())) {
        return 'number';
      }
    }
    stream.eatWhile(/[\w-]/);
    var cur = stream.current();
    if (stream.peek() === '=' && /\w+/.test(cur)) return 'def';
    return words.hasOwnProperty(cur) ? words[cur] : null;
  }

  function tokenString(quote, style) {
    var close = quote == "(" ? ")" : quote == "{" ? "}" : quote
    return function(stream, state) {
      var next, escaped = false;
      while ((next = stream.next()) != null) {
        if (next === close && !escaped) {
          state.tokens.shift();
          break;
        } else if (next === '$' && !escaped && quote !== "'" && stream.peek() != close) {
          escaped = true;
          stream.backUp(1);
          state.tokens.unshift(tokenDollar);
          break;
        } else if (!escaped && quote !== close && next === quote) {
          state.tokens.unshift(tokenString(quote, style))
          return tokenize(stream, state)
        } else if (!escaped && /['"]/.test(next) && !/['"]/.test(quote)) {
          state.tokens.unshift(tokenStringStart(next, "string"));
          stream.backUp(1);
          break;
        }
        escaped = !escaped && next === '\\';
      }
      return style;
    };
  };

  function tokenStringStart(quote, style) {
    return function(stream, state) {
      state.tokens[0] = tokenString(quote, style)
      stream.next()
      return tokenize(stream, state)
    }
  }

  var tokenDollar = function(stream, state) {
    if (state.tokens.length > 1) stream.eat('$');
    var ch = stream.next()
    if (/['"({]/.test(ch)) {
      state.tokens[0] = tokenString(ch, ch == "(" ? "quote" : ch == "{" ? "def" : "string");
      return tokenize(stream, state);
    }
    if (!/\d/.test(ch)) stream.eatWhile(/\w/);
    state.tokens.shift();
    return 'def';
  };

  function tokenHeredoc(delim) {
    return function(stream, state) {
      if (stream.sol() && stream.string == delim) state.tokens.shift()
      stream.skipToEnd()
      return "string-2"
    }
  }

  function tokenize(stream, state) {
    return (state.tokens[0] || tokenBase) (stream, state);
  };

  return {
    startState: function() {return {tokens:[]};},
    token: function(stream, state) {
      return tokenize(stream, state);
    },
    closeBrackets: "()[]{}''\"\"``",
    lineComment: '#',
    fold: "brace"
  };
});

CodeMirror.defineMIME('text/x-sh', 'shell');
// Apache uses a slightly different Media Type for Shell scripts
// http://svn.apache.org/repos/asf/httpd/httpd/trunk/docs/conf/mime.types
CodeMirror.defineMIME('application/x-sh', 'shell');

});
EOF
fi





echo -e "======================== $dir_panel_js/sublime.js ========================\n"
if [ ! -f $dir_panel_js/sublime.js ];then
  cat>$dir_panel_js/sublime.js<<\EOF
// CodeMirror, copyright (c) by Marijn Haverbeke and others
// Distributed under an MIT license: https://codemirror.net/LICENSE

// A rough approximation of Sublime Text's keybindings
// Depends on addon/search/searchcursor.js and optionally addon/dialog/dialogs.js

(function(mod) {
  if (typeof exports == "object" && typeof module == "object") // CommonJS
    mod(require("../lib/codemirror"), require("../addon/search/searchcursor"), require("../addon/edit/matchbrackets"));
  else if (typeof define == "function" && define.amd) // AMD
    define(["../lib/codemirror", "../addon/search/searchcursor", "../addon/edit/matchbrackets"], mod);
  else // Plain browser env
    mod(CodeMirror);
})(function(CodeMirror) {
  "use strict";

  var cmds = CodeMirror.commands;
  var Pos = CodeMirror.Pos;

  // This is not exactly Sublime's algorithm. I couldn't make heads or tails of that.
  function findPosSubword(doc, start, dir) {
    if (dir < 0 && start.ch == 0) return doc.clipPos(Pos(start.line - 1));
    var line = doc.getLine(start.line);
    if (dir > 0 && start.ch >= line.length) return doc.clipPos(Pos(start.line + 1, 0));
    var state = "start", type, startPos = start.ch;
    for (var pos = startPos, e = dir < 0 ? 0 : line.length, i = 0; pos != e; pos += dir, i++) {
      var next = line.charAt(dir < 0 ? pos - 1 : pos);
      var cat = next != "_" && CodeMirror.isWordChar(next) ? "w" : "o";
      if (cat == "w" && next.toUpperCase() == next) cat = "W";
      if (state == "start") {
        if (cat != "o") { state = "in"; type = cat; }
        else startPos = pos + dir
      } else if (state == "in") {
        if (type != cat) {
          if (type == "w" && cat == "W" && dir < 0) pos--;
          if (type == "W" && cat == "w" && dir > 0) { // From uppercase to lowercase
            if (pos == startPos + 1) { type = "w"; continue; }
            else pos--;
          }
          break;
        }
      }
    }
    return Pos(start.line, pos);
  }

  function moveSubword(cm, dir) {
    cm.extendSelectionsBy(function(range) {
      if (cm.display.shift || cm.doc.extend || range.empty())
        return findPosSubword(cm.doc, range.head, dir);
      else
        return dir < 0 ? range.from() : range.to();
    });
  }

  cmds.goSubwordLeft = function(cm) { moveSubword(cm, -1); };
  cmds.goSubwordRight = function(cm) { moveSubword(cm, 1); };

  cmds.scrollLineUp = function(cm) {
    var info = cm.getScrollInfo();
    if (!cm.somethingSelected()) {
      var visibleBottomLine = cm.lineAtHeight(info.top + info.clientHeight, "local");
      if (cm.getCursor().line >= visibleBottomLine)
        cm.execCommand("goLineUp");
    }
    cm.scrollTo(null, info.top - cm.defaultTextHeight());
  };
  cmds.scrollLineDown = function(cm) {
    var info = cm.getScrollInfo();
    if (!cm.somethingSelected()) {
      var visibleTopLine = cm.lineAtHeight(info.top, "local")+1;
      if (cm.getCursor().line <= visibleTopLine)
        cm.execCommand("goLineDown");
    }
    cm.scrollTo(null, info.top + cm.defaultTextHeight());
  };

  cmds.splitSelectionByLine = function(cm) {
    var ranges = cm.listSelections(), lineRanges = [];
    for (var i = 0; i < ranges.length; i++) {
      var from = ranges[i].from(), to = ranges[i].to();
      for (var line = from.line; line <= to.line; ++line)
        if (!(to.line > from.line && line == to.line && to.ch == 0))
          lineRanges.push({anchor: line == from.line ? from : Pos(line, 0),
                           head: line == to.line ? to : Pos(line)});
    }
    cm.setSelections(lineRanges, 0);
  };

  cmds.singleSelectionTop = function(cm) {
    var range = cm.listSelections()[0];
    cm.setSelection(range.anchor, range.head, {scroll: false});
  };

  cmds.selectLine = function(cm) {
    var ranges = cm.listSelections(), extended = [];
    for (var i = 0; i < ranges.length; i++) {
      var range = ranges[i];
      extended.push({anchor: Pos(range.from().line, 0),
                     head: Pos(range.to().line + 1, 0)});
    }
    cm.setSelections(extended);
  };

  function insertLine(cm, above) {
    if (cm.isReadOnly()) return CodeMirror.Pass
    cm.operation(function() {
      var len = cm.listSelections().length, newSelection = [], last = -1;
      for (var i = 0; i < len; i++) {
        var head = cm.listSelections()[i].head;
        if (head.line <= last) continue;
        var at = Pos(head.line + (above ? 0 : 1), 0);
        cm.replaceRange("\n", at, null, "+insertLine");
        cm.indentLine(at.line, null, true);
        newSelection.push({head: at, anchor: at});
        last = head.line + 1;
      }
      cm.setSelections(newSelection);
    });
    cm.execCommand("indentAuto");
  }

  cmds.insertLineAfter = function(cm) { return insertLine(cm, false); };

  cmds.insertLineBefore = function(cm) { return insertLine(cm, true); };

  function wordAt(cm, pos) {
    var start = pos.ch, end = start, line = cm.getLine(pos.line);
    while (start && CodeMirror.isWordChar(line.charAt(start - 1))) --start;
    while (end < line.length && CodeMirror.isWordChar(line.charAt(end))) ++end;
    return {from: Pos(pos.line, start), to: Pos(pos.line, end), word: line.slice(start, end)};
  }

  cmds.selectNextOccurrence = function(cm) {
    var from = cm.getCursor("from"), to = cm.getCursor("to");
    var fullWord = cm.state.sublimeFindFullWord == cm.doc.sel;
    if (CodeMirror.cmpPos(from, to) == 0) {
      var word = wordAt(cm, from);
      if (!word.word) return;
      cm.setSelection(word.from, word.to);
      fullWord = true;
    } else {
      var text = cm.getRange(from, to);
      var query = fullWord ? new RegExp("\\b" + text + "\\b") : text;
      var cur = cm.getSearchCursor(query, to);
      var found = cur.findNext();
      if (!found) {
        cur = cm.getSearchCursor(query, Pos(cm.firstLine(), 0));
        found = cur.findNext();
      }
      if (!found || isSelectedRange(cm.listSelections(), cur.from(), cur.to())) return
      cm.addSelection(cur.from(), cur.to());
    }
    if (fullWord)
      cm.state.sublimeFindFullWord = cm.doc.sel;
  };

  cmds.skipAndSelectNextOccurrence = function(cm) {
    var prevAnchor = cm.getCursor("anchor"), prevHead = cm.getCursor("head");
    cmds.selectNextOccurrence(cm);
    if (CodeMirror.cmpPos(prevAnchor, prevHead) != 0) {
      cm.doc.setSelections(cm.doc.listSelections()
          .filter(function (sel) {
            return sel.anchor != prevAnchor || sel.head != prevHead;
          }));
    }
  }

  function addCursorToSelection(cm, dir) {
    var ranges = cm.listSelections(), newRanges = [];
    for (var i = 0; i < ranges.length; i++) {
      var range = ranges[i];
      var newAnchor = cm.findPosV(
          range.anchor, dir, "line", range.anchor.goalColumn);
      var newHead = cm.findPosV(
          range.head, dir, "line", range.head.goalColumn);
      newAnchor.goalColumn = range.anchor.goalColumn != null ?
          range.anchor.goalColumn : cm.cursorCoords(range.anchor, "div").left;
      newHead.goalColumn = range.head.goalColumn != null ?
          range.head.goalColumn : cm.cursorCoords(range.head, "div").left;
      var newRange = {anchor: newAnchor, head: newHead};
      newRanges.push(range);
      newRanges.push(newRange);
    }
    cm.setSelections(newRanges);
  }
  cmds.addCursorToPrevLine = function(cm) { addCursorToSelection(cm, -1); };
  cmds.addCursorToNextLine = function(cm) { addCursorToSelection(cm, 1); };

  function isSelectedRange(ranges, from, to) {
    for (var i = 0; i < ranges.length; i++)
      if (CodeMirror.cmpPos(ranges[i].from(), from) == 0 &&
          CodeMirror.cmpPos(ranges[i].to(), to) == 0) return true
    return false
  }

  var mirror = "(){}[]";
  function selectBetweenBrackets(cm) {
    var ranges = cm.listSelections(), newRanges = []
    for (var i = 0; i < ranges.length; i++) {
      var range = ranges[i], pos = range.head, opening = cm.scanForBracket(pos, -1);
      if (!opening) return false;
      for (;;) {
        var closing = cm.scanForBracket(pos, 1);
        if (!closing) return false;
        if (closing.ch == mirror.charAt(mirror.indexOf(opening.ch) + 1)) {
          var startPos = Pos(opening.pos.line, opening.pos.ch + 1);
          if (CodeMirror.cmpPos(startPos, range.from()) == 0 &&
              CodeMirror.cmpPos(closing.pos, range.to()) == 0) {
            opening = cm.scanForBracket(opening.pos, -1);
            if (!opening) return false;
          } else {
            newRanges.push({anchor: startPos, head: closing.pos});
            break;
          }
        }
        pos = Pos(closing.pos.line, closing.pos.ch + 1);
      }
    }
    cm.setSelections(newRanges);
    return true;
  }

  cmds.selectScope = function(cm) {
    selectBetweenBrackets(cm) || cm.execCommand("selectAll");
  };
  cmds.selectBetweenBrackets = function(cm) {
    if (!selectBetweenBrackets(cm)) return CodeMirror.Pass;
  };

  function puncType(type) {
    return !type ? null : /\bpunctuation\b/.test(type) ? type : undefined
  }

  cmds.goToBracket = function(cm) {
    cm.extendSelectionsBy(function(range) {
      var next = cm.scanForBracket(range.head, 1, puncType(cm.getTokenTypeAt(range.head)));
      if (next && CodeMirror.cmpPos(next.pos, range.head) != 0) return next.pos;
      var prev = cm.scanForBracket(range.head, -1, puncType(cm.getTokenTypeAt(Pos(range.head.line, range.head.ch + 1))));
      return prev && Pos(prev.pos.line, prev.pos.ch + 1) || range.head;
    });
  };

  cmds.swapLineUp = function(cm) {
    if (cm.isReadOnly()) return CodeMirror.Pass
    var ranges = cm.listSelections(), linesToMove = [], at = cm.firstLine() - 1, newSels = [];
    for (var i = 0; i < ranges.length; i++) {
      var range = ranges[i], from = range.from().line - 1, to = range.to().line;
      newSels.push({anchor: Pos(range.anchor.line - 1, range.anchor.ch),
                    head: Pos(range.head.line - 1, range.head.ch)});
      if (range.to().ch == 0 && !range.empty()) --to;
      if (from > at) linesToMove.push(from, to);
      else if (linesToMove.length) linesToMove[linesToMove.length - 1] = to;
      at = to;
    }
    cm.operation(function() {
      for (var i = 0; i < linesToMove.length; i += 2) {
        var from = linesToMove[i], to = linesToMove[i + 1];
        var line = cm.getLine(from);
        cm.replaceRange("", Pos(from, 0), Pos(from + 1, 0), "+swapLine");
        if (to > cm.lastLine())
          cm.replaceRange("\n" + line, Pos(cm.lastLine()), null, "+swapLine");
        else
          cm.replaceRange(line + "\n", Pos(to, 0), null, "+swapLine");
      }
      cm.setSelections(newSels);
      cm.scrollIntoView();
    });
  };

  cmds.swapLineDown = function(cm) {
    if (cm.isReadOnly()) return CodeMirror.Pass
    var ranges = cm.listSelections(), linesToMove = [], at = cm.lastLine() + 1;
    for (var i = ranges.length - 1; i >= 0; i--) {
      var range = ranges[i], from = range.to().line + 1, to = range.from().line;
      if (range.to().ch == 0 && !range.empty()) from--;
      if (from < at) linesToMove.push(from, to);
      else if (linesToMove.length) linesToMove[linesToMove.length - 1] = to;
      at = to;
    }
    cm.operation(function() {
      for (var i = linesToMove.length - 2; i >= 0; i -= 2) {
        var from = linesToMove[i], to = linesToMove[i + 1];
        var line = cm.getLine(from);
        if (from == cm.lastLine())
          cm.replaceRange("", Pos(from - 1), Pos(from), "+swapLine");
        else
          cm.replaceRange("", Pos(from, 0), Pos(from + 1, 0), "+swapLine");
        cm.replaceRange(line + "\n", Pos(to, 0), null, "+swapLine");
      }
      cm.scrollIntoView();
    });
  };

  cmds.toggleCommentIndented = function(cm) {
    cm.toggleComment({ indent: true });
  }

  cmds.joinLines = function(cm) {
    var ranges = cm.listSelections(), joined = [];
    for (var i = 0; i < ranges.length; i++) {
      var range = ranges[i], from = range.from();
      var start = from.line, end = range.to().line;
      while (i < ranges.length - 1 && ranges[i + 1].from().line == end)
        end = ranges[++i].to().line;
      joined.push({start: start, end: end, anchor: !range.empty() && from});
    }
    cm.operation(function() {
      var offset = 0, ranges = [];
      for (var i = 0; i < joined.length; i++) {
        var obj = joined[i];
        var anchor = obj.anchor && Pos(obj.anchor.line - offset, obj.anchor.ch), head;
        for (var line = obj.start; line <= obj.end; line++) {
          var actual = line - offset;
          if (line == obj.end) head = Pos(actual, cm.getLine(actual).length + 1);
          if (actual < cm.lastLine()) {
            cm.replaceRange(" ", Pos(actual), Pos(actual + 1, /^\s*/.exec(cm.getLine(actual + 1))[0].length));
            ++offset;
          }
        }
        ranges.push({anchor: anchor || head, head: head});
      }
      cm.setSelections(ranges, 0);
    });
  };

  cmds.duplicateLine = function(cm) {
    cm.operation(function() {
      var rangeCount = cm.listSelections().length;
      for (var i = 0; i < rangeCount; i++) {
        var range = cm.listSelections()[i];
        if (range.empty())
          cm.replaceRange(cm.getLine(range.head.line) + "\n", Pos(range.head.line, 0));
        else
          cm.replaceRange(cm.getRange(range.from(), range.to()), range.from());
      }
      cm.scrollIntoView();
    });
  };


  function sortLines(cm, caseSensitive) {
    if (cm.isReadOnly()) return CodeMirror.Pass
    var ranges = cm.listSelections(), toSort = [], selected;
    for (var i = 0; i < ranges.length; i++) {
      var range = ranges[i];
      if (range.empty()) continue;
      var from = range.from().line, to = range.to().line;
      while (i < ranges.length - 1 && ranges[i + 1].from().line == to)
        to = ranges[++i].to().line;
      if (!ranges[i].to().ch) to--;
      toSort.push(from, to);
    }
    if (toSort.length) selected = true;
    else toSort.push(cm.firstLine(), cm.lastLine());

    cm.operation(function() {
      var ranges = [];
      for (var i = 0; i < toSort.length; i += 2) {
        var from = toSort[i], to = toSort[i + 1];
        var start = Pos(from, 0), end = Pos(to);
        var lines = cm.getRange(start, end, false);
        if (caseSensitive)
          lines.sort();
        else
          lines.sort(function(a, b) {
            var au = a.toUpperCase(), bu = b.toUpperCase();
            if (au != bu) { a = au; b = bu; }
            return a < b ? -1 : a == b ? 0 : 1;
          });
        cm.replaceRange(lines, start, end);
        if (selected) ranges.push({anchor: start, head: Pos(to + 1, 0)});
      }
      if (selected) cm.setSelections(ranges, 0);
    });
  }

  cmds.sortLines = function(cm) { sortLines(cm, true); };
  cmds.sortLinesInsensitive = function(cm) { sortLines(cm, false); };

  cmds.nextBookmark = function(cm) {
    var marks = cm.state.sublimeBookmarks;
    if (marks) while (marks.length) {
      var current = marks.shift();
      var found = current.find();
      if (found) {
        marks.push(current);
        return cm.setSelection(found.from, found.to);
      }
    }
  };

  cmds.prevBookmark = function(cm) {
    var marks = cm.state.sublimeBookmarks;
    if (marks) while (marks.length) {
      marks.unshift(marks.pop());
      var found = marks[marks.length - 1].find();
      if (!found)
        marks.pop();
      else
        return cm.setSelection(found.from, found.to);
    }
  };

  cmds.toggleBookmark = function(cm) {
    var ranges = cm.listSelections();
    var marks = cm.state.sublimeBookmarks || (cm.state.sublimeBookmarks = []);
    for (var i = 0; i < ranges.length; i++) {
      var from = ranges[i].from(), to = ranges[i].to();
      var found = ranges[i].empty() ? cm.findMarksAt(from) : cm.findMarks(from, to);
      for (var j = 0; j < found.length; j++) {
        if (found[j].sublimeBookmark) {
          found[j].clear();
          for (var k = 0; k < marks.length; k++)
            if (marks[k] == found[j])
              marks.splice(k--, 1);
          break;
        }
      }
      if (j == found.length)
        marks.push(cm.markText(from, to, {sublimeBookmark: true, clearWhenEmpty: false}));
    }
  };

  cmds.clearBookmarks = function(cm) {
    var marks = cm.state.sublimeBookmarks;
    if (marks) for (var i = 0; i < marks.length; i++) marks[i].clear();
    marks.length = 0;
  };

  cmds.selectBookmarks = function(cm) {
    var marks = cm.state.sublimeBookmarks, ranges = [];
    if (marks) for (var i = 0; i < marks.length; i++) {
      var found = marks[i].find();
      if (!found)
        marks.splice(i--, 0);
      else
        ranges.push({anchor: found.from, head: found.to});
    }
    if (ranges.length)
      cm.setSelections(ranges, 0);
  };

  function modifyWordOrSelection(cm, mod) {
    cm.operation(function() {
      var ranges = cm.listSelections(), indices = [], replacements = [];
      for (var i = 0; i < ranges.length; i++) {
        var range = ranges[i];
        if (range.empty()) { indices.push(i); replacements.push(""); }
        else replacements.push(mod(cm.getRange(range.from(), range.to())));
      }
      cm.replaceSelections(replacements, "around", "case");
      for (var i = indices.length - 1, at; i >= 0; i--) {
        var range = ranges[indices[i]];
        if (at && CodeMirror.cmpPos(range.head, at) > 0) continue;
        var word = wordAt(cm, range.head);
        at = word.from;
        cm.replaceRange(mod(word.word), word.from, word.to);
      }
    });
  }

  cmds.smartBackspace = function(cm) {
    if (cm.somethingSelected()) return CodeMirror.Pass;

    cm.operation(function() {
      var cursors = cm.listSelections();
      var indentUnit = cm.getOption("indentUnit");

      for (var i = cursors.length - 1; i >= 0; i--) {
        var cursor = cursors[i].head;
        var toStartOfLine = cm.getRange({line: cursor.line, ch: 0}, cursor);
        var column = CodeMirror.countColumn(toStartOfLine, null, cm.getOption("tabSize"));

        // Delete by one character by default
        var deletePos = cm.findPosH(cursor, -1, "char", false);

        if (toStartOfLine && !/\S/.test(toStartOfLine) && column % indentUnit == 0) {
          var prevIndent = new Pos(cursor.line,
            CodeMirror.findColumn(toStartOfLine, column - indentUnit, indentUnit));

          // Smart delete only if we found a valid prevIndent location
          if (prevIndent.ch != cursor.ch) deletePos = prevIndent;
        }

        cm.replaceRange("", deletePos, cursor, "+delete");
      }
    });
  };

  cmds.delLineRight = function(cm) {
    cm.operation(function() {
      var ranges = cm.listSelections();
      for (var i = ranges.length - 1; i >= 0; i--)
        cm.replaceRange("", ranges[i].anchor, Pos(ranges[i].to().line), "+delete");
      cm.scrollIntoView();
    });
  };

  cmds.upcaseAtCursor = function(cm) {
    modifyWordOrSelection(cm, function(str) { return str.toUpperCase(); });
  };
  cmds.downcaseAtCursor = function(cm) {
    modifyWordOrSelection(cm, function(str) { return str.toLowerCase(); });
  };

  cmds.setSublimeMark = function(cm) {
    if (cm.state.sublimeMark) cm.state.sublimeMark.clear();
    cm.state.sublimeMark = cm.setBookmark(cm.getCursor());
  };
  cmds.selectToSublimeMark = function(cm) {
    var found = cm.state.sublimeMark && cm.state.sublimeMark.find();
    if (found) cm.setSelection(cm.getCursor(), found);
  };
  cmds.deleteToSublimeMark = function(cm) {
    var found = cm.state.sublimeMark && cm.state.sublimeMark.find();
    if (found) {
      var from = cm.getCursor(), to = found;
      if (CodeMirror.cmpPos(from, to) > 0) { var tmp = to; to = from; from = tmp; }
      cm.state.sublimeKilled = cm.getRange(from, to);
      cm.replaceRange("", from, to);
    }
  };
  cmds.swapWithSublimeMark = function(cm) {
    var found = cm.state.sublimeMark && cm.state.sublimeMark.find();
    if (found) {
      cm.state.sublimeMark.clear();
      cm.state.sublimeMark = cm.setBookmark(cm.getCursor());
      cm.setCursor(found);
    }
  };
  cmds.sublimeYank = function(cm) {
    if (cm.state.sublimeKilled != null)
      cm.replaceSelection(cm.state.sublimeKilled, null, "paste");
  };

  cmds.showInCenter = function(cm) {
    var pos = cm.cursorCoords(null, "local");
    cm.scrollTo(null, (pos.top + pos.bottom) / 2 - cm.getScrollInfo().clientHeight / 2);
  };

  function getTarget(cm) {
    var from = cm.getCursor("from"), to = cm.getCursor("to");
    if (CodeMirror.cmpPos(from, to) == 0) {
      var word = wordAt(cm, from);
      if (!word.word) return;
      from = word.from;
      to = word.to;
    }
    return {from: from, to: to, query: cm.getRange(from, to), word: word};
  }

  function findAndGoTo(cm, forward) {
    var target = getTarget(cm);
    if (!target) return;
    var query = target.query;
    var cur = cm.getSearchCursor(query, forward ? target.to : target.from);

    if (forward ? cur.findNext() : cur.findPrevious()) {
      cm.setSelection(cur.from(), cur.to());
    } else {
      cur = cm.getSearchCursor(query, forward ? Pos(cm.firstLine(), 0)
                                              : cm.clipPos(Pos(cm.lastLine())));
      if (forward ? cur.findNext() : cur.findPrevious())
        cm.setSelection(cur.from(), cur.to());
      else if (target.word)
        cm.setSelection(target.from, target.to);
    }
  };
  cmds.findUnder = function(cm) { findAndGoTo(cm, true); };
  cmds.findUnderPrevious = function(cm) { findAndGoTo(cm,false); };
  cmds.findAllUnder = function(cm) {
    var target = getTarget(cm);
    if (!target) return;
    var cur = cm.getSearchCursor(target.query);
    var matches = [];
    var primaryIndex = -1;
    while (cur.findNext()) {
      matches.push({anchor: cur.from(), head: cur.to()});
      if (cur.from().line <= target.from.line && cur.from().ch <= target.from.ch)
        primaryIndex++;
    }
    cm.setSelections(matches, primaryIndex);
  };


  var keyMap = CodeMirror.keyMap;
  keyMap.macSublime = {
    "Cmd-Left": "goLineStartSmart",
    "Shift-Tab": "indentLess",
    "Shift-Ctrl-K": "deleteLine",
    "Alt-Q": "wrapLines",
    "Ctrl-Left": "goSubwordLeft",
    "Ctrl-Right": "goSubwordRight",
    "Ctrl-Alt-Up": "scrollLineUp",
    "Ctrl-Alt-Down": "scrollLineDown",
    "Cmd-L": "selectLine",
    "Shift-Cmd-L": "splitSelectionByLine",
    "Esc": "singleSelectionTop",
    "Cmd-Enter": "insertLineAfter",
    "Shift-Cmd-Enter": "insertLineBefore",
    "Cmd-D": "selectNextOccurrence",
    "Shift-Cmd-Space": "selectScope",
    "Shift-Cmd-M": "selectBetweenBrackets",
    "Cmd-M": "goToBracket",
    "Cmd-Ctrl-Up": "swapLineUp",
    "Cmd-Ctrl-Down": "swapLineDown",
    "Cmd-/": "toggleCommentIndented",
    "Cmd-J": "joinLines",
    "Shift-Cmd-D": "duplicateLine",
    "F5": "sortLines",
    "Cmd-F5": "sortLinesInsensitive",
    "F2": "nextBookmark",
    "Shift-F2": "prevBookmark",
    "Cmd-F2": "toggleBookmark",
    "Shift-Cmd-F2": "clearBookmarks",
    "Alt-F2": "selectBookmarks",
    "Backspace": "smartBackspace",
    "Cmd-K Cmd-D": "skipAndSelectNextOccurrence",
    "Cmd-K Cmd-K": "delLineRight",
    "Cmd-K Cmd-U": "upcaseAtCursor",
    "Cmd-K Cmd-L": "downcaseAtCursor",
    "Cmd-K Cmd-Space": "setSublimeMark",
    "Cmd-K Cmd-A": "selectToSublimeMark",
    "Cmd-K Cmd-W": "deleteToSublimeMark",
    "Cmd-K Cmd-X": "swapWithSublimeMark",
    "Cmd-K Cmd-Y": "sublimeYank",
    "Cmd-K Cmd-C": "showInCenter",
    "Cmd-K Cmd-G": "clearBookmarks",
    "Cmd-K Cmd-Backspace": "delLineLeft",
    "Cmd-K Cmd-1": "foldAll",
    "Cmd-K Cmd-0": "unfoldAll",
    "Cmd-K Cmd-J": "unfoldAll",
    "Ctrl-Shift-Up": "addCursorToPrevLine",
    "Ctrl-Shift-Down": "addCursorToNextLine",
    "Cmd-F3": "findUnder",
    "Shift-Cmd-F3": "findUnderPrevious",
    "Alt-F3": "findAllUnder",
    "Shift-Cmd-[": "fold",
    "Shift-Cmd-]": "unfold",
    "Cmd-I": "findIncremental",
    "Shift-Cmd-I": "findIncrementalReverse",
    "Cmd-H": "replace",
    "F3": "findNext",
    "Shift-F3": "findPrev",
    "fallthrough": "macDefault"
  };
  CodeMirror.normalizeKeyMap(keyMap.macSublime);

  keyMap.pcSublime = {
    "Shift-Tab": "indentLess",
    "Shift-Ctrl-K": "deleteLine",
    "Alt-Q": "wrapLines",
    "Ctrl-T": "transposeChars",
    "Alt-Left": "goSubwordLeft",
    "Alt-Right": "goSubwordRight",
    "Ctrl-Up": "scrollLineUp",
    "Ctrl-Down": "scrollLineDown",
    "Ctrl-L": "selectLine",
    "Shift-Ctrl-L": "splitSelectionByLine",
    "Esc": "singleSelectionTop",
    "Ctrl-Enter": "insertLineAfter",
    "Shift-Ctrl-Enter": "insertLineBefore",
    "Ctrl-D": "selectNextOccurrence",
    "Shift-Ctrl-Space": "selectScope",
    "Shift-Ctrl-M": "selectBetweenBrackets",
    "Ctrl-M": "goToBracket",
    "Shift-Ctrl-Up": "swapLineUp",
    "Shift-Ctrl-Down": "swapLineDown",
    "Ctrl-/": "toggleCommentIndented",
    "Ctrl-J": "joinLines",
    "Shift-Ctrl-D": "duplicateLine",
    "F9": "sortLines",
    "Ctrl-F9": "sortLinesInsensitive",
    "F2": "nextBookmark",
    "Shift-F2": "prevBookmark",
    "Ctrl-F2": "toggleBookmark",
    "Shift-Ctrl-F2": "clearBookmarks",
    "Alt-F2": "selectBookmarks",
    "Backspace": "smartBackspace",
    "Ctrl-K Ctrl-D": "skipAndSelectNextOccurrence",
    "Ctrl-K Ctrl-K": "delLineRight",
    "Ctrl-K Ctrl-U": "upcaseAtCursor",
    "Ctrl-K Ctrl-L": "downcaseAtCursor",
    "Ctrl-K Ctrl-Space": "setSublimeMark",
    "Ctrl-K Ctrl-A": "selectToSublimeMark",
    "Ctrl-K Ctrl-W": "deleteToSublimeMark",
    "Ctrl-K Ctrl-X": "swapWithSublimeMark",
    "Ctrl-K Ctrl-Y": "sublimeYank",
    "Ctrl-K Ctrl-C": "showInCenter",
    "Ctrl-K Ctrl-G": "clearBookmarks",
    "Ctrl-K Ctrl-Backspace": "delLineLeft",
    "Ctrl-K Ctrl-1": "foldAll",
    "Ctrl-K Ctrl-0": "unfoldAll",
    "Ctrl-K Ctrl-J": "unfoldAll",
    "Ctrl-Alt-Up": "addCursorToPrevLine",
    "Ctrl-Alt-Down": "addCursorToNextLine",
    "Ctrl-F3": "findUnder",
    "Shift-Ctrl-F3": "findUnderPrevious",
    "Alt-F3": "findAllUnder",
    "Shift-Ctrl-[": "fold",
    "Shift-Ctrl-]": "unfold",
    "Ctrl-I": "findIncremental",
    "Shift-Ctrl-I": "findIncrementalReverse",
    "Ctrl-H": "replace",
    "F3": "findNext",
    "Shift-F3": "findPrev",
    "fallthrough": "pcDefault"
  };
  CodeMirror.normalizeKeyMap(keyMap.pcSublime);

  var mac = keyMap.default == keyMap.macDefault;
  keyMap.sublime = mac ? keyMap.macSublime : keyMap.pcSublime;
});
EOF
fi





echo -e "======================== $dir_panel_js/sweetalert2.js ========================\n"
if [ ! -f $dir_panel_js/sweetalert2.js ];then
  cat>$dir_panel_js/sweetalert2.js<<\EOF
!function(t,e){"object"==typeof exports&&"undefined"!=typeof module?module.exports=e():"function"==typeof define&&define.amd?define(e):(t=t||self).Sweetalert2=e()}(this,function(){"use strict";function r(t){return(r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function a(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function o(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function c(t,e,n){return e&&o(t.prototype,e),n&&o(t,n),t}function s(){return(s=Object.assign||function(t){for(var e=1;e<arguments.length;e++){var n,o=arguments[e];for(n in o)Object.prototype.hasOwnProperty.call(o,n)&&(t[n]=o[n])}return t}).apply(this,arguments)}function u(t){return(u=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function l(t,e){return(l=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}function d(){if("undefined"==typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"==typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],function(){})),!0}catch(t){return!1}}function i(t,e,n){return(i=d()?Reflect.construct:function(t,e,n){var o=[null];o.push.apply(o,e);o=new(Function.bind.apply(t,o));return n&&l(o,n.prototype),o}).apply(null,arguments)}function p(t,e){return!e||"object"!=typeof e&&"function"!=typeof e?function(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}(t):e}function f(t,e,n){return(f="undefined"!=typeof Reflect&&Reflect.get?Reflect.get:function(t,e,n){t=function(t,e){for(;!Object.prototype.hasOwnProperty.call(t,e)&&null!==(t=u(t)););return t}(t,e);if(t){e=Object.getOwnPropertyDescriptor(t,e);return e.get?e.get.call(n):e.value}})(t,e,n||t)}function m(t){return t.charAt(0).toUpperCase()+t.slice(1)}function h(e){return Object.keys(e).map(function(t){return e[t]})}function g(t){return Array.prototype.slice.call(t)}function v(t,e){e='"'.concat(t,'" is deprecated and will be removed in the next major release. Please use "').concat(e,'" instead.'),-1===Y.indexOf(e)&&(Y.push(e),W(e))}function b(t){return t&&"function"==typeof t.toPromise}function y(t){return b(t)?t.toPromise():Promise.resolve(t)}function w(t){return t&&Promise.resolve(t)===t}function C(t){return t instanceof Element||"object"===r(t=t)&&t.jquery}function k(){return document.body.querySelector(".".concat($.container))}function A(t){var e=k();return e?e.querySelector(t):null}function t(t){return A(".".concat(t))}function x(){return t($.popup)}function n(){var t=x();return g(t.querySelectorAll(".".concat($.icon)))}function B(){var t=n().filter(function(t){return wt(t)});return t.length?t[0]:null}function P(){return t($.title)}function E(){return t($.content)}function S(){return t($.image)}function O(){return t($["progress-steps"])}function T(){return t($["validation-message"])}function L(){return A(".".concat($.actions," .").concat($.confirm))}function q(){return A(".".concat($.actions," .").concat($.deny))}function D(){return A(".".concat($.loader))}function j(){return A(".".concat($.actions," .").concat($.cancel))}function I(){return t($.actions)}function M(){return t($.header)}function H(){return t($.footer)}function V(){return t($["timer-progress-bar"])}function R(){return t($.close)}function N(){var t=g(x().querySelectorAll('[tabindex]:not([tabindex="-1"]):not([tabindex="0"])')).sort(function(t,e){return t=parseInt(t.getAttribute("tabindex")),(e=parseInt(e.getAttribute("tabindex")))<t?1:t<e?-1:0}),e=g(x().querySelectorAll('\n  a[href],\n  area[href],\n  input:not([disabled]),\n  select:not([disabled]),\n  textarea:not([disabled]),\n  button:not([disabled]),\n  iframe,\n  object,\n  embed,\n  [tabindex="0"],\n  [contenteditable],\n  audio[controls],\n  video[controls],\n  summary\n')).filter(function(t){return"-1"!==t.getAttribute("tabindex")});return function(t){for(var e=[],n=0;n<t.length;n++)-1===e.indexOf(t[n])&&e.push(t[n]);return e}(t.concat(e)).filter(function(t){return wt(t)})}function U(){return!G()&&!document.body.classList.contains($["no-backdrop"])}function _(e,t){e.textContent="",t&&(t=(new DOMParser).parseFromString(t,"text/html"),g(t.querySelector("head").childNodes).forEach(function(t){e.appendChild(t)}),g(t.querySelector("body").childNodes).forEach(function(t){e.appendChild(t)}))}function F(t,e){if(e){for(var n=e.split(/\s+/),o=0;o<n.length;o++)if(!t.classList.contains(n[o]))return;return 1}}function z(t,e,n){var o,i;if(i=e,g((o=t).classList).forEach(function(t){-1===h($).indexOf(t)&&-1===h(X).indexOf(t)&&-1===h(i.showClass).indexOf(t)&&o.classList.remove(t)}),e.customClass&&e.customClass[n]){if("string"!=typeof e.customClass[n]&&!e.customClass[n].forEach)return W("Invalid type of customClass.".concat(n,'! Expected string or iterable object, got "').concat(r(e.customClass[n]),'"'));vt(t,e.customClass[n])}}var e="SweetAlert2:",W=function(t){console.warn("".concat(e," ").concat("object"===r(t)?t.join(" "):t))},K=function(t){console.error("".concat(e," ").concat(t))},Y=[],Z=function(t){return"function"==typeof t?t():t},Q=Object.freeze({cancel:"cancel",backdrop:"backdrop",close:"close",esc:"esc",timer:"timer"}),J=function(t){var e,n={};for(e in t)n[t[e]]="swal2-"+t[e];return n},$=J(["container","shown","height-auto","iosfix","popup","modal","no-backdrop","no-transition","toast","toast-shown","toast-column","show","hide","close","title","header","content","html-container","actions","confirm","deny","cancel","footer","icon","icon-content","image","input","file","range","select","radio","checkbox","label","textarea","inputerror","input-label","validation-message","progress-steps","active-progress-step","progress-step","progress-step-line","loader","loading","styled","top","top-start","top-end","top-left","top-right","center","center-start","center-end","center-left","center-right","bottom","bottom-start","bottom-end","bottom-left","bottom-right","grow-row","grow-column","grow-fullscreen","rtl","timer-progress-bar","timer-progress-bar-container","scrollbar-measure","icon-success","icon-warning","icon-info","icon-question","icon-error"]),X=J(["success","warning","info","question","error"]),G=function(){return document.body.classList.contains($["toast-shown"])},tt={previousBodyPadding:null};function et(t,e){if(!e)return null;switch(e){case"select":case"textarea":case"file":return yt(t,$[e]);case"checkbox":return t.querySelector(".".concat($.checkbox," input"));case"radio":return t.querySelector(".".concat($.radio," input:checked"))||t.querySelector(".".concat($.radio," input:first-child"));case"range":return t.querySelector(".".concat($.range," input"));default:return yt(t,$.input)}}function nt(t){var e;t.focus(),"file"!==t.type&&(e=t.value,t.value="",t.value=e)}function ot(t,e,n){t&&e&&("string"==typeof e&&(e=e.split(/\s+/).filter(Boolean)),e.forEach(function(e){t.forEach?t.forEach(function(t){n?t.classList.add(e):t.classList.remove(e)}):n?t.classList.add(e):t.classList.remove(e)}))}function it(t,e,n){n==="".concat(parseInt(n))&&(n=parseInt(n)),n||0===parseInt(n)?t.style[e]="number"==typeof n?"".concat(n,"px"):n:t.style.removeProperty(e)}function rt(t){var e=1<arguments.length&&void 0!==arguments[1]?arguments[1]:"flex";t.style.display=e}function at(t){t.style.display="none"}function ct(t,e,n,o){(e=t.querySelector(e))&&(e.style[n]=o)}function st(t,e,n){e?rt(t,n):at(t)}function ut(t){return!!(t.scrollHeight>t.clientHeight)}function lt(t){var e=window.getComputedStyle(t),t=parseFloat(e.getPropertyValue("animation-duration")||"0"),e=parseFloat(e.getPropertyValue("transition-duration")||"0");return 0<t||0<e}function dt(t){var e=1<arguments.length&&void 0!==arguments[1]&&arguments[1],n=V();wt(n)&&(e&&(n.style.transition="none",n.style.width="100%"),setTimeout(function(){n.style.transition="width ".concat(t/1e3,"s linear"),n.style.width="0%"},10))}function pt(){return"undefined"==typeof window||"undefined"==typeof document}function ft(t){Mn.isVisible()&&gt!==t.target.value&&Mn.resetValidationMessage(),gt=t.target.value}function mt(t,e){t instanceof HTMLElement?e.appendChild(t):"object"===r(t)?At(t,e):t&&_(e,t)}function ht(t,e){var n,o,i,r,a=I(),c=D(),s=L(),u=q(),l=j();e.showConfirmButton||e.showDenyButton||e.showCancelButton||at(a),z(a,e,"actions"),Pt(s,"confirm",e),Pt(u,"deny",e),Pt(l,"cancel",e),n=s,o=u,i=l,(r=e).buttonsStyling?(vt([n,o,i],$.styled),r.confirmButtonColor&&(n.style.backgroundColor=r.confirmButtonColor),r.denyButtonColor&&(o.style.backgroundColor=r.denyButtonColor),r.cancelButtonColor&&(i.style.backgroundColor=r.cancelButtonColor)):bt([n,o,i],$.styled),e.reverseButtons&&(a.insertBefore(l,c),a.insertBefore(u,c),a.insertBefore(s,c)),_(c,e.loaderHtml),z(c,e,"loader")}var gt,vt=function(t,e){ot(t,e,!0)},bt=function(t,e){ot(t,e,!1)},yt=function(t,e){for(var n=0;n<t.childNodes.length;n++)if(F(t.childNodes[n],e))return t.childNodes[n]},wt=function(t){return!(!t||!(t.offsetWidth||t.offsetHeight||t.getClientRects().length))},Ct='\n <div aria-labelledby="'.concat($.title,'" aria-describedby="').concat($.content,'" class="').concat($.popup,'" tabindex="-1">\n   <div class="').concat($.header,'">\n     <ul class="').concat($["progress-steps"],'"></ul>\n     <div class="').concat($.icon," ").concat(X.error,'"></div>\n     <div class="').concat($.icon," ").concat(X.question,'"></div>\n     <div class="').concat($.icon," ").concat(X.warning,'"></div>\n     <div class="').concat($.icon," ").concat(X.info,'"></div>\n     <div class="').concat($.icon," ").concat(X.success,'"></div>\n     <img class="').concat($.image,'" />\n     <h2 class="').concat($.title,'" id="').concat($.title,'"></h2>\n     <button type="button" class="').concat($.close,'"></button>\n   </div>\n   <div class="').concat($.content,'">\n     <div id="').concat($.content,'" class="').concat($["html-container"],'"></div>\n     <input class="').concat($.input,'" />\n     <input type="file" class="').concat($.file,'" />\n     <div class="').concat($.range,'">\n       <input type="range" />\n       <output></output>\n     </div>\n     <select class="').concat($.select,'"></select>\n     <div class="').concat($.radio,'"></div>\n     <label for="').concat($.checkbox,'" class="').concat($.checkbox,'">\n       <input type="checkbox" />\n       <span class="').concat($.label,'"></span>\n     </label>\n     <textarea class="').concat($.textarea,'"></textarea>\n     <div class="').concat($["validation-message"],'" id="').concat($["validation-message"],'"></div>\n   </div>\n   <div class="').concat($.actions,'">\n     <div class="').concat($.loader,'"></div>\n     <button type="button" class="').concat($.confirm,'"></button>\n     <button type="button" class="').concat($.deny,'"></button>\n     <button type="button" class="').concat($.cancel,'"></button>\n   </div>\n   <div class="').concat($.footer,'"></div>\n   <div class="').concat($["timer-progress-bar-container"],'">\n     <div class="').concat($["timer-progress-bar"],'"></div>\n   </div>\n </div>\n').replace(/(^|\n)\s*/g,""),kt=function(t){var e,n,o,i,r,a=!!(i=k())&&(i.parentNode.removeChild(i),bt([document.documentElement,document.body],[$["no-backdrop"],$["toast-shown"],$["has-column"]]),!0);pt()?K("SweetAlert2 requires document to initialize"):((r=document.createElement("div")).className=$.container,a&&vt(r,$["no-transition"]),_(r,Ct),(i="string"==typeof(e=t.target)?document.querySelector(e):e).appendChild(r),a=t,(e=x()).setAttribute("role",a.toast?"alert":"dialog"),e.setAttribute("aria-live",a.toast?"polite":"assertive"),a.toast||e.setAttribute("aria-modal","true"),r=i,"rtl"===window.getComputedStyle(r).direction&&vt(k(),$.rtl),t=E(),a=yt(t,$.input),e=yt(t,$.file),n=t.querySelector(".".concat($.range," input")),o=t.querySelector(".".concat($.range," output")),i=yt(t,$.select),r=t.querySelector(".".concat($.checkbox," input")),t=yt(t,$.textarea),a.oninput=ft,e.onchange=ft,i.onchange=ft,r.onchange=ft,t.oninput=ft,n.oninput=function(t){ft(t),o.value=n.value},n.onchange=function(t){ft(t),n.nextSibling.value=n.value})},At=function(t,e){t.jquery?xt(e,t):_(e,t.toString())},xt=function(t,e){if(t.textContent="",0 in e)for(var n=0;n in e;n++)t.appendChild(e[n].cloneNode(!0));else t.appendChild(e.cloneNode(!0))},Bt=function(){if(pt())return!1;var t,e=document.createElement("div"),n={WebkitAnimation:"webkitAnimationEnd",OAnimation:"oAnimationEnd oanimationend",animation:"animationend"};for(t in n)if(Object.prototype.hasOwnProperty.call(n,t)&&void 0!==e.style[t])return n[t];return!1}();function Pt(t,e,n){st(t,n["show".concat(m(e),"Button")],"inline-block"),_(t,n["".concat(e,"ButtonText")]),t.setAttribute("aria-label",n["".concat(e,"ButtonAriaLabel")]),t.className=$[e],z(t,n,"".concat(e,"Button")),vt(t,n["".concat(e,"ButtonClass")])}function Et(t,e){var n,o,i=k();i&&(o=i,"string"==typeof(n=e.backdrop)?o.style.background=n:n||vt([document.documentElement,document.body],$["no-backdrop"]),!e.backdrop&&e.allowOutsideClick&&W('"allowOutsideClick" parameter requires `backdrop` parameter to be set to `true`'),o=i,(n=e.position)in $?vt(o,$[n]):(W('The "position" parameter is not valid, defaulting to "center"'),vt(o,$.center)),n=i,!(o=e.grow)||"string"!=typeof o||(o="grow-".concat(o))in $&&vt(n,$[o]),z(i,e,"container"),(e=document.body.getAttribute("data-swal2-queue-step"))&&(i.setAttribute("data-queue-step",e),document.body.removeAttribute("data-swal2-queue-step")))}function St(t,e){t.placeholder&&!e.inputPlaceholder||(t.placeholder=e.inputPlaceholder)}function Ot(t,e,n){var o,i;n.inputLabel&&(t.id=$.input,o=document.createElement("label"),i=$["input-label"],o.setAttribute("for",t.id),o.className=i,vt(o,n.customClass.inputLabel),o.innerText=n.inputLabel,e.insertAdjacentElement("beforebegin",o))}var Tt={promise:new WeakMap,innerParams:new WeakMap,domCache:new WeakMap},Lt=["input","file","range","select","radio","checkbox","textarea"],qt=function(t){if(!Mt[t.input])return K('Unexpected type of input! Expected "text", "email", "password", "number", "tel", "select", "radio", "checkbox", "textarea", "file" or "url", got "'.concat(t.input,'"'));var e=It(t.input),n=Mt[t.input](e,t);rt(n),setTimeout(function(){nt(n)})},Dt=function(t,e){var n=et(E(),t);if(n)for(var o in!function(t){for(var e=0;e<t.attributes.length;e++){var n=t.attributes[e].name;-1===["type","value","style"].indexOf(n)&&t.removeAttribute(n)}}(n),e)"range"===t&&"placeholder"===o||n.setAttribute(o,e[o])},jt=function(t){var e=It(t.input);t.customClass&&vt(e,t.customClass.input)},It=function(t){t=$[t]||$.input;return yt(E(),t)},Mt={};Mt.text=Mt.email=Mt.password=Mt.number=Mt.tel=Mt.url=function(t,e){return"string"==typeof e.inputValue||"number"==typeof e.inputValue?t.value=e.inputValue:w(e.inputValue)||W('Unexpected type of inputValue! Expected "string", "number" or "Promise", got "'.concat(r(e.inputValue),'"')),Ot(t,t,e),St(t,e),t.type=e.input,t},Mt.file=function(t,e){return Ot(t,t,e),St(t,e),t},Mt.range=function(t,e){var n=t.querySelector("input"),o=t.querySelector("output");return n.value=e.inputValue,n.type=e.input,o.value=e.inputValue,Ot(n,t,e),t},Mt.select=function(t,e){var n;return t.textContent="",e.inputPlaceholder&&(n=document.createElement("option"),_(n,e.inputPlaceholder),n.value="",n.disabled=!0,n.selected=!0,t.appendChild(n)),Ot(t,t,e),t},Mt.radio=function(t){return t.textContent="",t},Mt.checkbox=function(t,e){var n=et(E(),"checkbox");n.value=1,n.id=$.checkbox,n.checked=Boolean(e.inputValue);n=t.querySelector("span");return _(n,e.inputPlaceholder),t},Mt.textarea=function(e,t){e.value=t.inputValue,St(e,t),Ot(e,e,t);function n(t){return parseInt(window.getComputedStyle(t).paddingLeft)+parseInt(window.getComputedStyle(t).paddingRight)}var o;return"MutationObserver"in window&&(o=parseInt(window.getComputedStyle(x()).width),new MutationObserver(function(){var t=e.offsetWidth+n(x())+n(E());x().style.width=o<t?"".concat(t,"px"):null}).observe(e,{attributes:!0,attributeFilter:["style"]})),e};function Ht(t,e){var o,i,r,n=E().querySelector("#".concat($.content));e.html?(mt(e.html,n),rt(n,"block")):e.text?(n.textContent=e.text,rt(n,"block")):at(n),t=t,o=e,i=E(),t=Tt.innerParams.get(t),r=!t||o.input!==t.input,Lt.forEach(function(t){var e=$[t],n=yt(i,e);Dt(t,o.inputAttributes),n.className=e,r&&at(n)}),o.input&&(r&&qt(o),jt(o)),z(E(),e,"content")}function Vt(){return k()&&k().getAttribute("data-queue-step")}function Rt(t,o){var i=O();if(!o.progressSteps||0===o.progressSteps.length)return at(i),0;rt(i),i.textContent="";var r=parseInt(void 0===o.currentProgressStep?Vt():o.currentProgressStep);r>=o.progressSteps.length&&W("Invalid currentProgressStep parameter, it should be less than progressSteps.length (currentProgressStep like JS arrays starts from 0)"),o.progressSteps.forEach(function(t,e){var n,t=(n=t,t=document.createElement("li"),vt(t,$["progress-step"]),_(t,n),t);i.appendChild(t),e===r&&vt(t,$["active-progress-step"]),e!==o.progressSteps.length-1&&(t=o,e=document.createElement("li"),vt(e,$["progress-step-line"]),t.progressStepsDistance&&(e.style.width=t.progressStepsDistance),e=e,i.appendChild(e))})}function Nt(t,e){var n=M();z(n,e,"header"),Rt(0,e),n=t,t=e,(n=Tt.innerParams.get(n))&&t.icon===n.icon&&B()?zt(B(),t):(Ft(),t.icon&&(-1!==Object.keys(X).indexOf(t.icon)?(n=A(".".concat($.icon,".").concat(X[t.icon])),rt(n),Kt(n,t),zt(n,t),vt(n,t.showClass.icon)):K('Unknown icon! Expected "success", "error", "warning", "info" or "question", got "'.concat(t.icon,'"')))),function(t){var e=S();if(!t.imageUrl)return at(e);rt(e,""),e.setAttribute("src",t.imageUrl),e.setAttribute("alt",t.imageAlt),it(e,"width",t.imageWidth),it(e,"height",t.imageHeight),e.className=$.image,z(e,t,"image")}(e),n=e,t=P(),st(t,n.title||n.titleText),n.title&&mt(n.title,t),n.titleText&&(t.innerText=n.titleText),z(t,n,"title"),n=e,e=R(),_(e,n.closeButtonHtml),z(e,n,"closeButton"),st(e,n.showCloseButton),e.setAttribute("aria-label",n.closeButtonAriaLabel)}function Ut(t,e){var n,o;o=e,n=x(),it(n,"width",o.width),it(n,"padding",o.padding),o.background&&(n.style.background=o.background),Jt(n,o),Et(0,e),Nt(t,e),Ht(t,e),ht(0,e),o=e,t=H(),st(t,o.footer),o.footer&&mt(o.footer,t),z(t,o,"footer"),"function"==typeof e.didRender?e.didRender(x()):"function"==typeof e.onRender&&e.onRender(x())}function _t(){return L()&&L().click()}var Ft=function(){for(var t=n(),e=0;e<t.length;e++)at(t[e])},zt=function(t,e){Yt(t,e),Wt(),z(t,e,"icon")},Wt=function(){for(var t=x(),e=window.getComputedStyle(t).getPropertyValue("background-color"),n=t.querySelectorAll("[class^=swal2-success-circular-line], .swal2-success-fix"),o=0;o<n.length;o++)n[o].style.backgroundColor=e},Kt=function(t,e){t.textContent="",e.iconHtml?_(t,Zt(e.iconHtml)):"success"===e.icon?_(t,'\n      <div class="swal2-success-circular-line-left"></div>\n      <span class="swal2-success-line-tip"></span> <span class="swal2-success-line-long"></span>\n      <div class="swal2-success-ring"></div> <div class="swal2-success-fix"></div>\n      <div class="swal2-success-circular-line-right"></div>\n    '):"error"===e.icon?_(t,'\n      <span class="swal2-x-mark">\n        <span class="swal2-x-mark-line-left"></span>\n        <span class="swal2-x-mark-line-right"></span>\n      </span>\n    '):_(t,Zt({question:"?",warning:"!",info:"i"}[e.icon]))},Yt=function(t,e){if(e.iconColor){t.style.color=e.iconColor,t.style.borderColor=e.iconColor;for(var n=0,o=[".swal2-success-line-tip",".swal2-success-line-long",".swal2-x-mark-line-left",".swal2-x-mark-line-right"];n<o.length;n++)ct(t,o[n],"backgroundColor",e.iconColor);ct(t,".swal2-success-ring","borderColor",e.iconColor)}},Zt=function(t){return'<div class="'.concat($["icon-content"],'">').concat(t,"</div>")},Qt=[],Jt=function(t,e){t.className="".concat($.popup," ").concat(wt(t)?e.showClass.popup:""),e.toast?(vt([document.documentElement,document.body],$["toast-shown"]),vt(t,$.toast)):vt(t,$.modal),z(t,e,"popup"),"string"==typeof e.customClass&&vt(t,e.customClass),e.icon&&vt(t,$["icon-".concat(e.icon)])};function $t(t){var e=x();e||Mn.fire(),e=x();var n=I(),o=D();!t&&wt(L())&&(t=L()),rt(n),t&&(at(t),o.setAttribute("data-button-to-replace",t.className)),o.parentNode.insertBefore(o,t),vt([e,n],$.loading),rt(o),e.setAttribute("data-loading",!0),e.setAttribute("aria-busy",!0),e.focus()}function Xt(){return new Promise(function(t){var e=window.scrollX,n=window.scrollY;ee.restoreFocusTimeout=setTimeout(function(){ee.previousActiveElement&&ee.previousActiveElement.focus?(ee.previousActiveElement.focus(),ee.previousActiveElement=null):document.body&&document.body.focus(),t()},100),void 0!==e&&void 0!==n&&window.scrollTo(e,n)})}function Gt(){if(ee.timeout)return function(){var t=V(),e=parseInt(window.getComputedStyle(t).width);t.style.removeProperty("transition"),t.style.width="100%";var n=parseInt(window.getComputedStyle(t).width),n=parseInt(e/n*100);t.style.removeProperty("transition"),t.style.width="".concat(n,"%")}(),ee.timeout.stop()}function te(){if(ee.timeout){var t=ee.timeout.start();return dt(t),t}}var ee={},ne=!1,oe={};function ie(t){for(var e=t.target;e&&e!==document;e=e.parentNode)for(var n in oe){var o=e.getAttribute(n);if(o)return void oe[n].fire({template:o})}}function re(t){return Object.prototype.hasOwnProperty.call(se,t)}function ae(t){return le[t]}function ce(t){for(var e in t)re(o=e)||W('Unknown parameter "'.concat(o,'"')),t.toast&&(n=e,-1!==de.indexOf(n)&&W('The parameter "'.concat(n,'" is incompatible with toasts'))),ae(n=e)&&v(n,ae(n));var n,o}var se={title:"",titleText:"",text:"",html:"",footer:"",icon:void 0,iconColor:void 0,iconHtml:void 0,template:void 0,toast:!1,animation:!0,showClass:{popup:"swal2-show",backdrop:"swal2-backdrop-show",icon:"swal2-icon-show"},hideClass:{popup:"swal2-hide",backdrop:"swal2-backdrop-hide",icon:"swal2-icon-hide"},customClass:{},target:"body",backdrop:!0,heightAuto:!0,allowOutsideClick:!0,allowEscapeKey:!0,allowEnterKey:!0,stopKeydownPropagation:!0,keydownListenerCapture:!1,showConfirmButton:!0,showDenyButton:!1,showCancelButton:!1,preConfirm:void 0,preDeny:void 0,confirmButtonText:"OK",confirmButtonAriaLabel:"",confirmButtonColor:void 0,denyButtonText:"No",denyButtonAriaLabel:"",denyButtonColor:void 0,cancelButtonText:"Cancel",cancelButtonAriaLabel:"",cancelButtonColor:void 0,buttonsStyling:!0,reverseButtons:!1,focusConfirm:!0,focusDeny:!1,focusCancel:!1,showCloseButton:!1,closeButtonHtml:"&times;",closeButtonAriaLabel:"Close this dialog",loaderHtml:"",showLoaderOnConfirm:!1,imageUrl:void 0,imageWidth:void 0,imageHeight:void 0,imageAlt:"",timer:void 0,timerProgressBar:!1,width:void 0,padding:void 0,background:void 0,input:void 0,inputPlaceholder:"",inputLabel:"",inputValue:"",inputOptions:{},inputAutoTrim:!0,inputAttributes:{},inputValidator:void 0,returnInputValueOnDeny:!1,validationMessage:void 0,grow:!1,position:"center",progressSteps:[],currentProgressStep:void 0,progressStepsDistance:void 0,onBeforeOpen:void 0,onOpen:void 0,willOpen:void 0,didOpen:void 0,onRender:void 0,didRender:void 0,onClose:void 0,onAfterClose:void 0,willClose:void 0,didClose:void 0,onDestroy:void 0,didDestroy:void 0,scrollbarPadding:!0},ue=["allowEscapeKey","allowOutsideClick","background","buttonsStyling","cancelButtonAriaLabel","cancelButtonColor","cancelButtonText","closeButtonAriaLabel","closeButtonHtml","confirmButtonAriaLabel","confirmButtonColor","confirmButtonText","currentProgressStep","customClass","denyButtonAriaLabel","denyButtonColor","denyButtonText","didClose","didDestroy","footer","hideClass","html","icon","iconColor","imageAlt","imageHeight","imageUrl","imageWidth","onAfterClose","onClose","onDestroy","progressSteps","reverseButtons","showCancelButton","showCloseButton","showConfirmButton","showDenyButton","text","title","titleText","willClose"],le={animation:'showClass" and "hideClass',onBeforeOpen:"willOpen",onOpen:"didOpen",onRender:"didRender",onClose:"willClose",onAfterClose:"didClose",onDestroy:"didDestroy"},de=["allowOutsideClick","allowEnterKey","backdrop","focusConfirm","focusDeny","focusCancel","heightAuto","keydownListenerCapture"],pe=Object.freeze({isValidParameter:re,isUpdatableParameter:function(t){return-1!==ue.indexOf(t)},isDeprecatedParameter:ae,argsToParams:function(n){var o={};return"object"!==r(n[0])||C(n[0])?["title","html","icon"].forEach(function(t,e){e=n[e];"string"==typeof e||C(e)?o[t]=e:void 0!==e&&K("Unexpected type of ".concat(t,'! Expected "string" or "Element", got ').concat(r(e)))}):s(o,n[0]),o},isVisible:function(){return wt(x())},clickConfirm:_t,clickDeny:function(){return q()&&q().click()},clickCancel:function(){return j()&&j().click()},getContainer:k,getPopup:x,getTitle:P,getContent:E,getHtmlContainer:function(){return t($["html-container"])},getImage:S,getIcon:B,getIcons:n,getInputLabel:function(){return t($["input-label"])},getCloseButton:R,getActions:I,getConfirmButton:L,getDenyButton:q,getCancelButton:j,getLoader:D,getHeader:M,getFooter:H,getTimerProgressBar:V,getFocusableElements:N,getValidationMessage:T,isLoading:function(){return x().hasAttribute("data-loading")},fire:function(){for(var t=arguments.length,e=new Array(t),n=0;n<t;n++)e[n]=arguments[n];return i(this,e)},mixin:function(r){return function(t){!function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&l(t,e)}(i,t);var n,o,e=(n=i,o=d(),function(){var t,e=u(n);return p(this,o?(t=u(this).constructor,Reflect.construct(e,arguments,t)):e.apply(this,arguments))});function i(){return a(this,i),e.apply(this,arguments)}return c(i,[{key:"_main",value:function(t,e){return f(u(i.prototype),"_main",this).call(this,t,s({},e,r))}}]),i}(this)},queue:function(t){var r=this;Qt=t;function a(t,e){Qt=[],t(e)}var c=[];return new Promise(function(i){!function e(n,o){n<Qt.length?(document.body.setAttribute("data-swal2-queue-step",n),r.fire(Qt[n]).then(function(t){void 0!==t.value?(c.push(t.value),e(n+1,o)):a(i,{dismiss:t.dismiss})})):a(i,{value:c})}(0)})},getQueueStep:Vt,insertQueueStep:function(t,e){return e&&e<Qt.length?Qt.splice(e,0,t):Qt.push(t)},deleteQueueStep:function(t){void 0!==Qt[t]&&Qt.splice(t,1)},showLoading:$t,enableLoading:$t,getTimerLeft:function(){return ee.timeout&&ee.timeout.getTimerLeft()},stopTimer:Gt,resumeTimer:te,toggleTimer:function(){var t=ee.timeout;return t&&(t.running?Gt:te)()},increaseTimer:function(t){if(ee.timeout){t=ee.timeout.increase(t);return dt(t,!0),t}},isTimerRunning:function(){return ee.timeout&&ee.timeout.isRunning()},bindClickHandler:function(){oe[0<arguments.length&&void 0!==arguments[0]?arguments[0]:"data-swal-template"]=this,ne||(document.body.addEventListener("click",ie),ne=!0)}});function fe(){var t,e;Tt.innerParams.get(this)&&(t=Tt.domCache.get(this),at(t.loader),(e=t.popup.getElementsByClassName(t.loader.getAttribute("data-button-to-replace"))).length?rt(e[0],"inline-block"):wt(L())||wt(q())||wt(j())||at(t.actions),bt([t.popup,t.actions],$.loading),t.popup.removeAttribute("aria-busy"),t.popup.removeAttribute("data-loading"),t.confirmButton.disabled=!1,t.denyButton.disabled=!1,t.cancelButton.disabled=!1)}function me(){null===tt.previousBodyPadding&&document.body.scrollHeight>window.innerHeight&&(tt.previousBodyPadding=parseInt(window.getComputedStyle(document.body).getPropertyValue("padding-right")),document.body.style.paddingRight="".concat(tt.previousBodyPadding+function(){var t=document.createElement("div");t.className=$["scrollbar-measure"],document.body.appendChild(t);var e=t.getBoundingClientRect().width-t.clientWidth;return document.body.removeChild(t),e}(),"px"))}function he(){return!!window.MSInputMethodContext&&!!document.documentMode}function ge(){var t=k(),e=x();t.style.removeProperty("align-items"),e.offsetTop<0&&(t.style.alignItems="flex-start")}var ve=function(){navigator.userAgent.match(/(CriOS|FxiOS|EdgiOS|YaBrowser|UCBrowser)/i)||x().scrollHeight>window.innerHeight-44&&(k().style.paddingBottom="".concat(44,"px"))},be=function(){var e,t=k();t.ontouchstart=function(t){e=ye(t)},t.ontouchmove=function(t){e&&(t.preventDefault(),t.stopPropagation())}},ye=function(t){var e=t.target,n=k();return!we(t)&&!Ce(t)&&(e===n||!(ut(n)||"INPUT"===e.tagName||ut(E())&&E().contains(e)))},we=function(t){return t.touches&&t.touches.length&&"stylus"===t.touches[0].touchType},Ce=function(t){return t.touches&&1<t.touches.length},ke={swalPromiseResolve:new WeakMap};function Ae(t,e,n,o){n?Oe(t,o):(Xt().then(function(){return Oe(t,o)}),ee.keydownTarget.removeEventListener("keydown",ee.keydownHandler,{capture:ee.keydownListenerCapture}),ee.keydownHandlerAdded=!1),e.parentNode&&!document.body.getAttribute("data-swal2-queue-step")&&e.parentNode.removeChild(e),U()&&(null!==tt.previousBodyPadding&&(document.body.style.paddingRight="".concat(tt.previousBodyPadding,"px"),tt.previousBodyPadding=null),F(document.body,$.iosfix)&&(e=parseInt(document.body.style.top,10),bt(document.body,$.iosfix),document.body.style.top="",document.body.scrollTop=-1*e),"undefined"!=typeof window&&he()&&window.removeEventListener("resize",ge),g(document.body.children).forEach(function(t){t.hasAttribute("data-previous-aria-hidden")?(t.setAttribute("aria-hidden",t.getAttribute("data-previous-aria-hidden")),t.removeAttribute("data-previous-aria-hidden")):t.removeAttribute("aria-hidden")})),bt([document.documentElement,document.body],[$.shown,$["height-auto"],$["no-backdrop"],$["toast-shown"],$["toast-column"]])}function xe(t){var e,n,o,i=x();i&&(t=Be(t),(e=Tt.innerParams.get(this))&&!F(i,e.hideClass.popup)&&(n=ke.swalPromiseResolve.get(this),bt(i,e.showClass.popup),vt(i,e.hideClass.popup),o=k(),bt(o,e.showClass.backdrop),vt(o,e.hideClass.backdrop),Pe(this,i,e),n(t)))}function Be(t){return void 0===t?{isConfirmed:!1,isDenied:!1,isDismissed:!0}:s({isConfirmed:!1,isDenied:!1,isDismissed:!1},t)}function Pe(t,e,n){var o=k(),i=Bt&&lt(e),r=n.onClose,a=n.onAfterClose,c=n.willClose,n=n.didClose;Ee(e,c,r),i?Se(t,e,o,n||a):Ae(t,o,G(),n||a)}var Ee=function(t,e,n){null!==e&&"function"==typeof e?e(t):null!==n&&"function"==typeof n&&n(t)},Se=function(t,e,n,o){ee.swalCloseEventFinishedCallback=Ae.bind(null,t,n,G(),o),e.addEventListener(Bt,function(t){t.target===e&&(ee.swalCloseEventFinishedCallback(),delete ee.swalCloseEventFinishedCallback)})},Oe=function(t,e){setTimeout(function(){"function"==typeof e&&e(),t._destroy()})};function Te(t,e,n){var o=Tt.domCache.get(t);e.forEach(function(t){o[t].disabled=n})}function Le(t,e){if(!t)return!1;if("radio"===t.type)for(var n=t.parentNode.parentNode.querySelectorAll("input"),o=0;o<n.length;o++)n[o].disabled=e;else t.disabled=e}var qe=function(){function n(t,e){a(this,n),this.callback=t,this.remaining=e,this.running=!1,this.start()}return c(n,[{key:"start",value:function(){return this.running||(this.running=!0,this.started=new Date,this.id=setTimeout(this.callback,this.remaining)),this.remaining}},{key:"stop",value:function(){return this.running&&(this.running=!1,clearTimeout(this.id),this.remaining-=new Date-this.started),this.remaining}},{key:"increase",value:function(t){var e=this.running;return e&&this.stop(),this.remaining+=t,e&&this.start(),this.remaining}},{key:"getTimerLeft",value:function(){return this.running&&(this.stop(),this.start()),this.remaining}},{key:"isRunning",value:function(){return this.running}}]),n}(),De={email:function(t,e){return/^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9-]{2,24}$/.test(t)?Promise.resolve():Promise.resolve(e||"Invalid email address")},url:function(t,e){return/^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}\.[a-z]{2,63}\b([-a-zA-Z0-9@:%_+.~#?&/=]*)$/.test(t)?Promise.resolve():Promise.resolve(e||"Invalid URL")}};function je(t){var e,n;(e=t).inputValidator||Object.keys(De).forEach(function(t){e.input===t&&(e.inputValidator=De[t])}),t.showLoaderOnConfirm&&!t.preConfirm&&W("showLoaderOnConfirm is set to true, but preConfirm is not defined.\nshowLoaderOnConfirm should be used together with preConfirm, see usage example:\nhttps://sweetalert2.github.io/#ajax-request"),t.animation=Z(t.animation),(n=t).target&&("string"!=typeof n.target||document.querySelector(n.target))&&("string"==typeof n.target||n.target.appendChild)||(W('Target parameter is not valid, defaulting to "body"'),n.target="body"),"string"==typeof t.title&&(t.title=t.title.split("\n").join("<br />")),kt(t)}function Ie(t){var e=k(),n=x();"function"==typeof t.willOpen?t.willOpen(n):"function"==typeof t.onBeforeOpen&&t.onBeforeOpen(n);var o=window.getComputedStyle(document.body).overflowY;$e(e,n,t),setTimeout(function(){Qe(e,n)},10),U()&&(Je(e,t.scrollbarPadding,o),g(document.body.children).forEach(function(t){t===k()||function(t,e){if("function"==typeof t.contains)return t.contains(e)}(t,k())||(t.hasAttribute("aria-hidden")&&t.setAttribute("data-previous-aria-hidden",t.getAttribute("aria-hidden")),t.setAttribute("aria-hidden","true"))})),G()||ee.previousActiveElement||(ee.previousActiveElement=document.activeElement),Ze(n,t),bt(e,$["no-transition"])}function Me(t){var e=x();t.target===e&&(t=k(),e.removeEventListener(Bt,Me),t.style.overflowY="auto")}function He(t,e){t.closePopup({isConfirmed:!0,value:e})}function Ve(t,e,n){var o=N();if(o.length)return(e+=n)===o.length?e=0:-1===e&&(e=o.length-1),o[e].focus();x().focus()}var Re=["swal-title","swal-html","swal-footer"],Ne=function(t){var n={};return g(t.querySelectorAll("swal-param")).forEach(function(t){Ye(t,["name","value"]);var e=t.getAttribute("name"),t=t.getAttribute("value");"boolean"==typeof se[e]&&"false"===t&&(t=!1),"object"===r(se[e])&&(t=JSON.parse(t)),n[e]=t}),n},Ue=function(t){var n={};return g(t.querySelectorAll("swal-button")).forEach(function(t){Ye(t,["type","color","aria-label"]);var e=t.getAttribute("type");n["".concat(e,"ButtonText")]=t.innerHTML,n["show".concat(m(e),"Button")]=!0,t.hasAttribute("color")&&(n["".concat(e,"ButtonColor")]=t.getAttribute("color")),t.hasAttribute("aria-label")&&(n["".concat(e,"ButtonAriaLabel")]=t.getAttribute("aria-label"))}),n},_e=function(t){var e={},t=t.querySelector("swal-image");return t&&(Ye(t,["src","width","height","alt"]),t.hasAttribute("src")&&(e.imageUrl=t.getAttribute("src")),t.hasAttribute("width")&&(e.imageWidth=t.getAttribute("width")),t.hasAttribute("height")&&(e.imageHeight=t.getAttribute("height")),t.hasAttribute("alt")&&(e.imageAlt=t.getAttribute("alt"))),e},Fe=function(t){var e={},t=t.querySelector("swal-icon");return t&&(Ye(t,["type","color"]),t.hasAttribute("type")&&(e.icon=t.getAttribute("type")),t.hasAttribute("color")&&(e.iconColor=t.getAttribute("color")),e.iconHtml=t.innerHTML),e},ze=function(t){var n={},e=t.querySelector("swal-input");e&&(Ye(e,["type","label","placeholder","value"]),n.input=e.getAttribute("type")||"text",e.hasAttribute("label")&&(n.inputLabel=e.getAttribute("label")),e.hasAttribute("placeholder")&&(n.inputPlaceholder=e.getAttribute("placeholder")),e.hasAttribute("value")&&(n.inputValue=e.getAttribute("value")));t=t.querySelectorAll("swal-input-option");return t.length&&(n.inputOptions={},g(t).forEach(function(t){Ye(t,["value"]);var e=t.getAttribute("value"),t=t.innerHTML;n.inputOptions[e]=t})),n},We=function(t,e){var n,o={};for(n in e){var i=e[n],r=t.querySelector(i);r&&(Ye(r,[]),o[i.replace(/^swal-/,"")]=r.innerHTML)}return o},Ke=function(t){var e=Re.concat(["swal-param","swal-button","swal-image","swal-icon","swal-input","swal-input-option"]);g(t.querySelectorAll("*")).forEach(function(t){t=t.tagName.toLowerCase();-1===e.indexOf(t)&&W("Unrecognized element <".concat(t,">"))})},Ye=function(e,n){g(e.attributes).forEach(function(t){-1===n.indexOf(t.name)&&W(['Unrecognized attribute "'.concat(t.name,'" on <').concat(e.tagName.toLowerCase(),">."),"".concat(n.length?"Allowed attributes are: ".concat(n.join(", ")):"To set the value, use HTML within the element.")])})},Ze=function(t,e){"function"==typeof e.didOpen?setTimeout(function(){return e.didOpen(t)}):"function"==typeof e.onOpen&&setTimeout(function(){return e.onOpen(t)})},Qe=function(t,e){Bt&&lt(e)?(t.style.overflowY="hidden",e.addEventListener(Bt,Me)):t.style.overflowY="auto"},Je=function(t,e,n){var o;(/iPad|iPhone|iPod/.test(navigator.userAgent)&&!window.MSStream||"MacIntel"===navigator.platform&&1<navigator.maxTouchPoints)&&!F(document.body,$.iosfix)&&(o=document.body.scrollTop,document.body.style.top="".concat(-1*o,"px"),vt(document.body,$.iosfix),be(),ve()),"undefined"!=typeof window&&he()&&(ge(),window.addEventListener("resize",ge)),e&&"hidden"!==n&&me(),setTimeout(function(){t.scrollTop=0})},$e=function(t,e,n){vt(t,n.showClass.backdrop),e.style.setProperty("opacity","0","important"),rt(e),setTimeout(function(){vt(e,n.showClass.popup),e.style.removeProperty("opacity")},10),vt([document.documentElement,document.body],$.shown),n.heightAuto&&n.backdrop&&!n.toast&&vt([document.documentElement,document.body],$["height-auto"])},Xe=function(t){return t.checked?1:0},Ge=function(t){return t.checked?t.value:null},tn=function(t){return t.files.length?null!==t.getAttribute("multiple")?t.files:t.files[0]:null},en=function(e,n){function o(t){return on[n.input](i,rn(t),n)}var i=E();b(n.inputOptions)||w(n.inputOptions)?($t(),y(n.inputOptions).then(function(t){e.hideLoading(),o(t)})):"object"===r(n.inputOptions)?o(n.inputOptions):K("Unexpected type of inputOptions! Expected object, Map or Promise, got ".concat(r(n.inputOptions)))},nn=function(e,n){var o=e.getInput();at(o),y(n.inputValue).then(function(t){o.value="number"===n.input?parseFloat(t)||0:"".concat(t),rt(o),o.focus(),e.hideLoading()}).catch(function(t){K("Error in inputValue promise: ".concat(t)),o.value="",rt(o),o.focus(),e.hideLoading()})},on={select:function(t,e,i){function o(t,e,n){var o=document.createElement("option");o.value=n,_(o,e),o.selected=an(n,i.inputValue),t.appendChild(o)}var r=yt(t,$.select);e.forEach(function(t){var e,n=t[0],t=t[1];Array.isArray(t)?((e=document.createElement("optgroup")).label=n,e.disabled=!1,r.appendChild(e),t.forEach(function(t){return o(e,t[1],t[0])})):o(r,t,n)}),r.focus()},radio:function(t,e,i){var r=yt(t,$.radio);e.forEach(function(t){var e=t[0],n=t[1],o=document.createElement("input"),t=document.createElement("label");o.type="radio",o.name=$.radio,o.value=e,an(e,i.inputValue)&&(o.checked=!0);e=document.createElement("span");_(e,n),e.className=$.label,t.appendChild(o),t.appendChild(e),r.appendChild(t)});e=r.querySelectorAll("input");e.length&&e[0].focus()}},rn=function n(o){var i=[];return"undefined"!=typeof Map&&o instanceof Map?o.forEach(function(t,e){"object"===r(t)&&(t=n(t)),i.push([e,t])}):Object.keys(o).forEach(function(t){var e=o[t];"object"===r(e)&&(e=n(e)),i.push([t,e])}),i},an=function(t,e){return e&&e.toString()===t.toString()},cn=function(t,e,n){var o=function(t,e){var n=t.getInput();if(!n)return null;switch(e.input){case"checkbox":return Xe(n);case"radio":return Ge(n);case"file":return tn(n);default:return e.inputAutoTrim?n.value.trim():n.value}}(t,e);e.inputValidator?sn(t,e,o):t.getInput().checkValidity()?("deny"===n?un:ln)(t,e,o):(t.enableButtons(),t.showValidationMessage(e.validationMessage))},sn=function(e,n,o){e.disableInput(),Promise.resolve().then(function(){return y(n.inputValidator(o,n.validationMessage))}).then(function(t){e.enableButtons(),e.enableInput(),t?e.showValidationMessage(t):ln(e,n,o)})},un=function(e,t,n){t.preDeny?Promise.resolve().then(function(){return y(t.preDeny(n,t.validationMessage))}).then(function(t){!1===t?e.hideLoading():e.closePopup({isDenied:!0,value:void 0===t?n:t})}):e.closePopup({isDenied:!0,value:n})},ln=function(e,t,n){t.showLoaderOnConfirm&&$t(),t.preConfirm?(e.resetValidationMessage(),Promise.resolve().then(function(){return y(t.preConfirm(n,t.validationMessage))}).then(function(t){wt(T())||!1===t?e.hideLoading():He(e,void 0===t?n:t)})):He(e,n)},dn=["ArrowRight","ArrowDown","Right","Down"],pn=["ArrowLeft","ArrowUp","Left","Up"],fn=["Escape","Esc"],mn=function(t,e,n){var o=Tt.innerParams.get(t);o.stopKeydownPropagation&&e.stopPropagation(),"Enter"===e.key?hn(t,e,o):"Tab"===e.key?gn(e,o):-1!==[].concat(dn,pn).indexOf(e.key)?vn(e.key):-1!==fn.indexOf(e.key)&&bn(e,o,n)},hn=function(t,e,n){e.isComposing||e.target&&t.getInput()&&e.target.outerHTML===t.getInput().outerHTML&&-1===["textarea","file"].indexOf(n.input)&&(_t(),e.preventDefault())},gn=function(t,e){for(var n=t.target,o=N(),i=-1,r=0;r<o.length;r++)if(n===o[r]){i=r;break}t.shiftKey?Ve(0,i,-1):Ve(0,i,1),t.stopPropagation(),t.preventDefault()},vn=function(t){-1!==[L(),q(),j()].indexOf(document.activeElement)&&(t=-1!==dn.indexOf(t)?"nextElementSibling":"previousElementSibling",(t=document.activeElement[t])&&t.focus())},bn=function(t,e,n){Z(e.allowEscapeKey)&&(t.preventDefault(),n(Q.esc))},yn=function(e,t,n){t.popup.onclick=function(){var t=Tt.innerParams.get(e);t.showConfirmButton||t.showDenyButton||t.showCancelButton||t.showCloseButton||t.timer||t.input||n(Q.close)}},wn=!1,Cn=function(e){e.popup.onmousedown=function(){e.container.onmouseup=function(t){e.container.onmouseup=void 0,t.target===e.container&&(wn=!0)}}},kn=function(e){e.container.onmousedown=function(){e.popup.onmouseup=function(t){e.popup.onmouseup=void 0,t.target!==e.popup&&!e.popup.contains(t.target)||(wn=!0)}}},An=function(n,o,i){o.container.onclick=function(t){var e=Tt.innerParams.get(n);wn?wn=!1:t.target===o.container&&Z(e.allowOutsideClick)&&i(Q.backdrop)}};function xn(t,e){var n=function(t){t="string"==typeof t.template?document.querySelector(t.template):t.template;if(!t)return{};t=t.content||t;return Ke(t),s(Ne(t),Ue(t),_e(t),Fe(t),ze(t),We(t,Re))}(t),o=s({},se.showClass,e.showClass,n.showClass,t.showClass),i=s({},se.hideClass,e.hideClass,n.hideClass,t.hideClass);return(n=s({},se,e,n,t)).showClass=o,n.hideClass=i,!1===t.animation&&(n.showClass={popup:"swal2-noanimation",backdrop:"swal2-noanimation"},n.hideClass={}),n}function Bn(a,c,s){return new Promise(function(t){function e(t){a.closePopup({isDismissed:!0,dismiss:t})}var n,o,i,r;ke.swalPromiseResolve.set(a,t),c.confirmButton.onclick=function(){return e=s,(t=a).disableButtons(),void(e.input?cn(t,e,"confirm"):ln(t,e,!0));var t,e},c.denyButton.onclick=function(){return e=s,(t=a).disableButtons(),void(e.returnInputValueOnDeny?cn(t,e,"deny"):un(t,e,!1));var t,e},c.cancelButton.onclick=function(){return t=e,a.disableButtons(),void t(Q.cancel);var t},c.closeButton.onclick=function(){return e(Q.close)},n=a,r=c,t=e,Tt.innerParams.get(n).toast?yn(n,r,t):(Cn(r),kn(r),An(n,r,t)),o=a,r=s,i=e,(t=ee).keydownTarget&&t.keydownHandlerAdded&&(t.keydownTarget.removeEventListener("keydown",t.keydownHandler,{capture:t.keydownListenerCapture}),t.keydownHandlerAdded=!1),r.toast||(t.keydownHandler=function(t){return mn(o,t,i)},t.keydownTarget=r.keydownListenerCapture?window:x(),t.keydownListenerCapture=r.keydownListenerCapture,t.keydownTarget.addEventListener("keydown",t.keydownHandler,{capture:t.keydownListenerCapture}),t.keydownHandlerAdded=!0),(s.toast&&(s.input||s.footer||s.showCloseButton)?vt:bt)(document.body,$["toast-column"]),r=a,"select"===(t=s).input||"radio"===t.input?en(r,t):-1!==["text","email","number","tel","textarea"].indexOf(t.input)&&(b(t.inputValue)||w(t.inputValue))&&nn(r,t),Ie(s),En(ee,s,e),Sn(c,s),setTimeout(function(){c.container.scrollTop=0})})}function Pn(t){var e={popup:x(),container:k(),content:E(),actions:I(),confirmButton:L(),denyButton:q(),cancelButton:j(),loader:D(),closeButton:R(),validationMessage:T(),progressSteps:O()};return Tt.domCache.set(t,e),e}var En=function(t,e,n){var o=V();at(o),e.timer&&(t.timeout=new qe(function(){n("timer"),delete t.timeout},e.timer),e.timerProgressBar&&(rt(o),setTimeout(function(){t.timeout&&t.timeout.running&&dt(e.timer)})))},Sn=function(t,e){if(!e.toast)return Z(e.allowEnterKey)?void(On(t,e)||Ve(0,-1,1)):Tn()},On=function(t,e){return e.focusDeny&&wt(t.denyButton)?(t.denyButton.focus(),!0):e.focusCancel&&wt(t.cancelButton)?(t.cancelButton.focus(),!0):!(!e.focusConfirm||!wt(t.confirmButton))&&(t.confirmButton.focus(),!0)},Tn=function(){document.activeElement&&"function"==typeof document.activeElement.blur&&document.activeElement.blur()};function Ln(t){"function"==typeof t.didDestroy?t.didDestroy():"function"==typeof t.onDestroy&&t.onDestroy()}function qn(t){delete t.params,delete ee.keydownHandler,delete ee.keydownTarget,jn(Tt),jn(ke)}var Dn,jn=function(t){for(var e in t)t[e]=new WeakMap},J=Object.freeze({hideLoading:fe,disableLoading:fe,getInput:function(t){var e=Tt.innerParams.get(t||this);return(t=Tt.domCache.get(t||this))?et(t.content,e.input):null},close:xe,closePopup:xe,closeModal:xe,closeToast:xe,enableButtons:function(){Te(this,["confirmButton","denyButton","cancelButton"],!1)},disableButtons:function(){Te(this,["confirmButton","denyButton","cancelButton"],!0)},enableInput:function(){return Le(this.getInput(),!1)},disableInput:function(){return Le(this.getInput(),!0)},showValidationMessage:function(t){var e=Tt.domCache.get(this),n=Tt.innerParams.get(this);_(e.validationMessage,t),e.validationMessage.className=$["validation-message"],n.customClass&&n.customClass.validationMessage&&vt(e.validationMessage,n.customClass.validationMessage),rt(e.validationMessage),(e=this.getInput())&&(e.setAttribute("aria-invalid",!0),e.setAttribute("aria-describedBy",$["validation-message"]),nt(e),vt(e,$.inputerror))},resetValidationMessage:function(){var t=Tt.domCache.get(this);t.validationMessage&&at(t.validationMessage),(t=this.getInput())&&(t.removeAttribute("aria-invalid"),t.removeAttribute("aria-describedBy"),bt(t,$.inputerror))},getProgressSteps:function(){return Tt.domCache.get(this).progressSteps},_main:function(t){var e=1<arguments.length&&void 0!==arguments[1]?arguments[1]:{};return ce(s({},e,t)),ee.currentInstance&&ee.currentInstance._destroy(),ee.currentInstance=this,je(t=xn(t,e)),Object.freeze(t),ee.timeout&&(ee.timeout.stop(),delete ee.timeout),clearTimeout(ee.restoreFocusTimeout),e=Pn(this),Ut(this,t),Tt.innerParams.set(this,t),Bn(this,e,t)},update:function(e){var t=x(),n=Tt.innerParams.get(this);if(!t||F(t,n.hideClass.popup))return W("You're trying to update the closed or closing popup, that won't work. Use the update() method in preConfirm parameter or show a new popup.");var o={};Object.keys(e).forEach(function(t){Mn.isUpdatableParameter(t)?o[t]=e[t]:W('Invalid parameter to update: "'.concat(t,'". Updatable params are listed here: https://github.com/sweetalert2/sweetalert2/blob/master/src/utils/params.js\n\nIf you think this parameter should be updatable, request it here: https://github.com/sweetalert2/sweetalert2/issues/new?template=02_feature_request.md'))}),n=s({},n,o),Ut(this,n),Tt.innerParams.set(this,n),Object.defineProperties(this,{params:{value:s({},this.params,e),writable:!1,enumerable:!0}})},_destroy:function(){var t=Tt.domCache.get(this),e=Tt.innerParams.get(this);e&&(t.popup&&ee.swalCloseEventFinishedCallback&&(ee.swalCloseEventFinishedCallback(),delete ee.swalCloseEventFinishedCallback),ee.deferDisposalTimer&&(clearTimeout(ee.deferDisposalTimer),delete ee.deferDisposalTimer),Ln(e),qn(this))}}),In=function(){function i(){if(a(this,i),"undefined"!=typeof window){"undefined"==typeof Promise&&K("This package requires a Promise library, please include a shim to enable it in this browser (See: https://github.com/sweetalert2/sweetalert2/wiki/Migration-from-SweetAlert-to-SweetAlert2#1-ie-support)"),Dn=this;for(var t=arguments.length,e=new Array(t),n=0;n<t;n++)e[n]=arguments[n];var o=Object.freeze(this.constructor.argsToParams(e));Object.defineProperties(this,{params:{value:o,writable:!1,enumerable:!0,configurable:!0}});o=this._main(this.params);Tt.promise.set(this,o)}}return c(i,[{key:"then",value:function(t){return Tt.promise.get(this).then(t)}},{key:"finally",value:function(t){return Tt.promise.get(this).finally(t)}}]),i}();s(In.prototype,J),s(In,pe),Object.keys(J).forEach(function(t){In[t]=function(){if(Dn)return Dn[t].apply(Dn,arguments)}}),In.DismissReason=Q,In.version="10.13.0";var Mn=In;return Mn.default=Mn}),void 0!==this&&this.Sweetalert2&&(this.swal=this.sweetAlert=this.Swal=this.SweetAlert=this.Sweetalert2);
"undefined"!=typeof document&&function(e,t){var n=e.createElement("style");if(e.getElementsByTagName("head")[0].appendChild(n),n.styleSheet)n.styleSheet.disabled||(n.styleSheet.cssText=t);else try{n.innerHTML=t}catch(e){n.innerText=t}}(document,".swal2-popup.swal2-toast{flex-direction:row;align-items:center;width:auto;padding:.625em;overflow-y:hidden;background:#fff;box-shadow:0 0 .625em #d9d9d9}.swal2-popup.swal2-toast .swal2-header{flex-direction:row;padding:0}.swal2-popup.swal2-toast .swal2-title{flex-grow:1;justify-content:flex-start;margin:0 .6em;font-size:1em}.swal2-popup.swal2-toast .swal2-footer{margin:.5em 0 0;padding:.5em 0 0;font-size:.8em}.swal2-popup.swal2-toast .swal2-close{position:static;width:.8em;height:.8em;line-height:.8}.swal2-popup.swal2-toast .swal2-content{justify-content:flex-start;padding:0;font-size:1em}.swal2-popup.swal2-toast .swal2-icon{width:2em;min-width:2em;height:2em;margin:0}.swal2-popup.swal2-toast .swal2-icon .swal2-icon-content{display:flex;align-items:center;font-size:1.8em;font-weight:700}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-popup.swal2-toast .swal2-icon .swal2-icon-content{font-size:.25em}}.swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line]{top:.875em;width:1.375em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:.3125em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:.3125em}.swal2-popup.swal2-toast .swal2-actions{flex-basis:auto!important;width:auto;height:auto;margin:0 .3125em;padding:0}.swal2-popup.swal2-toast .swal2-styled{margin:.125em .3125em;padding:.3125em .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-styled:focus{box-shadow:0 0 0 1px #fff,0 0 0 3px rgba(100,150,200,.5)}.swal2-popup.swal2-toast .swal2-success{border-color:#a5dc86}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line]{position:absolute;width:1.6em;height:3em;transform:rotate(45deg);border-radius:50%}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.8em;left:-.5em;transform:rotate(-45deg);transform-origin:2em 2em;border-radius:4em 0 0 4em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.25em;left:.9375em;transform-origin:0 1.5em;border-radius:0 4em 4em 0}.swal2-popup.swal2-toast .swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-success .swal2-success-fix{top:0;left:.4375em;width:.4375em;height:2.6875em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line]{height:.3125em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip]{top:1.125em;left:.1875em;width:.75em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long]{top:.9375em;right:.1875em;width:1.375em}.swal2-popup.swal2-toast .swal2-success.swal2-icon-show .swal2-success-line-tip{-webkit-animation:swal2-toast-animate-success-line-tip .75s;animation:swal2-toast-animate-success-line-tip .75s}.swal2-popup.swal2-toast .swal2-success.swal2-icon-show .swal2-success-line-long{-webkit-animation:swal2-toast-animate-success-line-long .75s;animation:swal2-toast-animate-success-line-long .75s}.swal2-popup.swal2-toast.swal2-show{-webkit-animation:swal2-toast-show .5s;animation:swal2-toast-show .5s}.swal2-popup.swal2-toast.swal2-hide{-webkit-animation:swal2-toast-hide .1s forwards;animation:swal2-toast-hide .1s forwards}.swal2-container{display:flex;position:fixed;z-index:1060;top:0;right:0;bottom:0;left:0;flex-direction:row;align-items:center;justify-content:center;padding:.625em;overflow-x:hidden;transition:background-color .1s;-webkit-overflow-scrolling:touch}.swal2-container.swal2-backdrop-show,.swal2-container.swal2-noanimation{background:rgba(0,0,0,.4)}.swal2-container.swal2-backdrop-hide{background:0 0!important}.swal2-container.swal2-top{align-items:flex-start}.swal2-container.swal2-top-left,.swal2-container.swal2-top-start{align-items:flex-start;justify-content:flex-start}.swal2-container.swal2-top-end,.swal2-container.swal2-top-right{align-items:flex-start;justify-content:flex-end}.swal2-container.swal2-center{align-items:center}.swal2-container.swal2-center-left,.swal2-container.swal2-center-start{align-items:center;justify-content:flex-start}.swal2-container.swal2-center-end,.swal2-container.swal2-center-right{align-items:center;justify-content:flex-end}.swal2-container.swal2-bottom{align-items:flex-end}.swal2-container.swal2-bottom-left,.swal2-container.swal2-bottom-start{align-items:flex-end;justify-content:flex-start}.swal2-container.swal2-bottom-end,.swal2-container.swal2-bottom-right{align-items:flex-end;justify-content:flex-end}.swal2-container.swal2-bottom-end>:first-child,.swal2-container.swal2-bottom-left>:first-child,.swal2-container.swal2-bottom-right>:first-child,.swal2-container.swal2-bottom-start>:first-child,.swal2-container.swal2-bottom>:first-child{margin-top:auto}.swal2-container.swal2-grow-fullscreen>.swal2-modal{display:flex!important;flex:1;align-self:stretch;justify-content:center}.swal2-container.swal2-grow-row>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-grow-column{flex:1;flex-direction:column}.swal2-container.swal2-grow-column.swal2-bottom,.swal2-container.swal2-grow-column.swal2-center,.swal2-container.swal2-grow-column.swal2-top{align-items:center}.swal2-container.swal2-grow-column.swal2-bottom-left,.swal2-container.swal2-grow-column.swal2-bottom-start,.swal2-container.swal2-grow-column.swal2-center-left,.swal2-container.swal2-grow-column.swal2-center-start,.swal2-container.swal2-grow-column.swal2-top-left,.swal2-container.swal2-grow-column.swal2-top-start{align-items:flex-start}.swal2-container.swal2-grow-column.swal2-bottom-end,.swal2-container.swal2-grow-column.swal2-bottom-right,.swal2-container.swal2-grow-column.swal2-center-end,.swal2-container.swal2-grow-column.swal2-center-right,.swal2-container.swal2-grow-column.swal2-top-end,.swal2-container.swal2-grow-column.swal2-top-right{align-items:flex-end}.swal2-container.swal2-grow-column>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-no-transition{transition:none!important}.swal2-container:not(.swal2-top):not(.swal2-top-start):not(.swal2-top-end):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-start):not(.swal2-center-end):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-start):not(.swal2-bottom-end):not(.swal2-bottom-left):not(.swal2-bottom-right):not(.swal2-grow-fullscreen)>.swal2-modal{margin:auto}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-container .swal2-modal{margin:0!important}}.swal2-popup{display:none;position:relative;box-sizing:border-box;flex-direction:column;justify-content:center;width:32em;max-width:100%;padding:1.25em;border:none;border-radius:5px;background:#fff;font-family:inherit;font-size:1rem}.swal2-popup:focus{outline:0}.swal2-popup.swal2-loading{overflow-y:hidden}.swal2-header{display:flex;flex-direction:column;align-items:center;padding:0 1.8em}.swal2-title{position:relative;max-width:100%;margin:0 0 .4em;padding:0;color:#595959;font-size:1.875em;font-weight:600;text-align:center;text-transform:none;word-wrap:break-word}.swal2-actions{display:flex;z-index:1;box-sizing:border-box;flex-wrap:wrap;align-items:center;justify-content:center;width:100%;margin:1.25em auto 0;padding:0 1.6em}.swal2-actions:not(.swal2-loading) .swal2-styled[disabled]{opacity:.4}.swal2-actions:not(.swal2-loading) .swal2-styled:hover{background-image:linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.1))}.swal2-actions:not(.swal2-loading) .swal2-styled:active{background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2))}.swal2-loader{display:none;align-items:center;justify-content:center;width:2.2em;height:2.2em;margin:0 1.875em;-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal;border-width:.25em;border-style:solid;border-radius:100%;border-color:#2778c4 transparent #2778c4 transparent}.swal2-styled{margin:.3125em;padding:.625em 1.1em;box-shadow:none;font-weight:500}.swal2-styled:not([disabled]){cursor:pointer}.swal2-styled.swal2-confirm{border:0;border-radius:.25em;background:initial;background-color:#2778c4;color:#fff;font-size:1.0625em}.swal2-styled.swal2-deny{border:0;border-radius:.25em;background:initial;background-color:#d14529;color:#fff;font-size:1.0625em}.swal2-styled.swal2-cancel{border:0;border-radius:.25em;background:initial;background-color:#757575;color:#fff;font-size:1.0625em}.swal2-styled:focus{outline:0;box-shadow:0 0 0 3px rgba(100,150,200,.5)}.swal2-styled::-moz-focus-inner{border:0}.swal2-footer{justify-content:center;margin:1.25em 0 0;padding:1em 0 0;border-top:1px solid #eee;color:#545454;font-size:1em}.swal2-timer-progress-bar-container{position:absolute;right:0;bottom:0;left:0;height:.25em;overflow:hidden;border-bottom-right-radius:5px;border-bottom-left-radius:5px}.swal2-timer-progress-bar{width:100%;height:.25em;background:rgba(0,0,0,.2)}.swal2-image{max-width:100%;margin:1.25em auto}.swal2-close{position:absolute;z-index:2;top:0;right:0;align-items:center;justify-content:center;width:1.2em;height:1.2em;padding:0;overflow:hidden;transition:color .1s ease-out;border:none;border-radius:5px;background:0 0;color:#ccc;font-family:serif;font-size:2.5em;line-height:1.2;cursor:pointer}.swal2-close:hover{transform:none;background:0 0;color:#f27474}.swal2-close:focus{outline:0;box-shadow:inset 0 0 0 3px rgba(100,150,200,.5)}.swal2-close::-moz-focus-inner{border:0}.swal2-content{z-index:1;justify-content:center;margin:0;padding:0 1.6em;color:#545454;font-size:1.125em;font-weight:400;line-height:normal;text-align:center;word-wrap:break-word}.swal2-checkbox,.swal2-file,.swal2-input,.swal2-radio,.swal2-select,.swal2-textarea{margin:1em auto}.swal2-file,.swal2-input,.swal2-textarea{box-sizing:border-box;width:100%;transition:border-color .3s,box-shadow .3s;border:1px solid #d9d9d9;border-radius:.1875em;background:inherit;box-shadow:inset 0 1px 1px rgba(0,0,0,.06);color:inherit;font-size:1.125em}.swal2-file.swal2-inputerror,.swal2-input.swal2-inputerror,.swal2-textarea.swal2-inputerror{border-color:#f27474!important;box-shadow:0 0 2px #f27474!important}.swal2-file:focus,.swal2-input:focus,.swal2-textarea:focus{border:1px solid #b4dbed;outline:0;box-shadow:0 0 0 3px rgba(100,150,200,.5)}.swal2-file::-moz-placeholder,.swal2-input::-moz-placeholder,.swal2-textarea::-moz-placeholder{color:#ccc}.swal2-file:-ms-input-placeholder,.swal2-input:-ms-input-placeholder,.swal2-textarea:-ms-input-placeholder{color:#ccc}.swal2-file::placeholder,.swal2-input::placeholder,.swal2-textarea::placeholder{color:#ccc}.swal2-range{margin:1em auto;background:#fff}.swal2-range input{width:80%}.swal2-range output{width:20%;color:inherit;font-weight:600;text-align:center}.swal2-range input,.swal2-range output{height:2.625em;padding:0;font-size:1.125em;line-height:2.625em}.swal2-input{height:2.625em;padding:0 .75em}.swal2-input[type=number]{max-width:10em}.swal2-file{background:inherit;font-size:1.125em}.swal2-textarea{height:6.75em;padding:.75em}.swal2-select{min-width:50%;max-width:100%;padding:.375em .625em;background:inherit;color:inherit;font-size:1.125em}.swal2-checkbox,.swal2-radio{align-items:center;justify-content:center;background:#fff;color:inherit}.swal2-checkbox label,.swal2-radio label{margin:0 .6em;font-size:1.125em}.swal2-checkbox input,.swal2-radio input{margin:0 .4em}.swal2-input-label{display:flex;justify-content:center;margin:1em auto}.swal2-validation-message{display:none;align-items:center;justify-content:center;margin:0 -2.7em;padding:.625em;overflow:hidden;background:#f0f0f0;color:#666;font-size:1em;font-weight:300}.swal2-validation-message::before{content:\"!\";display:inline-block;width:1.5em;min-width:1.5em;height:1.5em;margin:0 .625em;border-radius:50%;background-color:#f27474;color:#fff;font-weight:600;line-height:1.5em;text-align:center}.swal2-icon{position:relative;box-sizing:content-box;justify-content:center;width:5em;height:5em;margin:1.25em auto 1.875em;border:.25em solid transparent;border-radius:50%;font-family:inherit;line-height:5em;cursor:default;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.swal2-icon .swal2-icon-content{display:flex;align-items:center;font-size:3.75em}.swal2-icon.swal2-error{border-color:#f27474;color:#f27474}.swal2-icon.swal2-error .swal2-x-mark{position:relative;flex-grow:1}.swal2-icon.swal2-error [class^=swal2-x-mark-line]{display:block;position:absolute;top:2.3125em;width:2.9375em;height:.3125em;border-radius:.125em;background-color:#f27474}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:1.0625em;transform:rotate(45deg)}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:1em;transform:rotate(-45deg)}.swal2-icon.swal2-error.swal2-icon-show{-webkit-animation:swal2-animate-error-icon .5s;animation:swal2-animate-error-icon .5s}.swal2-icon.swal2-error.swal2-icon-show .swal2-x-mark{-webkit-animation:swal2-animate-error-x-mark .5s;animation:swal2-animate-error-x-mark .5s}.swal2-icon.swal2-warning{border-color:#facea8;color:#f8bb86}.swal2-icon.swal2-info{border-color:#9de0f6;color:#3fc3ee}.swal2-icon.swal2-question{border-color:#c9dae1;color:#87adbd}.swal2-icon.swal2-success{border-color:#a5dc86;color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-circular-line]{position:absolute;width:3.75em;height:7.5em;transform:rotate(45deg);border-radius:50%}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.4375em;left:-2.0635em;transform:rotate(-45deg);transform-origin:3.75em 3.75em;border-radius:7.5em 0 0 7.5em}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.6875em;left:1.875em;transform:rotate(-45deg);transform-origin:0 3.75em;border-radius:0 7.5em 7.5em 0}.swal2-icon.swal2-success .swal2-success-ring{position:absolute;z-index:2;top:-.25em;left:-.25em;box-sizing:content-box;width:100%;height:100%;border:.25em solid rgba(165,220,134,.3);border-radius:50%}.swal2-icon.swal2-success .swal2-success-fix{position:absolute;z-index:1;top:.5em;left:1.625em;width:.4375em;height:5.625em;transform:rotate(-45deg)}.swal2-icon.swal2-success [class^=swal2-success-line]{display:block;position:absolute;z-index:2;height:.3125em;border-radius:.125em;background-color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-line][class$=tip]{top:2.875em;left:.8125em;width:1.5625em;transform:rotate(45deg)}.swal2-icon.swal2-success [class^=swal2-success-line][class$=long]{top:2.375em;right:.5em;width:2.9375em;transform:rotate(-45deg)}.swal2-icon.swal2-success.swal2-icon-show .swal2-success-line-tip{-webkit-animation:swal2-animate-success-line-tip .75s;animation:swal2-animate-success-line-tip .75s}.swal2-icon.swal2-success.swal2-icon-show .swal2-success-line-long{-webkit-animation:swal2-animate-success-line-long .75s;animation:swal2-animate-success-line-long .75s}.swal2-icon.swal2-success.swal2-icon-show .swal2-success-circular-line-right{-webkit-animation:swal2-rotate-success-circular-line 4.25s ease-in;animation:swal2-rotate-success-circular-line 4.25s ease-in}.swal2-progress-steps{flex-wrap:wrap;align-items:center;max-width:100%;margin:0 0 1.25em;padding:0;background:inherit;font-weight:600}.swal2-progress-steps li{display:inline-block;position:relative}.swal2-progress-steps .swal2-progress-step{z-index:20;flex-shrink:0;width:2em;height:2em;border-radius:2em;background:#2778c4;color:#fff;line-height:2em;text-align:center}.swal2-progress-steps .swal2-progress-step.swal2-active-progress-step{background:#2778c4}.swal2-progress-steps .swal2-progress-step.swal2-active-progress-step~.swal2-progress-step{background:#add8e6;color:#fff}.swal2-progress-steps .swal2-progress-step.swal2-active-progress-step~.swal2-progress-step-line{background:#add8e6}.swal2-progress-steps .swal2-progress-step-line{z-index:10;flex-shrink:0;width:2.5em;height:.4em;margin:0 -1px;background:#2778c4}[class^=swal2]{-webkit-tap-highlight-color:transparent}.swal2-show{-webkit-animation:swal2-show .3s;animation:swal2-show .3s}.swal2-hide{-webkit-animation:swal2-hide .15s forwards;animation:swal2-hide .15s forwards}.swal2-noanimation{transition:none}.swal2-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}.swal2-rtl .swal2-close{right:auto;left:0}.swal2-rtl .swal2-timer-progress-bar{right:0;left:auto}@supports (-ms-accelerator:true){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@-webkit-keyframes swal2-toast-show{0%{transform:translateY(-.625em) rotateZ(2deg)}33%{transform:translateY(0) rotateZ(-2deg)}66%{transform:translateY(.3125em) rotateZ(2deg)}100%{transform:translateY(0) rotateZ(0)}}@keyframes swal2-toast-show{0%{transform:translateY(-.625em) rotateZ(2deg)}33%{transform:translateY(0) rotateZ(-2deg)}66%{transform:translateY(.3125em) rotateZ(2deg)}100%{transform:translateY(0) rotateZ(0)}}@-webkit-keyframes swal2-toast-hide{100%{transform:rotateZ(1deg);opacity:0}}@keyframes swal2-toast-hide{100%{transform:rotateZ(1deg);opacity:0}}@-webkit-keyframes swal2-toast-animate-success-line-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@keyframes swal2-toast-animate-success-line-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@-webkit-keyframes swal2-toast-animate-success-line-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@keyframes swal2-toast-animate-success-line-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@-webkit-keyframes swal2-show{0%{transform:scale(.7)}45%{transform:scale(1.05)}80%{transform:scale(.95)}100%{transform:scale(1)}}@keyframes swal2-show{0%{transform:scale(.7)}45%{transform:scale(1.05)}80%{transform:scale(.95)}100%{transform:scale(1)}}@-webkit-keyframes swal2-hide{0%{transform:scale(1);opacity:1}100%{transform:scale(.5);opacity:0}}@keyframes swal2-hide{0%{transform:scale(1);opacity:1}100%{transform:scale(.5);opacity:0}}@-webkit-keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.8125em;width:1.5625em}}@keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.8125em;width:1.5625em}}@-webkit-keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@-webkit-keyframes swal2-rotate-success-circular-line{0%{transform:rotate(-45deg)}5%{transform:rotate(-45deg)}12%{transform:rotate(-405deg)}100%{transform:rotate(-405deg)}}@keyframes swal2-rotate-success-circular-line{0%{transform:rotate(-45deg)}5%{transform:rotate(-45deg)}12%{transform:rotate(-405deg)}100%{transform:rotate(-405deg)}}@-webkit-keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;transform:scale(.4);opacity:0}50%{margin-top:1.625em;transform:scale(.4);opacity:0}80%{margin-top:-.375em;transform:scale(1.15)}100%{margin-top:0;transform:scale(1);opacity:1}}@keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;transform:scale(.4);opacity:0}50%{margin-top:1.625em;transform:scale(.4);opacity:0}80%{margin-top:-.375em;transform:scale(1.15)}100%{margin-top:0;transform:scale(1);opacity:1}}@-webkit-keyframes swal2-animate-error-icon{0%{transform:rotateX(100deg);opacity:0}100%{transform:rotateX(0);opacity:1}}@keyframes swal2-animate-error-icon{0%{transform:rotateX(100deg);opacity:0}100%{transform:rotateX(0);opacity:1}}@-webkit-keyframes swal2-rotate-loading{0%{transform:rotate(0)}100%{transform:rotate(360deg)}}@keyframes swal2-rotate-loading{0%{transform:rotate(0)}100%{transform:rotate(360deg)}}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){overflow:hidden}body.swal2-height-auto{height:auto!important}body.swal2-no-backdrop .swal2-container{top:auto;right:auto;bottom:auto;left:auto;max-width:calc(100% - .625em * 2);background-color:transparent!important}body.swal2-no-backdrop .swal2-container>.swal2-modal{box-shadow:0 0 10px rgba(0,0,0,.4)}body.swal2-no-backdrop .swal2-container.swal2-top{top:0;left:50%;transform:translateX(-50%)}body.swal2-no-backdrop .swal2-container.swal2-top-left,body.swal2-no-backdrop .swal2-container.swal2-top-start{top:0;left:0}body.swal2-no-backdrop .swal2-container.swal2-top-end,body.swal2-no-backdrop .swal2-container.swal2-top-right{top:0;right:0}body.swal2-no-backdrop .swal2-container.swal2-center{top:50%;left:50%;transform:translate(-50%,-50%)}body.swal2-no-backdrop .swal2-container.swal2-center-left,body.swal2-no-backdrop .swal2-container.swal2-center-start{top:50%;left:0;transform:translateY(-50%)}body.swal2-no-backdrop .swal2-container.swal2-center-end,body.swal2-no-backdrop .swal2-container.swal2-center-right{top:50%;right:0;transform:translateY(-50%)}body.swal2-no-backdrop .swal2-container.swal2-bottom{bottom:0;left:50%;transform:translateX(-50%)}body.swal2-no-backdrop .swal2-container.swal2-bottom-left,body.swal2-no-backdrop .swal2-container.swal2-bottom-start{bottom:0;left:0}body.swal2-no-backdrop .swal2-container.swal2-bottom-end,body.swal2-no-backdrop .swal2-container.swal2-bottom-right{right:0;bottom:0}@media print{body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){overflow-y:scroll!important}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown)>[aria-hidden=true]{display:none}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown) .swal2-container{position:static!important}}body.swal2-toast-shown .swal2-container{background-color:transparent}body.swal2-toast-shown .swal2-container.swal2-top{top:0;right:auto;bottom:auto;left:50%;transform:translateX(-50%)}body.swal2-toast-shown .swal2-container.swal2-top-end,body.swal2-toast-shown .swal2-container.swal2-top-right{top:0;right:0;bottom:auto;left:auto}body.swal2-toast-shown .swal2-container.swal2-top-left,body.swal2-toast-shown .swal2-container.swal2-top-start{top:0;right:auto;bottom:auto;left:0}body.swal2-toast-shown .swal2-container.swal2-center-left,body.swal2-toast-shown .swal2-container.swal2-center-start{top:50%;right:auto;bottom:auto;left:0;transform:translateY(-50%)}body.swal2-toast-shown .swal2-container.swal2-center{top:50%;right:auto;bottom:auto;left:50%;transform:translate(-50%,-50%)}body.swal2-toast-shown .swal2-container.swal2-center-end,body.swal2-toast-shown .swal2-container.swal2-center-right{top:50%;right:0;bottom:auto;left:auto;transform:translateY(-50%)}body.swal2-toast-shown .swal2-container.swal2-bottom-left,body.swal2-toast-shown .swal2-container.swal2-bottom-start{top:auto;right:auto;bottom:0;left:0}body.swal2-toast-shown .swal2-container.swal2-bottom{top:auto;right:auto;bottom:0;left:50%;transform:translateX(-50%)}body.swal2-toast-shown .swal2-container.swal2-bottom-end,body.swal2-toast-shown .swal2-container.swal2-bottom-right{top:auto;right:0;bottom:0;left:auto}body.swal2-toast-column .swal2-toast{flex-direction:column;align-items:stretch}body.swal2-toast-column .swal2-toast .swal2-actions{flex:1;align-self:stretch;height:2.2em;margin-top:.3125em}body.swal2-toast-column .swal2-toast .swal2-loading{justify-content:center}body.swal2-toast-column .swal2-toast .swal2-input{height:2em;margin:.3125em auto;font-size:1em}body.swal2-toast-column .swal2-toast .swal2-validation-message{font-size:1em}");
EOF
fi





echo -e "======================== $dir_panel_public/auth.html ========================\n"
if [ ! -f $dir_panel_public/auth.html ];then
  cat>$dir_panel_public/auth.html<<\EOF
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>控制面板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0 ,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/sweetalert2.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="login-form">
        <h1>控制面板</h1>
        <form action="auth" method="POST">
            <input type="text" name="username" class="username" placeholder="用户名" required>
            <input type="password" name="password" class="password" placeholder="密码" required>
            <input type="submit" id="login">
        </form>
    </div>

    <script>
        $.ajaxSetup({ cache: false });

        $("#login").click(function () {
            $user = $(".username").val();
            $password = $(".password").val();
            if (!$user || !$password) return;

            $.post('./auth', { username: $user, password: $password }, function (data) {
                if (data.err == 0) {
                    window.location.href = "./home";
                } else {
                    Swal.fire({
                        text: data.msg,
                        icon: 'error'
                    })
                }
            });
            return false;
        });
    </script>
</body>

</html>
EOF
fi




echo -e "======================== $dir_panel_public/crontab.html ========================\n"
if [ ! -f $dir_panel_public/crontab.html ];then
  cat>$dir_panel_public/crontab.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>定时设定</title>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/codemirror.min.js"></script>
    <script type="text/javascript" src="./js/comment.js"></script>
    <script type="text/javascript" src="./js/shell.js"></script>
    <script type="text/javascript" src="./js/sublime.js"></script>
    <script type="text/javascript" src="./js/sweetalert2.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/codemirror.min.css">
    <link rel="stylesheet" type="text/css" href="./css/twilight.css">
    <link rel="stylesheet" type="text/css" href="./css/dracula.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="container">
        <div class="diffs">
            <nav>
                <ul>
                    <li><a href="./home">配置设定</a></li>
                    <li class="active"><a href="./crontab">定时设定</a></li>
                    <li><a href="./diff">对比工具</a></li>
                    <li><a href="./diy">自定义脚本</a></li>
                    <li><a href="./run">手动执行</a></li>
                    <li><a href="./terminal">终端</a></li>
                    <li><a href="./log">日志查询</a></li>
                    <li><a href="./viewScripts">查看脚本</a></li>
                    <li><a href="./changepwd">修改密码</a></li>
                    <li><a href="./logout">退出</a></li>
                </ul>
            </nav>
            <header>
                <h1>在线编辑工具</h1>
                <button id="save" title="保存">保存 crontab.list</button>
            </header>
            <h4>crontab.list</h4>
            <div class="wrapper">
                <textarea id="code" name="code"></textarea>
            </div>
        </div>
    </div>
    <script>
        $.ajaxSetup({ cache: false });

        $(document).ready(function () {
            var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
                lineNumbers: true,
                lineWrapping: false,
                styleActiveLine: true,
                matchBrackets: true,
                mode: 'shell',
                theme: 'dracula',
                keyMap: 'sublime'
            });
            $.get('./api/config/crontab', function (data) {
                editor.setValue(data);
            });

            $('#save').click(function () {
                var confContent = editor.getValue();
                $.post('./api/save', { content: confContent, name: "crontab.list" }, function (data) {
                    let icon = (data.err == 0) ? "success" : "error"
                    Swal.fire({
                        title:data.title,
                        html: data.msg + '<br>❤️🧡定时任务已同步更新🧡❤️',
                        icon: icon
                    }).then((result) => {
                        window.location.reload(true);
                    })
                });
            });
        });

    </script>

</body>

</html>
EOF
fi






echo -e "======================== $dir_panel_public/diff.html ========================\n"
if [ ! -f $dir_panel_public/diff.html ];then
  cat>$dir_panel_public/diff.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>在线对比合并工具</title>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/codemirror.min.js"></script>
    <script type="text/javascript" src="./js/shell.js"></script>
    <script type="text/javascript" src="./js/diff_match_patch.js"></script>
    <script type="text/javascript" src="./js/merge.js"></script>
    <script type="text/javascript" src="./js/sublime.js"></script>
    <script type="text/javascript" src="./js/sweetalert2.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/codemirror.min.css">
    <link rel="stylesheet" type="text/css" href="./css/merge.css">
    <link rel="stylesheet" type="text/css" href="./css/twilight.css">
    <link rel="stylesheet" type="text/css" href="./css/dracula.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="container">
        <div class="diffs">
            <nav>
                <ul>
                    <li><a href="./home">配置设定</a></li>
                    <li><a href="./crontab" >定时设定</a></li>
                    <li class="active"><a href="./diff">对比工具</a></li>
                    <li><a href="./diy">自定义脚本</a></li>
                    <li><a href="./run">手动执行</a></li>
                    <li><a href="./terminal">终端</a></li>
                    <li><a href="./log">日志查询</a></li>
                    <li><a href="./viewScripts">查看脚本</a></li>
                    <li><a href="./changepwd" >修改密码</a></li>
                    <li><a href="./logout" >退出</a></li>
                </ul>
            </nav>
            <header>
                <h1>在线对比合并工具</h1>
                <button id="prev" title="上一个差异">上一个差异</button>
                <button id="next" title="下一个差异">下一个差异</button>
                <button id="wrap" title="切换换行">切换换行</button>
                <button id="save" title="保存">保存 config.sh</button>
            </header>
            <h4>左侧为 config.sh ，右侧为 config.sample.sh</h4>
            <div class="compare-wrapper">
                <div id="compare">
                </div>
            </div>
            <div class="sources">
                <p>查看源文件，注意将浏览器编码切换为 UTF-8 。</p>
                <ul>
                    <li><a id="file1" target="_blank" href="./api/config/config">查看 config.sh</a></li>
                    <li><a id="file2" target="_blank" href="./api/config/sample">查看 config.sample.sh</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script>
        $.ajaxSetup({ cache: false });

        var editor, origLeft, origRight;
        function initUI() {
            editor =  CodeMirror.MergeView(document.getElementById('compare'), {
                value: origLeft,
                origLeft: null,
                orig: origRight,
                lineNumbers: true,
                lineWrapping: false,
                mode: 'shell',
                theme: 'dracula',
                keyMap: 'sublime',
                lineNumbers: true,
                highlightDifferences: true,
                connect: null,
                collapseIdentical: false
            });
        }

        Promise.all([$.get('./api/config/config'), $.get('./api/config/sample')])
            .then((resArr) => {
                origLeft = resArr[0];
                origRight = resArr[1];

                initUI();
            });

        $('#prev').click(function () {
            editor.editor().execCommand('goPrevDiff');
        });

        $('#next').click(function () {
            editor.editor().execCommand('goNextDiff');
        });

        $('#wrap').click(function () {
            var lineWrapping = editor.editor().getOption('lineWrapping');
            editor.editor().setOption('lineWrapping', !lineWrapping);
            editor.rightOriginal().setOption('lineWrapping', !lineWrapping);
        });

        $('#save').click(function () {
            var confContent = editor.editor().getValue();
            $.post('./api/save', { content: confContent, name: "config.sh" }, function (data) {
                let icon = (data.err == 0) ? "success" : "error"
                    Swal.fire({
                        title:data.title,
                        text: data.msg,
                        icon: icon
                    }).then((result) => {
                        window.location.reload(true);
                    })
            });
        });
    </script>
</body>

</html>
EOF
fi





echo -e "======================== $dir_panel_public/diy.html ========================\n"
if [ ! -f $dir_panel_public/diy.html ];then
  cat>$dir_panel_public/diy.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>自定义脚本</title>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/codemirror.min.js"></script>
    <script type="text/javascript" src="./js/comment.js"></script>
    <script type="text/javascript" src="./js/shell.js"></script>
    <script type="text/javascript" src="./js/sublime.js"></script>
    <script type="text/javascript" src="./js/sweetalert2.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/codemirror.min.css">
    <link rel="stylesheet" type="text/css" href="./css/twilight.css">
    <link rel="stylesheet" type="text/css" href="./css/dracula.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="container">
        <div class="diffs">
            <nav>
                <ul>
                    <li><a href="./home">配置设定</a></li>
                    <li><a href="./crontab">定时设定</a></li>
                    <li><a href="./diff">对比工具</a></li>
                    <li class="active"><a href="./diy">自定义脚本</a></li>
                    <li><a href="./run">手动执行</a></li>
                    <li><a href="./terminal">终端</a></li>
                    <li><a href="./log">日志查询</a></li>
                    <li><a href="./viewScripts">查看脚本</a></li>
                    <li><a href="./changepwd">修改密码</a></li>
                    <li><a href="./logout">退出</a></li>
                </ul>
            </nav>
            <header>
                <h1>自定义脚本</h1>
                <button id="save" title="保存">保存 diy.sh</button>
                <br/>
                <p>启用自定义脚本需要在 config.sh 中将参数 EnableExtraShell 设置为 true</p>
                <br/>
                <p>此处编辑的内容将保存在 config/diy.sh </p>
            </header>
            <h4>diy.sh</h4>
            <div class="wrapper">
                <textarea id="code" name="code"></textarea>
            </div>
        </div>
    </div>
    <script>
        $.ajaxSetup({ cache: false });

        $(document).ready(function () {
            var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
                lineNumbers: true,
                lineWrapping: true,
                styleActiveLine: true,
                matchBrackets: true,
                mode: 'shell',
                theme: 'dracula',
                keyMap: 'sublime'
            });
            $.get('./api/config/diy', function (data) {
                editor.setValue(data);
            });

            $('#save').click(function () {
                var confContent = editor.getValue();
                let timeStamp = (new Date()).getTime()
                $.post('./api/save?t='+timeStamp, { content: confContent, name: "diy.sh" }, function (data) {
                    let icon = (data.err == 0) ? "success" : "error"
                    Swal.fire({
                        title:data.title,
                        text: data.msg,
                        icon: icon
                    }).then((result) => {
                        window.location.reload(true);
                    })
                });
            });
        });

    </script>

</body>

</html>
EOF
fi





echo -e "======================== $dir_panel_public/home.html ========================\n"
if [ ! -f $dir_panel_public/home.html ];then
  cat>$dir_panel_public/home.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>在线编辑工具</title>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/codemirror.min.js"></script>
    <script type="text/javascript" src="./js/comment.js"></script>
    <script type="text/javascript" src="./js/shell.js"></script>
    <script type="text/javascript" src="./js/sublime.js"></script>
    <script type="text/javascript" src="./js/sweetalert2.js"></script>
    <script type="text/javascript" src="./js/qrcode.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/codemirror.min.css">
    <link rel="stylesheet" type="text/css" href="./css/twilight.css">
    <link rel="stylesheet" type="text/css" href="./css/dracula.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="container">
        <div class="diffs">
            <nav>
                <ul>
                    <li class="active"><a href="./home">配置设定</a></li>
                    <li><a href="./crontab">定时设定</a></li>
                    <li><a href="./diff">对比工具</a></li>
                    <li><a href="./diy">自定义脚本</a></li>
                    <li><a href="./run">手动执行</a></li>
                    <li><a href="./terminal">终端</a></li>
                    <li><a href="./log">日志查询</a></li>
                    <li><a href="./viewScripts">查看脚本</a></li>
                    <li><a href="./changepwd">修改密码</a></li>
                    <li><a href="./logout">退出</a></li>
                </ul>
            </nav>
            <header>
                <h1>在线编辑工具</h1>
                <button id="save" title="保存">保存</button>
                <button id="wrap" title="切换换行">切换换行</button>
                <button id="cookietools" title="手机扫描二维码登录">扫码获取 Cookie</button>
                <span>
                    <input type="checkbox" id="autoReplace" checked="checked">
                    <label for="autoReplace">
                        <font color="#000000" size="1">扫码后自动替换</font>
                    </label>
                </span>
            </header>
            <h4>config.sh</h4>
            <div class="wrapper">
                <textarea id="code" name="code"></textarea>
            </div>
        </div>
    </div>
    <div id="qrcontainer" class="hidden">
        <div class="qframe">
            <div id="refresh_qrcode" class="hidden">
                <div>
                    <h3>二维码已失效</h3>
                    <div class="refresh">刷新</div>
                </div>
            </div>
            <div id="qrcode"></div>
            <div class="info">请使用京东手机APP扫码</div>
            <div class="qframe-close" title="关闭">✖</div>
        </div>
    </div>
    <script>
        $.ajaxSetup({ cache: false });

        var qrcode, userCookie;
        $(document).ready(function () {
            var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
                lineNumbers: true,
                lineWrapping: false,
                styleActiveLine: true,
                matchBrackets: true,
                mode: 'shell',
                theme: 'dracula',
                keyMap: 'sublime'
            });
            $.get('./api/config/config', function (data) {
                editor.setValue(data);
            });

            // 勾选记忆
            if (sessionStorage.getItem('autoReplaceCookie') === 'false') {
                $('#autoReplace').prop('checked', false);
            }
            $('#autoReplace').on('change', function () {
                sessionStorage.setItem('autoReplaceCookie', $(this).prop('checked'));
            });

            qrcode = new QRCode(document.getElementById("qrcode"), {
                text: "sample",
                correctLevel: QRCode.CorrectLevel.L
            });


            function copyToClip(content, message) {
                var aux = document.createElement("input");
                aux.setAttribute("value", content);
                document.body.appendChild(aux);
                aux.select();
                document.execCommand("copy");
                document.body.removeChild(aux);
            }

            function autoReplace(cookie) {
                var value = editor.getValue();
                var ptPin = /pt_pin=[\S]+;/.exec(cookie)[0];
                var cookieReg = new RegExp(`pt_key=[\\S]+;${ptPin}`);
                if (cookieReg.test(value)) {
                    var newValue = value.replace(cookieReg, cookie);
                    editor.setValue(newValue);
                    return true;
                } else {
                    return false;
                }
            }


            function checkLogin() {
                var timeId = setInterval(() => {
                    $.get('./cookie', function (data) {
                        if (data.err == 0) {
                            clearInterval(timeId);
                            $("#qrcontainer").addClass("hidden");
                            $("#refresh_qrcode").addClass("hidden");
                            userCookie = data.cookie
                            var isAutoReplace = $('#autoReplace').prop('checked');
                            if (isAutoReplace) {
                                if (autoReplace(userCookie)) {
                                    Swal.fire({
                                        title: "cookie已获取(2s后自动替换)",
                                        html: '<div class="cookieCon" style="font-size:12px;">' +
                                            userCookie + '</div>',
                                        icon: "success",
                                        showConfirmButton: false,
                                    });

                                    setTimeout(() => {
                                        $('#save').trigger('click');
                                    }, 2000);
                                } else {
                                    Swal.fire({
                                        title: "cookie已获取",
                                        html: '<div class="cookieCon" style="font-size:16px;font-weight: bold;">自动替换失败，请复制Cookie后手动更新。</div>' +
                                            '<div class="cookieCon" style="font-size:12px;">' +
                                            userCookie + '</div>',
                                        icon: "success",
                                        confirmButtonText: "复制Cookie",
                                    }).then((result) => {
                                        copyToClip(userCookie);
                                    });
                                }
                            } else {
                                Swal.fire({
                                    title: "cookie已获取",
                                    html: '<div class="cookieCon" style="font-size:12px;">' +
                                        userCookie + '</div>',
                                    icon: "success",
                                    confirmButtonText: "复制Cookie",
                                }).then((result) => {
                                    copyToClip(userCookie);
                                });
                            }

                        } else if (data.err == 21) {
                            clearInterval(timeId);
                            $("#refresh_qrcode").removeClass("hidden");
                        }
                    })
                }, 3000)

            }

            function get_code() {
                $.get('./qrcode', function (data) {
                    if (data.err == 0) {
                        $("#qrcontainer").removeClass("hidden")
                        $("#refresh_qrcode").addClass("hidden")
                        qrcode.clear();
                        qrcode.makeCode(data.qrcode);
                        checkLogin();
                    } else {
                        Swal.fire({
                            text: data.msg,
                            icon: "error"
                        })
                    }
                });
            }

            $('.refresh').click(get_code);

            $('#cookietools').click(get_code);

            $('.qframe-close').click(function () {
                $("#qrcontainer").addClass("hidden");
                $("#refresh_qrcode").addClass("hidden");
            });

            $('#save').click(function () {
                var confContent = editor.getValue();
                $.post('./api/save', { content: confContent, name: "config.sh" }, function (data) {
                    let icon = (data.err == 0) ? "success" : "error"
                    Swal.fire({
                        title: data.title,
                        text: data.msg,
                        icon: icon
                    }).then((result) => {
                        window.location.reload(true);
                    })
                });
            });

            $('#wrap').click(function () {
                var lineWrapping = editor.getOption('lineWrapping');
                editor.setOption('lineWrapping', !lineWrapping);
            });
        });

    </script>

</body>

</html>
EOF
fi





echo -e "======================== $dir_panel_public/pwd.html ========================\n"
if [ ! -f $dir_panel_public/pwd.html ];then
  cat>$dir_panel_public/pwd.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>修改用户名密码</title>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/sweetalert2.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="container">
        <div class="diffs">
            <nav>
                <ul>
                    <li><a href="./home">配置设定</a></li>
                    <li><a href="./crontab">定时设定</a></li>
                    <li><a href="./diff">对比工具</a></li>
                    <li><a href="./diy">自定义脚本</a></li>
                    <li><a href="./run">手动执行</a></li>
                    <li><a href="./terminal">终端</a></li>
                    <li><a href="./log">日志查询</a></li>
                    <li><a href="./viewScripts">查看脚本</a></li>
                    <li class="active"><a href="./changepwd">修改密码</a></li>
                    <li><a href="./logout">退出</a></li>
                </ul>
            </nav>
            <div class="login-form">
                <h1>请输入新的用户名密码</h1>
                <form action="changepass" method="POST">
                    <input type="text" name="username" class="username" placeholder="用户名" required>
                    <input type="password" name="password" class="password" placeholder="密码" required>
                    <input type="submit" id="changeBtn" value="提交修改">
                </form>
            </div>
        </div>
    </div>
    <script>
        $.ajaxSetup({ cache: false });

        $("#changeBtn").click(function () {
            $user = $(".username").val();
            $password = $(".password").val();
            if (!$user || !$password) return;

            $.post('./changepass', { username: $user, password: $password }, function (data) {
                let icon = (data.err == 0) ? "success" : "error"
                Swal.fire({
                    text: data.msg,
                    icon: icon
                })
            });
            return false;
        });
    </script>

</body>


</html>
EOF
fi





echo -e "======================== $dir_panel_public/robots.txt ========================\n"
if [ ! -f $dir_panel_public/robots.txt ];then
  cat>$dir_panel_public/robots.txt<<\EOF
User-agent: Baiduspider
Disallow: /
User-agent: Sosospider
Disallow: /
User-agent: sogou spider
Disallow: /
User-agent: YodaoBot
Disallow: /
User-agent: Googlebot
Disallow: /
User-agent: Bingbot
Disallow: /
User-agent: Slurp
Disallow: /
Disallow: /
EOF
fi





echo -e "======================== $dir_panel_public/run.html ========================\n"
if [ ! -f $dir_panel_public/run.html ];then
  cat>$dir_panel_public/run.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>手动执行脚本</title>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript" src="./js/codemirror.min.js"></script>
    <script type="text/javascript" src="./js/shell.js"></script>
    <script type="text/javascript" src="./js/sweetalert2.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/codemirror.min.css">
    <link rel="stylesheet" type="text/css" href="./css/twilight.css">
    <link rel="stylesheet" type="text/css" href="./css/dracula.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="container">
        <div class="diffs">
            <nav>
                <ul>
                    <li><a href="./home">配置设定</a></li>
                    <li><a href="./crontab">定时设定</a></li>
                    <li><a href="./diff">对比工具</a></li>
                    <li><a href="./diy">自定义脚本</a></li>
                    <li class="active"><a href="./run">手动执行</a></li>
                    <li><a href="./terminal">终端</a></li>
                    <li><a href="./log">日志查询</a></li>
                    <li><a href="./viewScripts">查看脚本</a></li>
                    <li><a href="./changepwd">修改密码</a></li>
                    <li><a href="./logout">退出</a></li>
                </ul>
            </nav>
            <header>
                <h1>手动执行脚本</h1>
                <button id="wrap" title="切换换行">切换换行</button>
                <button id="move-bottom" title="跳转底部">跳转底部</button>
                <br/>
                <button id="jd_list" class="cmd-btn" title="列出脚本">列出脚本</button>
                <button id="jup" title="更新脚本文件">更新脚本文件</button>
                <button id="rm_log" class="cmd-btn" title="删除旧日志">删除旧日志</button>
                <button id="jd_get_share_code" class="cmd-btn" title="获取互助码">获取互助码</button>
                <button id="jcode" title="导出互助码">导出互助码</button>
                <button id="ps" title="查看进程">查看进程</button>
                <button id="jd-crazy-joy-coin" title="查看挂机日志">查看挂机日志</button>
                <button id="hangup" title="重启挂机程序">重启挂机程序</button>
                <button id="resetpwd" title="重置用户名密码">重置用户名密码</button>
                <br/>
                <form class="run-cmd-form" action="runCmd" method="POST">
                    <div class="cmd-section">
                        jtask <input id="jdScript" name="jdScript" type="text" placeholder="请输入脚本名称或脚本绝对路径" required> now
                    </div>
                    <input type="submit" id="runCmd">
                </form>
            </header>
            <h4>运行日志</h4>
            <div class="wrapper">
                <textarea id="code" name="code" readonly="readonly"></textarea>
            </div>
        </div>
    </div>
    <script>
        $.ajaxSetup({ cache: false });

        $(document).ready(function () {
            var timer=0;
            var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
                lineNumbers: true,
                lineWrapping: false,
                styleActiveLine: true,
                matchBrackets: true,
                readOnly: true,
                mode: 'text',
                theme: 'dracula'
            });

            $('.cmd-btn').click(function() {
                let confirmTxt, cmd;
                switch (this.id) {
                    case 'rm_log':
                        confirmTxt = '确认删除旧日志？';
                        cmd = 'bash jlog.sh 2>&1 | tee log/jlog.log';
                        break;
                    case 'jd_list':
                        // confirmTxt = '';
                        cmd = 'bash jtask.sh';
                        break;
                    case 'jd_get_share_code':
                        confirmTxt = '确认获取互助码？';
                        cmd = `bash jtask.sh ${this.id} now`;
                        break;
                    default:
                        break;
                }

                if (confirmTxt && !confirm(confirmTxt)) {
                    return;
                }

                if (timer) {
                    Swal.fire({
                        text: '请等待上一条任务执行完毕。',
                        icon: 'error'
                    });
                    return;
                }

                editor.setValue('');

                const jsName = this.id === 'jd_list' ? '' : this.id;
                $.post('./runCmd', { cmd }, function (data) {
                    editor.setValue(data.msg);

                    if (jsName) {
                        //将光标和滚动条设置到文本区最下方
                        editor.execCommand('goDocEnd');
                    }

                    clearInterval(timer);
                    timer = 0;
                });

                timer = 1;
                // 1s后开始查日志
                setTimeout(() => {
                    jsName && getLogInterval(jsName);
                }, 1000);
            });

            $('#hangup, #resetpwd, #jcode, #jup, #ps, #jd-crazy-joy-coin').click(function() {
                let confirmTxt, cmd;
                switch (this.id) {
                    case 'jup':
                        confirmTxt = '确认更新脚本文件？';
                        cmd = 'bash jup.sh 2>&1 | tee -a log/jup.log';
                        break;
                    case 'jcode':
                        confirmTxt = '确认导出互助码？';
                        cmd = `bash ${this.id}.sh`;
                        break;
                    case 'ps':
                        // confirmTxt = '确认查看进程？';
                        cmd = `${this.id}`;
                        break;
                    case 'jd-crazy-joy-coin':
                        // confirmTxt = '确认查看挂机日志？';
                        cmd = `cat /root/.pm2/logs/${this.id}-out.log 2>&1`;
                        break;
                    case 'hangup':
                        confirmTxt = '确认重启挂机程序？';
                        cmd = `bash jtask.sh ${this.id}`;
                        break;
                    case 'resetpwd':
                        confirmTxt = '重置用户名密码？';
                        cmd = `bash jtask.sh ${this.id}`;
                        break;
                    default:
                        break;
                }

                if (confirmTxt && !confirm(confirmTxt)) {
                    return;
                }

                if (timer) {
                    Swal.fire({
                        text: '请等待上一条任务执行完毕。',
                        icon: 'error'
                    });
                    return;
                }
                editor.setValue('');

                $.post('./runCmd', { cmd }, function (data) {
                    editor.setValue(data.msg);

                    clearInterval(timer);
                    timer = 0;
                });

                timer = 1;
            });


            $('#runCmd').click(function() {
                const jdScript = $('#jdScript').val();
                if (!jdScript) {
                    Swal.fire({
                        text: '请先补充命令。',
                        icon: 'error'
                    });
                    return;
                }

                if (timer) {
                    Swal.fire({
                        text: '请等待上一条任务执行完毕。',
                        icon: 'error'
                    });
                    return;
                }
                editor.setValue('');

                const cmd = `bash jtask.sh ${jdScript} now`;
                $.post('./runCmd', {cmd: cmd, delay: 1000}, function (data) {
                    editor.setValue(data.msg);

                    //将光标和滚动条设置到文本区最下方
                    editor.execCommand('goDocEnd');

                    clearInterval(timer);
                    timer = 0;
                });

                timer = 1;
                // 1s后开始查日志
                setTimeout(() => {
                    getLogInterval(jdScript);
                }, 1000);

                return false;
            });


            function getLogInterval(jsName) {
                timer && clearInterval(timer);

                // 先执行一次
                getLog(jsName);
                timer = setInterval(() => {
                    getLog(jsName);
                }, 1500);
            }

            function getLog(jsName) {
                $.get(`./runLog/${jsName}`, function (data) {
                    if (data !== 'no logs') {
                        editor.setValue(data);
                    }
                    //将光标和滚动条设置到文本区最下方
                    editor.execCommand('goDocEnd');
                });
            }

            $('#wrap').click(function () {
                var lineWrapping = editor.getOption('lineWrapping');
                editor.setOption('lineWrapping', !lineWrapping);
            });
            
            $('#move-bottom').click(function () {
                editor.execCommand('goDocEnd');
            })

            $('#jd_list').trigger('click');
        });

    </script>

</body>

</html>
EOF
fi





echo -e "======================== $dir_panel_public/tasklog.html ========================\n"
if [ ! -f $dir_panel_public/tasklog.html ];then
  cat>$dir_panel_public/tasklog.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>在线编辑工具</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/metismenu/dist/metisMenu.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/elektron/dist/elektron.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/prismjs/themes/prism.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/onoffcanvas/dist/onoffcanvas.min.css">
    <link rel="stylesheet" type="text/css" href="./css/codemirror.min.css">
    <link rel="stylesheet" type="text/css" href="./css/twilight.css">
    <link rel="stylesheet" type="text/css" href="./css/dracula.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
<div class="container">
    <div class="elk-app">
        <div class="elk-wrap diffs">
            <div class="elk-header">
                <nav>
                    <ul>
                        <li><a href="./home">配置设定</a></li>
                        <li><a href="./crontab">定时设定</a></li>
                        <li><a href="./diff">对比工具</a></li>
                        <li><a href="./diy">自定义脚本</a></li>
                        <li><a href="./run">手动执行</a></li>
                        <li><a href="./terminal">终端</a></li>
                        <li class="active"><a href="./log">日志查询</a></li>
                        <li><a href="./viewScripts">查看脚本</a></li>
                        <li><a href="./changepwd">修改密码</a></li>
                        <li><a href="./logout">退出</a></li>
                    </ul>
                </nav>
                <header>
                    <a id="toggleIcon" class="onoffcanvas-toggler is-animated" href="#elk-side" data-toggle="onoffcanvas"></a>
                    <h1>日志查询</h1>
                    <button id="wrap" title="切换换行">切换换行</button>
                </header>
            </div>

            <div class="elk-container">
                <aside class="elk-side bg-light left-list" id="elk-side">
                    <div class="elk-side-content ">
                        <div class="elk-side-nav">
                            <ul class="nav flex-column" id="menu1">

                            </ul>

                        </div>
                    </div>

                </aside>
                <div class="elk-main">
                    <div class="wrapper">
                        <textarea id="code" name="code">  你还没有选择日志文件！</textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <script src="./js/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/prismjs"></script>
    <script src="https://cdn.jsdelivr.net/npm/onoffcanvas"></script>
    <script src="https://cdn.jsdelivr.net/npm/elektron"></script>
    <script src="https://cdn.jsdelivr.net/npm/metismenu"></script>
    <script src="./js/codemirror.min.js"></script>
    <script>
        $.ajaxSetup({ cache: false });

        var qrcode, userCookie;
        $(document).ready(function () {
            var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
                lineNumbers: true,
                lineWrapping: false,
                styleActiveLine: true,
                matchBrackets: true,
                readOnly: true,
                mode: 'shell',
                theme: 'dracula'
            });
            
            $.get('./api/logs', function (data) {
                var dirs = data.dirs;
                var navHtml = "";
                for (let index in dirs) {
                    var dirName = dirs[index].dirName;
                    // 文件在log/目录时
                    if (dirName === '@') {
                        var row = `<li class="nav-item">`;
                        for (let filesKey in dirs[index].files) {
                            var fileName = dirs[index].files[filesKey];
                            row += `<a class="nav-link" href="javascript:logDetail('${dirName}', '${fileName}');">${fileName}</a>`
                        }
                            row += `</li>`;
                    } else {
                        var row = `<li class="nav-item">
                                <a class="nav-link text-dark has-arrow" href="#">${dirName}</a>
                                <ul class="nav flex-column pl-1">
                                    <li class="nav-item">`;
                        for (let filesKey in dirs[index].files) {
                            var fileName = dirs[index].files[filesKey];
                            row += `<a class="nav-link" href="javascript:logDetail('${dirName}', '${fileName}');">${fileName}</a>`
                        }
                            row += `</li>
                                    </ul>
                                </li>`;
                        }
                    
                    navHtml += row;
                }
                $('#menu1').html(navHtml);
                $('#menu1').metisMenu();
            });

            window.logDetail = function logDetail(dir, file) {
                if (window.innerWidth < 993) {
                    dispatch(document.getElementById('toggleIcon'), 'click');
                }

                $.get(`./api/logs/${dir}/${file}`, function (data) {
                    editor.setValue(data);
                });
            }

            $('#wrap').click(function () {
                var lineWrapping = editor.getOption('lineWrapping');
                editor.setOption('lineWrapping', !lineWrapping);
            });


            //自动触发事件
            function dispatch(ele, type){
                try{
                    if(ele.dispatchEvent){  //标准浏览器

                        var evt = document.createEvent('Event');
                            evt.initEvent(type,true,true);
                            ele.dispatchEvent(evt);
                    }else{
                        ele.fireEvent('on' + type);
                    }
                }catch(e){};
                    
            }
        });
    </script>

</body>

</html>
EOF
fi





echo -e "======================== $dir_panel_public/terminal.html ========================\n"
if [ ! -f $dir_panel_public/terminal.html ];then
  cat>$dir_panel_public/terminal.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>终端</title>
    <!-- <script type="text/javascript" src="./js/jquery.min.js"></script> -->
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
    <div class="container">
        <div class="diffs">
            <nav>
                <ul>
                    <li><a href="./home">配置设定</a></li>
                    <li><a href="./crontab">定时设定</a></li>
                    <li><a href="./diff">对比工具</a></li>
                    <li><a href="./diy">自定义脚本</a></li>
                    <li><a href="./run">手动执行</a></li>
                    <li class="active"><a href="./terminal">终端</a></li>
                    <li><a href="./log">日志查询</a></li>
                    <li><a href="./viewScripts">查看脚本</a></li>
                    <li><a href="./changepwd">修改密码</a></li>
                    <li><a href="./logout">退出</a></li>
                </ul>
            </nav>
            <br>
            <div class="wrapper">
                <iframe id="terminal" src="./shell" style="width: 100%;height: 99%;border: none;"></iframe>
            </div>
        </div>
    </div>
</body>

</html>
EOF
fi





echo -e "======================== $dir_panel_public/viewScripts.html ========================\n"
if [ ! -f $dir_panel_public/viewScripts.html ];then
  cat>$dir_panel_public/viewScripts.html<<\EOF
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>查看脚本文件</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/metismenu/dist/metisMenu.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/elektron/dist/elektron.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/prismjs/themes/prism.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/onoffcanvas/dist/onoffcanvas.min.css">
    <link rel="stylesheet" type="text/css" href="./css/codemirror.min.css">
    <link rel="stylesheet" type="text/css" href="./css/twilight.css">
    <link rel="stylesheet" type="text/css" href="./css/dracula.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>

<body>
<div class="container">
    <div class="elk-app">
        <div class="elk-wrap diffs">
            <div class="elk-header">
                <nav>
                    <ul>
                        <li><a href="./home">配置设定</a></li>
                        <li><a href="./crontab">定时设定</a></li>
                        <li><a href="./diff">对比工具</a></li>
                        <li><a href="./diy">自定义脚本</a></li>
                        <li><a href="./run">手动执行</a></li>
                        <li><a href="./terminal">终端</a></li>
                        <li><a href="./log">日志查询</a></li>
                        <li class="active"><a href="./viewScripts">查看脚本</a></li>
                        <li><a href="./changepwd">修改密码</a></li>
                        <li><a href="./logout">退出</a></li>
                    </ul>
                </nav>
                <header>
                    <a id="toggleIcon" class="onoffcanvas-toggler is-animated" href="#elk-side" data-toggle="onoffcanvas"></a>
                    <h1>查看脚本文件</h1>
                    <button id="wrap" title="切换换行">切换换行</button>
                </header>
            </div>

            <div class="elk-container">
                <aside class="elk-side bg-light left-list" id="elk-side">
                    <div class="elk-side-content ">
                        <div class="elk-side-nav">
                            <ul class="nav flex-column" id="menu1">

                            </ul>

                        </div>
                    </div>

                </aside>
                <div class="elk-main">
                    <div class="wrapper">
                        <textarea id="code" name="code">  你还没有选择脚本文件！</textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <script src="./js/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/prismjs"></script>
    <script src="https://cdn.jsdelivr.net/npm/onoffcanvas"></script>
    <script src="https://cdn.jsdelivr.net/npm/elektron"></script>
    <script src="https://cdn.jsdelivr.net/npm/metismenu"></script>
    <script src="./js/codemirror.min.js"></script>
    <script src="./js/javascript.js"></script>
    <script>
        $.ajaxSetup({ cache: false });

        var qrcode, userCookie;
        $(document).ready(function () {
            var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
                lineNumbers: true,
                lineWrapping: false,
                styleActiveLine: true,
                matchBrackets: true,
                readOnly: true,
                mode: 'javascript',
                theme: 'dracula'
            });
            
            $.get('./api/scripts', function (data) {
                var dirs = data.dirs;
                var navHtml = "";
                for (let index in dirs) {
                    var dirName = dirs[index].dirName;
                    // 文件在scripts/目录时
                    if (dirName === '@') {
                        var row = `<li class="nav-item">`;
                        for (let filesKey in dirs[index].files) {
                            var fileName = dirs[index].files[filesKey];
                            row += `<a class="nav-link" href="javascript:viewScript('${dirName}', '${fileName}');">${fileName}</a>`
                        }
                            row += `</li>`;
                    } else {
                        var row = `<li class="nav-item">
                                <a class="nav-link text-dark has-arrow" href="#">${dirName}</a>
                                <ul class="nav flex-column pl-1">
                                    <li class="nav-item">`;
                        for (let filesKey in dirs[index].files) {
                            var fileName = dirs[index].files[filesKey];
                            row += `<a class="nav-link" href="javascript:viewScript('${dirName}', '${fileName}');">${fileName}</a>`
                        }
                            row += `</li>
                                    </ul>
                                </li>`;
                        }
                    
                    navHtml += row;
                }
                $('#menu1').html(navHtml);
                $('#menu1').metisMenu();
            });

            window.viewScript = function viewScript(dir, file) {
                if (window.innerWidth < 993) {
                    dispatch(document.getElementById('toggleIcon'), 'click');
                }

                $.get(`./api/scripts/${dir}/${file}`, function (data) {
                    editor.setValue(data);
                });
            }

            $('#wrap').click(function () {
                var lineWrapping = editor.getOption('lineWrapping');
                editor.setOption('lineWrapping', !lineWrapping);
            });


            //自动触发事件
            function dispatch(ele, type){
                try{
                    if(ele.dispatchEvent){  //标准浏览器

                        var evt = document.createEvent('Event');
                            evt.initEvent(type,true,true);
                            ele.dispatchEvent(evt);
                    }else{
                        ele.fireEvent('on' + type);
                    }
                }catch(e){};
                    
            }
        });
    </script>

</body>

</html>
EOF
fi




echo -e "======================== $dir_panel_ttyd ========================\n"
if [ ! -f $dir_panel_ttyd/ttyd.aarch64 ];then
    aarch64=$( curl -s https://api.github.com/repos/tsl0922/ttyd/releases/latest | grep browser_download_url | grep 'ttyd.aarch64' | head -n 1 | cut -d '"' -f 4 )
    curl -L $aarch64 -o $dir_panel_ttyd/ttyd.aarch64
    if [ $? -ne 0 ]; then
        rm -rf $dir_panel_ttyd/ttyd.aarch64
        echo -e "\033[41;37m ttyd.aarch64下载失败，请稍后重试... \033[0m"
        exit 1
    fi
fi

if [ ! -f $dir_panel_ttyd/ttyd.arm ];then
    arm=$( curl -s https://api.github.com/repos/tsl0922/ttyd/releases/latest | grep browser_download_url | grep 'ttyd.arm' | head -n 1 | cut -d '"' -f 4 )
    curl -L $arm -o $dir_panel_ttyd/ttyd.arm
    if [ $? -ne 0 ]; then
        rm -rf $dir_panel_ttyd/ttyd.arm
        echo -e "\033[41;37m ttyd.arm下载失败，请稍后重试... \033[0m"
        exit 1
    fi
fi

if [ ! -f $dir_panel_ttyd/ttyd.x86_64 ];then
    x86_64=$( curl -s https://api.github.com/repos/tsl0922/ttyd/releases/latest | grep browser_download_url | grep 'ttyd.x86_64' | head -n 1 | cut -d '"' -f 4 )
    curl -L $x86_64 -o $dir_panel_ttyd/ttyd.x86_64
    if [ $? -ne 0 ]; then
        rm -rf $dir_panel_ttyd/ttyd.x86_64
        echo -e "\033[41;37m ttyd.x86_64下载失败，请稍后重试... \033[0m"
        exit 1
    fi
fi





echo -e "======================== $dir_panel/ecosystem.config.js ========================\n"
if [ ! -f $dir_panel/ecosystem.config.js ];then
  cat>$dir_panel/ecosystem.config.js<<\EOF
module.exports = {
  apps: [
    { 
      name: 'server',
      script: './server.js',
      watch: ['server.js'],
      // Delay between restart
      watch_delay: 2000,
      ignore_watch: ['node_modules', 'public'],
      watch_options: {
        followSymlinks: false,
      },
    },
  ],
};
EOF
fi





echo -e "======================== $dir_panel/package.json ========================\n"
if [ ! -f $dir_panel/package.json ];then
  cat>$dir_panel/package.json<<\EOF
{
  "name": "panel",
  "version": "1.0.0",
  "description": "web panel",
  "main": "server.js",
  "dependencies": {
    "body-parser": "^1.19.0",
    "compression": "^1.7.4",
    "express": "^4.17.1",
    "express-session": "^1.17.1",
    "got": "^11.8.1",
    "http-proxy-middleware": "^1.0.6"
  }
}
EOF
fi





echo -e "======================== $dir_panel/server.js ========================\n"
if [ ! -f $dir_panel/server.js ];then
  cat>$dir_panel/server.js<<\EOF

/*
 * @Author: Jerrykuku https://github.com/jerrykuku
 * @Date: 2021-1-8
 * @Version: v0.0.2
 * @thanks: FanchangWang https://github.com/FanchangWang
 */

var express = require('express');
var session = require('express-session');
var compression = require('compression');
var bodyParser = require('body-parser');
var got = require('got');
var path = require('path');
var fs = require('fs');
var { execSync, exec } = require('child_process');
const { createProxyMiddleware } = require('http-proxy-middleware');


var rootPath = path.resolve(__dirname, '..')
// config.sh 文件所在目录
var confFile = path.join(rootPath, 'config/config.sh');
// config.sample.sh 文件所在目录
var sampleFile = path.join(rootPath, 'sample/config.sample.sh');
// crontab.list 文件所在目录
var crontabFile = path.join(rootPath, 'config/crontab.list');
// config.sh 文件备份目录
var confBakDir = path.join(rootPath, 'config/bak/');
// auth.json 文件目录
var authConfigFile = path.join(rootPath, 'config/auth.json');
// Share Code 文件目录
var shareCodeDir = path.join(rootPath, 'log/jd_get_share_code/');
// diy.sh 文件目录
var diyFile = path.join(rootPath, 'config/diy.sh');
// 日志目录
var logPath = path.join(rootPath, 'log/');
// 脚本目录
var ScriptsPath = path.join(rootPath, 'scripts/');

var authError = "错误的用户名密码，请重试";
var loginFaild = "请先登录!";

var configString = "config sample crontab shareCode diy";

var s_token, cookies, guid, lsid, lstoken, okl_token, token, userCookie = ""

function praseSetCookies(response) {
    s_token = response.body.s_token
    guid = response.headers['set-cookie'][0]
    guid = guid.substring(guid.indexOf("=") + 1, guid.indexOf(";"))
    lsid = response.headers['set-cookie'][2]
    lsid = lsid.substring(lsid.indexOf("=") + 1, lsid.indexOf(";"))
    lstoken = response.headers['set-cookie'][3]
    lstoken = lstoken.substring(lstoken.indexOf("=") + 1, lstoken.indexOf(";"))
    cookies = "guid=" + guid + "; lang=chs; lsid=" + lsid + "; lstoken=" + lstoken + "; "
}

function getCookie(response) {
    var TrackerID = response.headers['set-cookie'][0]
    TrackerID = TrackerID.substring(TrackerID.indexOf("=") + 1, TrackerID.indexOf(";"))
    var pt_key = response.headers['set-cookie'][1]
    pt_key = pt_key.substring(pt_key.indexOf("=") + 1, pt_key.indexOf(";"))
    var pt_pin = response.headers['set-cookie'][2]
    pt_pin = pt_pin.substring(pt_pin.indexOf("=") + 1, pt_pin.indexOf(";"))
    var pt_token = response.headers['set-cookie'][3]
    pt_token = pt_token.substring(pt_token.indexOf("=") + 1, pt_token.indexOf(";"))
    var pwdt_id = response.headers['set-cookie'][4]
    pwdt_id = pwdt_id.substring(pwdt_id.indexOf("=") + 1, pwdt_id.indexOf(";"))
    var s_key = response.headers['set-cookie'][5]
    s_key = s_key.substring(s_key.indexOf("=") + 1, s_key.indexOf(";"))
    var s_pin = response.headers['set-cookie'][6]
    s_pin = s_pin.substring(s_pin.indexOf("=") + 1, s_pin.indexOf(";"))
    cookies = "TrackerID=" + TrackerID + "; pt_key=" + pt_key + "; pt_pin=" + pt_pin + "; pt_token=" + pt_token + "; pwdt_id=" + pwdt_id + "; s_key=" + s_key + "; s_pin=" + s_pin + "; wq_skey="
    var userCookie = "pt_key=" + pt_key + ";pt_pin=" + pt_pin + ";";
    console.log("\n############  登录成功，获取到 Cookie  #############\n\n");
    console.log('Cookie1="' + userCookie + '"\n');
    console.log("\n####################################################\n\n");
    return userCookie;
}

async function step1() {
    try {
        s_token, cookies, guid, lsid, lstoken, okl_token, token = ""
        let timeStamp = (new Date()).getTime()
        let url = 'https://plogin.m.jd.com/cgi-bin/mm/new_login_entrance?lang=chs&appid=300&returnurl=https://wq.jd.com/passport/LoginRedirect?state=' + timeStamp + '&returnurl=https://home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport'
        const response = await got(url, {
            responseType: 'json',
            headers: {
                'Connection': 'Keep-Alive',
                'Content-Type': 'application/x-www-form-urlencoded',
                'Accept': 'application/json, text/plain, */*',
                'Accept-Language': 'zh-cn',
                'Referer': 'https://plogin.m.jd.com/login/login?appid=300&returnurl=https://wq.jd.com/passport/LoginRedirect?state=' + timeStamp + '&returnurl=https://home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport',
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36',
                'Host': 'plogin.m.jd.com'
            }
        });

        praseSetCookies(response)
    } catch (error) {
        cookies = "";
        console.log(error.response.body);
    }
};

async function step2() {
    try {
        if (cookies == "") {
            return 0
        }
        let timeStamp = (new Date()).getTime()
        let url = 'https://plogin.m.jd.com/cgi-bin/m/tmauthreflogurl?s_token=' + s_token + '&v=' + timeStamp + '&remember=true'
        const response = await got.post(url, {
            responseType: 'json',
            json: {
                'lang': 'chs',
                'appid': 300,
                'returnurl': 'https://wqlogin2.jd.com/passport/LoginRedirect?state=' + timeStamp + '&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action',
                'source': 'wq_passport'
            },
            headers: {
                'Connection': 'Keep-Alive',
                'Content-Type': 'application/x-www-form-urlencoded; Charset=UTF-8',
                'Accept': 'application/json, text/plain, */*',
                'Cookie': cookies,
                'Referer': 'https://plogin.m.jd.com/login/login?appid=300&returnurl=https://wqlogin2.jd.com/passport/LoginRedirect?state=' + timeStamp + '&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport',
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36',
                'Host': 'plogin.m.jd.com',
            }
        });
        token = response.body.token
        okl_token = response.headers['set-cookie'][0]
        okl_token = okl_token.substring(okl_token.indexOf("=") + 1, okl_token.indexOf(";"))
        var qrUrl = 'https://plogin.m.jd.com/cgi-bin/m/tmauth?appid=300&client_type=m&token=' + token;
        return qrUrl;
    } catch (error) {
        console.log(error.response.body);
        return 0
    }
}

var i = 0;

async function checkLogin() {
    try {
        if (cookies == "") {
            return 0
        }
        let timeStamp = (new Date()).getTime()
        let url = 'https://plogin.m.jd.com/cgi-bin/m/tmauthchecktoken?&token=' + token + '&ou_state=0&okl_token=' + okl_token;
        const response = await got.post(url, {
            responseType: 'json',
            form: {
                lang: 'chs',
                appid: 300,
                returnurl: 'https://wqlogin2.jd.com/passport/LoginRedirect?state=1100399130787&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action',
                source: 'wq_passport'
            },
            headers: {
                'Referer': 'https://plogin.m.jd.com/login/login?appid=300&returnurl=https://wqlogin2.jd.com/passport/LoginRedirect?state=' + timeStamp + '&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport',
                'Cookie': cookies,
                'Connection': 'Keep-Alive',
                'Content-Type': 'application/x-www-form-urlencoded; Charset=UTF-8',
                'Accept': 'application/json, text/plain, */*',
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36',
            }
        });

        return response;
    } catch (error) {
        console.log(error.response.body);
        let res = {}
        res.body = { check_ip: 0, errcode: 222, message: '出错' }
        res.headers = {}
        return res;
    }
}



/**
 * 检查 config.sh 以及 config.sample.sh 文件是否存在
 */
function checkConfigFile() {
    if (!fs.existsSync(confFile)) {
        console.error('脚本启动失败，config.sh 文件不存在！');
        process.exit(1);
    }
    if (!fs.existsSync(sampleFile)) {
        console.error('脚本启动失败，config.sample.sh 文件不存在！');
        process.exit(1);
    }
}

/**
 * 检查 config/bak/ 备份目录是否存在，不存在则创建
 */
function mkdirConfigBakDir() {
    if (!fs.existsSync(confBakDir)) {
        fs.mkdirSync(confBakDir);
    }
}

/**
 * 备份 config.sh 文件
 */
function bakConfFile(file) {
    mkdirConfigBakDir();
    let date = new Date();
    let bakConfFile = confBakDir + file + '_' + date.getFullYear() + '-' + date.getMonth() + '-' + date.getDay() + '-' + date.getHours() + '-' + date.getMinutes() + '-' + date.getMilliseconds();
    let oldConfContent = "";
    switch (file) {
        case "config.sh":
            oldConfContent = getFileContentByName(confFile);
            fs.writeFileSync(bakConfFile, oldConfContent);
            break;
        case "crontab.list":
            oldConfContent = getFileContentByName(crontabFile);
            fs.writeFileSync(bakConfFile, oldConfContent);
            break;
        case "diy.sh":
            oldConfContent = getFileContentByName(diyFile);
            fs.writeFileSync(bakConfFile, oldConfContent);
            break;
        default:
            break;
    }

}

/**
 * 将 post 提交内容写入 config.sh 文件（同时备份旧的 config.sh 文件到 bak 目录）
 * @param content
 */
function saveNewConf(file, content) {
    bakConfFile(file);
    switch (file) {
        case "config.sh":
            fs.writeFileSync(confFile, content);
            break;
        case "crontab.list":
            fs.writeFileSync(crontabFile, content);
            execSync('crontab ' + crontabFile);
            break;
        case "diy.sh":
            fs.writeFileSync(diyFile, content);
            break;
        default:
            break;
    }
}

/**
 * 获取文件内容
 * @param fileName 文件路径
 * @returns {string}
 */
function getFileContentByName(fileName) {
    if (fs.existsSync(fileName)) {
        return fs.readFileSync(fileName, 'utf8');
    }
    return '';
}

/**
 * 获取目录中最后修改的文件的路径
 * @param dir 目录路径
 * @returns {string} 最新文件路径
 */
function getLastModifyFilePath(dir) {
    var filePath = '';

    if (fs.existsSync(dir)) {
        var lastmtime = 0;

        var arr = fs.readdirSync(dir);

        arr.forEach(function (item) {
            var fullpath = path.join(dir, item);
            var stats = fs.statSync(fullpath);
            if (stats.isFile()) {
                if (stats.mtimeMs >= lastmtime) {
                    filePath = fullpath;
                }
            }
        });
    }
    return filePath;
}


var app = express();
// gzip压缩
app.use(compression({ level: 6, filter: shouldCompress }));

function shouldCompress(req, res) {
    if (req.headers['x-no-compression']) {
        // don't compress responses with this request header
        return false;
    }

    // fallback to standard filter function
    return compression.filter(req, res);
}

app.use(session({
    secret: 'secret',
    name: `connect.${Math.random()}`,
    resave: true,
    saveUninitialized: true
}));
app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

// ttyd proxy
app.use('/shell', createProxyMiddleware({ 
    target: 'http://localhost:7681', 
    ws: true, 
    changeOrigin: true, 
    pathRewrite: {
        '^/shell': '/', 
    }, 
}));

/**
 * 登录页面
 */
app.get('/', function (request, response) {
    if (request.session.loggedin) {
        response.redirect('./home');
    } else {
        response.sendFile(path.join(__dirname + '/public/auth.html'));
    }
});

/**
 * 用户名密码
 */
app.get('/changepwd', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/pwd.html'));
    } else {
        response.redirect('/');
    }
});

/**
 * terminal
 */
 app.get('/terminal', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/terminal.html'));
    } else {
        response.redirect('/');
    }
});


/**
 * 获取二维码链接
 */

app.get('/qrcode', function (request, response) {
    if (request.session.loggedin) {
        (async () => {
            try {
                await step1();
                const qrurl = await step2();
                if (qrurl != 0) {
                    response.send({ err: 0, qrcode: qrurl });
                } else {
                    response.send({ err: 1, msg: "错误" });
                }
            } catch (err) {
                response.send({ err: 1, msg: err });
            }
        })();
    } else {
        response.send({ err: 1, msg: loginFaild });
    }
})

/**
 * 获取返回的cookie信息
 */

app.get('/cookie', function (request, response) {
    if (request.session.loggedin && cookies != "") {
        (async () => {
            try {
                const cookie = await checkLogin();
                if (cookie.body.errcode == 0) {
                    let ucookie = getCookie(cookie);
                    response.send({ err: 0, cookie: ucookie });
                } else {
                    response.send({ err: cookie.body.errcode, msg: cookie.body.message });
                }
            } catch (err) {
                response.send({ err: 1, msg: err });
            }
        })();
    } else {
        response.send({ err: 1, msg: loginFaild });
    }
})

/**
 * 获取各种配置文件api
 */

app.get('/api/config/:key', function (request, response) {
    if (request.session.loggedin) {
        if (configString.indexOf(request.params.key) > -1) {
            switch (request.params.key) {
                case 'config':
                    content = getFileContentByName(confFile);
                    break;
                case 'sample':
                    content = getFileContentByName(sampleFile);
                    break;
                case 'crontab':
                    content = getFileContentByName(crontabFile);
                    break;
                case 'shareCode':
                    let shareCodeFile = getLastModifyFilePath(shareCodeDir);
                    content = getFileContentByName(shareCodeFile);
                    break;
                case 'diy':
                    content = getFileContentByName(diyFile);
                    break;
                default:
                    break;
            }
            response.setHeader("Content-Type", "text/plain");
            response.send(content);
        } else {
            response.send("no config");
        }
    } else {
        response.send(loginFaild);
    }
})

/**
 * 首页 配置页面
 */
app.get('/home', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/home.html'));
    } else {
        response.redirect('/');
    }

});

/**
 * 对比 配置页面
 */
app.get('/diff', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/diff.html'));
    } else {
        response.redirect('/');
    }

});

/**
 * Share Code 页面
 */
app.get('/shareCode', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/shareCode.html'));
    } else {
        response.redirect('/');
    }

});

/**
 * crontab 配置页面
 */
app.get('/crontab', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/crontab.html'));
    } else {
        response.redirect('/');
    }

});

/**
 * 自定义脚本 页面
 */
app.get('/diy', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/diy.html'));
    } else {
        response.redirect('/');
    }

});

/**
 * 手动执行脚本 页面
 */
app.get('/run', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/run.html'));
    } else {
        response.redirect('/');
    }
});

app.post('/runCmd', function(request, response) {
    if (request.session.loggedin) {
        const cmd = `cd ${rootPath};` + request.body.cmd;
        const delay = request.body.delay || 0;
        // console.log('before exec');
        // exec maxBuffer 20MB
        exec(cmd, { maxBuffer: 1024 * 1024 * 20 }, (error, stdout, stderr) => {
            // console.log(error, stdout, stderr);
            // 根据传入延时返回数据，有时太快会出问题
            setTimeout(() => {
                if (error) {
                    console.error(`执行的错误: ${error}`);
                    response.send({ err: 1, msg: stdout ? `${stdout}${error}` : `${error}` });
                    return;

                }

                if (stdout) {
                    // console.log(`stdout: ${stdout}`)
                    response.send({ err: 0, msg: `${stdout}` });
                    return;

                }

                if (stderr) {
                    console.error(`stderr: ${stderr}`);
                    response.send({ err: 1, msg: `${stderr}` });
                    return;
                }

                response.send({ err: 0, msg: '执行结束，无结果返回。' });
            }, delay);
        });
    } else {
        response.redirect('/');
    }
});

/**
 * 使用jsName获取最新的日志
 */
app.get('/runLog/:jsName', function (request, response) {
    if (request.session.loggedin) {
        const jsName = request.params.jsName;
        let shareCodeFile = getLastModifyFilePath(path.join(rootPath, `log/${jsName}/`));
        if (jsName === 'rm_log') {
            shareCodeFile = path.join(rootPath, `log/${jsName}.log`)
        }

        if (shareCodeFile) {
            const content = getFileContentByName(shareCodeFile);
            response.setHeader("Content-Type", "text/plain");
            response.send(content);
        } else {
            response.send("no logs");
        }
    } else {
        response.send(loginFaild);
    }
})


/**
 * auth
 */
app.post('/auth', function (request, response) {
    let username = request.body.username;
    let password = request.body.password;
    fs.readFile(authConfigFile, 'utf8', function (err, data) {
        if (err) console.log(err);
        var con = JSON.parse(data);
        if (username && password) {
            if (username == con.user && password == con.password) {
                request.session.loggedin = true;
                request.session.username = username;
                response.send({ err: 0 });
            } else {
                response.send({ err: 1, msg: authError });
            }
        } else {
            response.send({ err: 1, msg: "请输入用户名密码!" });
        }
    });

});

/**
 * change pwd
 */
app.post('/changepass', function (request, response) {
    if (request.session.loggedin) {
        let username = request.body.username;
        let password = request.body.password;
        let config = {
            user: username,
            password: password
        }
        if (username && password) {
            fs.writeFile(authConfigFile, JSON.stringify(config), function (err) {
                if (err) {
                    response.send({ err: 1, msg: "写入错误请重试!" });
                } else {
                    response.send({ err: 0, msg: "更新成功!" });
                }
            });
        } else {
            response.send({ err: 1, msg: "请输入用户名密码!" });
        }

    } else {
        response.send(loginFaild);

    }
});

/**
 * change pwd
 */
app.get('/logout', function (request, response) {
    request.session.destroy()
    response.redirect('/');

});

/**
 * save config
 */

app.post('/api/save', function (request, response) {
    if (request.session.loggedin) {
        let postContent = request.body.content;
        let postfile = request.body.name;
        saveNewConf(postfile, postContent);
        response.send({ err: 0, title: "保存成功! ", msg: "将自动刷新页面查看修改后的 " + postfile + " 文件" });
    } else {
        response.send({ err: 1, title: "保存失败! ", msg: loginFaild });
    }

});

/**
 * 日志查询 页面
 */
app.get('/log', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/tasklog.html'));
    } else {
        response.redirect('/');
    }
});

/**
 * 日志列表
 */
app.get('/api/logs', function (request, response) {
    if (request.session.loggedin) {
        var fileList = fs.readdirSync(logPath, 'utf-8');
        var dirs = [];
        var rootFiles = [];
        for (var i = 0; i < fileList.length; i++) {
            var stat = fs.lstatSync(logPath + fileList[i]);
            // 是目录，需要继续
            if (stat.isDirectory()) {
                var fileListTmp = fs.readdirSync(logPath + '/' + fileList[i], 'utf-8');
                fileListTmp.reverse();
                var dirMap = {
                    dirName: fileList[i],
                    files: fileListTmp
                }
                dirs.push(dirMap);
            } else {
                rootFiles.push(fileList[i]);
            }
        }

        dirs.push({
            dirName: '@',
            files: rootFiles
        });
        var result = { dirs };
        response.send(result);

    } else {
        response.redirect('/');
    }

});

/**
 * 日志文件
 */
app.get('/api/logs/:dir/:file', function (request, response) {
    if (request.session.loggedin) {
        let filePath;
        if (request.params.dir === '@') {
            filePath = logPath + request.params.file;
        } else {
            filePath = logPath + request.params.dir + '/' + request.params.file;
        }
        var content = getFileContentByName(filePath);
        response.setHeader("Content-Type", "text/plain");
        response.send(content);
    } else {
        response.redirect('/');
    }

});


/**
 * 查看脚本 页面
 */
app.get('/viewScripts', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(path.join(__dirname + '/public/viewScripts.html'));
    } else {
        response.redirect('/');
    }
});

/**
 * 脚本列表
 */
app.get('/api/scripts', function (request, response) {
    if (request.session.loggedin) {
        var fileList = fs.readdirSync(ScriptsPath, 'utf-8');
        var dirs = [];
        var rootFiles = [];
        var excludeRegExp = /(git)|(node_modules)|(icon)/;
        for (var i = 0; i < fileList.length; i++) {
            var stat = fs.lstatSync(ScriptsPath + fileList[i]);
            // 是目录，需要继续
            if (stat.isDirectory()) {
                var fileListTmp = fs.readdirSync(ScriptsPath + '/' + fileList[i], 'utf-8');
                fileListTmp.reverse();

                if (excludeRegExp.test(fileList[i])) {
                    continue;
                }
                
                var dirMap = {
                    dirName: fileList[i],
                    files: fileListTmp
                }
                dirs.push(dirMap);
            } else {
                if (excludeRegExp.test(fileList[i])) {
                    continue;
                }
                
                rootFiles.push(fileList[i]);
            }
        }

        dirs.push({
            dirName: '@',
            files: rootFiles
        });
        var result = { dirs };
        response.send(result);

    } else {
        response.redirect('/');
    }

});

/**
 * 脚本文件
 */
app.get('/api/scripts/:dir/:file', function (request, response) {
    if (request.session.loggedin) {
        let filePath;
        if (request.params.dir === '@') {
            filePath = ScriptsPath + request.params.file;
        } else {
            filePath = ScriptsPath + request.params.dir + '/' + request.params.file;
        }
        var content = getFileContentByName(filePath);
        response.setHeader("Content-Type", "text/plain");
        response.send(content);
    } else {
        response.redirect('/');
    }

});


checkConfigFile()

app.listen(5678, () => {
    console.log('应用正在监听 5678 端口!');
});
EOF
fi





if [ ! -f $dir_root/config/auth.json ];then
  cat>$dir_root/config/auth.json<<\EOF
{"user":"admin","password":"adminadmin"}
EOF
fi





if [ ! -f $dir_root/config/diy.sh ];then
  cat>$dir_root/config/diy.sh<<\EOF
echo -e "======================== 增加重置密码功能 ========================\n"
sed -i '/一次性运行所有jd_scripts脚本/i\## 重置密码\nreset_user_password () {\n    cp -f $file_auth_sample $file_auth_user\n    echo -e "控制面板重置成功，用户名：admin，密码：adminadmin\\n"\n}\n' /jd/jtask.sh
sed -i '/runall)/i\            resetpwd)\n                reset_user_password\n                ;;' /jd/jtask.sh

echo -e "======================== 启动网页终端 ========================\n"
PIDS=`ps -ef|grep "ttyd"|grep -v grep`
if [ "$PIDS" = "" ]; then
    rm -rf /root/.pm2/logs/* 2>/dev/null  # 清空pm2日志
    if [[ $ENABLE_WEB_PANEL == true ]]; then
        if [[ $ENABLE_TTYD == true ]]; then
            ## 增加环境变量
            export PS1="\u@\h:\w $ "
            pm2 start ttyd --name="ttyd" -- -t fontSize=14 -t disableLeaveAlert=true -t rendererType=webgl bash
            if [[ $? -eq 0 ]]; then
                echo -e "网页终端启动成功...\n"
            else
                echo -e "网页终端启动失败，但容器将继续启动...\n"
            fi
        elif [[ $ENABLE_TTYD == false ]]; then
            echo -e "已设置为不自动启动网页终端，跳过...\n"
        fi
    else
        echo -e "已设置为不自动启动控制面板，因此也不启动网页终端...\n"
    fi
else
    echo -e "网页终端正在运行中...\n"
fi

echo -e "======================== 启动控制面板 ========================\n"
if [[ $ENABLE_WEB_PANEL == true ]]; then
    PIDS=`ps -ef|grep "server"|grep -v grep`
    if [ "$PIDS" = "" ]; then
        cd ${JD_DIR}/panel
        pm2 start ecosystem.config.js
        if [[ $? -eq 0 ]]; then
            echo -e "控制面板启动成功...\n"
            echo -e "如未修改用户名密码，则初始用户名为：admin，初始密码为：adminadmin\n"
            echo -e "请访问 http://<ip>:5678 登陆并修改配置...\n"
        else
            echo -e "控制面板启动失败，但容器将继续启动...\n"
        fi
    else
        echo -e "控制面板正在运行中...\n"
    fi
elif [[ $ENABLE_WEB_PANEL == false ]]; then
    echo -e "已设置为不自动启动控制面板，跳过...\n"
fi
EOF
elif [ ! `grep -c "启动控制面板" $dir_root/config/diy.sh` -ne '0' ];then
    cat>>$dir_root/config/diy.sh<<\EOF
echo -e "======================== 增加重置密码功能 ========================\n"
sed -i '/一次性运行所有jd_scripts脚本/i\## 重置密码\nreset_user_password () {\n    cp -f $file_auth_sample $file_auth_user\n    echo -e "控制面板重置成功，用户名：admin，密码：adminadmin\\n"\n}\n' /jd/jtask.sh
sed -i '/runall)/i\            resetpwd)\n                reset_user_password\n                ;;' /jd/jtask.sh

echo -e "======================== 启动网页终端 ========================\n"
PIDS=`ps -ef|grep "ttyd"|grep -v grep`
if [ "$PIDS" = "" ]; then
    rm -rf /root/.pm2/logs/* 2>/dev/null  # 清空pm2日志
    if [[ $ENABLE_WEB_PANEL == true ]]; then
        if [[ $ENABLE_TTYD == true ]]; then
            ## 增加环境变量
            export PS1="\u@\h:\w $ "
            pm2 start ttyd --name="ttyd" -- -t fontSize=14 -t disableLeaveAlert=true -t rendererType=webgl bash
            if [[ $? -eq 0 ]]; then
                echo -e "网页终端启动成功...\n"
            else
                echo -e "网页终端启动失败，但容器将继续启动...\n"
            fi
        elif [[ $ENABLE_TTYD == false ]]; then
            echo -e "已设置为不自动启动网页终端，跳过...\n"
        fi
    else
        echo -e "已设置为不自动启动控制面板，因此也不启动网页终端...\n"
    fi
else
    echo -e "网页终端正在运行中...\n"
fi

echo -e "======================== 启动控制面板 ========================\n"
if [[ $ENABLE_WEB_PANEL == true ]]; then
    PIDS=`ps -ef|grep "server"|grep -v grep`
    if [ "$PIDS" = "" ]; then
        cd ${JD_DIR}/panel
        pm2 start ecosystem.config.js
        if [[ $? -eq 0 ]]; then
            echo -e "控制面板启动成功...\n"
            echo -e "如未修改用户名密码，则初始用户名为：admin，初始密码为：adminadmin\n"
            echo -e "请访问 http://<ip>:5678 登陆并修改配置...\n"
        else
            echo -e "控制面板启动失败，但容器将继续启动...\n"
        fi
    else
        echo -e "控制面板正在运行中...\n"
    fi
elif [[ $ENABLE_WEB_PANEL == false ]]; then
    echo -e "已设置为不自动启动控制面板，跳过...\n"
fi
EOF
fi
## 启用DIY脚本功能
sed -i 's/EnableExtraShell=.*/EnableExtraShell="true"/' $dir_root/config/config.sh
## 增加重置密码功能
sed -i '/一次性运行所有jd_scripts脚本/i\## 重置密码\nreset_user_password () {\n    cp -f $file_auth_sample $file_auth_user\n    echo -e "控制面板重置成功，用户名：admin，密码：adminadmin\\n"\n}\n' $dir_root/jtask.sh
sed -i '/runall)/i\            resetpwd)\n                reset_user_password\n                ;;' $dir_root/jtask.sh





if [ ! -f $dir_root/jpanel.sh ];then
  cat>$dir_root/jpanel.sh<<\EOF
#!/usr/bin/env bash

## 判断环境
dir_shell=$(dirname $(readlink -f "$0"))
dir_root=$dir_shell
dir_panel=$dir_root/panel

## 增加环境变量
export PS1="\u@\h:\w $ "

## 导入通用变量与函数
. $dir_shell/jshare.sh

## 检测平台，创建软连接，识别命令，修复配置文件
detect_termux
detect_macos
link_shell
define_cmd
fix_config

## npm install 子程序，判断是否为安卓，判断是否安装有yarn
npm_install_sub () {
    local cmd_1 cmd_2
    type yarn >/dev/null 2>&1 && cmd_1=yarn || cmd_1=npm
    [[ $is_termux -eq 1 ]] && cmd_2="--no-bin-links" || cmd_2=""
    $cmd_1 install $cmd_2 --registry=https://registry.npm.taobao.org || $cmd_1 install $cmd_2
}

## 预处理
if [ ! -d $dir_panel/node_modules ];then
    pushd $dir_panel
    echo -e "运行 npm install...\n"
    npm_install_sub
    [[ $? -ne 0 ]] && echo -e "\nnpm install 运行不成功，请进入 $dir_panel 目录后手动运行 npm install...\n"
    popd
fi

## 复制ttyd
if [[ $is_termux -eq 1 ]] && type ! ttyd >/dev/null 2>&1; then
    pkg update
    pkg install ttyd
elif [ ! -f /usr/local/bin/ttyd ]; then
    cp -f "$dir_panel/ttyd/ttyd.$(uname -m)" /usr/local/bin/ttyd
    ttyd_status=$?
    [ ! -x /usr/local/bin/ttyd ] && chmod +x /usr/local/bin/ttyd
    [[ $ttyd_status -ne 0 ]] && echo -e "CPU架构暂不支持，无法正常使用网页终端！\n"
fi

## 运行ttyd和控制面板
cd $dir_panel
if type pm2 >/dev/null 2>&1; then
    [[ $ttyd_status -eq 0 ]] && pm2 start /usr/local/bin/ttyd --name="ttyd" -- -t fontSize=14 -t disableLeaveAlert=true -t rendererType=webgl bash
    pm2 start ecosystem.config.js
else
    [[ $ttyd_status -eq 0 ]] && nohup /usr/local/bin/ttyd -t fontSize=14 -t disableLeaveAlert=true -t rendererType=webgl bash >/dev/null 2>&1 &
    nohup node server.js >/dev/null 2>&1 &
fi

if [[ $? -eq 0 ]]; then
    echo -e "控制面板启动成功，如未修改，则初始用户名和密码为：admin/adminadmin...\n"
else
    echo -e "控制面板启动失败...\n"
fi
EOF
chmod +x $dir_root/jpanel.sh
bash $dir_root/jpanel.sh
fi
