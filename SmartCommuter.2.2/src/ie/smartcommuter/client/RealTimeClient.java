package ie.smartcommuter.client;

import ie.smartcommuter.service.RealTimeStub;
import ie.smartcommuter.service.RealTimeStub.StationData;

public class RealTimeClient {

	public static RealTimeStub getStub() throws Exception {
		String address = "http://www.hawke-wit.net/axis2/services/RealTime";
		RealTimeStub stub = new RealTimeStub(address);
		return(stub);
	}
	
	public static StationData[] getStationData(RealTimeStub stub, 
			String stationType, String stationApiCode) throws Exception{
		
		RealTimeStub.GetStationData request = new RealTimeStub.GetStationData();
		request.setStationType(stationType);
		request.setStationApiCode(stationApiCode);
		RealTimeStub.GetStationDataResponse response = stub.getStationData(request);
		
		return (response.get_return());
	}
	
	public static void main(String[] args) {
		
		try {
			for(StationData sd : getStationData(getStub(),"Luas","Stillorgan")){
				System.out.println(sd.getDestination());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
