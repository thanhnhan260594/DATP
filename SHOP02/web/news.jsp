<%-- 
    Document   : news
    Created on : Jan 13, 2017, 4:07:21 PM
    Author     : thanh_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tin Tức</title>
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


            <!--//content-->
            <div class="banner-top">
                <div class="container">
                    <h1>Tin tức</h1>
                    <em></em>
                    <h2><a href="index.jsp">Trang chủ</a><label>/</label>Tin tức</h2>
                </div>
            </div>
            <div class="content">
                <div class="container">
                    <br><br>
                <script id="feed-1475422406687417" 
                        type="text/javascript"
                        src="http://rss.bloople.net/?url=http%3A%2F%2Fdantri.com.vn%2Ftrangchu.rss&showtitle=false&type=js&id=1475422406687417">

                </script>
            </div>
            </div>
            <br>
            <!--//footer-->
        <jsp:include page="_Footer.jsp"></jsp:include>

    </body>
</html>
