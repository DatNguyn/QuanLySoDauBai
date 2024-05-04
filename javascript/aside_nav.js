const btn = document.querySelector(".aside_nav-qldt");
btn.addEventListener("click", (event) => {
  let inputNode = document.querySelector(".subaside_nav-qldt");
  inputNode.style.display =
    inputNode.style.display === "block" ? "none" : "block";
});
