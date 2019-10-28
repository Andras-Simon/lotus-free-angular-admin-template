const sidenavEl = document.querySelector('.menu');
const toggle = () => sidenavEl.classList.toggle('active');
document.querySelector('.header__menu-open').addEventListener('click', toggle);
document.querySelector('.menu__menu-close').addEventListener('click', toggle);