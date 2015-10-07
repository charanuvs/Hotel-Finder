using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace member_home
{
    public partial class member_catalogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            carddetails.Visible = false;
            string[] cart = (string[])Application["cart"];
            int i = 0;
            
            Label1.Text = (string)Application["sum"];
            
            for(i = 0; i < cart.Length; i++){

                TableRow row = new TableRow();
                TableCell item = new TableCell();
                item.Text = cart[i];

                row.Cells.Add(item);
                Table1.Rows.Add(row);
                

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            carddetails.Visible = true;
            ccref.ServiceClient cc = new ccref.ServiceClient();
            ccref.CardVerifier cvObject = new ccref.CardVerifier();
            
            cvObject = cc.CreditCardVerification(TextBox1.Text);
            if (cvObject.Validity == true)
            {
                
                Random rnd = new Random();
                int orderID = rnd.Next(1, 1000);

            }
            else
            {
                Label3.Text = "Invalid card information. Please try again.";
            }
                        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ccref.ServiceClient cc = new ccref.ServiceClient();
            ccref.CardVerifier cvObject = new ccref.CardVerifier();

            cvObject = cc.CreditCardVerification(TextBox1.Text);
            //if (cvObject.Validity == true)
            //{

                Random rnd = new Random();
                int orderID = rnd.Next(1, 1000);
                string email = TextBox4.Text;
                string address = TextArea1.InnerText;


                XmlDocument reg_n = new XmlDocument();
                String file_Loc = AppDomain.CurrentDomain.BaseDirectory + "//";
                String file_name = "Orders.xml";
                if (!System.IO.File.Exists(file_Loc + file_name))
                {
                    using (XmlWriter writer = XmlWriter.Create(@file_Loc + file_name))
                    {
                        XmlDeclaration declaration = reg_n.CreateXmlDeclaration("1.0", "UTF-8", "yes");

                        writer.WriteStartDocument();
                        writer.WriteStartElement("orders");

                        writer.WriteStartElement("order");
                        writer.WriteElementString("orderID", orderID.ToString());
                        writer.WriteElementString("email", email);
                        writer.WriteElementString("address", address);
                        writer.WriteEndElement();
                        writer.WriteEndElement();
                        member_home.masterRef.Service1Client r = new masterRef.Service1Client();
                        r.clearcart();
                        Label3.Text = "Order succesfully placed!";
                        Response.Redirect("ordersuccess.html");
                    }
                }
                else
                {
                    reg_n.Load(file_Loc + file_name);
                    // XmlElement root = reg.DocumentElement;
                    XmlElement order = reg_n.CreateElement("order");
                    XmlElement id = reg_n.CreateElement("orderID");
                    id.InnerText = orderID.ToString();
                    XmlElement email_element = reg_n.CreateElement("email");
                    email_element.InnerText = email;
                    XmlElement address_element = reg_n.CreateElement("address");
                    address_element.InnerText = address;
                    order.AppendChild(id);
                    order.AppendChild(email_element);
                    order.AppendChild(address_element);
                    
                    XmlNode rootElement = reg_n.SelectSingleNode("/orders");
                    rootElement.AppendChild(order);
                    reg_n.Save(file_Loc + file_name);
                    
                }
                member_home.masterRef.Service1Client r1 = new masterRef.Service1Client();
                r1.clearcart();
           
                Label3.Text = "Order succesfully placed!";
                Response.Redirect("ordersuccess.html");


                
            //}
            //else
            //{
                
            //    Label3.Text = "Invalid card information. Please try again.";
            //}
        }
    }
}