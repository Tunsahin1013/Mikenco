function openMenu(){
    document.getElementById("sidebar").style.left = "0";
    document.getElementById("overlay").style.display = "block";
}

function closeMenu(){
    document.getElementById("sidebar").style.left = "-250px";
    document.getElementById("overlay").style.display = "none";
}

function toggleSubMenu(id){
    document.getElementById(id).classList.toggle("active");
}

// LOAD PROFILE
function loadProfile(){
    if(document.getElementById("showName")){
        document.getElementById("showName").innerText = localStorage.getItem("name") || "";
        document.getElementById("showEmail").innerText = localStorage.getItem("email") || "";
        document.getElementById("showGender").innerText = localStorage.getItem("gender") || "";
        document.getElementById("showPhone").innerText = localStorage.getItem("phone") || "";
        document.getElementById("showDob").innerText = localStorage.getItem("dob") || "";
        document.getElementById("showAddress").innerText = localStorage.getItem("address") || "";
    }
}

// LOAD FORM
function loadForm(){
    if(document.getElementById("name")){
        document.getElementById("name").value = localStorage.getItem("name") || "";
        document.getElementById("email").value = localStorage.getItem("email") || "";
        document.getElementById("gender").value = localStorage.getItem("gender") || "";
        document.getElementById("phone").value = localStorage.getItem("phone") || "";
        document.getElementById("dob").value = localStorage.getItem("dob") || "";
        document.getElementById("address").value = localStorage.getItem("address") || "";
    }
}

// SAVE
function saveProfile(e){
    e.preventDefault();

    localStorage.setItem("name", document.getElementById("name").value);
    localStorage.setItem("email", document.getElementById("email").value);
    localStorage.setItem("gender", document.getElementById("gender").value);
    localStorage.setItem("phone", document.getElementById("phone").value);
    localStorage.setItem("dob", document.getElementById("dob").value);
    localStorage.setItem("address", document.getElementById("address").value);

    alert("Cập nhật thành công!");
    window.location.href = "profile.jsp";
}

// AUTO
window.onload = function(){
    loadProfile();
    loadForm();
    loadAvatar();
}
// XEM TRƯỚC AVATAR
function previewAvatar(event){
    const reader = new FileReader();

    reader.onload = function(){
        document.getElementById("previewAvatar").src = reader.result;

        // lưu vào localStorage
        localStorage.setItem("avatar", reader.result);
    }

    reader.readAsDataURL(event.target.files[0]);
}

// LOAD AVATAR
function loadAvatar(){
    const avatar = localStorage.getItem("avatar");

    if(avatar){
        // profile
        if(document.getElementById("avatarImg")){
            document.getElementById("avatarImg").src = avatar;
        }

        // edit
        if(document.getElementById("previewAvatar")){
            document.getElementById("previewAvatar").src = avatar;
        }
    }
}