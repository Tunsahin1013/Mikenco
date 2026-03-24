<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Giỏ Hàng</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
    <header>
        <div class="menu-icon"onclick="toggleMenu()"><i class="fas fa-bars"></i></div>
        <a href="home.jsp" class="logo">Ngũ Phố</a>
        <div class="header-icons">
            <a href="search.jsp"><i class="fas fa-search"></i></a>
            <a href="voucher.jsp"><i class="fas fa-ticket-alt"></i></a>
            <a href="index.jsp"><i class="fas fa-shopping-cart"></i></a>
            <a href="profile.jsp"><i class="fas fa-user-circle"></i></a>
        </div>
    </header>
            
    <div class="container">
        <h1>GIỎ HÀNG CỦA BẠN</h1>
        <a href="index.jsp" style="color: var(--accent-color); text-decoration: none;">Tiếp tục mua sắm</a>

        <div class="cart-table-header">
            <span>SẢN PHẨM</span>
            <span>SỐ LƯỢNG</span>
            <span>TỔNG</span>
        </div>

        <div class="cart-list">
            <div id="empty-cart-msg" style="display: none; text-align: center; padding: 100px 0;">
                <span style="color: #ffffff; font-size: 2.5rem; font-weight: 900; text-transform: uppercase; letter-spacing: 2px;">
                    Bạn không có sản phẩm nào trong giỏ hàng.
                </span>
            </div>

            <% 
                String[] tenSanPham = {"Áo sân nhà Man Utd", "Áo sân khách Man Utd", "Áo sân khách thứ 3"};
                String[] anhSanPham = {"images/man-utd-25-26-home-kit (21).jpg", "images/man-utd-25-26-away-kit (12).jpg", "images/e849f7a040d145d9accc5e38d80d6d40_2880.jpeg"};
                for(int i=0; i < tenSanPham.length; i++) { 
            %>
            <div class="cart-item" id="item-<%=i%>">
                <div class="product-info">
                    <img src="<%= anhSanPham[i] %>" alt="SP">
                    <span><%= tenSanPham[i] %></span>
                </div>
                <div class="quantity-controls">
                    <i class="fas fa-minus" onclick="updateQuantity(this, -1)"></i>
                    <span class="quantity-num">1</span>
                    <i class="fas fa-plus" onclick="updateQuantity(this, 1)"></i>
                    <i class="fas fa-trash-alt delete-btn" onclick="removeItem('item-<%=i%>')"></i>
                </div>
                <div class="product-total">700.000đ</div>
            </div>
            <% } %>
        </div>

        <div class="cart-summary">
            <div class="summary-total">
                <span>Tổng số tiền ước tính:</span>
                <span id="final-total">2.100.000 VNĐ</span>
            </div>
            <button class="checkout-btn" onclick="confirmCheckout()">Thanh toán</button>
        </div>
    </div>

    <script>
        const UNIT_PRICE = 700000;

        function updateQuantity(btn, change) {
            const row = btn.closest('.cart-item');
            const qtyDisplay = row.querySelector('.quantity-num');
            let currentQty = parseInt(qtyDisplay.innerText) + change;
            if (currentQty < 1) currentQty = 1;
            qtyDisplay.innerText = currentQty;
            row.querySelector('.product-total').innerText = (currentQty * UNIT_PRICE).toLocaleString('vi-VN') + 'đ';
            calculateGrandTotal();
        }

        function calculateGrandTotal() {
            let total = 0;
            document.querySelectorAll('.cart-item').forEach(item => {
                total += parseInt(item.querySelector('.quantity-num').innerText) * UNIT_PRICE;
            });
            document.getElementById('final-total').innerText = total.toLocaleString('vi-VN') + ' VNĐ';
        }

        function removeItem(itemId) {
            if (confirm("Xóa sản phẩm này?")) {
                const item = document.getElementById(itemId);
                if (item) item.remove();
                calculateGrandTotal();

                if (document.querySelectorAll('.cart-item').length === 0) {
                    const header = document.querySelector('.cart-table-header');
                    const summary = document.querySelector('.cart-summary');
                    if (header) header.style.display = 'none';
                    if (summary) summary.style.display = 'none';
                    const msg = document.getElementById('empty-cart-msg');
                    if (msg) msg.style.display = 'block';
                }
            }
        }

        function confirmCheckout() {
            if (confirm("Xác nhận thanh toán đơn hàng?")) {
                window.location.href = "checkout.jsp";
            }
        }

        const currentPath = window.location.pathname;
        document.querySelectorAll('.header-icons a').forEach(link => {
            if (currentPath.includes(link.getAttribute('href'))) {
                link.classList.add('active');
            } else {
                link.classList.remove('active');
            }
        });
            function toggleMenu() {
        const sidebar = document.getElementById('sidebar');
        const overlay = document.getElementById('overlay');

        sidebar.classList.toggle('active');
        overlay.classList.toggle('active');

        // Khóa cuộn trang khi mở menu
        if (sidebar.classList.contains('active')) {
            document.body.style.overflow = 'hidden';
        } else {
            document.body.style.overflow = 'auto';
         }
        }
    </script>
    
    <div class="footer-marquee">
        <div class="marquee-text-big">
            NGŨ PHỐ - CHẤT LƯỢNG TẠO NÊN PHONG CÁCH - CAM KẾT CHÍNH HÃNG - ĐỔI TRẢ 7 NGÀY &nbsp;&nbsp;&nbsp;
            NGŨ PHỐ - CHẤT LƯỢNG TẠO NÊN PHONG CÁCH - CAM KẾT CHÍNH HÃNG - ĐỔI TRẢ 7 NGÀY &nbsp;&nbsp;&nbsp;
        </div>
    </div>
    
</body>
        
</div>

<div id="overlay" class="overlay" onclick="toggleMenu()"></div>
</html>