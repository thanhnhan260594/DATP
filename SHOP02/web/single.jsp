<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Chi tiết sản phẩm</title>
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
        <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
        <%
            ProductDAO productDAO = new ProductDAO();
            Product product = new Product();
            String productID = "";
            if (request.getParameter("product") != null) {
                productID = request.getParameter("product");
                product = productDAO.getProduct(Long.parseLong(productID));
            }
        %>
        <!--header-->
        <jsp:include page="_Header.jsp"></jsp:include>
            <!--banner-->
            <div class="banner-top">
                <div class="container">
                    <h1>Single</h1>
                    <em></em>
                    <h2><a href="index.html">Home</a><label>/</label>Single</a></h2>
                </div>
            </div>
            <div class="single">

                <div class="container">
                    <div class="col-md-12">
                        <div class="col-md-5 grid">		
                            <div class="flexslider">
                                <ul class="slides">
                                    <li data-thumb="images/si.jpg">
                                        <div class="thumb-image"> <img src="images/<%=product.getProductImage()%>" data-imagezoom="true" class="img-responsive" alt="<%=product.getProductName()%>"> </div>
                                </li>

                            </ul>
                        </div>
                    </div>	
                    <div class="col-md-7 single-top-in">
                        <div class="span_2_of_a1 simpleCart_shelfItem">
                            <h3><%=product.getProductName()%></h3>
                            <p class="in-para"></p>
                            <div class="price_single">
                                <span class="reducedfrom item_price"> <%=product.getProductPrice()%> VND </span>
                                <a href="#">click for offer</a>
                                <div class="clearfix"></div>
                            </div>
                            <h4 class="quick">Mô tả sản phẩm:</h4>
                            <p class="quick_desc"> <%=product.getProductDescription()%></p>
                            <div class="wish-list">
                                <ul>
                                    <li class="wish"><a href="#"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>Add to Wishlist</a></li>
                                    <li class="compare"><a href="#"><span class="glyphicon glyphicon-resize-horizontal" aria-hidden="true"></span>Add to Compare</a></li>
                                </ul>
                            </div>
                            <div class="quantity"> 
                                <div class="quantity-select">                           
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value"><span>1</span></div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                            <!--quantity-->
                            <script>
                                $('.value-plus').on('click', function () {
                                    var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                                    divUpd.text(newVal);
                                });

                                $('.value-minus').on('click', function () {
                                    var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                                    if (newVal >= 1)
                                        divUpd.text(newVal);
                                });
                            </script>
                            <!--quantity-->

                            <a href="#" class="add-to item_add hvr-skew-backward">Thêm vào giỏ hàng</a>
                            <div class="clearfix"> </div>
                        </div>
                    <div class="fb-comments" data-href="http://localhost:8080/SHOP02/single.jsp?product=<%= product.getProductID()%>" data-numposts="5"></div>

                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!----->

                <div class="clearfix"> </div>
            </div>
        </div>
        <!--brand-->
        <jsp:include page="_Branch-img.jsp"></jsp:include>
            <!--//brand-->
        </div>

    </div>
    <!--//content-->
    <!--//footer-->
<jsp:include page="_Footer.jsp"></jsp:include>
<!--//footer-->
<script src="js/imagezoom.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
</script>

<script src="js/simpleCart.min.js"></script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>


</body>
</html>