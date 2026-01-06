<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login | Kettavan Holidays</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:linear-gradient(135deg,#071a2b,#0b3c5d);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.login-box{
    background:#0e2a47;
    padding:35px 30px;
    width:320px;
    border-radius:12px;
    box-shadow:0 10px 30px rgba(0,0,0,0.4);
}

h2{
    text-align:center;
    color:#00c8d7;
    margin-bottom:25px;
}

input{
    width:100%;
    padding:12px;
    margin-bottom:15px;
    border:none;
    border-radius:6px;
    outline:none;
    font-size:14px;
}

button{
    width:100%;
    padding:12px;
    background:#00c8d7;
    border:none;
    border-radius:6px;
    font-size:16px;
    font-weight:600;
    cursor:pointer;
}

button:hover{
    background:#00a6b8;
    color:#fff;
}

.error{
    text-align:center;
    margin-top:10px;
    color:#ff6b6b;
    font-size:14px;
}
</style>
</head>

<body>

<div class="login-box">
    <h2>Admin Login</h2>

    <form action="adminLogin" method="post">
        <input type="text" name="username" placeholder="Admin Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>

    <div class="error">
        ${error}
    </div>
</div>

</body>
</html>

