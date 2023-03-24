

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About us page</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    
    <!-- CSS 
    ========================= -->

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>

   <!-- Main Wrapper Start -->
    <!--Offcanvas menu area start-->
    <div class="off_canvars_overlay"></div>
    <jsp:include page="layout/menu.jsp"/>
    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area other_bread">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="index.html">Trang chủ</a></li>
                            <li>/</li>
                            <li>Giới thiệu</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
        <!--about section area -->
    <div class="about_section">
        <div class="container">  
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="about_content">
                        <h1>Chào mừng bạn đến với MMII Store !</h1>
                        <p> MMII Store là một tiệm nước hoa nho nhỏ bắt nguồn từ đam mê về mùi hương cũng như việc mong muốn chia sẻ với 
                            tất cả các bạn về sở thích của tụi mình, đồng thời tạo ra một nơi giúp mọi người dễ dàng sở hữu bất cứ chai nước hoa nào bạn muốn.</p>
                        <p>tại MMII chúng mình luôn đặt chất lượng và lòng tin với khách hàng lên hàng đầu. cũng vì một phần có gia đình và bạn bè đang ở pháp, 
                            chính tay lựa chọn từ store nên MMII tự tin 100% hàng chính hãng. bọn mình sẽ không cam kết bán giá rẻ nhất và cạnh tranh với các bên 
                            khác mà chỉ cam kết sẽ bán giá tốt nhất chúng mình có thể. những sản phẩm chúng mình tư vấn và giới thiệu đều là các sản phẩm đã trực tiếp
                            sử dụng và trải nghiệm để đưa ra lời khuyên thực tế giúp các khách hàng hài lòng.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="about_thumb">
                        <img src="assets/img/about/about1.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>     
    </div>
    <!--about section end-->
   
    <jsp:include page="layout/footer.jsp"/>

<!-- JS
============================================ -->

<!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>



</body>

</html>