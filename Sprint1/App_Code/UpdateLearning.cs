using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UpdateLearning
/// </summary>
public class UpdateLearning
{
    private string LearningTitle;
    private string CareerCluster;
    private string Description;
    private string LearningType;
    private string month;
    private string day;
    private string year;
    private int BusinessEntityID;


    public UpdateLearning(String LearningTitle, String CareerCLuster,
       String Description, String LearningType, string month, string day, string year, int ID)
    {
        setLearningTitle(LearningTitle);
        setCareerCluster(CareerCLuster);
        setDescription(Description);
        setLearningType(LearningType);
        setMonth(month);
        setDay(day);
        setYear(year);
        setBusinessEntityID(ID);


    }

    public void setLearningTitle(String LearningTitle)
    {
        this.LearningTitle = LearningTitle;
    }

    public String getLearningTitle()
    {
        return this.LearningTitle;
    }

    public void setCareerCluster(String CareerCluster)
    {
        this.CareerCluster = CareerCluster;
    }
    public String getCareerCluster()
    {
        return this.CareerCluster;
    }

    public void setDescription(String Description)
    {
        this.Description = Description;
    }
    public String getDescription()
    {
        return this.Description;
    }


    public void setLearningType(String LearningType)
    {
        this.LearningType = LearningType;
    }
    public String getLearningType()
    {
        return this.LearningType;
    }


    public string GetMonth()
    {
        return this.month;
    }
    public void setMonth(string month)
    {
        this.month = month;
    }

    public string GetDay()
    {
        return this.day;
    }
    public void setDay(string day)
    {
        this.day = day;
    }

    public string GetYear()
    {
        return this.year;
    }
    public void setYear(string year)
    {
        this.year = year;
    }

    public int GetBusinessID()
    {
        return this.BusinessEntityID;
    }
    public void setBusinessEntityID(int ID)
    {
        this.BusinessEntityID = ID;
    }
}