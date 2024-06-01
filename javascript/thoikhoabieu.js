// Tải header
const header = document.querySelector(".header");
fetch("/view/layout/header.html")
  .then((res) => res.text())
  .then((data) => {
    header.innerHTML = data;
  });

// Tải aside_nav
const aside_nav = document.querySelector(".aside_nav");
fetch("/view/layout/aside_nav.html")
  .then((res) => res.text())
  .then((data) => {
    aside_nav.innerHTML = data;
    const KiemDuyetLink = document.querySelector("#thoikhoabieu");
    KiemDuyetLink.classList.add("is-active");
  });

// Tải footer
const footer = document.querySelector(".footer");
fetch("/view/layout/footer.html")
  .then((res) => res.text())
  .then((data) => {
    footer.innerHTML = data;
  });

//Tải nội dung HTML của popup Ghi sổ đầu bài
const GhiSoDauBai = document.querySelector(".popupGhiSoDauBai");
fetch("/view/POP-UP/popup_GhiSoDauBai.html")
  .then((res) => res.text())
  .then((data) => {
    GhiSoDauBai.innerHTML = data;
    const btnGhiSo = document.querySelector(".btn__TietHoc");
    const popupContainerTietHoc = document.querySelector("#containerTietHoc");
    const popupContainerGhiSo = document.querySelector("#containerGhiSo");
    const btnRecord = document.querySelector(".btn-record");
    const iconClose = document.querySelector(".cancel-icon");
    const btnCancel = document.querySelector(".btn-cancel");
    const btnSave = document.querySelector(".btn-save");

    btnGhiSo.addEventListener("click", () => {
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

    btnSave.addEventListener("click", () => {
      popupContainerGhiSo.classList.remove("active-record");
    });

    // Đóng popup khi click ra ngoài
    popupContainerTietHoc.addEventListener("click", function (event) {
      if (event.target === popupContainerTietHoc) {
        popupContainerTietHoc.classList.remove("active");
      }
    });
  });

  //Option header
function toggleDropdownn() {
  document.getElementById("dropdownnMenu").classList.toggle("showw");
}

window.onclick = function (event) {
  if (!event.target.matches(".dropdownn button")) {
    var dropdowns = document.getElementsByClassName("dropdownn-content");
    for (var i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains("showw")) {
        openDropdown.classList.remove("showw");
      }
    }
  }
};