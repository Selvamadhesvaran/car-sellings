<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url(customerbg.jpg) no-repeat center center fixed;
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
        input, select {
            width: 90%;
            padding: 10px;
            margin-top: 5px;
            border: none;
            border-radius: 5px;
            background: white;
            color: black;
            font-size: 16px;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            margin-top: 20px;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Customer Details</h2>
        <form action="Pay" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>

            <label for="car">Selected Car:</label>
            <select id="car" name="car" required>
                <option value="AUDI">AUDI</option>
                <option value="Bmw">Bmw</option>
                <option value="jaguar">Jaguar</option>
                <option value="Ferrari">Ferrari</option>
                <option value="RR">Rolls-Royce</option>
            </select>

            <label for="date">Delivery Date:</label>
            <input type="date" id="date" name="date" required>

            <label for="amount">Amount:</label>
            <input type="number" id="amount" name="amount" required>

            <button type="submit">Pay</button>
        </form>
    </div>
</body>
</html>