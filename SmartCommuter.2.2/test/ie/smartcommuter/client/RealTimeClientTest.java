package ie.smartcommuter.client;

import static org.junit.Assert.*;

import java.util.List;

import ie.smartcommuter.service.RealTimeStub;

import org.junit.Test;
import ie.smartcommuter.service.RealTimeStub.StationData;

public class RealTimeClientTest {

	@Test
	public void testGetStub() {
		
		try {
			assertNotNull(RealTimeClient.getStub());
			
		} catch (Exception e) {
			fail("The following exception occured: "+e.getMessage());
		}
	}

	@Test
	public void testGetStationData() {
		
		RealTimeStub stub;
		List<StationData> stationData1, stationData2;
		
		try {
			stub = RealTimeClient.getStub();
			
			stationData1 = RealTimeClient.getStationData(stub, "Luas", "");
			assertNull(stationData1);
			
			stationData1 = RealTimeClient.getStationData(stub, "Luas", "Dundrum");
			assertNotNull(stationData1);
			
			stationData2 = RealTimeClient.getStationData(stub, "", "");
			assertNull(stationData2);
			assertNotSame(stationData1,stationData2);
			
			fail("Not fully implemented");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
