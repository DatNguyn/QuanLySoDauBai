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
    const KiemDuyetLink = document.querySelector("#kiemduyet");
    KiemDuyetLink.classList.add("is-active");

    const teachingManagementCheckbox = document.getElementById(
      "teaching-management"
    );
    teachingManagementCheckbox.checked = true;
    teachingManagementCheckbox.dispatchEvent(new Event("change"));
  });

// Tải footer
const footer = document.querySelector(".footer");
fetch("/view/layout/footer.html")
  .then((res) => res.text())
  .then((data) => {
    footer.innerHTML = data;
  });

//Tải nội dung HTML của popup Xem Duyệt tiết dạy thay
const popupDuyetDayThay = document.querySelector(".popupDuyetDayThay");
fetch("/view/POP-UP/popup_KiemDuyetDayThay.html")
  .then((response) => response.text())
  .then((html) => {
    popupDuyetDayThay.innerHTML = html;

    const btnOpenThay = document.querySelector("#xem_chi_tiet_thay");
    const containerDayThay = document.querySelector(".popup-container-DayThay");
    const iconCloseDT = document.querySelector(".cancel-icon");
    const btnCancelDT = document.querySelector(".btn-cancel");
    const btnDuyetDT = document.querySelector(".btn-accept");
    const btnTuChoiDT = document.querySelector(".btn-reject");

    iconCloseDT.addEventListener("click", () => {
      containerDayThay.classList.remove("active");
    });

    btnCancelDT.addEventListener("click", () => {
      containerDayThay.classList.remove("active");
    });

    btnDuyetDT.addEventListener("click", () => {
      containerDayBu.classList.remove("active");
    });

    btnTuChoiDT.addEventListener("click", () => {
      containerDayBu.classList.remove("active");
    });

    btnOpenThay.addEventListener("click", () => {
      const containerDayThay = document.querySelector(
        ".popup-container-DayThay"
      );
      containerDayThay.classList.add("active");
    });
  });

// Tải nội dung HTML của popup Xem Duyệt tiết dạy bù
const popupDuyetDayBu = document.querySelector(".popupDuyetDayBu");
fetch("/view/POP-UP/popup_KiemDuyetDayBu.html")
  .then((response) => response.text())
  .then((html) => {
    popupDuyetDayBu.innerHTML = html;

    const btnOpenBu = document.querySelector("#xem_chi_tiet_bu");

    const containerDayBu = document.querySelector(".popup-container-DayBu");
    const iconCloseDB = document.querySelector(".cancel-icon");
    const btnCancelDB = document.querySelector(".btn-cancel");
    const btnDuyet = document.querySelector(".btn-accept");
    const btnTuChoi = document.querySelector(".btn-reject");

    iconCloseDB.addEventListener("click", () => {
      containerDayBu.classList.remove("active");
    });

    btnCancelDB.addEventListener("click", () => {
      containerDayBu.classList.remove("active");
    });

    btnDuyet.addEventListener("click", () => {
      containerDayBu.classList.remove("active");
    });

    btnTuChoi.addEventListener("click", () => {
      containerDayBu.classList.remove("active");
    });

    btnOpenBu.addEventListener("click", () => {
      const containerDayBu = document.querySelector(".popup-container-DayBu");
      containerDayBu.classList.add("active");
    });
  });

// Tải popup Xoá
const popup_TuChoi = document.querySelector(".popupXacNhanTuChoi");
fetch("/view/POP-UP/popup_XacNhanTuChoi.html")
  .then((response) => response.text())
  .then((html) => {
    popup_TuChoi.innerHTML = html;

    const btnDelete = document.querySelector("#tu_choi_bu");
    const popupContainerTuChoi = document.querySelector(
      ".popup-container_XacNhanTuChoi"
    );
    const iconCloseTC = document.querySelector(".icon_thoat");
    const bntCancelTC = document.querySelector(".btn_huy");
    const bntDeleteTC = document.querySelector(".btn_xoa");
    btnDelete.addEventListener("click", () => {
      popupContainerTuChoi.classList.add("active");
    });
    iconCloseTC.addEventListener("click", () => {
      popupContainerTuChoi.classList.remove("active");
    });
    bntCancelTC.addEventListener("click", () => {
      popupContainerTuChoi.classList.remove("active");
    });
    bntDeleteTC.addEventListener("click", () => {
      popupContainerTuChoi.classList.remove("active");
    });
  });

//button filter
let btnList = document.querySelectorAll(".filter-btn");
btnList.forEach((btn) => {
  // nếu có nút bị nhấn thì
  btn.addEventListener("click", (event) => {
    // xóa hết actived của các nút
    btnList.forEach((_btn) => {
      _btn.classList.remove("actived");
    });
    // cái nút vừa bị nhấn phải thêm actived
    event.target.classList.add("actived");
  });
});
