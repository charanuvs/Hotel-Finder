using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace member_home
{
    public partial class manager_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["data"];
            if (myCookies != null)
            {
                if (myCookies["Role"] == "Manager")
                {
                    Label1.Text = myCookies["username"];
                }
                else
                {
                    Response.Redirect("unauthaccess.html");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            GridView1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;

            DataSet ds = new DataSet();
            XmlDocument reg_n = new XmlDocument();
            String file_Loc = AppDomain.CurrentDomain.BaseDirectory + "//";
            String file_name = "Register.xml";
            ds.ReadXml(file_Loc + file_name);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["verifyManager"] = string.Empty;
            HttpCookie myCookie = new HttpCookie("details");
            myCookie.Expires = System.DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(myCookie);
            Response.Redirect("Login.aspx");
        }
    }
}