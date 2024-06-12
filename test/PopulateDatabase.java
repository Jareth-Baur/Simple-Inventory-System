/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PopulateDatabase {

    // Database connection details
    private static final String URL = "jdbc:mysql://localhost:3306/inventory_db";
    private static final String USER = "root"; // replace with your MySQL username
    private static final String PASSWORD = ""; // replace with your MySQL password

    public static void main(String[] args) {
        String[] itemNames = {
            "Item A", "Item B", "Item C", "Item D", "Item E",
            "Item F", "Item G", "Item H", "Item I", "Item J",
            "Item K", "Item L", "Item M", "Item N", "Item O",
            "Item P", "Item Q", "Item R", "Item S", "Item T",
            "Item U", "Item V", "Item W", "Item X", "Item Y",
            "Item Z", "Item AA", "Item AB", "Item AC", "Item AD",
            "Item AE", "Item AF", "Item AG", "Item AH", "Item AI",
            "Item AJ", "Item AK", "Item AL", "Item AM", "Item AN",
            "Item AO", "Item AP", "Item AQ", "Item AR", "Item AS",
            "Item AT", "Item AU", "Item AV", "Item AW", "Item AX"
        };

        int[] quantities = new int[50];
        double[] prices = new double[50];

        // Initialize quantities and prices
        for (int i = 0; i < 50; i++) {
            quantities[i] = (i + 1) * 10; // example quantity
            prices[i] = (i + 1) * 1.99;  // example price
        }

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String query = "INSERT INTO items (name, quantity, price) VALUES (?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(query)) {
                for (int i = 0; i < 50; i++) {
                    pstmt.setString(1, itemNames[i]);
                    pstmt.setInt(2, quantities[i]);
                    pstmt.setDouble(3, prices[i]);
                    pstmt.addBatch();
                }
                pstmt.executeBatch();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
