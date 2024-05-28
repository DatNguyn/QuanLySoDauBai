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

    const kehoachgiangdayLink = document.querySelector("#kehoachgiangday");
    kehoachgiangdayLink.classList.add("is-active");
  });

// Tải footer
const footer = document.querySelector(".footer");
fetch("/view/layout/footer.html")
  .then((res) => res.text())
  .then((data) => {
    footer.innerHTML = data;
  });

// Tải popup Thêm tiết dạy bù/thay
const popup_Day = document.querySelector(".popup_ThemMoiKeHoachBaiDay");
fetch("/view/POP-UP/popup_ThemMoiKeHoachBaiDay.html")
  .then((response) => response.text())
  .then((html) => {
    popup_Day.innerHTML = html;

    const btnOpen = document.querySelector(".btn-themday");
    const popupContainerTMD = document.querySelector(
      ".popup-container_ThemMoiDay"
    );
    const iconClose = popupContainerTMD.querySelector(".cancel-icon");
    const btnCancel = popupContainerTMD.querySelector(".btn-cancel");

    btnOpen.addEventListener("click", () => {
      popupContainerTMD.classList.add("active");
    });

    iconClose.addEventListener("click", () => {
      popupContainerTMD.classList.remove("active");
    });

    btnCancel.addEventListener("click", () => {
      popupContainerTMD.classList.remove("active");
    });
  });

// Tải popup Xem
const popup_Xem = document.querySelector(".popup_XemKHGD");
fetch("/view/POP-UP/popup_XemKHGD.html")
  .then((response) => response.text())
  .then((html) => {
    popup_Xem.innerHTML = html;

    const btnVisibility = document.querySelector(".visibility");
    const popupContainerXem = document.querySelector(
      ".popup-container_XemKHGD"
    );
    const iconCloseXem = document.querySelector(".cancel");

    btnVisibility.addEventListener("click", () => {
      popupContainerXem.classList.add("active");
    });

    iconCloseXem.addEventListener("click", () => {
      popupContainerXem.classList.remove("active");
    });

    popupContainerXem.addEventListener("click", function (event) {
      if (event.target === popupContainerXem) {
        popupContainerXem.classList.remove("active");
      }
    });
  });

// Tải popup Sửa
const popup_Sua = document.querySelector(".popup_SuaKHGD");
fetch("/view/POP-UP/popup_SuaKHGD.html")
  .then((response) => response.text())
  .then((html) => {
    popup_Sua.innerHTML = html;

    const btnPen = document.querySelector(".border_color");
    const popupContainerSua = document.querySelector(
      ".popup-container_SuaKHGD"
    );
    const iconCloseSua = popupContainerSua.querySelector(".cancel-icon");
    const btnCancelSua = popupContainerSua.querySelector(".btn-cancel");

    btnPen.addEventListener("click", () => {
      popupContainerSua.classList.add("active");
    });

    iconCloseSua.addEventListener("click", () => {
      popupContainerSua.classList.remove("active");
    });

    btnCancelSua.addEventListener("click", () => {
      popupContainerSua.classList.remove("active");
    });
  });

// Tải popup Xoá
const popup_Xoa = document.querySelector(".popup_XacNhanXoa");
fetch("/view/POP-UP/popup_XacNhanXoa.html")
  .then((response) => response.text())
  .then((html) => {
    popup_Xoa.innerHTML = html;

    const btnDelete = document.querySelector(".delete");
    const popupContainerXoa = document.querySelector(
      ".popup-container_XacNhanXoa"
    );
    const iconCloseXoa = document.querySelector(".icon_thoat");
    const bntCancelXoa = document.querySelector(".btn_huy");
    const bntDeleteXoa = document.querySelector(".btn_xoa");
    btnDelete.addEventListener("click", () => {
      popupContainerXoa.classList.add("active");
    });
    iconCloseXoa.addEventListener("click", () => {
      popupContainerXoa.classList.remove("active");
    });
    bntCancelXoa.addEventListener("click", () => {
      popupContainerXoa.classList.remove("active");
    });
    bntDeleteXoa.addEventListener("click", () => {
      popupContainerXoa.classList.remove("active");
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
