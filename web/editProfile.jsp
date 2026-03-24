<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sửa hồ sơ</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/profile.css">
</head>

<body>

<div class="edit-container">

    <div class="edit-card">
        <h3 class="text-center mb-4">SỬA HỒ SƠ</h3>
           <div class="text-center mb-3">
    <div class="edit-avatar">
        <img id="previewAvatar" src="images/user icon.webp">
    </div>

    <input type="file" class="form-control mt-2" onchange="previewAvatar(event)">
</div> 
        <form onsubmit="saveProfile(event)">

            <input type="text" id="name" class="form-control mb-2" placeholder="Tên">
            <input type="email" id="email" class="form-control mb-2" placeholder="Email">
            <input type="text" id="gender" class="form-control mb-2" placeholder="Giới tính">
            <input type="text" id="phone" class="form-control mb-2" placeholder="SĐT">
            <input type="date" id="dob" class="form-control mb-2">
            <input type="text" id="address" class="form-control mb-2" placeholder="Địa chỉ">

            <div class="text-center mt-3">
                <button class="btn btn-success">Lưu</button>
                <a href="profile.jsp" class="btn btn-secondary">Hủy</a>
            </div>

        </form>
    </div>

</div>

<script src="js/profile.js"></script>

</body>
</html>