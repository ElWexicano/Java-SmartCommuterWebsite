package ie.smartcommuter.client;

import java.util.Arrays;
import java.util.List;

import ie.smartcommuter.service.RealTimeStub;
import ie.smartcommuter.service.RealTimeStub.StationData;

/**
 * The RealTimeClient class is used to provide
 * the user with the ability to get real time
 * information for Public Transport Stations.
 * @author Shane Bryan Doyle
 */
public class RealTimeClient {
	
	/**
	 * This method is used to get the stub for the
	 * RealTime web service.
	 * @return
	 * @throws Exception
	 */
	public static RealTimeStub getStub() throws Exception {
		String address = "http://www.hawke-wit.net/axis2/services/RealTime";
		RealTimeStub stub = new RealTimeStub(address);
		return(stub);
	}
	
	/**
	 * This method is used to get the real time information,
	 * known as station data and return it to the user in an
	 * array.
	 * @param stub
	 * @param stationType
	 * @param stationApiCode
	 * @return
	 * @throws Exception
	 */
	public static List<StationData> getStationData(RealTimeStub stub,
			String stationType, String stationApiCode) throws Exception{
		RealTimeStub.GetStationData request = new RealTimeStub.GetStationData();
		request.setStationType(stationType);
		request.setStationApiCode(stationApiCode);
		RealTimeStub.GetStationDataResponse response = stub.getStationData(request);
		
		StationData[] stationData = response.get_return();
		
		if(stationData==null){
			return null;
		}

		return Arrays.asList(stationData);
	}
	
	/**
	 * Was used to test if the real time service was working.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			for(StationData sd : getStationData(getStub(),"Luas","Citywest Campus")){
				System.out.println(sd.getIsArrivalOrDeparture());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
