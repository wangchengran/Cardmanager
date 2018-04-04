<%--
  Created by IntelliJ IDEA.
  User: wcr
  Date: 18/4/3
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/dologin" method="post">
    <center>
        账号:<input type="text" name="username"><br>
        密码:<input type="password" name="password"><br>
        <button>登陆</button>
    </center>

</form>
</body>
</html>
