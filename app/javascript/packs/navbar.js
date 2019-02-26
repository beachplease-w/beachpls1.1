const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-beach');
  const logo = document.querySelector('.navbar-beach-brand');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 80) {
        navbar.classList.add('navbar-beach-scrolled');
        logo.classList.add('logo-scrolled');
      } else {
        navbar.classList.remove('navbar-beach-scrolled');
        logo.classList.remove('logo-scrolled');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
