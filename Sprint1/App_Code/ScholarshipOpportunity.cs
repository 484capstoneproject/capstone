using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ScholarshipOpportunity
/// </summary>
public class ScholarshipOpportunity
{
    private string ScholarshipName;
    private string Description;
    private string Amount;
    private string month;
    private string day;
    private string year;
    private int BusinessEntityID;

    public ScholarshipOpportunity(string ScholarshipName, string Description, string Amount, String month, String day, String year, int ID)
    {
        setScholarshipName(ScholarshipName);
        setDescription(Description);
        setAmount(Amount);
        setMonth(month);
        setDay(day);
        setYear(year);
        SetBusinessEntityID(ID);
    }

    public void setScholarshipName(string ScholarshipName)
    {
        this.ScholarshipName = ScholarshipName;

    }

    public string getScholarshipName()
    {
        return this.ScholarshipName;
    }

    public void setDescription(string Description)
    {
        this.Description = Description;

    }

    public string getDescription()
    {
        return this.Description;
    }

    public void setAmount(string Amount)
    {
        this.Amount = Amount;

    }

    public string getAmount()
    {
        return this.Amount;
    }

    public void setMonth(String month)
    {
        this.month = month;
    }
    public String getMonth()
    {
        return this.month;
    }

    public void setDay(String day)
    {
        this.day = day;
    }
    public String getDay()
    {
        return this.day;
    }

    public void setYear(String year)
    {
        this.year = year;
    }
    public String getYear()
    {
        return this.year;
    }

    public int GetBusinessID()
    {
        return this.BusinessEntityID;
    }
    public void SetBusinessEntityID(int ID)
    {
        this.BusinessEntityID = ID;
    }

}