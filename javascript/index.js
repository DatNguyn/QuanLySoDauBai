const btn = document.querySelector(".menu-qldt");
btn.addEventListener("click", (event) => {
  let inputNode = document.querySelector(".submenu-qldt");
  inputNode.style.display =
    inputNode.style.display === "block" ? "none" : "block";
});
