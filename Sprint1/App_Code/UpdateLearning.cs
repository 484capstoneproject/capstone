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
    private string ApplyBefore;
    private string LearningType;


    public UpdateLearning(String LearningTitle, String CareerCLuster,
       String Description, String LearningType, String ApplyBefore)
    {
        setLearningTitle(LearningTitle);
        setCareerCluster(CareerCLuster);
        setDescription(Description);

        setLearningType(LearningType);
        setApplyBefore(ApplyBefore);

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

    public void setApplyBefore(String ApplyBefore)
    {
        this.ApplyBefore = ApplyBefore;
    }
    public String getApplyBefore()
    {
        return this.ApplyBefore;
    }
}