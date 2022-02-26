<!DOCTYPE html>
<html lang="zxx">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Admin</title>

        <!-- <link rel="icon" href="../Assets/Template/Admin/img/favicon.png" type="image/png"> -->
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/css/bootstrap.min.css" />
        <!-- themefy CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/themefy_icon/themify-icons.css" />
        <!-- swiper slider CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/swiper_slider/css/swiper.min.css" />
        <!-- select2 CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/select2/css/select2.min.css" />
        <!-- select2 CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/niceselect/css/nice-select.css" />
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/owl_carousel/css/owl.carousel.css" />
        <!-- gijgo css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/gijgo/gijgo.min.css" />
        <!-- font awesome CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/font_awesome/css/all.min.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/tagsinput/tagsinput.css" />
        <!-- datatable CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/datatable/css/jquery.dataTables.min.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/datatable/css/responsive.dataTables.min.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/datatable/css/buttons.dataTables.min.css" />
        <!-- text editor css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/text_editor/summernote-bs4.css" />
        <!-- morris css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/morris/morris.css">
        <!-- metarial icon css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/material_icon/material-icons.css" />

        <!-- menu css  -->
        <link rel="stylesheet" href="../Assets/Template/Admin/css/metisMenu.css">
        <!-- style CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/css/style.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/css/colors/default.css" id="colorSkinCSS">
    </head>
    <body class="crm_body_bg">



        <!-- main content part here -->

        <!-- sidebar  -->
        <!-- sidebar part here -->
        <nav class="sidebar">
            <div class="logo d-flex justify-content-between">
                <a href="HomePage.jsp"><h2 align="center">Welcome<br>Admin<br><%=session.getAttribute("aname")%></h2></a>
                <div class="sidebar_close_icon d-lg-none">
                    <i class="ti-close"></i>
                </div>
            </div>
            <ul id="sidebar_menu">
                <li class="side_menu_title">
                    <span>Dashboard</span>
                </li>
                <li class="mm-active">
                    <a  href="HomePage.jsp"  aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/1.svg" alt="">
                        <span>Dashboard</span>
                    </a>

                </li>
                <li class="side_menu_title">
                    <span>Verification</span>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Shop</span>
                    </a>
                    <ul>
                        <li><a href="NewShopList.jsp">New Shop</a></li>
                        <li><a href="AcceptedShopList.jsp">Accepted Shop</a></li>
                        <li><a href="RejectedShopList.jsp">Rejected Shop</a></li>
                    </ul>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Delivery Boy</span>
                    </a>
                    <ul>
                        <li><a href="NewDeliveryBoyList.jsp">New Delivery Boy</a></li>
                        <li><a href="AcceptedDeliveryBoyList.jsp">Accepted Delivery Boy</a></li>
                        <li><a href="RejectedDeliveryBoyList.jsp">Rejected Delivery Boy</a></li>
                    </ul>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Customer</span>
                    </a>
                    <ul>
                        <li><a href="AcceptedCustomerList.jsp">Accepted Customer</a></li>
                        <li><a href="RejectedCustomerList.jsp">Rejected Customer</a></li>
                    </ul>
                </li>
                <li class="side_menu_title">
                    <span>Basic Data's</span>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Location</span>
                    </a>
                    <ul>
                        <li><a href="District.jsp">District</a></li>
                        <li><a href="Place.jsp">Place</a></li>
                    </ul>
                </li>
                 <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Brand</span>
                    </a>
                    <ul>
                        <li><a href="DressBrand.jsp">Dress</a></li>
                        <li><a href="FootwearBrand.jsp">Footwear</a></li>
                        <li><a href="GadgetBrand.jsp">Gadget</a></li>
                        <li><a href="UtensilBrand.jsp">Utensil</a></li>
                    </ul>
                </li>
                 <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Type</span>
                    </a>
                    <ul>
                        <li><a href="ShopType.jsp">Shop Type</a></li>
                        <li><a href="GroceryCategory.jsp">Grocery Category</a></li>
                        <li><a href="GrocerySubCategory.jsp">Grocery Sub Category</a></li>
                        <li><a href="ComplaintType.jsp">Complaint Type</a></li>
                    </ul>
                </li>
                <li class="side_menu_title">
                    <span>Others</span>
                </li>
                 <li class="">
                     <a   class="has-arrow" href="Report.jsp" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Report</span>
                    </a>
                </li>
                <li class="">
                    <a   class="has-arrow" href="../logout.jsp" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Logout</span>
                    </a>
                </li>
            </ul>

        </nav>        <!-- sidebar part end -->
        <!--/ sidebar  -->