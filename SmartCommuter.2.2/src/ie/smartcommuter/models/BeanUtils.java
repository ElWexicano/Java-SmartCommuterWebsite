package ie.smartcommuter.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class BeanUtils {
	
	
	/**
	 * This method is used to search for a station.
	 * 
	 * @param stationName
	 * @param busStation
	 * @param railStation
	 * @param tramStation
	 * @return
	 */
	public static List<Station> SearchStations(String stationName, Boolean busStation, Boolean railStation, Boolean tramStation) {
		List<Station> result = new ArrayList<Station>();
		Connection connection = DatabaseUtils.OpenDBConnection();
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
	 * This method is used to return the details about a station.
	 * 
	 * @param stationId
	 * @return
	 */
	public static Station getStationDetails(int stationId) {
		Station station = new Station();
		Connection connection = DatabaseUtils.OpenDBConnection();
		PreparedStatement statement = null;
		
		try {
			StringBuffer query = new StringBuffer("select * from station_details where station_id = ?");
			statement = connection.prepareStatement(query.toString());
			statement.setInt(1, stationId);
			ResultSet resultSet = statement.executeQuery();
			
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
	 * This method is used to add new stations
	 * to the list of recently viewed stations.
	 * 
	 * @param station
	 * @param recentlyViewed
	 * @return
	 */
	public static List<Station> addToRecentlyViewed(Station station, List<Station> recentlyViewed){
		
		int i = 0;
        for(Station s : recentlyViewed) {
            if(s.getId() == station.getId()) {
	            recentlyViewed.remove(i);
	            break;
            }
        	i++;
        }
		
        if(recentlyViewed.size() == 10) {
        	recentlyViewed.remove(9);
        }
		recentlyViewed.add(station);
		Collections.reverse(recentlyViewed);
		
		return recentlyViewed;
	}
	
	
	

	
}
