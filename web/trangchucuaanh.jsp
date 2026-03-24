<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ngũ Phố | Streetwear Premium</title>
    
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;900&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary: #ff3e3e;
            --dark: #050505;
            --gray: #888;
            --white: #ffffff;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Inter', sans-serif; background-color: #000; color: var(--white); overflow-x: hidden; }

        /* HEADER */
        .header {
            position: fixed; top: 0; width: 100%; z-index: 1000;
            background: rgba(0, 0, 0, 0.85); backdrop-filter: blur(10px);
            padding: 15px 5%; display: flex; align-items: center; justify-content: space-between;
        }
        .logo { font-size: 24px; font-weight: 900; letter-spacing: 2px; color: var(--white); }
        .nav-links a { color: var(--white); text-decoration: none; margin: 0 15px; font-weight: 500; transition: var(--transition); }
        .nav-links a:hover { color: var(--primary); }
        
        .header-icons { display: flex; gap: 20px; align-items: center; }
        .header-icons i { font-size: 22px; cursor: pointer; transition: var(--transition); }
        .header-icons i:hover { color: var(--primary); transform: scale(1.1); }
        .cart-box { position: relative; }
        .cart-count { 
            position: absolute; top: -8px; right: -8px; background: var(--primary);
            font-size: 10px; padding: 2px 5px; border-radius: 50%; font-weight: bold;
        }

        /* HERO SECTION */
        .hero { 
            height: 100vh; position: relative; display: flex; align-items: center; justify-content: center; text-align: center;
        }
        .hero-img { position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: -1; filter: brightness(0.6); }
        .hero-text h1 { font-size: 80px; font-weight: 900; margin-bottom: 10px; letter-spacing: 5px; }
        .hero-text h2 { font-size: 20px; font-weight: 400; color: var(--gray); margin-bottom: 30px; }
        
        .btn-group { display: flex; gap: 15px; justify-content: center; }
        .btn { 
            padding: 12px 35px; font-weight: bold; text-transform: uppercase; border: none; cursor: pointer; transition: var(--transition);
            border-radius: 4px;
        }
        .btn-primary { background: var(--white); color: #000; }
        .btn-primary:hover { background: var(--primary); color: var(--white); }
        .btn-outline { background: transparent; color: var(--white); border: 2px solid var(--white); }
        .btn-outline:hover { background: var(--white); color: #000; }

        /* PRODUCT GRID */
        .products { padding: 80px 5%; }
        .section-title { font-size: 30px; margin-bottom: 40px; text-align: center; letter-spacing: 2px; }
        
        .product-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px; }
        .product-card { background: #111; border-radius: 12px; overflow: hidden; position: relative; transition: var(--transition); }
        .product-card:hover { transform: translateY(-10px); }

        .img-container { position: relative; overflow: hidden; aspect-ratio: 3/4; }
        .img-container img { width: 100%; height: 100%; object-fit: cover; transition: var(--transition); }
        .product-card:hover .img-container img { transform: scale(1.05); }

        .add-cart-overlay {
            position: absolute; bottom: -60px; left: 0; width: 100%; background: var(--primary);
            padding: 15px; text-align: center; transition: var(--transition);
        }
        .product-card:hover .add-cart-overlay { bottom: 0; }
        .add-cart-overlay button { background: none; border: none; color: white; font-weight: bold; cursor: pointer; width: 100%; }

        .product-info { padding: 20px; text-align: left; }
        .p-brand { color: var(--gray); font-size: 12px; margin-bottom: 5px; }
        .p-name { font-size: 18px; font-weight: 600; margin-bottom: 10px; }
        .p-price { color: var(--primary); font-weight: bold; font-size: 1.1rem; }

        /* MARQUEE */
        .marquee-container { background: var(--primary); color: #000; padding: 10px 0; overflow: hidden; white-space: nowrap; font-weight: 900; }
        .marquee-text { display: inline-block; animation: scroll 20s linear infinite; }
        @keyframes scroll { from { transform: translateX(0); } to { transform: translateX(-50%); } }

        /* FOOTER */
        .footer { background: #080808; padding: 80px 5% 30px; border-top: 1px solid #222; margin-top: 50px; }
        .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr 1.5fr; gap: 40px; }
        .footer-logo span { color: var(--primary); }
        .footer-title { color: var(--white); margin-bottom: 20px; font-size: 14px; letter-spacing: 2px; }
        .footer-links { list-style: none; }
        .footer-links li { margin-bottom: 12px; }
        .footer-links a { color: var(--gray); text-decoration: none; transition: 0.3s; font-size: 14px; }
        .footer-links a:hover { color: var(--primary); padding-left: 5px; }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .footer-grid { grid-template-columns: 1fr; text-align: center; }
            .hero-text h1 { font-size: 40px; }
            .nav-links { display: none; }
        }
    </style>
</head>
<body>

<header class="header">
    <div class="logo">NGŨ PHỐ</div>
    
    <nav class="nav-links">
        <a href="index.jsp">TRANG CHỦ</a>
        <a href="trangsanpham.jsp">CỬA HÀNG</a>
        <a href="#">BỘ SƯU TẬP</a>
        <a href="#">LIÊN HỆ</a>
    </nav>

    <div class="header-icons">
        <i class='bx bx-search'></i>
        <div class="cart-box">
            <a href="cart.jsp" style="color:white;"><i class='bx bx-cart'></i></a>
            <span class="cart-count">2</span>
        </div>
        <i class='bx bx-user-circle'></i>
    </div>
</header>

<section class="hero">
    <img src="image/anchoi1.jpg" class="hero-img">
    <div class="hero-text">
        <h1>ĂN CHƠI</h1>
        <h2>PHỐ DỊCH VỌNG / STREETWEAR</h2>
        <div class="btn-group">
            <button class="btn btn-primary" onclick="location.href='trangsanpham.jsp'">Mua ngay</button>
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

<script>
    // Hiệu ứng khi scroll chuột (Header đổi màu)
    window.addEventListener('scroll', function() {
        const header = document.querySelector('.header');
        if (window.scrollY > 50) {
            header.style.background = '#000';
            header.style.padding = '10px 5%';
        } else {
            header.style.background = 'rgba(0, 0, 0, 0.85)';
            header.style.padding = '15px 5%';
        }
    });
</script>

</body>
</html>
