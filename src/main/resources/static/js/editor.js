// ==========================================
// 1. KHỞI TẠO QUILL VÀ CẤU HÌNH UPLOAD ẢNH
// ==========================================
const quill = new Quill("#quill-editor", {
  theme: "snow",
  modules: {
    toolbar: {
      container: [
        [{ header: [1, 2, 3, false] }],

        [{ size: ["small", false, "large", "huge"] }],

        [{ font: [] }],

        ["bold", "italic", "underline", "strike"],

        [{ color: [] }, { background: [] }],

        [{ list: "ordered" }, { list: "bullet" }],

        [{ indent: "-1" }, { indent: "+1" }],

        [{ align: [] }],

        ["blockquote", "code-block"],

        ["link", "image", "video"],

        ["clean"],
      ],
      handlers: {
        image: selectLocalImage,
      },
    },
  },
});

function selectLocalImage() {
  const input = document.createElement("input");
  input.setAttribute("type", "file");
  input.setAttribute("accept", "image/*");
  input.click();

  input.onchange = () => {
    const file = input.files[0];
    if (file) {
      uploadToServer(file);
    }
  };
}

function uploadToServer(file) {
  const formData = new FormData();
  formData.append("image", file);

  fetch("/api/upload", {
    method: "POST",
    body: formData,
  })
    .then((response) => response.json())
    .then((data) => {
      const range = quill.getSelection(true); // Thêm 'true' để chắc chắn lấy được vị trí
      quill.insertEmbed(range.index, "image", data.url);
    })
    .catch((error) => {
      console.error("Lỗi upload ảnh:", error);
      alert("Upload ảnh thất bại!");
    });
}

// ==========================================
// 2. XỬ LÝ ĐỒNG BỘ DỮ LIỆU KHI SUBMIT FORM
// ==========================================
const contentTextarea = document.getElementById("content");

// Đổ dữ liệu cũ vào Editor nếu đang ở trang Sửa (Edit)
if (contentTextarea.value) {
  quill.clipboard.dangerouslyPasteHTML(contentTextarea.value);
}

// Tìm form bao quanh cái textarea
const form = contentTextarea.closest("form");

// Bắt sự kiện khi người dùng bấm nút Submit
form.addEventListener("submit", function (event) {
  // Lấy nội dung text thuần để kiểm tra rỗng
  const rawText = quill.getText().trim();

  // Nếu rỗng thì chặn submit
  if (rawText.length === 0 && quill.getLength() <= 1) {
    // getLength() <= 1 để xử lý case chỉ có 1 khoảng trắng hoặc enter
    event.preventDefault();
    alert("Vui lòng nhập nội dung!");
    return;
  }

  // NẾU CÓ NỘI DUNG -> Copy toàn bộ HTML (bao gồm chữ, thẻ <b>, thẻ <img>) nhét vào textarea
  contentTextarea.value = quill.getSemanticHTML();
});
