<%--
  Created by IntelliJ IDEA.
  User: wcr
  Date: 18/4/8
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   <%-- 在IE运行最新的渲染模式 --%>
    <meta name="viewport" content="width=device-width, initial-scale=1">   <%-- 初始化移动浏览显示 --%>
    <meta name="Author" content="Dreamer-1.">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/index.css">    <!-- 修改自Bootstrap官方Demon，你可以按自己的喜好制定CSS样式 -->
    <link rel="stylesheet" href="css/font-change.css">    <!-- 将默认字体从宋体换成微软雅黑（个人比较喜欢微软雅黑，移动端和桌面端显示效果比较接近） -->

    <title>Title</title>
    <script src="https://cdn.bootcss.com/jquery/2.1.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('ul.nav > li').click(function (e) {
                //e.preventDefault();    加上这句则导航的<a>标签会失效
                $('ul.nav > li').removeClass('active');
                $(this).addClass('active');
            });
        });

        /*
         * 解决ajax返回的页面中含有javascript的办法：
         * 把xmlHttp.responseText中的脚本都抽取出来，不管AJAX加载的HTML包含多少个脚本块，我们对找出来的脚本块都调用eval方法执行它即可
         */
        function executeScript(html)
        {

            var reg = /<script[^>]*>([^\x00]+)$/i;
            //对整段HTML片段按<\/script>拆分
            var htmlBlock = html.split("<\/script>");
            for (var i in htmlBlock)
            {
                var blocks;//匹配正则表达式的内容数组，blocks[1]就是真正的一段脚本内容，因为前面reg定义我们用了括号进行了捕获分组
                if (blocks = htmlBlock[i].match(reg))
                {
                    //清除可能存在的注释标记，对于注释结尾-->可以忽略处理，eval一样能正常工作
                    var code = blocks[1].replace(/<!--/, '');
                    try
                    {
                        eval(code) //执行脚本
                    }
                    catch (e)
                    {
                    }
                }
            }
        }

        /*
         * 利用div实现左边点击右边显示的效果（以id="content"的div进行内容展示）
         * 注意：
         *   ①：js获取网页的地址，是根据当前网页来相对获取的，不会识别根目录；
         *   ②：如果右边加载的内容显示页里面有css，必须放在主页（即例中的index.jsp）才起作用
         *   （如果单纯的两个页面之间include，子页面的css和js在子页面是可以执行的。 主页面也可以调用子页面的js。但这时要考虑页面中js和渲染的先后顺序 ）
        */
        function showAtRight(url) {
            var xmlHttp;

            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlHttp=new XMLHttpRequest();    //创建 XMLHttpRequest对象
            }
            else {
                // code for IE6, IE5
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            }

            xmlHttp.onreadystatechange=function() {
                //onreadystatechange — 当readystate变化时调用后面的方法

                if (xmlHttp.readyState == 4) {
                    //xmlHttp.readyState == 4    ——    finished downloading response

                    if (xmlHttp.status == 200) {
                        //xmlHttp.status == 200        ——    服务器反馈正常

                        document.getElementById("content").innerHTML=xmlHttp.responseText;    //重设页面中id="content"的div里的内容
                        executeScript(xmlHttp.responseText);    //执行从服务器返回的页面内容里包含的JavaScript函数
                    }
                    //错误状态处理
                    else if (xmlHttp.status == 404){
                        alert("出错了☹   （错误代码：404 Not Found），……！");
                        /* 对404的处理 */
                        return;
                    }
                    else if (xmlHttp.status == 403) {
                        alert("出错了☹   （错误代码：403 Forbidden），……");
                        /* 对403的处理  */
                        return;
                    }
                    else {
                        alert("出错了☹   （错误代码：" + request.status + "），……");
                        /* 对出现了其他错误代码所示错误的处理   */
                        return;
                    }
                }

            }

            //把请求发送到服务器上的指定文件（url指向的文件）进行处理
            xmlHttp.open("GET", url, true);        //true表示异步处理
            xmlHttp.send();
        }

    </script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" >
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">XXXX.com</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="###" onclick="showAtRight('userList.jsp')"><i class="fa fa-users"></i> 用户列表</a></li>
                <li><a href="###" onclick="showAtRight('productList.jsp')"><i class="fa fa-list-alt"></i> 产品列表</a></li>
                <li><a href="###" onclick="showAtRight('recordList.jsp')" ><i class="fa fa-list"></i> 订单列表</a></li>
            </ul>

        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row-fluie">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <!-- 一级菜单 -->
                <li class="active"><a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                    <i class="fa fa-user"></i>&nbsp; 用户管理 <span class="sr-only">(current)</span></a>
                </li>
                <!-- 二级菜单 -->
                <!-- 注意一级菜单中<a>标签内的href="#……"里面的内容要与二级菜单中<ul>标签内的id="……"里面的内容一致 -->
                <ul id="userMeun" class="nav nav-list collapse menu-second">
                    <li><a href="###" onclick="showAtRight('userList.jsp')"><i class="fa fa-users"></i> 用户列表</a></li>
                </ul>

                <li><a href="#productMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                    <i class="fa fa-globe"></i>&nbsp; 产品管理 <span class="sr-only">(current)</span></a>
                </li>
                <ul id="productMeun" class="nav nav-list collapse menu-second">
                    <li><a href="###" onclick="showAtRight('productList.jsp')"><i class="fa fa-list-alt"></i> 产品列表</a></li>
                </ul>

                <li><a href="#recordMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                    <i class="fa fa-file-text"></i>&nbsp; 订单管理 <span class="sr-only">(current)</span></a>
                </li>
                <ul id="recordMeun" class="nav nav-list collapse menu-second">
                    <li><a href="###" onclick="showAtRight('recordList.jsp')" ><i class="fa fa-list"></i> 订单列表</a></li>
                </ul>

            </ul>

        </div>
    </div>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header"><i class="fa fa-cog fa-spin"></i>&nbsp;控制台<small>&nbsp;&nbsp;&nbsp;欢迎使用XXX后台管理系统</small></h1>

    <!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
    <div id="content">

        <h4>
            <strong>使用指南：</strong><br>
            <br><br>默认页面内容……
        </h4>

    </div>
