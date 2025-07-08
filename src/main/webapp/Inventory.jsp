<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="stock.Medicines.Medicines" %>
<%@ page import="stock.Medicines.MedicinesDBUtil" %>


<%
    // Fetch the list of products from the database
    List<Medicines> medicinesList = MedicinesDBUtil.getAllMedicines();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* Basic reset and typography */
   		 body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-image: url('images/1.jpg'); /* Add your background image here */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed; /* Optional: keeps the background fixed when scrolling */
    	}
    	
    	  .navbar {
            background-color: #1abc9c;
            color: white;
            padding: 20px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar h1 {
            font-size: 30px;
            font-weight: 700;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            margin: 0;
        }

        .navbar li {
            margin-left: 30px;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #ff6b6b;
        }

		.user-icon {
	    width: 30px;
	    height: 30px;
	    vertical-align: middle;
		}

        h2 {
            text-align: center;
            margin-top: 20px;
            font-size: 2em;
            color: #333;
        }

        .medicine-details {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .medicine-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .product-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 250px;
            margin: 15px;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-card h3 {
            font-size: 1.5em;
            color: #333;
            margin-bottom: 10px;
        }

        .product-card p {
            font-size: 1em;
            color: #666;
            margin: 5px 0;
        }

        .product-card .Price {
            font-size: 1.2em;
            font-weight: bold;
            color: #28a745;
        }

        .product-card .Exp {
            font-size: 0.9em;
            color: #ff6347;
        }

        /* Responsive layout */
        @media (max-width: 768px) {
            .product-card {
                width: 45%;
            }
        }

        @media (max-width: 576px) {
            .product-card {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Online Medicine Ordering</h1>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact Us</a></li>
           
            <li><a href="paymentinsert.jsp">Insert Payment</a></li>
             <li><a href="Inventory.jsp">Inventory</a></li>
             <li><a href="LoginSignup.jsp">Login</a></li>
            <li><a href="#"><img src="images/3.png" alt="User Icon" class="user-icon"></a></li>
            
             
        </ul>
    </div>

<div class="medicine-details">
            <h2>Available Medicines</h2>
            <div class="medicine-list">
               <%
                    for (Medicines medicines : medicinesList) {
                %>
                <div class="product-card">
                    <h3><%= medicines.getMedicineName() %></h3>
                    <p class="Type"><strong>Type:</strong> <%= medicines.getMedicineType() %></p>
                    <p class="Dose"><strong>Dosage:</strong> <%= medicines.getDosage() %></p>
                    <p class="Category"><strong>Category:</strong> <%= medicines.getDrugCategory() %></p>
                    <p class="Price"><strong>Price:</strong> Rs.<%= medicines.getCost() %></p>
                    <p class="Exp"><strong>Expiry Date:</strong> <%= medicines.getExpiryDate() %></p>
                </div>
                <%
                    }
                %>
            </div>
        </div>

</body>
</html>