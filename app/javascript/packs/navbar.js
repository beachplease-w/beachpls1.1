const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-beach');
  const logo = document.querySelector('.navbar-beach-brand');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 80) {
        logo.parentNode.removeChild(logo);
        navbar.classList.add('navbar-beach-scrolled');
      } else {
        navbar.classList.remove('navbar-beach-scrolled');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
