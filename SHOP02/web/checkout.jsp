<%@page import="model.User"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh toán</title>
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
    </head>
    <body>
        <%
            User user = (User) session.getAttribute("user");
            if (user == null) {
                response.sendRedirect("/SHOP02/login.jsp");
            }
        %>
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <jsp:include page="_Header.jsp"></jsp:include>

            <div class="banner-top">
                <div class="container">
                    <h1>Thanh toán</h1>
                    <em></em>
                    <h2><a href="index.jsp">Trang chủ</a><label>/</label><a>Thanh toán</a></h2>
                </div>
            </div>
            <div class="container">
                <div class="login">

                    <form action="CheckoutServlet" method="POST">
                        <div class="col-md-7 login-do">
                            <div class="login-mail">
                                <input type="text" placeholder="Tên khách hàng" required="">
                            </div>
                            <div class="login-mail">
                                <input type="text" placeholder="Địa chỉ giao hàng" required="">
                            </div>
                            <div class="login-mail">
                                <input type="text" placeholder="Điện thoại di động" required="">
                            </div>

                            <label class="hvr-skew-backward">

<!--                                <input type="hidden" value="checkout" name="command">-->

                                <input type="submit" value="Thanh toán">
                            </label>
                        </div>
                        <div class="col-md-5 login-right">
                            <table class="table-heading simpleCart_shelfItem">
                                <tr>
                                <h3>Thông tin đơn hàng</h3>
                                </tr>
                                <tr>
                                    <th>Sản Phẩm</th>

                                    <th>Số Lượng x Giá</th>
                                </tr>

                            <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                            <tr class="cart-header">
                                <td class="ring-in">

                                    <%=list.getValue().getProduct().getProductName()%>

                                    <div class="clearfix"> </div>
                                </td>
                                <td><%=list.getValue().getQuantity()%> x <%=list.getValue().getProduct().getProductPrice()%></td>

                            </tr>
                            <div class="clearfix"></div>

                            <%}%>
                            <tr>
                                <th class="table-grid">Thành tiền</th>


                                <th>
                                    <%=cart.total()%>
                                </th>
                            </tr>
                        </table>

                    </div>

                    <div class="clearfix"> </div>
                </form>
            </div>

        </div>


        <jsp:include page="_Footer.jsp"></jsp:include>

        <script src="js/simpleCart.min.js"></script>
        <!-- slide -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
