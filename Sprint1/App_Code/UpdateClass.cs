using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UpdateClass
/// </summary>
public class UpdateClass
{
    private string BusinessName;
    private string FirstName;
    private string LastName;
    private string EmailAddress;
    private string Username;
    private string PhoneNumber;
    private string JobTitle;
    private string Address;
    private string Address2;
    private string City;
    private string State;
    private string Zip;

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
    public string GetAddress()
    {
        return this.Address;

    }
    public void SetAddress(string Address)
    {
        this.Address = Address;
    }
    public string GetAddress2()
    {
        return this.Address2;

    }
    public void SetAddress2(string Address2)
    {
        this.Address2 = Address2;
    }
    public string GetCity()
    {
        return this.City;

    }
    public void SetCity(string City)
    {
        this.City = City;
    }
    public string GetState()
    {
        return this.State;

    }
    public void SetState(string State)
    {
        this.State = State;
    }
    public string GetZip()
    {
        return this.Zip;

    }
    public void SetZip(string Zip)
    {
        this.Zip = Zip;
    }
    public UpdateClass(string BusinessName, string FirstName, string LastName, string Email, string Username, string PhoneNumber, string JobTitle)
    {
        SetBusinessName(BusinessName);
        SetFirstName(FirstName);
        SetLastName(LastName);
        SetEmailAddress(Email);
        SetUsername(Username);
        SetPhoneNumber(PhoneNumber);
        SetJobTitle(JobTitle);
    }
    public UpdateClass(string FirstName, string LastName, string Email, string PhoneNumber, string Address, string Address2, string City, string State, string Zip)
    {
        SetFirstName(FirstName);
        SetLastName(LastName);
        SetEmailAddress(Email);
        SetPhoneNumber(PhoneNumber);
        SetAddress(Address);
        SetAddress2(Address2);
        SetCity(City);
        SetState(State);
        SetZip(Zip);
    }
}