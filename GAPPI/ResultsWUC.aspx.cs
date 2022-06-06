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
                List<GAPPIClassLibrary.Precedent> precedents = new List<GAPPIClassLibrary.Precedent> {
                        new GAPPIClassLibrary.Precedent
                        {
                            Title = "Academy Of Art", Location = "Hangzhou", Date = "2009", Designer = "Wang Shu"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            Title = "ALCOA Forecast Garden", Location = "Los Angeles, California", Date = "1957", Designer = "Garrett Eckbo"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            Title = "Brazilian Museum of Sculpture", Location = "Sao Paulo, Brazil", Date = "1988", Designer = "Paulo Mendes da Rocha"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        }
                    };
                foreach (GAPPIClassLibrary.Precedent precedent in precedents)
                {
                    SearchResult ctrl = (SearchResult)LoadControl("SearchResult.ascx");
                    ctrl.Href = "Precedent.aspx";
                    ctrl.PrecedentID = 1;
                    ctrl.Title = precedent.Title;
                    ctrl.Location = precedent.Location;
                    ctrl.Date = precedent.Date;
                    ctrl.Designer = precedent.Designer;
                    ctrl.SuggestedBy = "NK";
                    ctrl.DataBind();
                    phResults.Controls.Add(ctrl);
                }
            }
        }
    }
}