package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionManager {
	public static String DB_URL = "jdbc:mysql://localhost:3306/gestionuser";
	static String DB_USER = "root";
	static String DB_PASSWORD = "";

	public static Connection getInstance() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			System.out.println("Connected successfully!");
		} catch (ClassNotFoundException e) {
			System.out.println("Error while connecting! " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Erreur de connexion : " + e.getMessage());
		}
		return connection;
	}

	public static void main(String[] args) {
		Connection connexion = getInstance();
		if (connexion != null) {
			System.out.println("Connexion réussie");
			try {
				connexion.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("Connexion échouée");
		}
	}
}