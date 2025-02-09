<!DOCTYPE html>
<html>
<head>
    <title>Customer Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            margin: 0;
            padding: 50px;
        }
        .container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            justify-content: center;
            align-items: center;
            max-width: 800px;
            margin: auto;
        }
        .car {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .car img {
            width: 150px;
            height: 100px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <h1>Available Cars</h1>
    <div class="container">
        <div class="car">
            <img src="images/car1.jpg" alt="Car 1">
            <p>Brand: Toyota</p>
        </div>
        <div class="car">
            <img src="images/car2.jpg" alt="Car 2">
            <p>Brand: Honda</p>
        </div>
        <div class="car">
            <img src="images/car3.jpg" alt="Car 3">
            <p>Brand: Ford</p>
        </div>
        <div class="car">
            <img src="images/car4.jpg" alt="Car 4">
            <p>Brand: BMW</p>
        </div>
        <div class="car">
            <img src="images/car5.jpg" alt="Car 5">
            <p>Brand: Audi</p>
        </div>
    </div>
</body>
</html>
