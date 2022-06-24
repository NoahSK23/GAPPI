using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GAPPIClassLibrary;

namespace GAPPI
{
    public partial class Admin : System.Web.UI.Page
    {
        static List<GAPPIClassLibrary.Precedent> precedents = new List<GAPPIClassLibrary.Precedent> {
                        new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 1, Title = "Academy Of Art", Location = "Hangzhou", Date = "2009", Designer = "Wang Shu"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 2, Title = "ALCOA Forecast Garden", Location = "Los Angeles, California", Date = "1957", Designer = "Garrett Eckbo"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 3, Title = "Brazilian Museum of Sculpture", Location = "Sao Paulo, Brazil", Date = "1988", Designer = "Paulo Mendes da Rocha"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 4, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 5, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },
                        new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 6, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID =7, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 8, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 9, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 10, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 11, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 12, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 13, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 14, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 15, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 16, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 17, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 18, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        },new GAPPIClassLibrary.Precedent
                        {
                            PrecedentID = 19, Title = "Casa de Vidro", Location = "Sao Paulo, Brazil", Date = "1951", Designer = "Lena Bo Bardi"
                        }
                    };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gvAllPrecedents.DataSource = precedents;
                gvAllPrecedents.DataBind();
                gvAllPrecedents.UseAccessibleHeader = true;
                gvAllPrecedents.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                gvAllPrecedents.UseAccessibleHeader = true;
                gvAllPrecedents.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void btnDeleteTest_Click(object sender, EventArgs e)
        {
            if (precedents.Count > 0)
            {
                var deleteMe = precedents.FirstOrDefault(x => x.PrecedentID == int.Parse(hdnID.Value));
                precedents.Remove(deleteMe);
                gvAllPrecedents.DataSource = precedents;
                gvAllPrecedents.DataBind();
                gvAllPrecedents.UseAccessibleHeader = true;
                gvAllPrecedents.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
    }
}