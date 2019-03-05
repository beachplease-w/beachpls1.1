
const teamMateSelector = () => {
  const clickcables = document.querySelectorAll(".clickable");
  if (clickcables) {
    const toggleActiveClass = (target) => {
      target.currentTarget.classList.toggle("active");
    };

    const toggleActiveOnClick = (clickable) => {
      clickable.addEventListener("click", event => {
        clickcables.forEach((clickable) => {
          clickable.classList.remove("active")
        })
        toggleActiveClass(event)});
    };
  clickcables.forEach(clickable => toggleActiveOnClick(clickable));
  }
}

export { teamMateSelector };
