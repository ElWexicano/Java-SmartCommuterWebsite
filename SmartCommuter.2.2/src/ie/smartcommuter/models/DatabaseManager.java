package ie.smartcommuter.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * This class is used to open, close and
 * search the SmartCommuter Database.
 * @author Shane Bryan Doyle
 */
public class DatabaseManager {
	
	private Connection connection;
	
	/**
	 * This method is used to open a connection to the Database.
	 */
	public void openConnection() {

		try {
			Class.forName("org.sqlite.JDBC");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}  
		Connection connection = null;
		
		try {
			connection = DriverManager.getConnection("jdbc:sqlite:database/smartcommuter.db");
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		this.connection = connection;
	}
	
	/**
	 * This method is used to close a connection to the Database.
	 */
	public void closeConnection() {
		
		if(this.connection!=null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * This method returns a list of the all the 
	 * companies in the database.
	 * @return
	 */
	public List<Company> getAllCompanies() {
		List<Company> companies = new ArrayList<Company>();
		Statement statement = null;
		
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from company_details order by company_name");
			while(resultSet.next()) {
				Company company = resultSetToCompany(resultSet);
				
				companies.add(company);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(statement!=null) statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(connection!=null) connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return companies;
	}
	
	/**
	 * This method is used to return the details about a station.
	 * 
	 * @param stationId
	 * @return
	 */
	public Station getStationDetails(int stationId) {
		Station station = new Station();
		PreparedStatement statement = null;

		try {
			StringBuffer query = new StringBuffer("select * from station_details where station_id = ?");
			statement = connection.prepareStatement(query.toString());
			statement.setInt(1, stationId);
			ResultSet resultSet = statement.executeQuery();
			station = resultSetToStation(resultSet);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(statement!=null) statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(connection!=null) connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return station;
	}
	
	/**
	 * This method is used to search for a station.
	 * 
	 * @param stationName
	 * @param busStation
	 * @param railStation
	 * @param tramStation
	 * @return
	 */
	public List<Station> searchStations(String stationName, Boolean busStation, Boolean railStation, Boolean tramStation) {
		List<Station> result = new ArrayList<Station>();
		PreparedStatement statement = null;
		Station station;
		Address address;
		Company company;
		
        String transportModeSearch = busStation.booleanValue() ? "" : " and station_transport_mode != 'Bus'";
        transportModeSearch = (new StringBuilder(String.valueOf(transportModeSearch))).
        		append(railStation.booleanValue() ? "" : " and station_transport_mode != 'Rail'").toString();
        transportModeSearch = (new StringBuilder(String.valueOf(transportModeSearch))).
        		append(tramStation.booleanValue() ? "" : " and station_transport_mode != 'Tram'").toString();
		
		try {
			StringBuffer query = new StringBuffer("select station_id, station_address, station_name, station_company, ").
					append("station_transport_mode from station_details where station_name like ?").
					append(transportModeSearch).append(" order by station_name asc");
			statement = connection.prepareStatement(query.toString());
			statement.setString(1, "%"+stationName+"%");
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				station = new Station();
				station.setName(resultSet.getString("station_name"));
				station.setId(resultSet.getInt("station_id"));
				
				address = new Address();
				address.setLocation(resultSet.getString("station_address"));
				station.setAddress(address);
				
				company = new Company();
				company.setName(resultSet.getString("station_company"));
				company.setMode(resultSet.getString("station_transport_mode"));
				station.setCompany(company);
				
				result.add(station);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(statement!=null) statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(connection!=null) connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	/**
	 * This method is used to convert a ResultSet to
	 * a Company Object.
	 * @param resultSet
	 * @return
	 * @throws SQLException
	 */
	private Company resultSetToCompany(ResultSet resultSet) throws SQLException {
		Company company = new Company();
		
		company.setName(resultSet.getString("company_name"));
		company.setMode(resultSet.getString("company_transport_mode"));
		
		ContactDetails contacts = new ContactDetails();
		contacts.setEmail(resultSet.getString("company_email"));
		contacts.setTelephone(resultSet.getString("company_telephone"));
		contacts.setWebsite(resultSet.getString("company_website"));
		contacts.setTwitter(resultSet.getString("company_twitter"));
		contacts.setFacebook(resultSet.getString("company_facebook"));
		company.setDetails(contacts);

		return company;
	}
	
	/**
	 * This method is used to convert a ResultSet to
	 * a Station Object.
	 * @param resultSet
	 * @return
	 * @throws SQLException
	 */
	private Station resultSetToStation(ResultSet resultSet) throws SQLException {
		Station station = new Station();
		
		station.setId(resultSet.getInt("station_id"));
		station.setName(resultSet.getString("station_name"));
		station.setApiCode(resultSet.getString("station_code"));
		
		Address address = new Address();
		address.setLocation(resultSet.getString("station_address"));
		address.setLatitude(resultSet.getString("station_latitude"));
		address.setLongitude(resultSet.getString("station_longitude"));
		station.setAddress(address);
		
		Company company = new Company();
		company.setName(resultSet.getString("station_company"));
		company.setMode(resultSet.getString("station_transport_mode"));
		station.setCompany(company);
		
		return station;
	}
}
