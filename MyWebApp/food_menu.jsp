<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Food Menu</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Navigation Bar */
        header {
            background-color: #ff6600;
            color: white;
            padding: 15px;
            text-align: center;
        }
        header a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }
        header a:hover {
            text-decoration: underline;
        }

        /* Food Menu Table */
        .food-table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        .food-table th, .food-table td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        .food-table th {
            background: #ff6600;
            color: white;
        }
        .food-table tr:hover {
            background: #f2f2f2;
        }

        /* Image Styling */
        .food-table img {
            border-radius: 10px;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
        }

        /* Order Button */
        .order-btn {
            background: #ff6600;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        .order-btn:hover {
            background: #e65c00;
        }
    </style>
</head>
<body>

    <header>
        <h1>Food Delivery Service</h1>
        <a href="food_menu.jsp">Home</a>
        <a href="loginpage.jsp">Login</a>
        <a href="register.jsp">Register</a>
    </header>

    <h2 style="text-align:center; margin-top: 20px;">Our Food Menu </h2>

    <table class="food-table">
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Order</th>
        </tr>

        <!-- Loop through food items dynamically -->
        <c:forEach var="food" items="${foodItems}">
            <tr>
                <td><img src="${food_items.image}" alt="${food.name}" width="100" height="100"></td> 
                <td><b>${food_items.name}</b></td>
                <td>${food_items.description}</td>
                <td><b>₹${food_items.price}</b></td>
                <td>
                    <form action="place_order" method="post">
                        <input type="hidden" name="foodItemId" value="${food.id}">
                        <input type="submit" value="Order Now" class="order-btn">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
