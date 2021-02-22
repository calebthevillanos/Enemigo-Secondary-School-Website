package enemigoweb.bean;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author laptop
 */
public class Student implements Serializable
{

    private int id;
    private String firstname;
    private String othername;
    private String lastname;
    private String gender;
    private LocalDate dateofbirth;
    private String guardianPhone;
    private String guardianEmail;
    private String address;
    private String imageName;
    private String username;
    private String password;
    private boolean verified;
    
    private ArrayList<String> classes;
   
    
    
    
    
    public Student()
    {

    }

    public Student(String firstname, String othername, String lastname, String gender, LocalDate dateofbirth, String guardianPhone, String guardianEmail, String address, String imageName)
    {
        this.firstname = firstname;
        this.othername = othername;
        this.lastname = lastname;
        this.gender = gender;
        this.dateofbirth = dateofbirth;
        this.guardianPhone = guardianPhone;
        this.guardianEmail = guardianEmail;
        this.address = address;
        this.imageName = imageName;
    }

    public Student(int id, String firstname, String othername, String lastname, String gender, LocalDate dateofbirth,
            String guardianPhone, String guardianEmail, String address, String imageName, String username, String password)
    {
        this.id = id;
        this.firstname = firstname;
        this.othername = othername;
        this.lastname = lastname;
        this.gender = gender;
        this.dateofbirth = dateofbirth;
        this.guardianPhone = guardianPhone;
        this.guardianEmail = guardianEmail;
        this.address = address;
        this.imageName = imageName;
        this.username = username;
        this.password = password;
    }

    public Student(String username, String password)
    {
        this.username = username;
        this.password = password;
    }

    public Date getDateofbirth2()
    {
        java.util.Date date = java.sql.Date.valueOf(dateofbirth);
        return date;
    }

    public String getDateofbirthString()
    {
        return dateofbirth.toString();
    }

    
    public int getId()
    {
        return id;
    }

    /**
     *
     * @param id
     */
    public void setId(int id)
    {
        this.id = id;
    }

    /**
     *
     * @return
     */
    public String getFirstname()
    {
        return firstname;
    }

    /**
     *
     * @param firstname
     */
    public void setFirstname(String firstname)
    {
        this.firstname = firstname;
    }

    public String getOthername()
    {
        return othername;
    }

    public void setOthername(String othername)
    {
        this.othername = othername;
    }

    /**
     *
     * @return
     */
    public String getLastname()
    {
        return lastname;
    }

    /**
     *
     * @param lastname
     */
    public void setLastname(String lastname)
    {
        this.lastname = lastname;
    }

    public String getGender()
    {
        return gender;
    }

    /**
     *
     * @param gender
     */
    public void setGender(String gender)
    {
        this.gender = gender;
    }

    /**
     *
     * @return
     */
    public LocalDate getDateofbirth()
    {
        return dateofbirth;
    }

    /**
     *
     * @param dateofbirth
     */
    public void setDateofbirth(LocalDate dateofbirth)
    {
        this.dateofbirth = dateofbirth;
    }

    /**
     *
     * @return
     */
    public String getGuardianPhone()
    {
        return guardianPhone;
    }

    /**
     *
     * @param guardianPhone
     */
    public void setGuardianPhone(String guardianPhone)
    {
        this.guardianPhone = guardianPhone;
    }

    public String getGuardianEmail()
    {
        return guardianEmail;
    }

    public void setGuardianEmail(String guardianEmail)
    {
        this.guardianEmail = guardianEmail;
    }

    /**
     *
     * @return
     */
    public String getAddress()
    {
        return address;
    }

    /**
     *
     * @param address
     */
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getImageName()
    {
        return imageName;
    }

    /**
     *
     * @param imageName
     */
    public void setImageName(String imageName)
    {
        this.imageName = imageName;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }
    
    public void setClasses(ArrayList<String> classes)
    {
        this.classes = classes;
    }
    
    public ArrayList<String> getClasses()
    {
        return classes;
    }
}
