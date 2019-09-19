package com.revature.waterplant_webapp.util;

import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;


public class ConnectionUtil {
	
	  
    private static final ConnectionUtil INSTANCE = new ConnectionUtil();
    
    private ConnectionUtil() {
        //private Constructor
    }
    
    public static ConnectionUtil getInstance() {
        return INSTANCE;
    }
    
    public static Connection getConnection() {

        Connection con = null;

        //try with resources, it will the close the reader.close automatically.
        try(InputStream inputStream  = INSTANCE.getClass()
                .getClassLoader().getResourceAsStream("application.properties")) {
            
            Properties prop = new Properties();
            // load a properties file
            prop.load(inputStream);

            String driverClassName = prop.getProperty("driverClassName");
            String url = prop.getProperty("url");
            String username = prop.getProperty("username");
            String password = prop.getProperty("password");

            Class.forName(driverClassName);
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Loading Credentials from Property Files:" + con);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Unable to load the driver class");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Unable to get DB Connection");
        } catch (IOException ex) {
            ex.printStackTrace();
            throw new RuntimeException("Unable to read property files");
        }

        return con;
    }

    public static void close(Connection con, PreparedStatement pst) {

        try {
            if (pst != null)
                pst.close();
            if (con != null)
                con.close();
        } catch (Exception e) {

        }

    }

}
