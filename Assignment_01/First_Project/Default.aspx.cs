using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_Project
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click_Click(object sender, EventArgs e)
        {
            lbl_Output.Visible = true;
            lbl_Output.Text = "Hello ASP.NET";
            lbl_Output.ForeColor = System.Drawing.Color.Red;
        }
    }
}