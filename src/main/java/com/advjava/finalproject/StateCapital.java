package com.advjava.finalproject;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

//Model class to access states and capitals data from the statecapital table of javabook database using mysql.
public class StateCapital {

//    ArrayList to store states.
    public ArrayList<String> states = new ArrayList<>();

//    HashMap to store states and their respective capitals as state-capital pairs.
    public HashMap<String, String> stateCapitals = new HashMap<>();

//    method to access data from the database and store them in supported variables.
    public void getData() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Driver Loaded");

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/javabook", "root", "root");
        System.out.println("Database Connected");

        PreparedStatement stmt = conn.prepareStatement("select * from statecapital;");

        ResultSet rs = stmt.executeQuery();

        while(rs.next()) {
            states.add(rs.getString(1));
            stateCapitals.put(rs.getString(1), rs.getString(2));
        }

    }

}
