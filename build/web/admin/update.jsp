<%-- 
    Document   : update
    Created on : Nov 2, 2022, 10:34:50 AM
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
        <h2>Chỉnh sửa sản phẩm</h2>
    <c:set var="p" value="${requestScope.product}"/>
    <form action="productmana?action=updateproduct" method="post">
        <div>
            <div>
                <label >Mã sản phẩm </label>
                <input type="text" readonly name="product_id" value="${p.product_id}">
            </div>
            <div>
                <label>Danh mục</label>
                <select name="category_id">
                    <option>-- Chọn danh mục --</option>
                    <c:forEach items="${CategoryData}" var="cat">                                                     
                        <option value="${cat.category_id}">${cat.category_name}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Tên sản phẩm</label>
                <input type="text" name="product_name" required value="${p.product_name}">
            </div>
            <div>
                <label>Giá</label>
                <input type="number" name="product_price" required value="${p.product_price}">
            </div>
            <div >
                <label>Sex</label>
                <input name="product_sex" type="text" value="" >  
                <c:forEach items="${SexData}" var="c"> 
                    <c:if test="${p.product_id==c.product_id}">${c.Sex}</c:if>
                </c:forEach>
            </div>

            <div>
                <label>Size</label>
                <input name="product_size" type="text" value=""> 
                <c:forEach items="${SizeData}" var="s">
                    <c:if test="${p.product_id==s.product_id}">${s.size}</c:if>
                </c:forEach>
            </div>

            <div>
                <label>Thông tin</label>
                <input type="text" name="product_describe" value="${p.product_describe}">
            </div>

            <div>
                <label>Số lượng</label>
                <input type="text" name="product_quantity" value="${p.quantity}">
            </div>
            <!--anh san pham-->
            <div >
                <label >Ảnh sản phẩm</label>
                <div id="myfileupload">
                    <input type="file" id="uploadfile" name="product_img" value="${p.img}" onchange="readURL(this);" />
                </div>
                <div id="thumbbox">
                    <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                    <a class="removeimg" href="javascript:"></a>
                </div>
                <div id="boxchoice">
                    <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i> Chọn ảnh</a>
                    <p style="clear:both"></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
