package com.servlet;

import com.booking.Booking;
import com.busbooking.dao.BookingDAOImpl;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;

import java.io.IOException;
import java.util.List;

@WebServlet("/view")
public class ViewBookingServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        BookingDAOImpl dao = new BookingDAOImpl();
        List<Booking> list = dao.getAllBookings();

        System.out.println("Bookings sent to JSP: " + list.size());

        req.setAttribute("bookings", list);
        req.getRequestDispatcher("viewBooking.jsp").forward(req, res);
    }
}
