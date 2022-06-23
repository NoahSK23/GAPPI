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
                user.RoleID = 2;
                switch (user.RoleID)
                {
                    case 1:     //student
                        adminLink.Visible = false;
                        addPrecedent.Visible = false;
                        break;
                    case 2:     //faculty - can only see add button
                        adminLink.Visible = false;
                        break;
                    default:    //admin - can see everything
                        break;
                }
                hypUser.Text = user.CommonName;
            }
        }
    }
}