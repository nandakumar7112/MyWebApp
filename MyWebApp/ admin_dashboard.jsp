<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Food Delivery</title>
</head>
<body>
    <h2>Welcome Admin</h2>
    <h3>Manage Food Items</h3>
    
    <form action="adminAddFood" method="post">
        <label>Food Name: </label><input type="text" name="foodName" required /><br/>
        <label>Food Description: </label><input type="text" name="foodDescription" required /><br/>
        <label>Food Price: </label><input type="number" name="foodPrice" required /><br/>
        <label>Food Image URL: </label><input type="text" name="foodImage" required /><br/>
        <input type="submit" value="Add Food Item" />
    </form>

    <h3>Existing Food Items</h3>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Image</th>
            <th>Action</th>
        </tr>
        <c:forEach var="food" items="${foodItems}">
            <tr>
                <td>${food.name}</td>
                <td>${food.description}</td>
                <td>${food.price}</td>
                <td><img src="${food.image}" width="100" height="100" /></td>
                <td>
                    <form action="adminDeleteFood" method="post">
                        <input type="hidden" name="foodItemId" value="${food.id}" />
                        <input type="submit" value="Delete" />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
