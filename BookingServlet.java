package com.servlet;

import com.booking.Booking;
import com.busbooking.dao.BookingDAOImpl;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;

import java.io.IOException;

@WebServlet("/addBooking")
public class BookingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        Booking b = new Booking();
        b.setFullName(req.getParameter("fullName"));
        b.setContactNumber(req.getParameter("contactNumber"));
        b.setEmail(req.getParameter("email"));
        b.setFromLocation(req.getParameter("fromLocation"));
        b.setToLocation(req.getParameter("toLocation"));
        b.setTravelDate(req.getParameter("travelDate"));
        b.setReturnDate(req.getParameter("returnDate"));
        b.setTravellers(Integer.parseInt(req.getParameter("travellers")));

        new BookingDAOImpl().addBooking(b);

        // redirect to servlet, NOT JSP
        res.sendRedirect("ThankYou.jsp");
    }
}
