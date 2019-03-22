using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PasswordRegister
/// </summary>
public class PasswordRegister
{
    private string username;
    private string firstName;
    private string password;
    private string email;

    public string GetUsername()
    {
        return this.username;
    }
    public void SetUsername(string username)
    {
        this.username = username;
    }

    public string GetPassword()
    {
        return this.password;
    }
    public void SetPassword(string password)
    {
        this.password = password;
    }

    public string GetFirstName()
    {
        return this.firstName;
    }
    public void SetFirstName(string firstName)
    {
        this.firstName = firstName;
    }

    public string GetEmail()
    {
        return this.email;
    }
    public void SetEmail(string email)
    {
        this.email = email;
    }
    public PasswordRegister(string username, string firstName, string password, string email)
    {
        SetUsername(username);
        SetFirstName(firstName);
        SetPassword(password);
        SetEmail(email);
    }
    public PasswordRegister(string firstName)
    {
        SetFirstName(firstName);
    }
    public PasswordRegister(string password, string email)
    {
        SetPassword(password);
    }
}