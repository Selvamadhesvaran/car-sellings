<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ferrari - Product Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url("ferraribg.jpg") no-repeat center center fixed;
            background-size: cover;
            color: white;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 20px;
            background: transparent;
            border-radius: 10px;
            box-shadow: 2px 2px 15px rgba(255, 255, 255, 0.3);
            text-align: center;
        }
        h2 {
            text-transform: uppercase;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input {
            width: 90%;
            padding: 10px;
            margin-top: 5px;
            border: none;
            border-radius: 5px;
            background: white;
            color: black;
            text-align: center;
            font-size: 16px;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #d9534f;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            margin-top: 20px;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background: #c9302c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Product Information</h2>
        <form action="customerdetails.jsp" method="post">
            <label>Price:</label>
            <input type="text" name="price" value="3.5 crores" readonly><br><br>

            <label>Available:</label>
            <input type="text" name="available" value="In Stock" readonly><br><br>

            <label>Delivery:</label>
            <input type="text" name="delivery" value="within 8 weeks" readonly><br><br>

            <button type="submit">Purchase</button>
        </form>
    </div>
</body>
</html>
