<%-- 
    Document   : customer
    Created on : Nov 2, 2022, 9:38:23 PM
    Author     : ASUS<th width="70">Tính năng</th>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Danh sách người dùng | Quản trị Admin</h2>
        <h3><a href="addac">Tạo mới tài khoản</a></h3>
        <table border="1px" width="60%"  id="sampleTable">
            <thead>
                <tr>
                    <th>ID khách hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Email</th>
                    <th>isAdmin</th>
                    <th>Chức năng</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.user}" var="u">
                <c:set var="user_id" value="${u.user_id}"/>
                <tr>
                    <td>${u.user_id}</td>
                    <td>${u.user_name}</td>
                    <td>${u.user_email}</td>
                    <td>${u.isAdmin}</td>
                    <td><button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal"
                                data-target="#ModalUP${u.user_id}"><i class="fas fa-edit"></i> Sửa</button></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
