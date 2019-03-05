const clickcables = document.querySelectorAll(".clickable");

const toggleActiveClass = (target) => {
  target.currentTarget.classList.toggle("active");
};

const toggleActiveOnClick = (clickable) => {
  clickable.addEventListener("click", event => toggleActiveClass(event));
};

//clickcables.forEach(clickable => toggleActiveOnClick(clickable));

export { toggleActiveClass, toggleActiveOnClick };
