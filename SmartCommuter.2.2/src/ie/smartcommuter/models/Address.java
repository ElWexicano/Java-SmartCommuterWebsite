package ie.smartcommuter.models;

/**
 * The Address class is used to store details
 * about an address.
 * @author Shane Bryan Doyle
 */
public class Address {
	
	private String location;
	private String latitude;
	private String longitude;
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

}
