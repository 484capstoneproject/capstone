using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Register
/// </summary>
public class RegisterClass
{
    private string BusinessName;
    private string FirstName;
    private string LastName;
    private string EmailAddress;
    private string Username;
    private string PhoneNumber;
    private string JobTitle;

    public string GetBusinessName()
    {
        return this.BusinessName;
    }
    public void SetBusinessName(string busName)
    {
        this.BusinessName = busName;
    }

    public string GetFirstName()
    {
        return this.FirstName;
    }
    public void SetFirstName(string firstName)
    {
        this.FirstName = firstName;
    }
    public string GetLastName()
    {
        return this.LastName;
    }

    public void SetLastName(string lastName)
    {
        this.LastName = lastName;
    }

    public string GetEmailAddress()
    {
        return this.EmailAddress;
    }
    public void SetEmailAddress(string Email)
    {
        this.EmailAddress = Email;
    }

    public string GetUsername()
    {
        return this.Username;
    }
    public void SetUsername(string username)
    {
        this.Username = username;
    }

    public string GetPhoneNumber()
    {
        return this.PhoneNumber;
    }
    public void SetPhoneNumber(string phoneNumber)
    {
        this.PhoneNumber = phoneNumber;
    }

    public string GetJobTitle()
    {
        return this.JobTitle;

    }
    public void SetJobTitle(string job)
    {
        this.JobTitle = job;
    }
    public RegisterClass(string BusinessName, string FirstName, string LastName, string Email, string Username, string PhoneNumber, string JobTitle)
    {
        SetBusinessName(BusinessName);
        SetFirstName(FirstName);
        SetLastName(LastName);
        SetEmailAddress(Email);
        SetUsername(Username);
        SetPhoneNumber(PhoneNumber);
        SetJobTitle(JobTitle);
    }
}