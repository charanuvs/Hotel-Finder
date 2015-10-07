using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace DsodAsgmnt5
{
    public partial class Login : System.Web.UI.Page
    {
        public static string verfy_string = string.Empty;
        public void captcha_generation()
        {
            member_home.imgver.ServiceClient fromService = new member_home.imgver.ServiceClient();
            string length = 5.ToString();
            verfy_string = fromService.GetVerifierString(length);
            Session["verifyStr"] = verfy_string;
            Image1.Visible = true;
            Stream myStream = fromService.GetImage(verfy_string);
            MemoryStream memStr = new MemoryStream();
            myStream.CopyTo(memStr);
            BinaryReader br = new BinaryReader(myStream);
            byte[] bytes = memStr.ToArray();
            string bs = Convert.ToBase64String(bytes, 0, bytes.Length);
            Image1.ImageUrl = "data:image/png;base64," + bs;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["data"];
            if (myCookies != null)
            {
                Response.Redirect("Home.aspx");
            }
            if (Session["verifyStr"].Equals(string.Empty))
            {
                captcha_generation();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                member_home.loginserv.Service1Client client = new member_home.loginserv.Service1Client();
                EncDec.Service1 ed = new EncDec.Service1();
                string encPswd = ed.Encrypt(Password.Text);
                
                if (TextBox1.Text.Equals(verfy_string))
                {
                    bool result = client.checkUser(Username.Text, encPswd, DropDownList1.SelectedValue);
                    
                    if (result)
                    {
                        
                        HttpCookie usercookie = new HttpCookie("data");
                        usercookie["username"] = Username.Text;
                        usercookie["Role"] = DropDownList1.SelectedValue;
                        usercookie.Expires = System.DateTime.Now.AddDays(30);
                        Response.Cookies.Add(usercookie);
                        string page = DropDownList1.SelectedValue.ToLower() + "_home.aspx";
                        Response.Redirect(page);
                    }
                    else
                    {
                        Label1.Text = "Login failed!";
                        Label2.Text = "Username or Password Incorrect.";
                        captcha_generation();
                        TextBox1.Text = "";
                    }
                }
                else
                {
                    TextBox1.Text = "";
                    captcha_generation();
                    Label1.Text = "";
                    Label2.Text = "Enter Correct Captcha!";
                }
            }
            catch (Exception ex)
            {
                captcha_generation();
                Label1.Text = "Error!" + ex.ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            captcha_generation();
            TextBox1.Text = "";
        }
    }
}