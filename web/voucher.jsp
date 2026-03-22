<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voucher - Ngũ Phố</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/voucher.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    </head>
    <body>
        <header>
            <div class="menu-icon"><i class="fas fa-bars"></i></div>
            <a href="index.jsp" class="logo" style="text-decoration: none; color: inherit;">Ngũ Phố</a>
            <div class="header-icons">
                <a href="search.jsp"><i class="fas fa-search"></i></a>
                <a href="voucher.jsp"><i class="fas fa-ticket-alt"></i></a>
                <a href="index.jsp"><i class="fas fa-shopping-cart"></i></a>
                <a href="profile.jsp"><i class="fas fa-user-circle"></i></a>
            </div>
        </header>

        <div class="voucher-container">
            <% 
                String[] mucGiam = {"18%", "10%", "25%", "5%"};
            %>
            <% for(int i=0; i<mucGiam.length; i++) { %>
            <div class="voucher-card" onclick="saveVoucher(this)">
                <div class="voucher-left">
                    <i class="fas fa-ticket-alt"></i>
                </div>
                <div class="voucher-right">
                    <h3>Giảm <%= mucGiam[i] %></h3>
                    <p>Giảm tối đa 100k</p>
                    <p>Đơn tối thiểu 500k</p>
                </div>
            </div>
            <% } %>
        </div>

        <script>
            function saveVoucher(element) {
                alert("Đã lưu voucher thành công!");
                element.style.borderColor = "var(--accent-color)";
            }

            const currentPath = window.location.pathname; 
            document.querySelectorAll('.header-icons a').forEach(link => {
                if (currentPath.includes(link.getAttribute('href'))) {
                    link.classList.add('active');
                }
            });
        </script>
    </body>
</html>