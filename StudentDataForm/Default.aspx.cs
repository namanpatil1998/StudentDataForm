using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentDataForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["User"] as string))
            {
                if (!IsPostBack)
                {

                }
            }
            else
            {
                Response.Redirect("~/LoginorSignUP.aspx");
            }
        }

    }
}
