using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STUDENT_SCHOOL_MANAGEMENT.Pages
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void quit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MainPage.aspx");
        }
    }
}