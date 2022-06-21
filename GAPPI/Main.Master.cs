using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using GAPPIClassLibrary;

namespace GAPPI
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                User user = new User();
                user.CommonName = "Noah Klinger";
                user.RoleID = 3; //1 is student, 2 is faculty, 3 is Admin.
                if (!user.IsAdmin)
                {
                    HtmlControl control = FindControl("adminLink") as HtmlControl;
                    control.Attributes.Add("class", "d-none");
                    HtmlControl control1 = FindControl("addPrecedent") as HtmlControl;
                    control1.Attributes.Add("class", "d-none");
                    hypUser.Text = user.CommonName;
                }
            }
        }
    }
}