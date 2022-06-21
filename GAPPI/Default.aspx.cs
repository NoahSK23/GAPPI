using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace GAPPI
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                //HtmlControl active = FindControl("home") as HtmlControl; another way to make link active... can use this or js method
                //active.Attributes.Add("class", "nav-link active");
            }
        }
    }
}