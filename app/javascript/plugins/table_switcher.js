const tableSwitcher = () => {
  const main = document.querySelector("main")
  if (main) {
    const queryString = window.location.search
    if (queryString != "") {
      const tabNumber = queryString.slice(-1)
      const tab1 = document.getElementById("tab1")
      const tab4 = document.getElementById("tab4")
      tab1.checked = false
      tab4.checked = true
    }
  }
}

export default tableSwitcher
