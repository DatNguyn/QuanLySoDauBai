const btnBccl = document.querySelector(".btn-bccl");
const popupContainer = document.querySelector(".popup-container");
const iconClose = document.querySelector(".material-symbols-outlined");
const bntCancel = document.querySelector(".btn-cancel");
btnBccl.addEventListener("click", () => {
  popupContainer.classList.add("active");
});
iconClose.addEventListener("click", () => {
  popupContainer.classList.remove("active");
});
bntCancel.addEventListener("click", () => {
  popupContainer.classList.remove("active");
});
