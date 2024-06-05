<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Advanced Modal Login Form</title>
<style>
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto; /* 5% from the top and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
  max-width: 400px;
  padding: 20px;
  box-shadow: 0 5px 15px rgba(0,0,0,0.3);
  animation: animatetop 0.4s;
  position: relative;
  border-radius: 10px;
}

/* Add Animation */
@keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

/* The Close Button */
.close {
  position: absolute;
  right: 20px;
  top: 20px;
  color: #aaa;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

/* Avatar image */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

/* Style the input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 20px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  border-radius: 5px;
}

/* Style the submit button */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  border-radius: 5px;
  font-size: 16px;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
  border-radius: 5px;
}

/* Center the "Remember me" checkbox */
.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<h2>Advanced Modal Login Form</h2>

<!-- Button to open the modal login form -->
<button onclick="document.getElementById('id01').style.display='block'">Login</button>

<!-- The Modal -->
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
  <form class="modal-content animate" id="loginForm">
    <div class="imgcontainer">
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

// Form validation
document.getElementById('loginForm').addEventListener('submit', function(event) {
  event.preventDefault();
  var uname = document.forms['loginForm']['uname'].value;
  var psw = document.forms['loginForm']['psw'].value;
  
  if(uname == "" || psw == "") {
    alert("Username and Password must be filled out");
    return false;
  }
  
  alert("Logged in successfully");
  modal.style.display = "none";
});
</script>

</body>
</html>
