const btnOpen = document.querySelector(".btn-open");
const popupContainer = document.querySelector(".popup-container");
const iconClose = document.querySelector(".cancel-icon");

btnOpen.addEventListener("click", () => {
  popupContainer.classList.add("active");
});

iconClose.addEventListener("click", () => {
  popupContainer.classList.remove("active");
});

popupContainer.addEventListener("click", function (event) {
  if (event.target === popupContainer) {
    popupContainer.classList.remove("active");
  }
});
