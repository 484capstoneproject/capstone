using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LearningPostings
/// </summary>
public class LearningPostings
{
    private string LearningTitle;
    private string CareerCluster;
    private string Description;
    private string LearningType;
    private string month;
    private string day;
    private string year;


    public LearningPostings(String LearningTitle, String CareerCLuster,
       String Description, String LearningType, String monnt, String day, String year)
    {
        setLearningTitle(LearningTitle);
        setCareerCluster(CareerCLuster);
        setDescription(Description);

        setLearningType(LearningType);


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



}