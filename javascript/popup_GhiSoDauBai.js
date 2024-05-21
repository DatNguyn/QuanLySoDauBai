const btnOpen = document.querySelector(".btn-open");
const popupContainerTietHoc = document.querySelector("#containerTietHoc");
const popupContainerGhiSo = document.querySelector("#containerGhiSo");
const btnRecord = document.querySelector(".btn-record");
const iconClose = document.querySelector(".cancel-icon");
const btnCancel = document.querySelector(".btn-cancel");

btnOpen.addEventListener("click", () => {
  popupContainerTietHoc.classList.add("active");
});

btnRecord.addEventListener("click", () => {
  popupContainerTietHoc.classList.remove("active");
  popupContainerGhiSo.classList.add("active-record");
});

iconClose.addEventListener("click", () => {
  popupContainerGhiSo.classList.remove("active-record");
});

btnCancel.addEventListener("click", () => {
  popupContainerGhiSo.classList.remove("active-record");
});

popupContainerTietHoc.addEventListener("click", function (event) {
  if (event.target === popupContainerTietHoc) {
    popupContainerTietHoc.classList.remove("active");
  }
});
