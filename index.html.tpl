<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Demo for 脉满分</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- markdown_support -->
    <script type="text/x-mathjax-config">
          MathJax.Hub.Config({"extensions":["tex2jax.js"],"jax":["input/TeX","output/HTML-CSS"],"messageStyle":"none","tex2jax":{"processEnvironments":false,"processEscapes":true,"inlineMath":[["$","$"],["\\(","\\)"]],"displayMath":[["$$","$$"],["\\[","\\]"]]},"TeX":{"extensions":["AMSmath.js","AMSsymbols.js","noErrors.js","noUndefined.js"]},"HTML-CSS":{"availableFonts":["TeX"]}});

    </script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-MML-AM_CHTML'
            async></script>


    <style>
        /**
   * prism.js Github theme based on GitHub's theme.
   * @author Sam Clarke
   */
        code[class*="language-"],
        pre[class*="language-"] {
            color: #333;
            background: none;
            font-family: Consolas, "Liberation Mono", Menlo, Courier, monospace;
            text-align: left;
            white-space: pre;
            word-spacing: normal;
            word-break: normal;
            word-wrap: normal;
            line-height: 1.4;

            -moz-tab-size: 8;
            -o-tab-size: 8;
            tab-size: 8;

            -webkit-hyphens: none;
            -moz-hyphens: none;
            -ms-hyphens: none;
            hyphens: none;
        }

        /* Code blocks */
        pre[class*="language-"] {
            padding: .8em;
            overflow: auto;
            /* border: 1px solid #ddd; */
            border-radius: 3px;
            /* background: #fff; */
            background: #f5f5f5;
        }

        /* Inline code */
        :not(pre) > code[class*="language-"] {
            padding: .1em;
            border-radius: .3em;
            white-space: normal;
            background: #f5f5f5;
        }

        .token.comment,
        .token.blockquote {
            color: #969896;
        }

        .token.cdata {
            color: #183691;
        }

        .token.doctype,
        .token.punctuation,
        .token.variable,
        .token.macro.property {
            color: #333;
        }

        .token.operator,
        .token.important,
        .token.keyword,
        .token.rule,
        .token.builtin {
            color: #a71d5d;
        }

        .token.string,
        .token.url,
        .token.regex,
        .token.attr-value {
            color: #183691;
        }

        .token.property,
        .token.number,
        .token.boolean,
        .token.entity,
        .token.atrule,
        .token.constant,
        .token.symbol,
        .token.command,
        .token.code {
            color: #0086b3;
        }

        .token.tag,
        .token.selector,
        .token.prolog {
            color: #63a35c;
        }

        .token.function,
        .token.namespace,
        .token.pseudo-element,
        .token.class,
        .token.class-name,
        .token.pseudo-class,
        .token.id,
        .token.url-reference .token.variable,
        .token.attr-name {
            color: #795da3;
        }

        .token.entity {
            cursor: help;
        }

        .token.title,
        .token.title .token.punctuation {
            font-weight: bold;
            color: #1d3e81;
        }

        .token.list {
            color: #ed6a43;
        }

        .token.inserted {
            background-color: #eaffea;
            color: #55a532;
        }

        .token.deleted {
            background-color: #ffecec;
            color: #bd2c00;
        }

        .token.bold {
            font-weight: bold;
        }

        .token.italic {
            font-style: italic;
        }

        /* JSON */
        .language-json .token.property {
            color: #183691;
        }

        .language-markup .token.tag .token.punctuation {
            color: #333;
        }

        /* CSS */
        code.language-css,
        .language-css .token.function {
            color: #0086b3;
        }

        /* YAML */
        .language-yaml .token.atrule {
            color: #63a35c;
        }

        code.language-yaml {
            color: #183691;
        }

        /* Ruby */
        .language-ruby .token.function {
            color: #333;
        }

        /* Markdown */
        .language-markdown .token.url {
            color: #795da3;
        }

        /* Makefile */
        .language-makefile .token.symbol {
            color: #795da3;
        }

        .language-makefile .token.variable {
            color: #183691;
        }

        .language-makefile .token.builtin {
            color: #0086b3;
        }

        /* Bash */
        .language-bash .token.keyword {
            color: #0086b3;
        }

        html body {
            font-family: "Helvetica Neue", Helvetica, "Segoe UI", Arial, freesans, sans-serif;
            font-size: 16px;
            line-height: 1.6;
            color: #333;
            background-color: #fff;
            overflow: initial;
            box-sizing: border-box;
            word-wrap: break-word
        }

        html body > :first-child {
            margin-top: 0
        }

        html body h1, html body h2, html body h3, html body h4, html body h5, html body h6 {
            line-height: 1.2;
            margin-top: 1em;
            margin-bottom: 16px;
            color: #000
        }

        html body h1 {
            font-size: 2.25em;
            font-weight: 300;
            padding-bottom: .3em
        }

        html body h2 {
            font-size: 1.75em;
            font-weight: 400;
            padding-bottom: .3em
        }

        html body h3 {
            font-size: 1.5em;
            font-weight: 500
        }

        html body h4 {
            font-size: 1.25em;
            font-weight: 600
        }

        html body h5 {
            font-size: 1.1em;
            font-weight: 600
        }

        html body h6 {
            font-size: 1em;
            font-weight: 600
        }

        html body h1, html body h2, html body h3, html body h4, html body h5 {
            font-weight: 600
        }

        html body h5 {
            font-size: 1em
        }

        html body h6 {
            color: #5c5c5c
        }

        html body strong {
            color: #000
        }

        html body del {
            color: #5c5c5c
        }

        html body a:not([href]) {
            color: inherit;
            text-decoration: none
        }

        html body a {
            color: #08c;
            text-decoration: none
        }

        html body a:hover {
            color: #00a3f5;
            text-decoration: none
        }

        html body img {
            max-width: 100%
        }

        html body > p {
            margin-top: 0;
            margin-bottom: 16px;
            word-wrap: break-word
        }

        html body > ul, html body > ol {
            margin-bottom: 16px
        }

        html body ul, html body ol {
            padding-left: 2em
        }

        html body ul.no-list, html body ol.no-list {
            padding: 0;
            list-style-type: none
        }

        html body ul ul, html body ul ol, html body ol ol, html body ol ul {
            margin-top: 0;
            margin-bottom: 0
        }

        html body li {
            margin-bottom: 0
        }

        html body li.task-list-item {
            list-style: none
        }

        html body li > p {
            margin-top: 0;
            margin-bottom: 0
        }

        html body .task-list-item-checkbox {
            margin: 0 .2em .25em -1.8em;
            vertical-align: middle
        }

        html body .task-list-item-checkbox:hover {
            cursor: pointer
        }

        html body blockquote {
            margin: 16px 0;
            font-size: inherit;
            padding: 0 15px;
            color: #5c5c5c;
            border-left: 4px solid #d6d6d6
        }

        html body blockquote > :first-child {
            margin-top: 0
        }

        html body blockquote > :last-child {
            margin-bottom: 0
        }

        html body hr {
            height: 4px;
            margin: 32px 0;
            background-color: #d6d6d6;
            border: 0 none
        }

        html body table {
            margin: 10px 0 15px 0;
            border-collapse: collapse;
            border-spacing: 0;
            display: block;
            width: 100%;
            overflow: auto;
            word-break: normal;
            word-break: keep-all
        }

        html body table th {
            font-weight: bold;
            color: #000
        }

        html body table td, html body table th {
            border: 1px solid #d6d6d6;
            padding: 6px 13px
        }

        html body dl {
            padding: 0
        }

        html body dl dt {
            padding: 0;
            margin-top: 16px;
            font-size: 1em;
            font-style: italic;
            font-weight: bold
        }

        html body dl dd {
            padding: 0 16px;
            margin-bottom: 16px
        }

        html body code {
            font-family: Menlo, Monaco, Consolas, 'Courier New', monospace;
            font-size: .85em !important;
            color: #000;
            background-color: #f0f0f0;
            border-radius: 3px;
            padding: .2em 0
        }

        html body code::before, html body code::after {
            letter-spacing: -0.2em;
            content: "\00a0"
        }

        html body pre > code {
            padding: 0;
            margin: 0;
            font-size: .85em !important;
            word-break: normal;
            white-space: pre;
            background: transparent;
            border: 0
        }

        html body .highlight {
            margin-bottom: 16px
        }

        html body .highlight pre, html body pre {
            padding: 1em;
            overflow: auto;
            font-size: .85em !important;
            line-height: 1.45;
            border: #d6d6d6;
            border-radius: 3px
        }

        html body .highlight pre {
            margin-bottom: 0;
            word-break: normal
        }

        html body pre code, html body pre tt {
            display: inline;
            max-width: initial;
            padding: 0;
            margin: 0;
            overflow: initial;
            line-height: inherit;
            word-wrap: normal;
            background-color: transparent;
            border: 0
        }

        html body pre code:before, html body pre tt:before, html body pre code:after, html body pre tt:after {
            content: normal
        }

        html body p, html body blockquote, html body ul, html body ol, html body dl, html body pre {
            margin-top: 0;
            margin-bottom: 16px
        }

        html body kbd {
            color: #000;
            border: 1px solid #d6d6d6;
            border-bottom: 2px solid #c7c7c7;
            padding: 2px 4px;
            background-color: #f0f0f0;
            border-radius: 3px
        }

        @media print {
            html body {
                background-color: #fff
            }

            html body h1, html body h2, html body h3, html body h4, html body h5, html body h6 {
                color: #000;
                page-break-after: avoid
            }

            html body blockquote {
                color: #5c5c5c
            }

            html body pre {
                page-break-inside: avoid
            }

            html body table {
                display: table
            }

            html body img {
                display: block;
                max-width: 100%;
                max-height: 100%
            }

            html body pre, html body code {
                word-wrap: break-word;
                white-space: pre
            }
        }

        .markdown-preview {
            width: 100%;
            height: 100%;
            box-sizing: border-box
        }

        .markdown-preview .pagebreak, .markdown-preview .newpage {
            page-break-before: always
        }

        .markdown-preview pre.line-numbers {
            position: relative;
            padding-left: 3.8em;
            counter-reset: linenumber
        }

        .markdown-preview pre.line-numbers > code {
            position: relative
        }

        .markdown-preview pre.line-numbers .line-numbers-rows {
            position: absolute;
            pointer-events: none;
            top: 1em;
            font-size: 100%;
            left: 0;
            width: 3em;
            letter-spacing: -1px;
            border-right: 1px solid #999;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none
        }

        .markdown-preview pre.line-numbers .line-numbers-rows > span {
            pointer-events: none;
            display: block;
            counter-increment: linenumber
        }

        .markdown-preview pre.line-numbers .line-numbers-rows > span:before {
            content: counter(linenumber);
            color: #999;
            display: block;
            padding-right: .8em;
            text-align: right
        }

        .markdown-preview .mathjax-exps .MathJax_Display {
            text-align: center !important
        }

        .markdown-preview:not([for="preview"]) .code-chunk .btn-group {
            display: none
        }

        .markdown-preview:not([for="preview"]) .code-chunk .status {
            display: none
        }

        .markdown-preview:not([for="preview"]) .code-chunk .output-div {
            margin-bottom: 16px
        }

        .scrollbar-style::-webkit-scrollbar {
            width: 8px
        }

        .scrollbar-style::-webkit-scrollbar-track {
            border-radius: 10px;
            background-color: transparent
        }

        .scrollbar-style::-webkit-scrollbar-thumb {
            border-radius: 5px;
            background-color: rgba(150, 150, 150, 0.66);
            border: 4px solid rgba(150, 150, 150, 0.66);
            background-clip: content-box
        }

        html body[for="html-export"]:not([data-presentation-mode]) {
            position: relative;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            margin: 0;
            padding: 0;
            overflow: auto
        }

        html body[for="html-export"]:not([data-presentation-mode]) .markdown-preview {
            position: relative;
            top: 0
        }

        @media screen and (min-width: 914px) {
            html body[for="html-export"]:not([data-presentation-mode]) .markdown-preview {
                padding: 2em calc(50% - 457px)
            }
        }

        @media screen and (max-width: 914px) {
            html body[for="html-export"]:not([data-presentation-mode]) .markdown-preview {
                padding: 2em
            }
        }

        @media screen and (max-width: 450px) {
            html body[for="html-export"]:not([data-presentation-mode]) .markdown-preview {
                font-size: 14px !important;
                padding: 1em
            }
        }

        @media print {
            html body[for="html-export"]:not([data-presentation-mode]) #sidebar-toc-btn {
                display: none
            }
        }

        html body[for="html-export"]:not([data-presentation-mode]) #sidebar-toc-btn {
            position: fixed;
            bottom: 8px;
            left: 8px;
            font-size: 28px;
            cursor: pointer;
            color: inherit;
            z-index: 99;
            width: 32px;
            text-align: center;
            opacity: .4
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] #sidebar-toc-btn {
            opacity: 1
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc {
            position: fixed;
            top: 0;
            left: 0;
            width: 300px;
            height: 100%;
            padding: 32px 0 48px 0;
            font-size: 14px;
            box-shadow: 0 0 4px rgba(150, 150, 150, 0.33);
            box-sizing: border-box;
            overflow: auto;
            background-color: inherit
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc::-webkit-scrollbar {
            width: 8px
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc::-webkit-scrollbar-track {
            border-radius: 10px;
            background-color: transparent
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc::-webkit-scrollbar-thumb {
            border-radius: 5px;
            background-color: rgba(150, 150, 150, 0.66);
            border: 4px solid rgba(150, 150, 150, 0.66);
            background-clip: content-box
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc a {
            text-decoration: none
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc ul {
            padding: 0 1.6em;
            margin-top: .8em
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc li {
            margin-bottom: .8em
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .md-sidebar-toc ul {
            list-style-type: none
        }

        html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .markdown-preview {
            left: 300px;
            width: calc(100% - 300px);
            padding: 2em calc(50% - 457px - 150px);
            margin: 0;
            box-sizing: border-box
        }

        @media screen and (max-width: 1274px) {
            html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .markdown-preview {
                padding: 2em
            }
        }

        @media screen and (max-width: 450px) {
            html body[for="html-export"]:not([data-presentation-mode])[html-show-sidebar-toc] .markdown-preview {
                width: 100%
            }
        }

        html body[for="html-export"]:not([data-presentation-mode]):not([html-show-sidebar-toc]) .markdown-preview {
            left: 50%;
            transform: translateX(-50%)
        }

        html body[for="html-export"]:not([data-presentation-mode]):not([html-show-sidebar-toc]) .md-sidebar-toc {
            display: none
        }

    </style>
    <!-- /markdown_support -->
</head>
<body for="html-export">

<!-- markdown -->
<div class="mume markdown-preview   ">
    <h1 class="mume-header"
        id="demo-for-%E5%A4%A9%E6%B0%94%E9%A2%84%E6%8A%A5%E6%9F%A5%E8%AF%A2%E6%9C%BA%E5%99%A8%E4%BA%BA">
        Demo for 脉满分</h1>

    <h2 class="mume-header" id="%E5%8A%9F%E8%83%BD">功能</h2>

    <p>这个机器人可以根据你提供的城市（北京、上海等）和日期（明天、后天等），查询出相应的天气预报。</p>
    <h2 class="mume-header" id="%E7%89%B9%E6%80%A7">特性</h2>

    <p>使用 Frame-based 对话管理方案，如果上述两个 Slot (既城市和天气)，有任意一个用户未提供，对话管理系统会负责让你澄清相关
        Slot 的值。</p>

    <h2 class="mume-header" id="%E8%83%BD%E5%8A%9B%E8%8C%83%E5%9B%B4">能力范围</h2>

    <ul>
        <li>受限于天气数据提供方的能力，这个机器人只能查询 <strong>中国地区市级</strong> 三天以内 <strong>（今天，明天，后天）</strong>
            的气象数据，<strong>不能查询过去</strong>（昨天，前天）等历史数据。
        </li>
        <li>受限于开发时间，这个机器人 <strong>不提供</strong> 诸如 <strong>这个星期五、下个星期一</strong>
            这种需要计算才能得到日期给定方式。也 <strong>不能提供</strong> 诸如 <strong>绝对日期：三月一号、六一儿童节日</strong>
            这种日期的查询能力。
        </li>
        <li>因为使用的是免费的天气查询接口，所以 <strong>会有配额限制</strong>，可能会因为
            <strong>超出调用次数</strong> ，而在一个小时内不能用。同时网络查询接口可能存在不稳定因素，导致 <strong>没有结果返回或者出现异常</strong>，<strong>尝试多次重新发送请求可解决问题</strong>。
        </li>
    </ul>

    <h2 class="mume-header" id="%E5%9C%A8%E7%BA%BF%E6%BC%94%E7%A4%BA">在线演示</h2>

    <p>见页面右下方的聊天widget <img
            src="chat_button.png"
            alt="chat_button" style="width:40px;height:40px;">，点击即可使用</p>
    
    <h2 class="mume-header" id="copyrights">Icon 版权声明</h2>

    <div>Robot icon in web-chat interface made by <a
            href="https://www.flaticon.com/authors/good-ware" title="Robotic">Robotic</a>
        from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
        is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"
                          title="Creative Commons BY 3.0" target="_blank">CC
            3.0 BY</a></div>

</div>
<!-- /markdown -->


<div id="webchat"/>
<script src="webchat.js"></script>
<script>
    WebChat.default.init({
        selector: "#webchat",
        initPayload: "你好",
        interval: 1000, // 1000 ms between each message
        customData: {"userId": "123"}, // arbitrary custom data. Stay minimal as this will be added to the socket
        socketUrl: "{{ server_url }}",
        title: "脉满分",
        subtitle: "满分职场从脉满分开始",
        profileAvatar: "robotic.png",
        showCloseButton: true,
        fullScreenMode: false
    })
</script>
</body>
</html>