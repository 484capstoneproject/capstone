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
    private string ApplyBefore;


    public ScholarshipOpportunity(string ScholarshipName, string Description, string Amount, string ApplyBefore)
    {
        setScholarshipName(ScholarshipName);
        setDescription(Description);
        setAmount(Amount);
        setApplyBefore(ApplyBefore);
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

    public void setApplyBefore(string ApplyBefore)
    {
        this.ApplyBefore = ApplyBefore;

    }

    public string getApplyBefore()
    {
        return this.ApplyBefore;
    }
}