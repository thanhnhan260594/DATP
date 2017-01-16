
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Shop thời trang</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--theme-style-->
        <link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <script src="js/jquery.min.js"></script>
        <!--- start-rate---->
        <script src="js/jstarbox.js"></script>
        <link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
        <script type="text/javascript">
            jQuery(function () {
                jQuery('.starbox').each(function () {
                    var starbox = jQuery(this);
                    starbox.starbox({
                        average: starbox.attr('data-start-value'),
                        changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                        ghosting: starbox.hasClass('ghosting'),
                        autoUpdateAverage: starbox.hasClass('autoupdate'),
                        buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                        stars: starbox.attr('data-star-count') || 5
                    }).bind('starbox-value-changed', function (event, value) {
                        if (starbox.hasClass('random')) {
                            var val = Math.random();
                            starbox.next().text(' ' + val);
                            return val;
                        }
                    })
                });
            });
        </script>
        <!---//End-rate---->
    </head>
    <body>
        <jsp:include page="_Header.jsp"></jsp:include>

            <div class="banner-top">
                <div class="container">
                    <h1>Giới thiệu</h1>
                    <em></em>
                    <h2><a href="index.jsp">Trang chủ</a><label>/</label>Giới thiệu</h2>
                </div>
            </div>
            <div class="contact">

                <div class="contact-form">
                    <div class="container">
                        <span> Thời trang nam Catsashop là một thương hiệu thời trang thành lập năm 2011, có cửa hàng đại diện tại 1190 Cách mạng Tháng 8, phường 4, quận Tân Bình, TP Hồ Chí Minh.
                            <br>
                            Chỉ sau hơn 3 năm, cùng với sự năng động của thị trường Sài Gòn, hướng kinh doanh đúng đắn và không ngừng gia tăng chất lượng sản phẩm, chất lượng dịch vụ, cho đến nay CATSASHOP là một trong những thương hiệu thời trang nam được ưa thích nhất của các bạn trẻ miền Nam. CATSASHOP đã sở hữu hệ thống trên 40 chi nhánh có mặt trên toàn quốc, tập trung chính tại địa bàn thành phố Hồ Chí Minh (hơn 20 cửa hàng).
                            <br>
                            Các mặt hàng chính của CATSASHOP là quần jeans, áo thun, áo sơ mi, kaki, đồ phụ kiện…Chiến lược giá thấp, phân khúc khách hàng tập trung vào giới trẻ, liên tục đa dạng và nâng cao chất lượng sản phẩm, dịch vụ… Định hướng kinh doanh đúng đã đưa hệ thống thời trang nam CATSASHOP phát triển nhanh chóng. Giai đoạn 2014-2016 sẽ là giai đoạn quy hoạch phát triển bền vững của thương hiệu.
                            <br>
                            Bên cạnh đó, CATSASHOP trở thành một trong những hãng thời trang nam đi đầu trong việc sử dụng mô hình Franchise (Nhượng quyền thương hiệu) tại thành phố Hồ Chí Minh. Đây là mô hình kinh doanh khá phổ biến trên thế giới từ những năm đầu thập kỷ 20. Lợi thế của nó là tạo ra một làn sóng kinh doanh đồng thương hiệu từ việc tận dụng đồng tiền nhàn rỗi của người khác. Tại Việt Nam, những thương hiệu nhượng quyền thành công đã vươn tới tầm Đông Nam Á. Thương hiệu thời trang nam CATSASHOP đã có kinh nghiệm quản lý, điều hành hệ thống và định hướng vươn lên phát triển đồng hành với các thương hiệu uy tín phục vụ cho giới trẻ trên địa bàn thành phố Hồ Chí Minh.
                        </span>
                        <br>Website: catsashop.com | Facebook: https://www.facebook.com/catsashop | email: lienhe@catsashop.com | SDT: 0909.574.689
                    </div>
                </div>
            </div>

        <jsp:include page="_Branch-img.jsp"></jsp:include>
        <jsp:include page="_Footer.jsp"></jsp:include>
    </body>
</html>
