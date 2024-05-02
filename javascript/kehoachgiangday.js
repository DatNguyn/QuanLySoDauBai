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
