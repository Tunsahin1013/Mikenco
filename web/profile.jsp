<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thông tin tài khoản</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>

        body{
            background:#111;
            color:white;
            font-family: Arial;
        }

        .header{
            background:black;
            padding:15px;
        }
        .header i{
            color:white;
            margin-left:15px;
            cursor:pointer;
            font-size:18px;
        }

        .header i:hover{
            color:#ccc;
        }

        .sidebar{
            position:fixed;
            top:0;
            left:-250px;
            width:250px;
            height:100%;
            background:#111;
            padding-top:60px;
            transition:0.3s;
            z-index:999;
        }

        .sidebar a, .menu-item{
            display:block;
            color:white;
            padding:12px 20px;
            cursor:pointer;
            text-decoration: none;
        }

        .sidebar a:hover, .menu-item:hover{
            background:#222;
        }

        .submenu{
            display:none;
            background:#1a1a1a;
        }

        .submenu a{
            padding-left:40px;
            font-size:14px;
        }

        .close-btn{
            position:absolute;
            top:10px;
            right:20px;
            font-size:25px;
            cursor:pointer;
            color:white;
        }

        .menu-icon{
            font-size:22px;
            cursor:pointer;
            color:white;
        }

        #overlay{
            position:fixed;
            top:0;
            left:0;
            width:100%;
            height:100%;
            background:rgba(0,0,0,0.5);
            display:none;
            z-index:998;
        }

        .submenu{
            max-height:0;
            overflow:hidden;
            transition:0.3s;
        }

        .submenu.active{
        max-height:200px;
        }

        .name_page{
            font-size: 18px;
        }
        .profile-box{
            background:#eaeaea;
            color:black;
            padding:30px;
        }

        .avatar{
            width:120px;
            height:120px;
            border-radius:50%;
            overflow:hidden; 
            margin:auto;
        }

        .avatar img{
            width:100%;
            height:100%;
            object-fit:cover; 
        }

        .name_tag{
            text-align: center;
            font-weight: bold;
        }
        .product img{
            width:100%;
        }

        .product{
            background:black;
            padding:10px;
            text-align:center;
        }

        .product{
            margin-top: 20px;
        }
        .footer{
            background:#0a0a0a;
            color:#fff;
            padding:60px 20px 20px;
            margin-top:50px;
        }

        .footer-title{
            font-size:30px;
            font-weight:500;
        }

        .footer-sub{
            font-size:12px;
            letter-spacing:1px;
            margin-bottom:10px;
        }

        .footer p{
            font-size:13px;
            color:#ccc;
            line-height:1.6;
        }

        .footer-line{
            border:0.5px solid #333;
            margin:20px 0;
        }

        .footer-bottom{
            font-size:12px;
            color:#aaa;
        }
        

    </style>
</head>
<script>
function openMenu(){
    document.getElementById("sidebar").style.left = "0";
    document.getElementById("overlay").style.display = "block";
}

function closeMenu(){
    document.getElementById("sidebar").style.left = "-250px";
    document.getElementById("overlay").style.display = "none";
}

// MỞ / ĐÓNG MENU CON
function toggleSubMenu(id){
    document.getElementById(id).classList.toggle("active");
}
</script>

<body>

<!-- MENU -->
<div class="header d-flex justify-content-between align-items-center">
<div class="menu-icon" onclick="openMenu()">☰</div>
<div id="overlay" onclick="closeMenu()"></div>

<!-- SIDEBAR -->
<div id="sidebar" class="sidebar">
    <span class="close-btn" onclick="closeMenu()">×</span>

    <a href="index.jsp">Trang chủ</a> <!-- GẮN TRANG CHÍNH VÀO HREF -->

    <!-- MENU CÓ CON -->
    <div class="menu-item" onclick="toggleSubMenu('spMenu')">Sản phẩm 
    </div>

    <div id="spMenu" class="submenu">
        <a href="#">Áo</a>
        <a href="#">Quần</a>
        <a href="#">Phụ kiện</a>
    </div>

    <a href="#">Sale</a>
    <a href="#">Liên hệ</a>
</div>    
    <div><b class="name_page">Ngũ Phố</b></div>
    <div><i class="fa-solid fa-magnifying-glass"></i>
            <i class="fa-solid fa-ticket-simple"></i>
            <i class="fa-solid fa-bag-shopping"></i>
            <i class="fa-solid fa-user"></i>    
        </div>
</div>

<!-- MENU -->

<!-- PROFILE -->
<div class="profile-box container-fluid">
    <div class="row">

        <div class="col-md-3 text-center">
            <div class="avatar">
                <img src="image/user icon.webp" alt="avatar">
            </div>
            <button class="btn btn-secondary">Sửa Hồ sơ</button>
            
        </div>

        <div class="col-md-9">
            <p><b>Tên:</b></p>
            <p><b>Gmail:</b></p>
            <p><b>Giới tính:</b></p>
            <p><b>Số điện thoại:</b></p>
            <p><b>Ngày sinh:</b></p>
            <p><b>Địa chỉ:</b></p>

        </div>

    </div>
</div>


<!-- ORDERS -->
<div class="container mt-4">

    <h5 class="name_tag">ĐƠN HÀNG CỦA TÔI</h5>

    <div class="row mt-3">

        <div class="col-md-3 product">
            <img src="images/áo khoác 1.webp">
            <p class="product">Áo</p>
            <p>130.000 VND</p>
        </div>

        <div class="col-md-3 product">
            <img src="images/áo khoác 1.webp">
            <p class="product">Áo</p>
            <p>130.000 VND</p>
        </div>

        <div class="col-md-3 product">
            <img src="image/áo khoác 1.webp">
            <p class="product">Áo</p>
            <p>130.000 VND</p>
        </div>

        <div class="col-md-3 product">
            <img src="image/áo khoác 1.webp">
            <p class="product">Áo</p>
            <p>130.000 VND</p>
        </div>

    </div>

</div>


<!-- FOOTER -->
<div class="footer">
    <div class="container">

        <div class="row text-start">

            <!-- LEFT -->
            <div class="col-md-4">
                <h2 class="footer-title">Connect with us</h2>
            </div>

            <!-- CENTER -->
            <div class="col-md-4">
                <h6 class="footer-sub">MAIN OFFICE</h6>
                <p>
                    123 Anywhere St.<br>
                    Any City, State<br>
                    Any Country<br>
                    (123) 456-7890
                </p>
            </div>

            <!-- RIGHT -->
            <div class="col-md-4">
                <h6 class="footer-sub">SOCIAL MEDIA</h6>
                <p>
                    Facebook<br>
                    Instagram<br>
                    Twitter
                </p>
            </div>

        </div>

        <!-- EMAIL -->
        <div class="text-center mt-4">
            <p>hello@reallygreatsite.com</p>
        </div>

        <!-- LINE -->
        <hr class="footer-line">

        <!-- BOTTOM -->
        <div class="d-flex justify-content-between footer-bottom">
            <p>Copyright 2026 ©</p>

            <div>
                Facebook | Instagram | Tiktok | Zalo
            </div>
        </div>

    </div>
</div>

</body>
</html>