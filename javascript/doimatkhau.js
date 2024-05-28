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
