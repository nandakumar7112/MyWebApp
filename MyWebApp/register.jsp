<!DOCTYPE html>
<html>
<head>
    <title>Register - Food Delivery</title>
</head>
<body>
    <h2>Create a New Account</h2>
    <form action="register" method="post">
        <label>Username: </label><input type="text" name="username" required /><br/>
        <label>Password: </label><input type="password" name="password" required /><br/>
        <label>Address: </label><textarea name="address" required></textarea><br/>
        <input type="submit" value="Register" />
    </form>
    <p>Already have an account? <a href="loginpage.jsp">Login here</a></p>
</body>
</html>
