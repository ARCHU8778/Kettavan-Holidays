<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Booking Confirmed</title>
<style>
:root{
    --dark:#071a2b;
    --cyan:#00c8d7;
    --light:#e9fdff;
}

/* Reset & body */
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:linear-gradient(135deg,#071a2b,#0b3c5d);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
    color:#fff;
}

/* Glass card */
.card{
    background:rgba(255,255,255,0.05);
    backdrop-filter: blur(15px);
    border-radius:20px;
    padding:50px 40px;
    text-align:center;
    box-shadow:0 10px 30px rgba(0,0,0,0.5);
    max-width:500px;
    animation:fadeInUp 1s ease forwards;
    opacity:0;
}

/* Animation */
@keyframes fadeInUp{
    0%{
        opacity:0;
        transform:translateY(50px);
    }
    100%{
        opacity:1;
        transform:translateY(0);
    }
}

/* Heading */
.card h2{
    font-size:38px;
    color:var(--cyan);
    margin-bottom:15px;
}

/* Paragraphs */
.card p{
    font-size:18px;
    margin:10px 0;
    line-height:1.5;
}

/* Emoji icon */
.card .emoji{
    font-size:50px;
    margin-bottom:15px;
}

/* Button */
.card a{
    display:inline-block;
    margin-top:25px;
    padding:12px 25px;
    background:var(--cyan);
    color:#002b36;
    font-weight:600;
    border-radius:10px;
    text-decoration:none;
    transition:0.3s;
}

.card a:hover{
    background:#009fb2;
    color:#fff;
}
h1 .logo {
    width: 200px;        /* adjust size as needed */
    height: auto;
    margin-right: 10px; /* space between logo and text */
}
</style>
</head>
<body>

<div class="card">
   
    <h1>
            <img src="Logo.png" class="logo">
           
        </h1>
    <h2>Booking Confirmed!</h2>
    <p>Thank you <strong>${fullName}</strong> for choosing <strong>Kettavan Holidays</strong>.</p>
    <p>Your bus journey is ready and comfortable! Sit back and enjoy the ride.</p>
     <div class="emoji">🚌</div>
    <a href="booking.html">Book Another Trip</a>
</div>

</body>
</html>
