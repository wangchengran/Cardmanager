<%--
  Created by IntelliJ IDEA.
  User: wcr
  Date: 18/4/9
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <link href="../../style/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../style/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="../../style/css/index.css" rel="stylesheet" type="text/css" />
    <title>响应式导航设计</title>
    <script src="http://cdn.bootcss.com/jquery/2.1.1-rc2/jquery.min.js"></script>
    <script src="../../js/tx/index.js"></script>
    <script type="text/javascript">
        $(function(){
            var $data= $("#hidden").val();

            if ($data==1){
                $("#score-div").show();
            }
            if ($data==2){
                $("#user-div").show();
            }
            $("#user").click(function(){
                window.location.href="/admin/users";
            })
            $("#score").click(function(){
                window.location.href="/admin/forms";
            })
        })

    </script>
</head>
<body>
<input type="hidden" name="hidden" id="hidden" value="${data}">
<div class="container">
    <div class="hidenav">
        <div class="navbody">
            <div class="navitems">
                <a id ="user" href="javascript:void(0);" onclick="showfloat(this)" class="btn">
                    <span class="icon icon-user"></span>
                    <span class="nav-text">用户管理</span>
                </a>
            </div>
            <div class="navitems">
                <a id="score" href="javascript:void(0);" class="btn">
                    <span class="icon icon-tasks"></span>
                    <span class="nav-text">申请表单处理</span>
                </a>
            </div>
            <div class="navitems">
                <a href="javascript:void(0);" class="btn">
                    <span class="icon icon-globe"></span>
                    <span class="nav-text">动态</span>
                </a>
            </div>
            <div class="navitems">
                <a href="javascript:void(0);" class="btn">
                    <span class="icon icon-gift"></span>
                    <span class="nav-text">礼物</span>
                </a>
            </div>
            <div class="navitems">
                <a href="javascript:void(0);" class="btn">
                    <span class="icon icon-cogs"></span>
                    <span class="nav-text">设置</span>
                </a>
            </div>
        </div>
        <div class="navtitle">
            <div class="navitems">
                <a href="javascript:void(0);" onclick="shownavs()">
                    <span class="icon icon-double-angle-right"></span>
                </a>
            </div>
        </div>
    </div>
</div>
<div id="user-div" name="div-list" style="display: none">
   <center> <span>this is user list</span></center>
</div>
<div id="score-div" name="div-list" style="display: none">
    <center>
    <table id="table" class="imagetable" border="1" cellspacing="0" cellpadding="0" style="border:#d797ff ">
        <tr style="background: #bce9ff">
            <td style="width: 30px" ><center><input type="checkbox"></center></td>
            <td style="height: 40px;width: 50px"><center><b>姓名</b></center></td>
            <td style="height: 40px;width: 300px"><center><b>身份证号码</b></center></td>
        </tr>
        <c:forEach var="form" items="${formList}">
            <tr>
                <td style="width: 30px"><center><input type="checkbox"></center></td>
                <td style="height: 30px; width: 50px"><center>${form.namecn}</center></td>
                <td style="height: 30px; width: 300px"><center>${form.idNumber}</center></td>
            </tr>
        </c:forEach>

    </table>
    </center>
</div>
</body>