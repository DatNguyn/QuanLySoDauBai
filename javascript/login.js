const passwordInput = document.getElementById("password");

// Lắng nghe sự kiện khi giá trị trong ô nhập mật khẩu thay đổi
passwordInput.addEventListener("input", function () {
  // Giới hạn độ dài của mật khẩu hiển thị là 10 ký tự
  const displayedPassword = this.value.substring(0, 10);
  // Hiển thị mật khẩu đã giới hạn độ dài
  this.value = displayedPassword;
});
