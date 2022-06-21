using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                user.IsAdmin = true;
                if (!user.IsAdmin)
                {
                    adminLink.Visible = false;
                    addPrecedent.Visible = false;
                }
                hypUser.Text = user.CommonName;
            }
        }
    }
}