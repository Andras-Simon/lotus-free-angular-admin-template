const sidenavEl = document.querySelector('.menu');
const toggle = () => sidenavEl.classList.toggle('active');
document.querySelector('.header__menu-open').addEventListener('click', toggle);
document.querySelector('.menu__menu-close').addEventListener('click', toggle);

document.querySelectorAll('.menu__item--collapsible').forEach(el => {
  el.addEventListener('click', () => {
    el.classList.toggle('active');
    el.childNodes.forEach(child => child.classList && child.classList.toggle('active'))
  });
});
