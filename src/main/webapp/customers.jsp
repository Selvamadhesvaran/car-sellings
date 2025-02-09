<!DOCTYPE html>
<html>
<head>
    <title>Customer Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 50px;
            background: url("background46.jpg") no-repeat center center fixed;
            background-size: cover;
            
        }

        .overlay {
            background: rgba(0, 0, 0, 0.6); /* Dark overlay for contrast */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        h1 {
            color: white;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }

        .container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 40px;
            
        }

        .car-button {
            display: flex;
            flex-direction: column;
            align-items: center;
            background: transparent;
            
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            text-decoration: none;
            color: white;
            font-size: 18px;
            transition: transform 0.3s, box-shadow 0.3s;
            width: 200px;
            min-width:350px;
            border:none;
        }

        .car-button img {
            width: 200px;
            height: 150px;
            object-fit: cover;
           
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .car-button:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <h1>Select a Car Brand</h1>
    <div class="container">
        <a href="brand1.jsp" class="car-button">
            <img src="audi.jpg" alt="Brand 1">
            Audi
        </a> 
        <a href="bmw.jsp" class="car-button">
            <img src="bmw2.jpg" alt="Brand 2">
            BMW
        </a> <br>
        <a href="jaguar.jsp" class="car-button">
            <img src="jag.jpg" alt="Brand 3">
            Jaguar
        </a> <br>
        <a href="ferrari.jsp" class="car-button">
            <img src="ferrari.jpg" alt="Brand 4">
            Ferrari
        </a> <br>
        <a href="RR.jsp" class="car-button">
            <img src="RR.jpg" alt="Brand 5">
            Rolls Royce
        </a>
    </div>
</body>
</html>
