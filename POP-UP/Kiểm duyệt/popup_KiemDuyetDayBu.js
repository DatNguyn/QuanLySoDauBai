const btnOpen = document.querySelector(".btn-open");
const popupContainer = document.querySelector(".popup-container");
const iconClose = document.querySelector(".cancel-icon");
const btnCancel = document.querySelector(".btn-cancel");

btnOpen.addEventListener("click", () => {
  popupContainer.classList.add("active");
});

iconClose.addEventListener("click", () => {
  popupContainer.classList.remove("active");
});

btnCancel.addEventListener("click", () => {
  popupContainer.classList.remove("active");
});
