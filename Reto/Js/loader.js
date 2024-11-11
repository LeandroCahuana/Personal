const navbar = document.getElementById('navbar')
window.addEventListener('scroll', ()=>{
    if(scroll > 50){
    navbar.style.position = 'fixed';
    }
})