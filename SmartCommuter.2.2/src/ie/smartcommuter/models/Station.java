package ie.smartcommuter.models;

import java.util.List;

/**
 * This class is used to create instances of
 * Stations.
 * @author Shane Bryan Doyle
 */
public class Station {
	
	private int id;
	private String name;
	private String apiCode;
	private Address address;
	private Company company;
	private List<ie.smartcommuter.service.RealTimeStub.StationData> arrivals;
	private List<ie.smartcommuter.service.RealTimeStub.StationData> departures;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name.replaceAll("á", "a");
	}
	public String getApiCode() {
		return apiCode;
	}
	public void setApiCode(String apiCode) {
		this.apiCode = apiCode;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public List<ie.smartcommuter.service.RealTimeStub.StationData> getDepartures() {
		return departures;
	}
	public void setDepartures(List<ie.smartcommuter.service.RealTimeStub.StationData> stationData) {
		this.departures = stationData;
	}
	public List<ie.smartcommuter.service.RealTimeStub.StationData> getArrivals() {
		return arrivals;
	}
	public void setArrivals(List<ie.smartcommuter.service.RealTimeStub.StationData> stationData) {
		this.arrivals = stationData;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
}
