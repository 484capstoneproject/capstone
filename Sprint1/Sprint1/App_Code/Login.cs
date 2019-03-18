using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Login
/// </summary>
public class Login
{
    private string username;
    private int entity;
    public static int entityID;

    public string GetUsername()
    {
        return this.username;
    }
    public void SetUsername(string username)
    {
        this.username = username;
    }

    public int GetEntity()
    {
        return this.entity;
    }
    public void SetEntity(int entity)
    {
        this.entity = entity;
    }

    public Login(string username)
    {
        SetUsername(username);
        //SetEntity(entityID);
    }
}