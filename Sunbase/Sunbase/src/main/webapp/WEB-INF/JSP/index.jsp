<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    /* background-image: url("/img/download.png") ; */
   background-repeat: no-repeat;
    background-size: cover;  
    
}
h1{
    transform: translateY(-20px);
    text-align: center;
    font-size: 55px;
    font-weight:bold;
    color:rgb(255, 123, 0)
    /* color (srgb-linear 255, 123, 0); */
    /* color: linear-gradient(to top, #3498db, #2ecc71); */
    
  
}
.container {
    transform: translateY(-30px);
    background-color: #eae8e8;
    box-shadow: 0 0 10px rgba(182, 182, 182, 2);
    padding: 30px;
    border-radius: 5px;
    /* background-image: url("/img/Sunbaseavatar.jpg");
     background-size: cover;  
     background-repeat: no-repeat;  */
}

.login-form {
    max-width: 400px;
    margin: 0 auto;
}

h2 {
    transform: translatey(-15px);
    text-align: center;
    color: #050505;
    font-weight: bold;
    font-size: 38px;
    font-weight: 100;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #555;
}

input {

    width: 95%;
    height: 40px;
    padding: 8px;
    margin-bottom: 27px;
    border: 1.5px solid #8f8989;
    border-radius: 4px;
    font-size: 20px;
}

button {
    background-color: #2d9ce6;
    color: #000000;
    font-weight: bold;
    /* padding: 10px; */
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 50%;
    height: 45px;
    font-size: 25px;
       
}

button:hover {
    background-color: #1069a5;
}

</style>
</head>
<body>

<div class="container" >
        <div><h1>Sunbase</h1></div>
        <form class="login-form"  action = "customerlist"  method = "post">
            <h2>Login</h2>
            <!-- <label for="username">Username:</label> -->
            <input type="text" id="username" name="usermail" required placeholder="Login Id">
            
            <!-- <label for="password">Password:</label> -->
            <input type="password" id="password" name="password" required placeholder="Password">
            
            <button type="submit">Submit</button>
            
             <center><h3  >${error}</h3> </center>
        </form>
        
       
</body>
</html>