<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thông tin tài khoản</title>
    <meta charset="UTF-8">

    <!-- ICON + BOOTSTRAP -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="css/profile.css">
</head>

<body>

<!-- HEADER -->
<div class="header d-flex justify-content-between align-items-center">
    <div class="menu-icon" onclick="openMenu()">☰</div>

    <div id="overlay" onclick="closeMenu()"></div>

    <!-- SIDEBAR -->
    <div id="sidebar" class="sidebar">
        <span class="close-btn" onclick="closeMenu()">×</span>

        <a href="index.jsp">Trang chủ</a>

        <div class="menu-item" onclick="toggleSubMenu('spMenu')">Sản phẩm</div>

        <div id="spMenu" class="submenu">
            <a href="#">Áo</a>
            <a href="#">Quần</a>
            <a href="#">Phụ kiện</a>
        </div>

        <a href="#">Sale</a>
        <a href="#">Liên hệ</a>
    </div>

    <div><b class="name_page">Ngũ Phố</b></div>

    <div>
        <i class="fa-solid fa-magnifying-glass"></i>
        <i class="fa-solid fa-ticket-simple"></i>
        <i class="fa-solid fa-bag-shopping"></i>
        <i class="fa-solid fa-user"></i>
    </div>
</div>

<!-- PROFILE -->
<div class="profile-box container-fluid">
    <div class="row">
        <div class="col-md-3 text-center">
            <div class="avatar">
            <img id="avatarImg" src="images/user icon.webp" alt="avatar">
        </div>
            <a href="editProfile.jsp" class="btn btn-secondary mt-2">Sửa Hồ sơ</a>
        </div>

        <div class="col-md-9">
            <p><b>Tên:</b></p>
            <p><b>Gmail:</b></p>
            <p><b>Giới tính:</b></p>
            <p><b>SĐT:</b></p>
            <p><b>Ngày sinh:</b></p>
            <p><b>Địa chỉ:</b></p>
        </div>
    </div>
</div>

<!-- PRODUCTS -->
<div class="container mt-4">
    <h5 class="name_tag">ĐƠN HÀNG CỦA TÔI</h5>

    <div class="row mt-3">

        <!-- 1 -->
        <div class="col-md-3 product">
            <div class="img-box">
                <img src="images/áo khoác 1.webp" class="img1">
                <img src="images/áo khoác 2.webp" class="img2">
            </div>
            <p>Áo</p>
            <p>130.000 VND</p>
        </div>

        <!-- 2 -->
        <div class="col-md-3 product">
            <div class="img-box">
                <img src="images/áo khoác 1.webp" class="img1">
                <img src="images/áo khoác 2.webp" class="img2">
            </div>
            <p>Áo</p>
            <p>130.000 VND</p>
        </div>

        <!-- 3 -->
        <div class="col-md-3 product">
            <div class="img-box">
                <img src="images/áo khoác 1.webp" class="img1">
                <img src="images/áo khoác 2.webp" class="img2">
            </div>
            <p>Áo</p>
            <p>130.000 VND</p>
        </div>

        <!-- 4 -->
        <div class="col-md-3 product">
            <div class="img-box">
                <img src="images/áo khoác 1.webp" class="img1">
                <img src="images/áo khoác 2.webp" class="img2">
            </div>
            <p>Áo</p>
            <p>130.000 VND</p>
        </div>

    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    <div class="container">
        <div class="row text-start">

            <div class="col-md-4">
                <h2 class="footer-title">Connect with us</h2>
            </div>

            <div class="col-md-4">
                <h6 class="footer-sub">MAIN OFFICE</h6>
                <p>123 Anywhere St.<br>Any City<br>(123) 456-7890</p>
            </div>

            <div class="col-md-4">
                <h6 class="footer-sub">SOCIAL MEDIA</h6>
                <p>Facebook<br>Instagram<br>Tiktok</p>
            </div>

        </div>

        <div class="text-center mt-4">
            <p>hello@reallygreatsite.com</p>
        </div>

        <hr class="footer-line">

        <div class="d-flex justify-content-between footer-bottom">
            <p>Copyright 2026 ©</p>
            <div>Facebook | Instagram | Tiktok | Zalo</div>
        </div>
    </div>
</div>

<!-- JS -->
<script src="js/profile.js"></script>

</body>
</html>