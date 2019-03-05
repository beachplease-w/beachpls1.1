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
        toggleActiveClass(event)
        const button = document.querySelector("input.btn")
        button.classList.remove("hidden")
        const teamIdInput = document.getElementById("team-id-input")
        teamIdInput.value = event.currentTarget.id
      });
    };
  clickcables.forEach(clickable => toggleActiveOnClick(clickable));
  }
}

export { teamMateSelector };
