function pwValidation() {
  var username = document.getElementById("username").value;
  var password = document.getElementById("password").value;
  var cpsw = document.getElementById("cpsw").value;
  var response = document.getElementById("message");
  var error = "";
  var passwordCheck = false;
  var usernameCheck = false;
  var aplhanum = /^[a-z0-9]+$/;
  var num = /[0-9]/;
  var uppercase = /[A-Z]/;
  var specialchar = /[/*-+!@#$^&*]/;
  if (
    ("a" > username[0] || username[0] > "z") &&
    ("A" > username[0] || username[0] > "Z")
  ) {
    error += "Username must begin with a letter.<br>";
  }
  else if (username.length < 3) {
    error +=
      "Username must include 3 or more characters.<br>";
  } else {
    usernameCheck = true;
  }
  if (password.length < 8) {
    error += "Password must be 8 or more characters.<br>";
  }
  else if (!uppercase.test(password)) {
    error += "Password must contain at least one uppercase Letter.";
  }
  else if (!num.test(password)) {
    error += "Password must contain at least one number.<br>";
  }
  else if (!specialchar.test(password)) {
    error += "Password must contain one of the following characters: /*-+!@#$^&*.<br>";
  }
  else if (password !== cpsw) {
    error += "Both passwords must be identical!";
  } else {
    passwordCheck = true;
  } if (passwordCheck && usernameCheck) {
    document.getElementById("reg-form").submit();
  } else {
    response.innerHTML = error;
    response.style.color = "blue";
  }
}
