<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Đăng nhập</title>
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
                    <h1>Đăng nhập</h1>
                    <em></em>
                    <h2><a href="index.html">Trang chủ</a><label>/</label>Đăng nhập</a></h2>
                </div>
            </div>
            <!--login-->
            <div class="container">
                <div class="login">

                    <form action="UserServlet" method="POST">
                        <div class="col-md-6 login-do">
                        <%if (session.getAttribute("error") != null) {%> <div class="alert alert-danger" role="alert"><p><%=session.getAttribute("error")%></p> </div> <%}%>
                        <div class="login-mail">
                            <input type="text" placeholder="Email" required="" name="email" >
                            <i  class="glyphicon glyphicon-envelope"></i>
                        </div>
                        <div class="login-mail">
                            <input type="password" placeholder="Password" required="" name="password">
                            <i class="glyphicon glyphicon-lock"></i>
                        </div>
                        <a class="news-letter " href="#">
                            <label class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Forget Password</label>
                        </a>
                        <label class="hvr-skew-backward">
                            <input type="hidden" value="login" name="command">
                            <input type="submit" value="Đăng nhập">
                        </label>
                    </div>
                    <div class="col-md-6 login-right">
                        <h3>Chưa có tài khoản</h3>

                        <p>Hãy đăng ký tài khoản để có thể mua hàng một cách nhanh chóng và đơn giản.</p>
                        <a href="register.jsp" class=" hvr-skew-backward">Đăng ký</a>

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