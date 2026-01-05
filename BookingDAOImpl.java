package com.busbooking.dao;

import com.booking.Booking;
import com.connection.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookingDAOImpl {

    // ✅ THIS METHOD MUST EXIST
    public void addBooking(Booking b) {

        try (Connection con = DBConnection.getConnection()) {

            String sql = "INSERT INTO bookings (full_name, contact_number, email, from_location, to_location, travel_date, return_date, travellers) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, b.getFullName());
            ps.setString(2, b.getContactNumber());
            ps.setString(3, b.getEmail());
            ps.setString(4, b.getFromLocation());
            ps.setString(5, b.getToLocation());
            ps.setString(6, b.getTravelDate());
            ps.setString(7, b.getReturnDate());
            ps.setInt(8, b.getTravellers());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ✅ View bookings
    public List<Booking> getAllBookings() {

        List<Booking> list = new ArrayList<>();

        try (Connection con = DBConnection.getConnection()) {

            String sql = "SELECT * FROM bookings";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Booking b = new Booking();
                b.setId(rs.getInt("id"));
                b.setFullName(rs.getString("full_name"));
                b.setContactNumber(rs.getString("contact_number"));
                b.setEmail(rs.getString("email"));
                b.setFromLocation(rs.getString("from_location"));
                b.setToLocation(rs.getString("to_location"));
                b.setTravelDate(rs.getString("travel_date"));
                b.setReturnDate(rs.getString("return_date"));
                b.setTravellers(rs.getInt("travellers"));

                list.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
