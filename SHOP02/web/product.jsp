<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%> 
<%@page import="dao.ProductDAO"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Danh sách sản phẩm</title>
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
        <!--header-->
        <%
            ProductDAO productDAO = new ProductDAO();
            long categoryID = 0;
            if (request.getParameter("categoryID") != null) {
                categoryID = (long) Long.parseLong(request.getParameter("categoryID"));
            }

            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            int pages = 0, firstResult = 0, maxResult = 0, total = 0;
            if (request.getParameter("pages") != null) {
                pages = (int) Integer.parseInt(request.getParameter("pages"));
            }
            total = productDAO.countProductByCategory(categoryID);
            if (total <= 4) {
                firstResult = 1;
                maxResult = total;
            } else {
                firstResult = (pages - 1) * 4;
                maxResult = 4;
            }
            ArrayList<Product> listProduct = productDAO.getListProductByPagesCategory(
                    categoryID, firstResult, maxResult);

        %>
        <jsp:include page="_Header.jsp"></jsp:include>
            <!--banner-->
            <div class="banner-top">
                <div class="container">
                    <h1>Products</h1>
                    <em></em>
                    <h2><a href="index.html">Trang chủ</a><label>/</label>Sản Phẩm</h2>
                </div>
            </div>
            <!--content-->
            <div class="product">

                <div class="container">                           
                    <div class="col-md-12">
                        <h2> Danh sách các sản phẩm</h2>
                        <div class="mid-popular">
                        <%                            for (Product p : listProduct) {
                        %>
                        <div class="col-md-3 item-grid1 simpleCart_shelfItem">
                            <div class=" mid-pop">
                                <div class="pro-img">
                                    <img src="images/<%=p.getProductImage()%>" class="img-responsive" alt="">
                                    <div class="zoom-icon ">
                                        <a class="picture" href="images/<%=p.getProductImage()%>" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                        <a href="single.jsp?product=<%=p.getProductID()%>"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                                    </div>
                                </div>
                                <div class="mid-1">
                                    <div class="women">
                                        <div class="women-top">
                                            <span>Danh mục cha</span>
                                            <h6><a href="single.jsp?product=<%=p.getProductID()%>"> <%=p.getProductName()%> </a></h6>
                                        </div>
                                        <div class="img item_add">
                                            <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>"><img src="images/ca.png" alt=""></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="mid-2">
                                        <p ><%=p.getProductPrice()%> VNĐ</p>
                                        <div class="block">
                                            <div class="starbox small ghosting"> </div>
                                        </div>

                                        <div class="clearfix"></div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <%
                            }
                        %>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <ul class="grid2">
                    <h2>
                    
                        <% for (int i = 1; i <= (total / 4 + 1); i++) {%>
                    <li class="label label-info"><a href="product.jsp?categoryID=<%=categoryID%>&pages=<%=i%>"><%=i%></a></li>
                        <%}%>
                    </h2>
                </ul>
                <div class="clearfix"></div>
                <!--products-->			
                <!--//products-->
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
        <!--light-box-files -->
        <script src="js/jquery.chocolat.js"></script>
        <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
        <!--light-box-files -->
        <script type="text/javascript" charset="utf-8">
            $(function () {
                $('a.picture').Chocolat();
            });
        </script>
    </body>
</html>