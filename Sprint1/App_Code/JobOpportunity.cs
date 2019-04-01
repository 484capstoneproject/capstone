using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for JP
/// </summary>
public class JobOpportunity
{
    private string JobTitle;
    private string CareerCluster;
    private string PaymentType;
    private string Description;
    private string JobType;
    private string Age;
    private string ApplyBefore;

    public JobOpportunity(String JobTitle, String CareerCluster, String PaymentType, String Description, String JobType,
        String Age, String ApplyBefore)
    {
        setJobTitle(JobTitle);
        setCareerCluster(CareerCluster);
        setPaymentType(PaymentType);
        setDescription(Description);
        setJobType(JobType);
        setAge(Age);
        setApplyBefore(ApplyBefore);
    }

    public void setJobTitle(String JobTitle)
    {
        this.JobTitle = JobTitle;
    }

    public String getJobTitle()
    {
        return this.JobTitle;
    }

    public void setCareerCluster(String CareerCluster)
    {
        this.CareerCluster = CareerCluster;
    }

    public String getCareerCluster()
    {
        return this.CareerCluster;
    }

    public void setPaymentType(String PaymentType)
    {
        this.PaymentType = PaymentType;
    }

    public String getPaymentType()
    {
        return this.PaymentType;
    }

    public void setDescription(String Description)
    {
        this.Description = Description;
    }
    public String getDescription()
    {
        return this.Description;
    }

    public void setJobType(String JobType)
    {
        this.JobType = JobType;
    }

    public String getJobType()
    {
        return this.JobType;
    }

    public void setAge(String Age)
    {
        this.Age = Age;
    }

    public String getAge()
    {
        return this.Age;
    }

    public void setApplyBefore(String ApplyBefore)
    {
        this.ApplyBefore = ApplyBefore;
    }

    public String getApplyBefore()
    {
        return this.ApplyBefore;
    }


}