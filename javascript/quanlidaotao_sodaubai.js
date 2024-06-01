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
    const KiemDuyetLink = document.querySelector("#sodaubai");
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