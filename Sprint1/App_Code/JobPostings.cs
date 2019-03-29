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
    private string CareerCluster;
    private string JobExplanation;
    private string Requirements;
    private DateTime DatePosted;

    public string GetJobTitle()
    {
        return this.JobTitle;
    }
    public void SetJobTitle(string JobTitle)
    {
        this.JobTitle = JobTitle;
    }

    public string GetCareerCluster()
    {
        return this.CareerCluster;
    }
    public void SetCareerCluster(string CareerCluster)
    {
        this.CareerCluster = CareerCluster;
    }

    public string GetJobExplanation()
    {
        return this.JobExplanation;
    }
    public void SetJobExplanation(string JobExplain)
    {
        this.JobExplanation = JobExplain;
    }

    public string GetRequirements()
    {
        return this.Requirements;
    }
    public void SetRequirements(string require)
    {
        this.Requirements = require;
    }

    public DateTime GetPostedDate()
    {
        return this.DatePosted;
    }
    public void SetDatePosted(DateTime postedDate)
    {
        this.DatePosted = postedDate;
    }

    public JobPostingsClass(string JobTitle, string CareerCluster, string JobExplanation, string Requirements, DateTime DatePosted)
    {
        SetJobTitle(JobTitle);
        SetCareerCluster(CareerCluster);
        SetJobExplanation(JobExplanation);
        SetRequirements(Requirements);
        SetDatePosted(DatePosted);
    }
}