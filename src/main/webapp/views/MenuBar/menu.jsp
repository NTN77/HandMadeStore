<%@ page import="model.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<%User u = (User) session.getAttribute("auth");%>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"> <!--icon-->
    <title>Menu</title>
</head>
<style>
    /*MenuBar*/
    .menu {
        background: rgba(250, 244, 244,0.92);
        border-bottom: 1px solid rgba(155, 158, 162, 0.7);
    }
    .menu ul a{
        text-decoration: none;
        color: #797974;
    }
    .menu ul li {
        list-style-type: none;
    }
    .menu ul .sanpham .sub_menu{
        left: 0%;
        padding: 0;
        top: 100%;
        border: 1px;
        display: none;
    }
    .menu ul li.times{
        border-left: #8b8b8b solid 1px;
    }
    .menu ul li.item:hover {
        background: red;
    }
    .menu ul li.item:hover a{
        color: white;
    }
    .menu ul li.sanpham:hover .sub_menu{
        display: block;
    }
    .menu ul li.sanpham .sub_menu li a{
        color: #797974;
    }
    .menu ul li.sanpham .sub_menu li a:hover{
        color: white;
        background: red;
        font-size: 17px;
    }
    .menu ul li.search i{
        background: red;
        padding: 4%;
    }
    .menu ul li.search {
        border-left: 1px solid #8b8b8b;
    }
    .menu ul li.search input{
        padding-left: 10px;
        width: 35vh;
        border: none;
    }
    .menu ul li.login a:hover {
        color: red;
    }
    .menu ul li.cart a:hover {
        color: red;
    }
     #dangxuat {
         padding: 0;
         display: none;
     }
    #dangxuat a:hover {
        background: red;
        color: white;
    }
    #dangxuat a {
        color: black ;
        padding-right: 25%;
        padding-left: 25%;
    }
    .menu ul li.login:hover #dangxuat{
        display: block;
    }
    .menu ul li.item {
        text-align: center;
    }
</style>
<body>
<div id="menubar" class="menu sticky-top">
    <ul class="d-flex m-0">

        <li class="logo me-4 my-auto">
            <img src="<%=request.getContextPath()%>/images/logo.png" style="width: 12vh">

        </li>
        <li class="item times p-4 my-auto">
            <a href="<%=request.getContextPath()%>/views/MainPage/view_mainpage/mainpage.jsp">Trang chủ</a>
        </li>
        <li class="item sanpham p-4 dropdown my-auto">
            <a href="<%=request.getContextPath()%>/product" class="title_sp">Sản phẩm <i class="fa-solid fa-caret-down"></i></a>
            <ul class="sub_menu dropdown-menu">
                <li>
                    <a href="#thiep" class="item sp1 dropdown-item ">Thiệp HandMade Vintage</a>
                </li>
                <li>
                    <a href="#anh" class="item sp2 dropdown-item">Scrapbook,Album Ảnh</a>
                </li>
                <li>
                    <a href="#sotay" class="item sp3 dropdown-item">Sổ ghi chép, sổ tay</a>
                </li>

                <li>
                    <a href="#decore" class="item sp4 dropdown-item">Đồ decore trang trí nhà,cafe,Homestay</a>
                </li>
                <li>
                    <a href="#nguyenlieu" class="item sp5 dropdown-item">Nguyên vật liệu,phụ kiện dụng cụ</a>
                </li>

            </ul>
        </li>
        <li class="item bikip p-4 my-auto">
            <a href="#bikip">Bí kíp làm đồ HandMade</a>
        </li>
        <li class="item footers p-4 my-auto">
            <a href="#footer ">Về chúng tôi</a>
        </li>

        <li class="search d-flex p-4 my-auto mx-5">
            <i class="fa-solid fa-magnifying-glass" style="color: white;"></i>
            <input type="text" placeholder="Bạn tìm gì...">

        </li>
        <li class="login p-4 my-auto dropdown">
            <%if(u == null) {%>
            <i class="fa-solid fa-user" style="color: #496088;"></i>
            <a href="<%=request.getContextPath()%>/login">Đăng Nhập</a>
            <%} else{%>

            <button type="button" class="btn btn-sm btn-primary "><i class="fa-solid fa-user" style="color: white;"></i> <span><%= u.getName()%></span></button>
            <ul id="dangxuat" class="dx dropdown-menu">
                <li><a class="dropdown-item" href="<%=request.getContextPath()%>/views/Login/view_login/login.jsp">Đăng Xuất</a></li>
            </ul>
            <%}%>
        </li>
        <li class="cart p-4 dropdown my-auto">
            <i class="fa-solid fa-cart-shopping" style="color: #2a3241;"></i>
            <a href="<%=request.getContextPath()%>/views/CartPage/cart.html">Giỏ Hàng</a>
        </li>
    </ul>
</div>
</body>
</html>