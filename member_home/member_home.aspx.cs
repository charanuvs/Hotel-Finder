using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace member_home
{
    public partial class _Default : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["data"];
            Label1.Text = myCookies["username"];

            catalog.Visible = (bool)Application["visibility_flag"];
            cart_block.Visible = (bool)Application["visibility_flag"];
            masterRef.Service1Client r = new masterRef.Service1Client();
            string cart = r.getitems(); // Getting the list of items in the cart from the cart service
            if (cart.Equals("empty"))   // If the cart is empty
            {
                Label22.Text = "0";
                ListBox1.Items.Clear(); // Clear the contents of the cart listbox
            }
                
            else
            {

                ListBox1.Items.Clear(); // Clear the listbox to update the cart
                string[] stringSeparators = new string[] { "-----------1----------" }; // to split the cart into items
                string[] stringSeparators1 = new string[] { "\n" };

                string[] items = cart.Split(stringSeparators1, StringSplitOptions.RemoveEmptyEntries);


                // Current total value of cart is calculated here
                for (int i = 0; i < items.Length; i++)
                {
                    ListBox1.Items.Add(items[i]);

                }
                //Label3.Text = sum.ToString();           // total is displayed

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string zip = null;
            string url = "http://www.webservicex.net/uszip.asmx/GetInfoByCity?USCity=" + TextBox1.Text;

            WebRequest httpRequest2 = WebRequest.Create(url);    // creating a http request

            httpRequest2.Method = "GET";
            HttpWebResponse httpResponse2 = (HttpWebResponse)httpRequest2.GetResponse();  // getting http response

            if (httpResponse2.StatusCode == HttpStatusCode.OK)   // Checking if response is OK
            {
                Stream responseStream = httpResponse2.GetResponseStream();
                StreamReader streamReaderObj = new StreamReader(responseStream, Encoding.UTF8);
                XmlDocument xmlDoc = new XmlDocument();     // Creating a new xml document
                xmlDoc.LoadXml(streamReaderObj.ReadToEnd());    // Loading the xml document

                XmlNodeList xmlNodeList = xmlDoc.SelectNodes("//*");    // selecting all nodes from xml document

                XmlNode xmlNode = xmlNodeList[4];

                zip = xmlNode.InnerText;
                Application["visibility_flag"] = true;
                generate_content(zip);
                
            }
       

        }
        public void generate_content(string zip)
        {
            hotelFinder.ServiceClient hotelfind = new hotelFinder.ServiceClient();
            string[] hotel_list = hotelfind.HotelFinder(zip);
            //error.Text = hotel_list.Length.ToString();
            Label2.Text = "1.   " + hotel_list[0];
            Label3.Text = hotel_list[1];
            Label4.Text = "2.   " + hotel_list[2];
            Label5.Text = hotel_list[3];
            Label6.Text = "3.   " + hotel_list[4];
            Label7.Text = hotel_list[5];
            Label8.Text = "4.   " + hotel_list[6];
            Label9.Text = hotel_list[7];
            Label10.Text = "5.   " + hotel_list[8];
            Label11.Text = hotel_list[9];
            Label12.Text = "6.  " + hotel_list[10];
            Label13.Text = hotel_list[11];
            Label14.Text = "7.  " + hotel_list[12];
            Label15.Text = hotel_list[13];
            Label16.Text = "8.  " + hotel_list[14];
            Label17.Text = hotel_list[15];
            Label18.Text = "9.  " + hotel_list[16];
            Label19.Text = hotel_list[17];
            Label20.Text = "10. " + hotel_list[18];
            Label21.Text = hotel_list[19];

            catalog.Visible = (bool)Application["visibility_flag"];
            cart_block.Visible = (bool)Application["visibility_flag"];
 
        }

        void add(string name,string price)
        {
            masterRef.Service1Client r = new masterRef.Service1Client();
            try
            {
                string result = r.addtocart(name, Convert.ToInt32(price));  // The arguments here can be dynamically generated in a real time application

            }
            catch (Exception ex) { Label22.Text = "in tryit" + ex.ToString(); }

            string cart = r.getitems(); // Getting the list of items in the cart from the cart service
            if (cart.Equals("empty"))   // If the cart is empty
            {
                Label22.Text = "0";
                ListBox1.Items.Clear(); // Clear the contents of the cart listbox
            }

            else
            {

                ListBox1.Items.Clear(); // Clear the listbox to update the cart
                string[] stringSeparators = new string[] { "-----------1----------" }; // to split the cart into items
                string[] stringSeparators1 = new string[] { "\n" };

                string[] items = cart.Split(stringSeparators1, StringSplitOptions.RemoveEmptyEntries);


                // Current total value of cart is calculated here
                for (int i = 0; i < items.Length; i++)
                {
                    ListBox1.Items.Add(items[i]);

                }
                //Label3.Text = sum.ToString();           // total is displayed

            }
            Label22.Text = (Convert.ToInt32(Label22.Text) + Convert.ToInt32(price)).ToString();
            
        }

        void remove(string hotel,string price)
        {

            masterRef.Service1Client r = new masterRef.Service1Client();
            bool deletion = r.deletefromcart(hotel);   // Deteting the "Hotel-1" entry from the cart

            string cart = r.getitems(); // Getting the list of items in the cart from the cart service
            if (cart.Equals("empty"))   // If the cart is empty
            {
                Label22.Text = "0";
                ListBox1.Items.Clear(); // Clear the contents of the cart listbox
            }

            else
            {

                ListBox1.Items.Clear(); // Clear the listbox to update the cart
                string[] stringSeparators = new string[] { "-----------1----------" }; // to split the cart into items
                string[] stringSeparators1 = new string[] { "\n" };

                string[] items = cart.Split(stringSeparators1, StringSplitOptions.RemoveEmptyEntries);


                // Current total value of cart is calculated here
                for (int i = 0; i < items.Length; i++)
                {
                    ListBox1.Items.Add(items[i]);

                }
                //Label3.Text = sum.ToString();           // total is displayed

            }
            if ((Convert.ToInt32(Label22.Text) > 0) && deletion)
                Label22.Text = (Convert.ToInt32(Label22.Text) - Convert.ToInt32(price)).ToString();
 
        }

        

        protected void add4_Click(object sender, EventArgs e)
        {
            add(Label8.Text, "250");
        }

        protected void add3_Click(object sender, EventArgs e)
        {
            add(Label6.Text, "170");
        }

        protected void add2_Click(object sender, EventArgs e)
        {
            add(Label4.Text, "150");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            add(Label2.Text,"200");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            remove(Label2.Text,"200");
        }

        protected void add5_Click(object sender, EventArgs e)
        {
            add(Label10.Text, "210");
        }

        protected void add6_Click(object sender, EventArgs e)
        {
            add(Label12.Text, "200");
        }

        protected void add7_Click(object sender, EventArgs e)
        {
            add(Label14.Text, "250");
        }

        protected void add8_Click(object sender, EventArgs e)
        {
            add(Label16.Text, "150");
        }

        protected void add9_Click(object sender, EventArgs e)
        {
            add(Label18.Text, "130");
        }

        protected void add10_Click(object sender, EventArgs e)
        {
            add(Label20.Text, "100");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            remove(Label4.Text, "150");
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            remove(Label6.Text, "170");
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            remove(Label8.Text, "250");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            remove(Label10.Text, "210");
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            remove(Label12.Text, "200");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            remove(Label14.Text, "250");
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            remove(Label16.Text, "150");
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            remove(Label18.Text, "130");
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            remove(Label20.Text, "100");
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            
            masterRef.Service1Client r = new masterRef.Service1Client();
            r.clearcart();  // clearcart() function in the service is called

            string cart = r.getitems(); // Getting the list of items in the cart from the cart service
            if (cart.Equals("empty"))   // If the cart is empty
            {
                Label3.Text = "0";
                ListBox1.Items.Clear(); // Clear the contents of the cart listbox
            }

            else
            {

                ListBox1.Items.Clear(); // Clear the listbox to update the cart
                string[] stringSeparators = new string[] { "-----------1----------" }; // to split the cart into items
                string[] stringSeparators1 = new string[] { "\n" };

                string[] items = cart.Split(stringSeparators1, StringSplitOptions.RemoveEmptyEntries);


                // Current total value of cart is calculated here
                for (int i = 0; i < items.Length; i++)
                {
                    ListBox1.Items.Add(items[i]);

                }
                //Label3.Text = sum.ToString();           // total is displayed

            }
            Label22.Text = "0";
            //

        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            string[] cart = new string[ListBox1.Items.Count];

            int i = 0;

            for (i = 0; i < cart.Length; i++)
            {
                cart[i] = ListBox1.Items[i].Text;
            }
            if (Application["cart"] != null)
                Application.Set("cart", cart);
            else
                Application.Add("cart", cart);

            if (Application["sum"] != null)
                Application.Set("sum", Label22.Text);
            else
                Application.Add("sum", Label22.Text);
            Response.Redirect("member_checkout.aspx");
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