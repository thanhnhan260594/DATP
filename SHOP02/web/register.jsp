<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Đăng ký</title>
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

        <!--Ajax google-->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });
                function check_username_ajax(email) {
                    $("#user-result").html('<img src="images/ajax-loader.gif" />');
                    $.post('CheckEmailServlet', {'email': email}, function (data) {
                        $("#email-result").html(data);
                    });
                }
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
                    <h1>Đăng ký</h1>
                    <em></em>
                    <h2><a href="index.html">Trang chủ</a><label>/</label>Đăng ký</a></h2>
                </div>
            </div>
            <!--login-->
            <div class="container">
                <div class="login">
                    <div class="col-md-3"></div>
                    <form action="UserServlet" method="POST">
                        <div class="col-md-6 login-do">
                            <p>Tên tài khoản:</p>
                            <div class="login-mail">                                
                                <input type="text" name="username" placeholder="" required="yes">
                                <i  class="glyphicon glyphicon-user"></i>
                            </div>

                            <p>Email: <span id="email-result"></span></p>
                            <div class="login-mail">
                                <input type="text" name="email" id="email" placeholder="exam@exam.com" required="yes">
                                <i  class="glyphicon glyphicon-envelope"></i>
                            </div>

                            <p>Mật khẩu:</p>
                            <div class="login-mail">
                                <input type="password" name="password" placeholder="**********" required="yes">
                                <i class="glyphicon glyphicon-lock"></i>
                            </div>

                            <p>Nhập lại mật khẩu:</p>
                            <div class="login-mail">                               
                                <input type="password" name="repassword" placeholder="*********" required="yes">
                                <i class="glyphicon glyphicon-lock"></i>
                            </div>

                            <label class="hvr-skew-backward" >
                                <input type="hidden" value="insert" name="command">
                                <input type="submit" value="Đăng ký">
                            </label>

                        </div>


                        <div class="clearfix"> </div>
                    </form>
                </div>

            </div>

            <!--//login-->

            <!--brand-->
        <jsp:include page="_Branch-img.jsp"></jsp:include>
            <!--//brand-->
        </div>

    </div>
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
