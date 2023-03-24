<%-- 
    Document   : addac
    Created on : Nov 3, 2022, 10:38:58 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tạo mới tài khoản</h1>
        <c:set var="u" value="${requestScope.user}"/>
        <form action="addac" method="post">
            enter ID:<input type="number" readonly name="id" value="${u.user_id}"/><br/>
            enter name:<input type="text" name="name" value="${u.user_name}"/><br/>
            enter email<input type="text" name="describe" value="${u.user_email}"/><br/>
            enter isAdmin<input type="text" name="describe" value="${u.isAdmin}"/><br/>
            <input type="submit" value="SUBMIT"/>
        </form>
    </body>
</html>
