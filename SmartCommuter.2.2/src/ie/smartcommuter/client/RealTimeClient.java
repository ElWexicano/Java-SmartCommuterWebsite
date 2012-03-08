package ie.smartcommuter.client;

import java.util.Arrays;
import java.util.List;

import ie.smartcommuter.service.RealTimeStub;
import ie.smartcommuter.service.RealTimeStub.StationData;

public class RealTimeClient {

	public static RealTimeStub getStub() throws Exception {
		String address = "http://www.hawke-wit.net/axis2/services/RealTime";
		RealTimeStub stub = new RealTimeStub(address);
		return(stub);
	}
	
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
	
	public static void main(String[] args) {
		
		try {
			for(StationData sd : getStationData(getStub(),"Luas","Stillorgan")){
				System.out.println(sd.getIsArrivalOrDeparture());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
