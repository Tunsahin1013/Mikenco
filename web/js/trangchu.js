/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


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