package ie.smartcommuter.models;

import java.util.Collections;
import java.util.List;

/**
 * This class is used to store static
 * methods that are used throughout the
 * application.
 * @author Shane Bryan Doyle
 */
public class BeanUtils {
	
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
	
	
	/**
	 * This method is used to return the API Service for
	 * a station, which will be used to get the latest
	 * real time data for that station.
	 * @param station
	 * @return
	 */
	public static String getStationAPIServiceType(Station station) {

		String companyName = station.getCompany().getName();
		
		if(companyName.equals("Bus Eireann")) {
			return "BusEireann";
		} else if(companyName.equals("Dublin Bus")) {
			return "DublinBus";
		} else if(companyName.equals("Irish Rail")) {
			return "IrishRail";
		} else if(companyName.equals("Luas")) {
			return "Luas";
		} else if(companyName.equals("JJ Kavanagh & Sons")) {
			return "JJKavanagh";
		}
		
		return null;
	}

	
}
