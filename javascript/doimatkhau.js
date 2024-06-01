const btn = document.querySelector(".btn-xacnhan");
btn.addEventListener("click", (event) => {
  const oldPassword = document.getElementById("old-password");
  const newPassword = document.getElementById("new-password");
  const confirmPassword = document.getElementById("confirm-password");
  if (
    oldPassword.value === "" ||
    newPassword.value === "" ||
    confirmPassword.value === ""
  ) {
    let invalid = document.querySelector(".invalid");
    invalid.style.display = "block";
  }
});

// Tải header
const header = document.querySelector(".header");
fetch("/view/layout/header.html")
  .then((res) => res.text())
  .then((data) => {
    header.innerHTML = data;
  });

// Tải aside_nav
const aside_nav = document.querySelector(".aside_nav");
fetch("/view/layout/aside_nav_avt.html")
  .then((res) => res.text())
  .then((data) => {
    aside_nav.innerHTML = data;

    const BaoCaoThongKeLink = document.querySelector("#doimatkhau");
    BaoCaoThongKeLink.classList.add("is-active");
  });

// Tải footer
const footer = document.querySelector(".footer");
fetch("/view/layout/footer.html")
  .then((res) => res.text())
  .then((data) => {
    footer.innerHTML = data;
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