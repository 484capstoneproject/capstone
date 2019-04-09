using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UpdateJob
/// </summary>
public class UpdateJob
{

    private string JobTitle;
    private string JobType;
    private string CareerCluster;
    private string PaymentType;
    private string Description;
    private string month;
    private string Day;
    private string year;
    private int BusinessEntityID;

    public string GetJobTitle()
    {
        return this.JobTitle;
    }
    public void SetJobTitle(string JobTitle)
    {
        this.JobTitle = JobTitle;
    }

    public string GetJobType()
    {
        return this.JobType;
    }
    public void SetJobType(string JobType)
    {
        this.JobType = JobType;
    }

    public string GetCareerCluster()
    {
        return this.CareerCluster;
    }
    public void SetCareerCluster(string CareerCluster)
    {
        this.CareerCluster = CareerCluster;
    }

    public string GetPaymentType()
    {
        return this.PaymentType;
    }
    public void SetPaymentType(string payment)
    {
        this.PaymentType = payment;
    }

    public string GetDescription()
    {
        return this.Description;
    }
    public void SetDescription(string describe)
    {
        this.Description = describe;
    }

    public string GetMonth()
    {
        return this.month;
    }
    public void SetMonth(string month)
    {
        this.month = month;
    }

    public string GetDay()
    {
        return this.Day;
    }
    public void SetDay(string day)
    {
        this.Day = day;
    }

    public string GetYear()
    {
        return this.year;
    }
    public void SetYear(string year)
    {
        this.year = year;
    }

    public int GetBusinessID()
    {
        return this.BusinessEntityID;
    }
    public void SetBusinessEntityID(int ID)
    {
        this.BusinessEntityID = ID;
    }

    public UpdateJob(string JobTitle, string JobType, string CareerCluster, string Description, string month, string day, string year, int ID)
    {
        SetJobTitle(JobTitle);
        SetJobType(JobType);
        SetCareerCluster(CareerCluster);
        //SetPaymentType(Payment);
        SetDescription(Description);
        SetMonth(month);
        SetDay(day);
        SetYear(year);
        SetBusinessEntityID(ID);
    }


}