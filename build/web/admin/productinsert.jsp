<%-- 
    Document   : productinsert
    Created on : Nov 1, 2022, 9:49:17 PM
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
        <h2>Tạo mới sản phẩm | Quản trị Admin</h2>
        <form class="row" action="productinsert?action=insert" enctype="multipart/form-data">
            <div class="form-group col-md-3">
                <label class="control-label">Mã sản phẩm </label>
                <input class="form-control" name="product_id" type="text" placeholder="">
            </div>
            <div class="form-group col-md-3">
                <label for="exampleSelect1" class="control-label">Danh mục</label>                
                <select name="category_id" class="form-control" id="exampleSelect1">
                    <option>-- Chọn danh mục --</option>
                    <c:forEach items="${CategoryData}" var="cat">
                        <option value="${cat.getCategory().category_id}">${cat.category_name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label class="control-label">Tên sản phẩm</label>
                <input class="form-control" name="product_name" type="text">
            </div>
            <div class="form-group  col-md-3">
                <label class="control-label">Giá bán</label>
                <input class="form-control" name="price" type="number">
            </div>
            <div class="form-group col-md-3">
                <label class="control-label">Size</label>
                <input class="form-control" name="size" type="text" placeholder="50ml,100ml,...">
            </div>
            <div class="form-group col-md-3">
                <label class="control-label">Sex</label>
                <input class="form-control" placeholder="Nam,Nữ,..." name="sex" type="text">
            </div>
            <div class="form-group  col-md-3">
                <label class="control-label">Số lượng</label>
                <input class="form-control" name="quantity" type="number">
            </div>
            <div class="form-group col-md-12">
                <label class="control-label">Ảnh sản phẩm</label>
                <div id="myfileupload">
                    <input type="file" id="uploadfile" name="product_img" onchange="readURL(this);" />
                </div>
                <div id="thumbbox">
                    <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                    <a class="removeimg" href="javascript:"></a>
                </div>

            </div>
            <div class="form-group col-md-12">
                <label class="control-label">Mô tả sản phẩm</label>
                <textarea class="form-control" name="describe" id="describe"></textarea>
            </div>
            <br>
            <input type="submit" value="Lưu lại"/>
            &nbsp&nbsp&nbsp;
            <a class="btn btn-cancel" href="productmana">Hủy bỏ</a>
        </form>
    </body>
</html>
