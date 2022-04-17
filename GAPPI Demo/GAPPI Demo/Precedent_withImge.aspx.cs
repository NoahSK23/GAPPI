using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GAPPI_Demo
{
    public partial class Precedent_noImge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblPrecedentName.Text = "Glacier Museum";
            lblLocation.Text = "Fjaerland, Norway";
            lblDesigner.Text = "Sverre Fehn";
            lblDate.Text = "1991";
            lblSuggestedBy.Text = "SA";
            lblDescription.Text = "Remote museum along Norway's western fjords. Sophisticated relstionship to natural circumstance.";
        }
    }
}