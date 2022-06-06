using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.ComponentModel;

namespace GAPPI
{
    public partial class SearchResult : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Category("Attributes")]
        public string Href
        {
            get { return hypPrecedent.NavigateUrl; }
            set { hypPrecedent.NavigateUrl = value; }
        }
        [Category("Attributes")]
        public int PrecedentID
        {
            get { return int.Parse(hfPrecedentID.Value); }
            set { hfPrecedentID.Value = value.ToString(); }
        }
        [Category("Attributes")]
        public string Title
        {
            get { return lblTitle.Text; }
            set { lblTitle.Text = value; }
        }
        [Category("Attributes")]
        public string Location
        {
            get { return lblLocation.Text; }
            set { lblLocation.Text = value; }
        }
        [Category("Attributes")]
        public string Date
        {
            get { return lblDate.Text; }
            set { lblDate.Text = value; }
        }
        [Category("Attributes")]
        public string Designer
        {
            get { return lblDesigner.Text; }
            set { lblDesigner.Text = value; }
        }
        [Category("Attributes")]
        public string SuggestedBy
        {
            get { return lblSuggestedBy.Text; }
            set { lblSuggestedBy.Text = value; }
        }
    }
}