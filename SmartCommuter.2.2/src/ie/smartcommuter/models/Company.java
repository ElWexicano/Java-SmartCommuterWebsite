package ie.smartcommuter.models;

/**
 * This class is used to create instances
 * of Companies.
 * @author Shane Bryan Doyle
 */
public class Company {
	
	private String name;
	private ContactDetails details;
	private String mode;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name.replaceAll("É", "E");
	}
	public ContactDetails getDetails() {
		return details;
	}
	public void setDetails(ContactDetails details) {
		this.details = details;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
}