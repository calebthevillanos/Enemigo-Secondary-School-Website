package enemigoweb.bean;

import java.io.Serializable;

public class Admin implements Serializable
{
    private int id;
    private String username;
    private String password;
    private boolean verified;

    
    public Admin(){
        
    }
    
   
    public Admin(String username, String password)
    {
        this.username = username;
        this.password = password;
    }

    public Admin(int id, String username, String password)
    {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
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

    public boolean isVerified()
    {
        return verified;
    }

    public void setVerified(boolean verified)
    {
        this.verified = verified;
    }
}
