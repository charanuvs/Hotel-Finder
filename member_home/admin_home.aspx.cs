using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace member_home
{
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["data"];
            if (myCookies != null)
            {
                if (myCookies["Role"] == "Admin")
                {
                    Label1.Text = myCookies["username"];
                }
                else
                {
                    Response.Redirect("unauthaccess.html");
                }
            }
            else { Response.Redirect("Login.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            member_home.loginserv.Service1Client r = new member_home.loginserv.Service1Client();
            EncDec.Service1 ed_ref = new EncDec.Service1();
            
            r.RegisterService(TextBox1.Text, ed_ref.Encrypt(Password1.Value), DropDownList1.SelectedValue, TextBox2.Text);
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