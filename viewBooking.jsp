<%@ page import="java.util.List" %>
<%@ page import="com.booking.Booking" %>

<html>
<style>
/* Body */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f8;
    margin: 0;
    padding: 0;
}

/* Heading */
h2 {
    text-align: center;
    color: #333;
    margin-top: 20px;
}

/* Table Styling */
table {
    width: 90%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    border-radius: 8px;
    overflow: hidden;
}

table th, table td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: center;
}

table th {
    background-color: #007BFF;
    color: white;
    font-weight: bold;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #e0e7ff;
    transition: 0.3s;
}

/* "Book Again" link as button */
a {
    display: block;
    width: 150px;
    margin: 20px auto;
    text-align: center;
    text-decoration: none;
    background-color: #007BFF;
    color: white;
    padding: 10px 0;
    border-radius: 5px;
    font-weight: bold;
}

a:hover {
    background-color: #0056b3;
}

</style>
<body>

<h2>All Bookings</h2>

<%
    List<Booking> list = (List<Booking>) request.getAttribute("bookings");
%>

<table border="1">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Contact</th>
    <th>From</th>
    <th>To</th>
    <th>Date</th>
    <th>Travellers</th>
</tr>

<%
    if (list == null || list.isEmpty()) {
%>
<tr>
    <td colspan="7">No Bookings Found</td>
</tr>
<%
    } else {
        for (Booking b : list) {
%>
<tr>
    <td><%= b.getId() %></td>
    <td><%= b.getFullName() %></td>
    <td><%= b.getContactNumber() %></td>
    <td><%= b.getFromLocation() %></td>
    <td><%= b.getToLocation() %></td>
    <td><%= b.getTravelDate() %></td>
    <td><%= b.getTravellers() %></td>
</tr>
<%
        }
    }
%>

</table>

<br>
<a href="booking.html">Book Again</a>

</body>
</html>
