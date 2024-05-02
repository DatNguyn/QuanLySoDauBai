document.addEventListener("DOMContentLoaded", function() {
  let successPopupBtn = document.getElementById("btn-success");
  let failurePopupBtn = document.getElementById("btn-failure");
  let popupContainer = document.querySelector(".popup-container");

  function createPopup(type, icon, text) {
    let popup = document.createElement("div");
    popup.classList.add("popup");
    popup.classList.add(type);
    popup.innerHTML = `
      <i class="material-symbols-outlined">${icon}</i>
      <div class="content">
        <p>${text}</p>
      </div>
      <i class="material-symbols-outlined cancel-icon" onclick="hidePopup()">cancel</i>`;
    popupContainer.innerHTML = "";
    popupContainer.appendChild(popup); 
  }

  function showPopup(type, icon, text) {
    popupContainer.style.display = "block";
    createPopup(type, icon, text); 
  }

  function hidePopup() {
    popupContainer.style.display = "none"; 
  }

  successPopupBtn.addEventListener("click", function (event) {
    event.stopPropagation(); 
    let type = 'success';
    let icon = 'check_circle';
    let text = 'Thực hiện thành công';
    showPopup(type, icon, text);
  });

  failurePopupBtn.addEventListener("click", function (event) {
    event.stopPropagation(); 
    let type = 'failure';
    let icon = 'cancel';
    let text = 'Thực hiện thất bại';
    showPopup(type, icon, text);
  });

  popupContainer.addEventListener("click", function(event) {
    hidePopup(); 
  });
});
