using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LearningOpportunity
/// </summary>
public class LearningOpportunity
{
    private string LearningTitle;
    private string LearningType;
    private string CareerCluster;
    private string Description;
    private string Month;
    private string Day;
    private string Year;
    private int BusinessEntityID;

    public string GetLearningTitle()
    {
        return this.LearningTitle;
    }
    public void SetLearningTitle(string LearningTitle)
    {
        this.LearningTitle = LearningTitle;
    }

    public string GetLearningType()
    {
        return this.LearningType;
    }
    public void SetLearningType(string LearningType)
    {
        this.LearningType = LearningType;
    }

    public string GetCareerCluster()
    {
        return this.CareerCluster;
    }
    public void SetCareerCluster(string CareerCluster)
    {
        this.CareerCluster = CareerCluster;
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
        return this.Month;
    }
    public void SetMonth(string Month)
    {
        this.Month = Month;
    }

    public string GetDay()
    {
        return this.Day;
    }
    public void SetDay(string Day)
    {
        this.Day = Day;
    }

    public string GetYear()
    {
        return this.Year;
    }
    public void SetYear(string Year)
    {
        this.Year = Year;
    }

    public int GetBusinessID()
    {
        return this.BusinessEntityID;
    }
    public void SetBusinessEntityID(int ID)
    {
        this.BusinessEntityID = ID;
    }

    public LearningOpportunity(string LearningTitle, string LearningType, string CareerCluster, string Description, string month, string day, string year, int ID)
    {
        SetLearningTitle(LearningTitle);
        SetLearningType(LearningType);
        SetCareerCluster(CareerCluster);
        SetDescription(Description);
        SetMonth(month);
        SetDay(day);
        SetYear(year);
        SetBusinessEntityID(ID);
    }
}