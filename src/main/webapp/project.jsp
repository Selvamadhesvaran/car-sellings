<!DOCTYPE html>
<html>
<head>
    <title>Car 4K - Front Page</title>
    <style>
        /* Background with a high-quality car image */
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: url("background45.jpg") no-repeat center center fixed;
            background-size: cover;
            color: white;
            margin: 0;
            padding: 50px;
        }

        /* Overlay for better text visibility */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        h1 {
            font-size: 42px;
            text-shadow: 3px 3px 5px rgba(0, 0, 0, 0.6);
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 50px;
            margin-top: 50px;
        }

        .button {
            display: flex;
            flex-direction: column;
            align-items: center;
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.2);
            text-decoration: none;
            color: white;
            font-size: 20px;
            font-weight: bold;
            backdrop-filter: blur(10px);
            transition: 0.3s;
        }

        .button img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            margin-bottom: 10px;
            border: 3px solid white;
        }

        .button:hover {
            background: rgba(255, 255, 255, 0.4);
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h1>Welcome to Car 4K</h1>
    <div class="container">
        <a href="incharge.jsp" class="button">
            <img src="incharge.jpg" alt="Incharge">
            Incharge
        </a>
        <a href="customers.jsp" class="button">
            <img src="customerss.jpg" alt="Customers">
            Customers
        </a>
    </div>
</body>
</html>
