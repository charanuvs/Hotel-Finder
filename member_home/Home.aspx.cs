using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Runtime.Serialization;
using System.Xml.Linq;

namespace DsodAsgmnt5
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["verifyStr"] = string.Empty;
            Session["verifyString"] = string.Empty;
            Session["verifyStaff"] = string.Empty;
            Session["verifyManager"] = string.Empty;
            Session["verifyAdmin"] = string.Empty;
            HttpCookie myCookies = Request.Cookies["data"];
            if ((myCookies == null) || (myCookies["username"] == ""))
            {
                Label1.Text = "";
                Button6.Visible = false;
            }
            else
            {
                Label1.Text = myCookies["username"];
                Button1.Visible = false;
                Button2.Visible = false;
            }
        }

        

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("login.aspx");
            }
            catch (Exception exe)
            {
                Label1.Text = "Login Error!" + exe.ToString();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
                if (Request.Cookies["data"] != null)
                {
                    Session["verifyStr"] = string.Empty;
                    Session["verifyString"] = string.Empty;
                    HttpCookie myCookie = new HttpCookie("data");
                    myCookie.Expires = System.DateTime.Now.AddDays(-1d);
                    Response.Cookies.Add(myCookie);
                    Response.Redirect("Home.aspx");
                }
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("admin_home.aspx");
            
        }
    }
}