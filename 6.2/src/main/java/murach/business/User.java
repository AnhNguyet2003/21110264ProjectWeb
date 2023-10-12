package murach.business;

import java.io.Serializable;

public class User implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 4824394056884837814L;
	private String firstName;
    private String lastName;
    private String email;
    private String dateOfbirth;
    private String heardFrom;
    private String updates;
    private String contactVia;
    
    public User() {
        firstName = "";
        lastName = "";
        email = "";
        setDateOfbirth("");
        setHeardFrom("");
        updates ="";
        setContactVia("");
    }
    
    public User(String firstName, String lastName, String email, String dateOfbirth, String heardFrom, String updates, String contactVia) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.setDateOfbirth(dateOfbirth);
        this.setHeardFrom(heardFrom);
        if(updates==null)
        	this.updates="No";
        else
        	this.updates = updates;
        this.setContactVia(contactVia);
    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	public String getDateOfbirth() {
		return dateOfbirth;
	}

	public void setDateOfbirth(String dateOfbirth) {
		this.dateOfbirth = dateOfbirth;
	}

	public String getHeardFrom() {
		return heardFrom;
	}

	public void setHeardFrom(String heardFrom) {
		this.heardFrom = heardFrom;
	}

	

	public String getContactVia() {
		return contactVia;
	}

	public void setContactVia(String contactVia) {
		this.contactVia = contactVia;
	}

	public String getUpdates() {
		return updates;
	}

	public void setUpdates(String updates) {
		this.updates = updates;
	}
}
