using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentDataForm
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string LoginMessage = Session["LogInData"] as string; ;
            if (LoginMessage != "")
            {
                Label1.Text = LoginMessage;
                Label1.Visible = true;
            }
        }
    }
}