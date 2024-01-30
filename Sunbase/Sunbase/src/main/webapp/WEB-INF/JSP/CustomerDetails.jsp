<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Details</title>

<style>

body{
    /* font-family: Arial, sans-serif; */
    /* background-color: #f4f4f4; */
    margin: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    background-color: rgb(255, 255, 255);
    
}

.user_details{
    /* border: solid black; */
    width: 80%;
    padding: 100px;
    padding-top: 0px;
    padding-bottom: 0px;
    /* padding-bottom: 30px; */
    margin: 20px;
    display: grid;
    grid-template-columns: repeat(2, 1fr); /* Three columns with equal width */
    grid-template-rows: repeat(4, 55px); /* Two rows with a fixed height of 100px */
    gap: 20px; /* Gap between grid items */
}
.form{
    display: flex;
    flex-direction: column;
    /* justify-content: center; */ 
    background-color:rgb(243, 243, 243);
    box-shadow: 0 0 10px rgba(182, 182, 182, 2);
    width: 80%;
    padding-top: 30px;
    padding-bottom: 30px;
}
input{
    margin: 0px;
    height: 45px;
    width: 400px;
    padding-left: 10px;
    font-size: 20px;
    /* border-color: rgb(30, 30, 30); */
    border-radius: 6px;
    border: solid rgb(71, 70, 70);
}

h3{
    margin: 0px;
    font-size: 40px;
/* padding-left: 110px; */
/* transform: translateX(130px); */
margin-bottom: 40px;
color: rgb(0, 0, 0);
/* transform: translateY(-50px); */
text-align: center;
}

button{
    height: 50px;
    width: 10%;
    font-size: 22px;
    background-color: rgb(97, 211, 242);
    border-radius: 5px;
    /* float:inline-start */
    transform: translateX(120px);
    /* float: left; */
    border: 1px solid rgb(60, 60, 60);
}

button:hover {
    background-color: rgb(16, 191, 240);
}



</style>
</head>
<body>


    <div class="form" >
    <form  action = "add"  method = "post" > 
        <div><h3>Customer Detailes</h3></div>
      <div class="user_details">
        <input type="text" id="username" name="firstName" required placeholder="First name">
        <input type="text" id="username" name="lastName" required placeholder="Last name">
        <input type="text" id="username" name="street" required placeholder="Street">
        <input type="text" id="username" name="address" required placeholder="Address">
        <input type="text" id="username" name="city" required placeholder="City">
        <input type="text" id="username" name="state" required placeholder="State">
        <input type="email" id="username" name="email" required placeholder="Email">
        <input type="text" id="username" name="phone" required placeholder="Phone">
      </div>
      <button  type="submit">Submit</button>
      </form>
      
    </div>
    

</body>
</html>