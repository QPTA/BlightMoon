<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>

<h2>Đăng ký tài khoản</h2>

<p style="color:green">${successMessage}</p>
<p style="color:red">${errorMessage}</p>

<form method="post"
      action="${pageContext.request.contextPath}/user/moonblight/register/enter">

```
<div>
    <label>Username</label><br>
    <input type="text"
           name="username"
           minlength="3"
           maxlength="30"
           required>
</div>

<br>

<div>
    <label>Email</label><br>
    <input type="email"
           name="email"
           maxlength="255"
           required>
</div>

<br>

<div>
    <label>Họ và tên</label><br>
    <input type="text"
           name="fullName"
           maxlength="255"
           required>
</div>

<br>

<div>
    <label>Mật khẩu</label><br>
    <input type="password"
           name="password"
           minlength="8"
           required>
</div>

<br>

<div>
    <label>Nhập lại mật khẩu</label><br>
    <input type="password"
           name="rePassword"
           required>
</div>

<br>

<button type="submit">
    Đăng ký
</button>
```

</form>

<hr>

<a href="${pageContext.request.contextPath}/user/moonblight/login">
    Đã có tài khoản? Đăng nhập
</a>

</body>
</html>
