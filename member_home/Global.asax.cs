using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using member_home;

namespace member_home
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            AuthConfig.RegisterOpenAuth();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            Application.Add("visibility_flag", false);
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown
            Application["visibility_flag"] = false;
            masterRef.Service1Client r = new masterRef.Service1Client();
            r.clearcart();
        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }
        void Session_End(Object sender, EventArgs E)
        {
            Application["visibility_flag"] = false;

            masterRef.Service1Client r = new masterRef.Service1Client();
            r.clearcart();
        }
    }
}
