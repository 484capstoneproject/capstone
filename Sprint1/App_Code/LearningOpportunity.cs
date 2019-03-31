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
    private string CareerCluster;
    private string Description;
    private string Duration;
    private DateTime ApplyDate = DateTime.Now;
    private string LearningType;


    public LearningOpportunity(String LearningTitle, String CareerCLuster, 
       String Description, String Duration, String LearningType, DateTime ApplyDate)
    {
        setLearningTitle(LearningTitle);
        setCareerCluster(CareerCLuster);
        setDescription(Description);
        setDuration(Duration);
        setLearningType(LearningType);
        setApplyDate(ApplyDate);

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

    public void setDuration(String Duration)
    {
        this.Duration = Duration;
    }
    public String getDuration()
    {
        return this.Duration;
    }

    public void setLearningType(String LearningType)
    {
        this.LearningType = LearningType;
    }
    public String getLearningType()
    {
        return this.LearningType;
    }

    public void setApplyDate(DateTime ApplyDate)
    {
        this.ApplyDate = ApplyDate;
    }
    public DateTime getApplyBefore()
    {
        return this.ApplyDate;
    }



}