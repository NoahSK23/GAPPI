using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GAPPI
{
    public partial class ResultsWUC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SearchResult ctrl = (SearchResult)LoadControl("SearchResult.ascx");
                ctrl.Href = "Precedent.aspx";
                ctrl.PrecedentID = 1;
                ctrl.Title = "Title test";
                ctrl.Location = "Location Test";
                ctrl.Date = "1997";
                ctrl.Designer = "Designer is me";
                ctrl.SuggestedBy = "NK";
                ctrl.DataBind();
                phResults.Controls.Add(ctrl);
            }
        }
    }
}