package com.mycompany.crud_imt.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {

    Connection con;

    String hostName = "imt.c4lb6ci7ceyk.us-east-1.rds.amazonaws.com";
    String jdbcUrl = "jdbc:mysql://" + hostName + ":3306/IMT_Contact_DB?useSSL=false&serverTimezone=UTC";
    String username = "admin";
    String password = "T10.4ODS";

    public conexion() {

        try {
            con = DriverManager.getConnection(jdbcUrl, username, password);
            if (con != null) {
                System.out.println("Conexion exitosa");
            }
        } catch (SQLException e) {
            System.out.println("Error al conectar la base de datos " + e);
        }
    }

    public Connection getConnection() {
        return con;
    }
}
