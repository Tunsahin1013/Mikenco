<%-- 
    Document   : trangchu
    Created on : 23 thg 3, 2026, 03:43:48
    Author     : tunsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ngũ Phố | Streetwear Premium</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/trangchu.css">
   
</head>
<body>

<header class="header">
    <div class="logo">NGŨ PHỐ</div>
    
    <nav class="nav-links">
        <a href="trangchu.jsp">TRANG CHỦ</a>
        <a href="muahang.jsp">CỬA HÀNG</a>
        <a href="muahang.jsp">BỘ SƯU TẬP</a>
        <a href="voucher.jsp">VOUCHER</a>
    </nav>

    <div class="header-icons">
        <i class='bx bx-search'></i>
        <div class="cart-box">
            <a href="giohang.jsp" style="color:white;"><i class='bx bx-cart'></i></a>
            <span class="cart-count">2</span>
        </div>
        <a href="profile.jsp" style="color:white;"><i class='bx bx-user-circle'></i></a>
    </div>
</header>

<section class="hero">
    <img src="image/anchoi1.jpg" class="hero-img">
    <div class="hero-text">
        <h1>ĂN CHƠI</h1>
        <h2>PHỐ DỊCH VỌNG / STREETWEAR</h2>
        <div class="btn-group">
            <button class="btn btn-primary" onclick="location.href='sanpham.jsp'">Mua ngay</button>
            <button class="btn btn-outline">Xem Lookbook</button>
        </div>
    </div>
</section>

<div class="marquee-container">
    <div class="marquee-text">
        FREE SHIPPING ON ORDERS OVER 1.000.000đ ✦ NEW ARRIVALS: XI MĂNG PHỐ VOL 3 ✦ MIKENCO AUTHENTIC ✦ 
        FREE SHIPPING ON ORDERS OVER 1.000.000đ ✦ NEW ARRIVALS: XI MĂNG PHỐ VOL 3 ✦ MIKENCO AUTHENTIC ✦ 
    </div>
</div>

<section class="products">
    <h2 class="section-title">XI MĂNG PHỐ VOL 3</h2>
    
    <div class="product-grid">
        <%-- Vòng lặp giả lập lấy dữ liệu --%>
        <% for(int i=1; i<=3; i++) { %>
        <div class="product-card">
            <div class="img-container">
                <a href="product-detail.jsp?id=<%=i%>">
                    <img src="image/ximangpho<%=i%>.jpg" alt="Product">
                </a>
                <form action="AddToCartServlet" method="POST" class="add-cart-overlay">
                    <input type="hidden" name="productId" value="<%=i%>">
                    <button type="submit"><i class='bx bx-plus'></i> THÊM VÀO GIỎ</button>
                </form>
            </div>
            <div class="product-info">
                <p class="p-brand">MIKENCO</p>
                <h3 class="p-name">Xi Măng Phố Tee Edition <%=i%></h3>
                <p class="p-price">550.000 VNĐ</p>
            </div>
        </div>
        <% } %>
    </div>
</section>
    
<!-- CHẠY -->
<div class="marquee">
    <div class="marquee-content left">
        FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦ FREE SHIPPING ✦ NGŨ HỔ ✦
    </div>
</div>

<div class="marquee">
    <div class="marquee-content right">
        5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 5% OFF FOR FIRST TIME CUSTOMERS ✦ 
    </div>
</div>

<!-- CATEGORY -->
<section class="category">

<h2>DÂN CHƠI BỜ HỒ</h2>

<div class="category-grid">

<div class="category-card">

<img src="image/DANCHOIBOHO.jpg">

<h3>PHONES & ACCESSORIES</h3>

<p>High class phones at affordable prices</p>

</div>


<div class="category-card">

    <img src="image/DANCHOIBOHO2.jpg">

<h3>COMPUTER EQUIPMENT</h3>

<p>All your desktop or laptop needs</p>

</div>


<div class="category-card">

    <img src="image/DANCHOIBOHO3.jpg">

<h3>MISCELLANEOUS ITEMS</h3>

<p>Everything you need</p>

</div>

</div>

<button class="shop-btn">Shop All</button>

</section>

<footer class="footer">
    <div class="footer-grid">
        <div>
            <h2 class="footer-logo" style="margin-bottom: 20px;">WESTMIRE<span>WIRED</span></h2>
            <p style="color: #666; font-size: 14px; line-height: 1.6;">
                Nâng tầm phong cách Streetwear Việt Nam với chất lượng cao cấp nhất. 
                Tự hào là thương hiệu dẫn đầu xu hướng Urban Fashion.
            </p>
        </div>
        <div>
            <h4 class="footer-title">MENU</h4>
            <ul class="footer-links">
                <li><a href="#">Sản phẩm mới</a></li>
                <li><a href="#">Best Sellers</a></li>
                <li><a href="#">Chính sách bảo hành</a></li>
            </ul>
        </div>
        <div>
            <h4 class="footer-title">HỖ TRỢ</h4>
            <ul class="footer-links">
                <li><a href="#">Hướng dẫn chọn size</a></li>
                <li><a href="#">Theo dõi đơn hàng</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
        </div>
        <div>
            <h4 class="footer-title">NEWSLETTER</h4>
            <p style="color: #666; font-size: 12px; margin-bottom: 15px;">Đăng ký để nhận ưu đãi 10% ngay.</p>
            <div style="display:flex; border-bottom: 1px solid #333; padding-bottom: 5px;">
                <input type="email" placeholder="Email của bạn..." style="background:none; border:none; color:white; width: 100%; outline:none;">
                <button style="background:none; border:none; color:var(--primary); font-weight:bold; cursor:pointer;">GỬI</button>
            </div>
        </div>
    </div>
    
    <div style="text-align: center; margin-top: 60px; padding-top: 20px; border-top: 1px solid #111; color: #444; font-size: 12px;">
        &copy; 2026 WESTMIRE WIRED. ALL RIGHTS RESERVED.
    </div>
</footer>
<script src="js/trangchu.js"></script>
</body>
</html>
