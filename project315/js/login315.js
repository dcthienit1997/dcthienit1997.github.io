function checkInputs() {
    let username = document.loginForm315.usr315.value.trim();
    let password = document.loginForm315.psd315.value.trim();
    if (!(username.length > 0)) {
        swal("Lỗi!", "Bạn chưa nhập username!", "error");
        return;
    }
    if (!(password.length > 0)) {
        swal("Lỗi!", "Bạn chưa nhập mật khẩu!", "error");
        return;
    }
}