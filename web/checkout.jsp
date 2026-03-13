<%-- 
    Document   : checkout.jsp
    Created on : 12 thg 3, 2026, 00:51:16
    Author     : tunsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Thanh Toán</title>5

<link rel="stylesheet" href="css/checkout.css">

</head>

<body>

<header class="header">
<div class="logo">Westmire Wired</div>

<div class="icons">
<span>🔍</span>
<span>🎫</span>
<span>🛒</span>
<span>👤</span>
</div>
</header>



<div class="container">

<h1>THANH TOÁN</h1>

<div class="address">

<p>Địa chỉ nhận hàng</p>

<b>Nguyễn Văn A +84 012345678</b>

<span>
68 Nguyễn Chí Thanh, Đống Đa, Hà Nội
</span>

<button>Thay đổi</button>

</div>


<hr>



<div class="product-table">

<div class="row header-row">

<div>Sản phẩm</div>
<div>Mô tả</div>
<div>Đơn giá</div>
<div>Số lượng</div>
<div>Thành tiền</div>

</div>


<div class="row">

<div>
<img src="images/product.jpg">
</div>

<div>Mô tả áo...</div>

<div>130.000 VNĐ</div>

<div>1</div>

<div>130.000 VNĐ</div>

</div>

</div>



<hr>



<div class="voucher">

<span>Voucher</span>

<button>Chọn voucher</button>

</div>



<div class="note">

<label>Lời nhắn</label>

<input type="text" placeholder="Lưu ý cho Người bán...">

</div>



<div class="shipping">

<span>Phương thức vận chuyển</span>

<span>Nhanh</span>

<span>15.000 VNĐ</span>

<button>Thay đổi</button>

</div>



<hr>



<div class="total">

<p>Tổng số tiền:</p>

<h2>145.000 VNĐ</h2>

</div>



<h2>PHƯƠNG THỨC THANH TOÁN</h2>

<div class="payment">

<div class="bank">

<img src="https://upload.wikimedia.org/wikipedia/commons/0/0d/Vietcombank_logo.png">

<span>VCB</span>

<span>NGUYỄN VĂN A</span>

<span>01234567890123</span>

</div>

</div>



<div class="summary">

<div>
<p>Tổng tiền hàng</p>
<p>130.000 VNĐ</p>
</div>

<div>
<p>Phí vận chuyển</p>
<p>15.000 VNĐ</p>
</div>

<div class="final">
<p>Tổng thanh toán</p>
<h2>145.000 VNĐ</h2>
</div>

<button class="order-btn">Đặt Hàng</button>

</div>



</div>

</body>
</html>
