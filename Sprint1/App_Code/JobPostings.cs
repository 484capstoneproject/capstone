using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for JobPostings
/// </summary>
public class JobPostingsClass
{
    private string JobTitle;
    private string JobType;
    private string CareerCluster;
    private string PaymentType;
    private string Description;
    private int month;
    private int Day;
    private int year;

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

    public int GetMonth()
    {
        return this.month;
    }
    public void SetMonth(int month)
    {
        this.month = month;
    }

    public int GetDay()
    {
        return this.Day;
    }
    public void SetDay(int day)
    {
        this.Day = day;
    }
    
    public int GetYear()
    {
        return this.year;
    }
    public void SetYear(int year)
    {
        this.year = year;
    }

    public JobPostingsClass(string JobTitle, string JobType, string CareerCluster, string Description, int month, int day, int year)
    {
        SetJobTitle(JobTitle);
        SetJobType(JobType);
        SetCareerCluster(CareerCluster);
        //SetPaymentType(Payment);
        SetDescription(Description);
        SetMonth(month);
        SetDay(day);
        SetYear(year);
    }
}