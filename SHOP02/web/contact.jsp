<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Liên hệ</title>
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
        <!--header-->
        <jsp:include page="_Header.jsp"></jsp:include>
            <!--banner-->
            <div class="banner-top">
                <div class="container">
                    <h1>Liên hệ</h1>
                    <em></em>
                    <h2><a href="index.jsp">Trang chủ</a><label>/</label>Liên hệ</h2>
                </div>
            </div>	

            <div class="contact">

                <div class="contact-form">
                    <div class="container">
                        <div class="col-md-6 contact-left">
                            <div class="map">

                                <h3>Địa chỉ cửa hàng</h3>
                                <br>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d979.7801793001702!2d106.71424882916921!3d10.802065316860281!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDQ4JzA3LjQiTiAxMDbCsDQyJzUzLjMiRQ!5e0!3m2!1svi!2s!4v1484554416503" width="600" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                            </div>
                        </div>
                        <div class="col-md-6 contact-top">
                            <h3>Liên hệ với chúng tôi</h3>
                            <form  action="ContactServlet" method="post">
                                <div>
                                    <span>Họ và Tên</span>		
                                    <input type="text" value="" name="Name">						
                                </div>
                                <div>
                                    <span>Email </span>		
                                    <input type="text" value="" name="Email">						
                                </div>
                                <div>
                                    <span>Tiêu đề</span>		
                                    <input type="text" value="" name="Subject">	
                                </div>
                                <div>
                                    <span>Nội dung</span>		
                                    <textarea name="Message"> </textarea>	
                                </div>
                                <label class="hvr-skew-backward">
                                    <input type="submit" value="Send" >
                                </label>
                            </form>						
                        </div>

                    </div>
                </div>

            </div>

            <!--//contact-->
            <!--brand-->
        <jsp:include page="_Branch-img.jsp"></jsp:include>
            <!--//brand-->

            <!--//content-->
            <!--//footer-->
        <jsp:include page="_Footer.jsp"></jsp:include>
        <!--//footer-->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

        <script src="js/simpleCart.min.js"></script>
        <!-- slide -->
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
