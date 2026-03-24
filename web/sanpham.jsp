<%-- 
    Document   : moi
    Created on : 22 thg 3, 2026, 09:14:53
    Author     : tunsa
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản Phẩm Độc Bản |Ngũ Phố Store</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Syncopate:wght@400;700&family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        :root {
            --bg-black: #000000;
            --footer-grey: #1a1a1a;
            --accent-red: #ff0000;
            --text-white: #ffffff;
            --font-header: 'Syncopate', sans-serif;
            --font-body: 'Montserrat', sans-serif;
        }

        body { 
            background-color: var(--bg-black); 
            color: var(--text-white); 
            font-family: var(--font-body);
            padding-top: 90px;
            margin: 0;
        }

        /* --- HEADER STYLE --- */
        .navbar-custom {
            position: fixed;
            top: 0; width: 100%; height: 75px;
            background: rgba(0, 0, 0, 0.9);
            backdrop-filter: blur(15px);
            border-bottom: 1px solid #222;
            z-index: 1000;
            display: flex;
            align-items: center;
            padding: 0 40px;
            justify-content: space-between;
        }

        .nav-left .menu-trigger { font-size: 24px; cursor: pointer; transition: 0.3s; }
        .nav-left .menu-trigger:hover { color: var(--accent-red); }

        .nav-center { font-family: var(--font-header); font-weight: bold; font-size: 1.4rem; letter-spacing: 3px; }

        .nav-right { display: flex; gap: 30px; }
        .nav-right a { color: var(--text-white); text-decoration: none; font-size: 20px; transition: 0.3s; position: relative; }
        .nav-right a:hover { color: var(--accent-red); transform: translateY(-3px); }

        .cart-badge {
            position: absolute; top: -8px; right: -12px;
            background: var(--accent-red); color: white;
            font-size: 10px; padding: 2px 6px; border-radius: 50%;
            font-family: Arial; font-weight: bold;
        }

        /* --- PRODUCT INFO --- */
        h1, h2, h3, h4, .btn-cart { font-family: var(--font-header); text-transform: uppercase; letter-spacing: 2px; }
        .product-title { font-size: 2.2rem; border-left: 5px solid var(--accent-red); padding-left: 15px; margin-bottom: 20px; line-height: 1.2; }
        .price { color: var(--accent-red); font-size: 36px; font-weight: 700; text-shadow: 0 0 15px rgba(255, 0, 0, 0.4); }
        
        .main-img-box { border: 1px solid #333; overflow: hidden; background: #0a0a0a; }
        #mainImg { width: 100%; height: 550px; object-fit: cover; transition: 0.6s cubic-bezier(0.4, 0, 0.2, 1); }
        
        .thumb-img { width: 85px; height: 85px; object-fit: cover; cursor: pointer; opacity: 0.4; border: 1px solid #333; transition: 0.3s; }
        .thumb-active { opacity: 1; border-color: var(--accent-red); box-shadow: 0 0 10px rgba(255,0,0,0.2); }

        .size-btn { border: 2px solid #333; width: 60px; height: 60px; display: flex; align-items: center; justify-content: center; cursor: pointer; transition: 0.3s; font-weight: bold; }
        .size-btn:hover { border-color: var(--text-white); }
        .active-size { background: var(--text-white); color: #000; border-color: var(--text-white); transform: skewX(-10deg); }

        .btn-cart { background: transparent; color: var(--text-white); border: 2px solid var(--text-white); padding: 20px; transition: 0.4s; font-weight: bold; }
        .btn-cart:hover { color: #000; background: var(--text-white); box-shadow: 0 0 30px rgba(255,255,255,0.15); }

        /* --- REVIEW SECTION --- */
        .review-container { margin-top: 100px; padding-top: 60px; border-top: 1px solid #222; }
        .rating-summary { background: #080808; padding: 40px; border-left: 5px solid var(--accent-red); }
        
        .auth-box { background: #0f0f0f; padding: 40px; border: 1px dashed #333; text-align: center; }
        .btn-fb { background: #1877F2; color: white; font-weight: 600; padding: 12px 25px; border: none; font-size: 13px; }
        .btn-gg { background: white; color: black; font-weight: 600; padding: 12px 25px; border: none; font-size: 13px; }
        
        textarea.form-control { background: #000; border: 1px solid #333; color: white; border-radius: 0; padding: 15px; }
        textarea.form-control:focus { background: #050505; border-color: var(--accent-red); color: white; box-shadow: none; }
        .rating-select i { font-size: 24px; cursor: pointer; transition: 0.2s; }

        /* --- FOOTER --- */
        .footer { background-color: var(--footer-grey); padding: 80px 0; margin-top: 100px; border-top: 1px solid #333; }
        .social-icon { font-size: 24px; color: white; margin: 0 20px; transition: 0.3s; display: inline-block; }
        .social-icon:hover { color: var(--accent-red); transform: translateY(-5px); }
    </style>
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

<div class="container">
    <div class="row g-5">
        <div class="col-md-6">
            <div class="main-img-box">
                <img src="image/xi măng ver 2.jpg" id="mainImg" alt="Main Product">
            </div>
            <div class="d-flex gap-2 mt-3">
                <img src="image/xi măng ver 2.jpg" class="thumb-img thumb-active" onclick="changeImg(this)">
                <img src="image/xi măng ver 2.1.jpg" class="thumb-img" onclick="changeImg(this)">
                <img src="image/bụi trần bản nam.jpg" class="thumb-img" onclick="changeImg(this)">
            </div>
        </div>

        <div class="col-md-6">
            <h1 class="product-title">PREMIUM<br>XI MĂNG v1.0</h1>
            
            <div class="price mb-4">1.234.000 VND</div>
            
            <p class="mb-5" style="opacity: 0.7; font-size: 16px; line-height: 1.8;">
                Dòng sản phẩm giới hạn dành cho những cá thể dám khác biệt. Chất liệu vải chống tia UV, 
                độ bền cao và mang lại sự thoải mái tuyệt đối trong mọi môi trường.
            </p>

            <div class="mb-5">
                <p class="fw-bold small mb-3" style="letter-spacing: 2px;">SIZE SELECTION</p>
                <div class="d-flex gap-3">
                    <div class="size-btn" onclick="selectSize(this)">S</div>
                    <div class="size-btn" onclick="selectSize(this)">M</div>
                    <div class="size-btn" onclick="selectSize(this)">L</div>
                    <div class="size-btn" onclick="selectSize(this)">XL</div>
                </div>
            </div>

            <button class="btn btn-cart w-100" onclick="addToCart()">
                Xác nhận vào giỏ hàng <i class="fas fa-arrow-right ms-2"></i>
            </button>
        </div>
    </div>

    <div class="review-container">
        <div class="row">
            <div class="col-md-4 mb-5">
                <div class="rating-summary text-center">
                    <h3 style="font-size: 14px; opacity: 0.6; margin-bottom: 20px;">XẾP HẠNG CHUNG</h3>
                    <h2 class="display-3 fw-bold mb-0">4.9</h2>
                    <div class="text-warning mb-3 mt-2">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                    </div>
                    <p class="small opacity-50">1,205 lượt đánh giá từ khách hàng</p>
                    
                    <div class="mt-4 text-start px-3">
                        <div class="d-flex align-items-center mb-2">
                            <span class="small me-3">5★</span>
                            <div class="progress flex-grow-1" style="height: 3px; background: #222;"><div class="progress-bar bg-danger" style="width: 92%"></div></div>
                        </div>
                        <div class="d-flex align-items-center mb-2">
                            <span class="small me-3">4★</span>
                            <div class="progress flex-grow-1" style="height: 3px; background: #222;"><div class="progress-bar bg-danger" style="width: 8%"></div></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-8 ps-md-5">
                <h4 class="mb-4" style="font-size: 1.2rem;">Phản hồi từ khách hàng</h4>
                
                <div class="auth-box mb-5">
                    <div id="loginSection">
                        <p class="mb-4 opacity-75 small">Bạn cần đăng nhập để gửi nhận xét về sản phẩm này</p>
                        <button onclick="simulateLogin('Facebook')" class="btn btn-fb me-3 mb-2"><i class="fab fa-facebook-f me-2"></i> FACEBOOK</button>
                        <button onclick="simulateLogin('Google')" class="btn btn-gg mb-2"><i class="fab fa-google me-2"></i> GOOGLE</button>
                    </div>

                    <div id="commentForm" style="display: none;" class="text-start">
                        <div class="mb-3">
                            <label class="small fw-bold mb-2">MỨC ĐỘ HÀI LÒNG:</label>
                            <div class="text-warning rating-select">
                                <i class="far fa-star" data-val="1"></i><i class="far fa-star" data-val="2"></i><i class="far fa-star" data-val="3"></i><i class="far fa-star" data-val="4"></i><i class="far fa-star" data-val="5"></i>
                            </div>
                        </div>
                        <textarea class="form-control mb-3" rows="4" placeholder="Cảm nhận của bạn về chất liệu, form dáng..."></textarea>
                        <button class="btn btn-cart px-5 py-2" style="font-size: 12px;" onclick="sendReview()">GỬI NHẬN XÉT</button>
                    </div>
                </div>

                <div class="review-item border-bottom border-secondary pb-4 mb-4">
                    <div class="d-flex justify-content-between mb-2">
                        <span class="fw-bold">TUẤN ANH</span>
                        <span class="small opacity-50">15/03/2026</span>
                    </div>
                    <div class="text-warning mb-2 small"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <p class="small opacity-75">Sản phẩm rất chất lượng, vải dày dặn và mát. Header và footer mới nhìn rất chuyên nghiệp!</p>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container text-center">
        <h5 class="mb-4" style="color: var(--accent-red);">CONNECT WITH US</h5>
        <div class="mb-5">
            <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
            <a href="#" class="social-icon"><i class="fab fa-discord"></i></a>
            <a href="#" class="social-icon"><i class="fab fa-tiktok"></i></a>
        </div>
        <p style="font-size: 11px; color: #555; letter-spacing: 4px;">&copy; 2026 NEO-STORE CONCEPT. ALL RIGHTS RESERVED.</p>
    </div>
</footer>

<script>
    // Slider Ảnh
    function changeImg(el) {
        const main = document.getElementById('mainImg');
        main.style.opacity = '0';
        setTimeout(() => {
            main.src = el.src;
            main.style.opacity = '1';
        }, 300);
        document.querySelectorAll('.thumb-img').forEach(img => img.classList.remove('thumb-active'));
        el.classList.add('thumb-active');
    }

    // Chọn Size
    let selectedSize = "";
    function selectSize(el) {
        document.querySelectorAll('.size-btn').forEach(btn => btn.classList.remove('active-size'));
        el.classList.add('active-size');
        selectedSize = el.innerText;
    }

    // Giỏ hàng
    function addToCart() {
        if(!selectedSize) { alert("VUI LÒNG CHỌN SIZE!"); return; }
        alert(`ĐÃ THÊM SIZE ${selectedSize} VÀO GIỎ HÀNG!`);
        let count = document.getElementById('cartCount');
        count.innerText = parseInt(count.innerText) + 1;
    }

    // Logic Đánh giá & Login
    function simulateLogin(type) {
        alert(`Đang chuyển hướng đăng nhập qua ${type}...`);
        setTimeout(() => {
            document.getElementById('loginSection').style.display = 'none';
            document.getElementById('commentForm').style.display = 'block';
            alert("Đăng nhập thành công! Bạn có thể gửi đánh giá.");
        }, 1000);
    }

    function sendReview() {
        const txt = document.querySelector('#commentForm textarea').value;
        if(!txt) { alert("Vui lòng nhập cảm nhận!"); return; }
        alert("Cảm ơn! Đánh giá của bạn đã được gửi đi.");
        document.querySelector('#commentForm textarea').value = "";
    }

    // Xử lý sao đánh giá
    document.querySelectorAll('.rating-select i').forEach(star => {
        star.addEventListener('click', function() {
            let val = this.getAttribute('data-val');
            document.querySelectorAll('.rating-select i').forEach((s, idx) => {
                if(idx < val) s.classList.replace('far', 'fas');
                else s.classList.replace('fas', 'far');
            });
        });
    });

    function toggleMenu() {
        alert("Menu Sidebar sẽ được phát triển trong phiên bản tiếp theo!");
    }
</script>

</body>
</html>