</div>

<%--<div id="menu" class="menu">--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-one" class="active nav-header collapsed" data-toggle="collapse">首页</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<!-- 根据data-target关联你的子列表 -->&ndash;%&gt;--%>
<%--&lt;%&ndash;<li data-target=".premium-menu" data-toggle="collapse" class="nav-header collapsed">列表一</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="premium-menu nav nav-list collapse">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-two">    子列表-</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-three">  子列表二</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-four">   子列表三</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-five">   子列表四</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-six">    子列表五</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-seven">  子列表六</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-eight" class="nav-header collapsed" data-toggle="collapse">列表二</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-nine" class="nav-header collapsed" data-toggle="collapse">列表三</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-ten" class="nav-header collapsed" data-toggle="collapse">列表四</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li id="li-eleven" class="nav-header collapsed" data-toggle="collapse">列表五</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--<ul class="menu_nor">--%>
<%--<li>--%>
<%--<div class="menu_item_hd">--%>
<%--<i class="item_icon iconfont icon-plan"></i><span>方案管理</span><i--%>
<%--class="iconfont icon-chevron-down" aria-hidden="true"></i><i class="iconfont icon-minus"--%>
<%--aria-hidden="true"></i>--%>
<%--</div>--%>
<%--<ul class="menu_item_bd">--%>

<%--</ul>--%>
<%--</li>--%>
<%--<li>--%>
<%--<div class="menu_item_hd">--%>
<%--<i class="item_icon iconfont icon-plan"></i><span>方案管理</span><i--%>
<%--class="iconfont icon-chevron-down" aria-hidden="true"></i><i class="iconfont icon-minus"--%>
<%--aria-hidden="true"></i>--%>
<%--</div>--%>
<%--<ul class="menu_item_bd">--%>

<%--</ul>--%>
<%--</li>--%>
<%--<li>--%>
<%--<div class="menu_item_hd">--%>
<%--<i class="item_icon iconfont icon-plan"></i><span>方案管理</span><i--%>
<%--class="iconfont icon-chevron-down" aria-hidden="true"></i><i--%>
<%--class="iconfont icon-minus" aria-hidden="true"></i>--%>
<%--</div>--%>
<%--<ul class="menu_item_bd">--%>

<%--</ul>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>



<div class="navfloat">
    <div class="floatitems">
        <a href="javascript:void(0);" class="btn btn-app btn-info">
            <span class="icon icon-group"></span>
            <span class="floattext">好友</span>
        </a>
    </div>
    <div class="floatitems">
        <a href="javascript:void(0);" class="btn btn-app btn-info">
            <span class="icon icon-comments"></span>
            <span class="floattext">消息</span>
        </a>
    </div>
    <div class="floatitems">
        <a href="javascript:void(0);" class="btn btn-app btn-info">
            <span class="icon icon-hand-right"></span>
            <span class="floattext">挠挠</span>
        </a>
    </div>
    <div class="floatitems">
        <a href="javascript:void(0);" class="btn btn-app btn-info">
            <span class="icon icon-sitemap"></span>
            <span class="floattext">群组</span>
        </a>
    </div>
    <div class="floatitems">
        <a href="javascript:void(0);" class="btn btn-app btn-info">
            <span class="icon icon-book"></span>
            <span class="floattext">书房</span>
        </a>
    </div>
    <div class="floatitems">
        <a href="javascript:void(0);" class="btn btn-app btn-info">
            <span class="icon icon-coffee"></span>
            <span class="floattext">聊吧</span>
        </a>
    </div>
</div>
</body>
</html>
