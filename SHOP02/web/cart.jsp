<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%> 
<%@page import="dao.ProductDAO"%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Giỏ Hàng</title>
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
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <!--header-->
        <jsp:include page="_Header.jsp"></jsp:include>
            <!--banner-->
            <div class="banner-top">
                <div class="container">
                    <h1>Giỏ hàng</h1>
                    <em></em>
                    <h2><a href="index.html">Trang chủ</a><label>/</label>Giỏ hàng</a></h2>
                </div>
            </div>
            <!--login-->
            <script>$(document).ready(function (c) {
                    $('.close1').on('click', function (c) {
                        $('.cart-header').fadeOut('slow', function (c) {
                            $('.cart-header').remove();
                        });
                    });
                });
            </script>

            <div class="container">
                <div class="check-out">
                    <div class="bs-example4" data-example-id="simple-responsive-table">
                        <div class="table-responsive">
                            <table class="table-heading simpleCart_shelfItem">
                                <tr>
                                    <th class="table-grid">Sản Phẩm</th>
                                    <th>Giá</th>
                                    <th >Số Lượng </th>
                                    
                                </tr>

                            <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                            <tr class="cart-header">
                                <td class="ring-in"><a href="#" class="at-in"><img src="images/<%=list.getValue().getProduct().getProductImage()%>" class="img-responsive" alt=""></a>
                                    <div class="sed">
                                        <h5><a href="#"><%=list.getValue().getProduct().getProductName()%></a></h5>
                                        <p><%=list.getValue().getProduct().getProductDescription()%></p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </td>
                                <td><%=list.getValue().getProduct().getProductPrice()%></td>
                                <td><%=list.getValue().getQuantity()%></td>
                                
                                <td class="add-check"><a class="item_add hvr-skew-backward" href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>">Xóa</a></td>
                            </tr>
                            <div class="clearfix"></div>

                            <%}%>
                            <tr>
                                <th class="table-grid">Tổng tiền</th>

                                <th></th>
                                
                                <th>
                                <%=cart.total()%>
                                </th>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="produced">
                    <a href="checkout.jsp" class="hvr-skew-backward">Thanh Toán</a>
                </div>
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
