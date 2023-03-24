<%-- 
    Document   : product
    Created on : Nov 1, 2022, 8:30:53 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách sản phẩm | Quản trị Admin</title>
        <script type="text/javascript">
            function doDelete(product_id){
                if(confirm("are U sure to delete category with id ="+product_id)){
                    window.location="check?action=ProductDelete&product_id="+product_id;
                }
            }
        </script>
    </head>
    <body>
    <center>
        <h1>Danh sách sản phẩm | Quản trị Admin</h1>
        <h3><a href="productinsert">Tạo mới sản phẩm</a></h3>
        <table border="1px" width="80%">
            <tr>
                <th>Mã sản phẩm</th>
                <th>Danh mục</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Size</th>
                <th>SEX</th>
                <th>Thông tin</th>
                <th>Số lượng</th>
                <th>Ảnh</th>
                <th>Chức năng</th>
            </tr>
            <c:forEach items="${requestScope.ProductData}" var="p">
                <c:set var="product_id" value="${p.product_id}"/>
                <tr>
                    <td>${product_id}</td>
                    <td>${p.getCategory().getCategory_name()}</td>
                    <td>${p.product_name}</td>
                    <td>${p.product_price}</td>
                    <td>
                <c:forEach items="${requestScope.SizeData}" var="s">
                    <c:if test="${p.product_id==s.product_id}">
                        ${s.size}   
                    </c:if>
                </c:forEach>
                </td>

                <td>
                <c:forEach items="${requestScope.SexData}" var="c">
                    <c:if test="${p.product_id==c.product_id}">
                        ${c.sex}   
                    </c:if>
                </c:forEach>
                </td>
                <td>${p.product_describe}</td>
                <td>${p.quantity}</td>
                <td><img src="${p.img}" alt="" width="100px;"></td>
                <td>
                    <a href="update?product_id=${p.product_id}">Update</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#" onclick="doDelete('${p.product_id}')">Delete</a>
                </td>

                </tr>
            </c:forEach>
        </table>
    </center>    
</body>
</html>
