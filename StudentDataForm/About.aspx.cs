using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
            if (!string.IsNullOrEmpty(Session["User"] as string))
            {
                if (!IsPostBack)
                {
                    try
                    {
                        string LoginMessage = Session["LogInData"] as string; ;
                        if (LoginMessage != "")
                        {
                            Label1.Text = LoginMessage;
                            Label1.Visible = true;
                        }

                        CountryList.DataSource = GetData("xp_getCountry", null);
                        CountryList.DataBind();

                        ListItem liCountry = new ListItem("Select Country", "-1");
                        CountryList.Items.Insert(0, liCountry);

                        ListItem liState = new ListItem("select State", "-1");
                        StateList.Items.Insert(0, liState);

                        ListItem liCity = new ListItem("select City", "-1");
                        CityList.Items.Insert(0, liCity);

                        StateList.Enabled = false;
                        CityList.Enabled = false;



                    }
                    catch (Exception ex)
                    {
                        string strRedirect;
                        strRedirect = Request["~/ErrorPage.aspx"];
                        if (strRedirect == null)
                            strRedirect = $"~/ErrorPage.aspx?Message={ex.Message}";
                        Server.Transfer(strRedirect);
                    }
                }
            }
            else
            {
                Response.Redirect("~/LoginorSignUP.aspx");
            }
        }

        protected void CountryList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CountryList.SelectedIndex == 0)
            {
                StateList.SelectedIndex = -1;
                StateList.Enabled = false;
                CityList.SelectedIndex = -1;
                CityList.Enabled = false;
            }
            else
            {
                StateList.Enabled = true;
                SqlParameter parameter = new SqlParameter("@CountryId", CountryList.SelectedValue);
                DataSet DS = GetData("xp_getState", parameter);

                StateList.DataSource = DS;
                StateList.DataBind();

                ListItem liState = new ListItem("select State", "-1");
                StateList.Items.Insert(0, liState);
            }
        }

        protected void StateList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (StateList.SelectedIndex == 0)
            {
                CityList.SelectedIndex = -1;
                CityList.Enabled = false;
            }
            else
            {
                CityList.Enabled = true;
                SqlParameter parameter = new SqlParameter("@StateId", StateList.SelectedValue);
                DataSet DS = GetData("xp_getCity", parameter);

                CityList.DataSource = DS;
                CityList.DataBind();

                ListItem liCity = new ListItem("select City", "-1");
                CityList.Items.Insert(0, liCity);
            }
        }

        protected void CityList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            string cs = "Data Source=LAPTOP-OB21UUJ4;Initial Catalog=StudentForm;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }
            DataSet DS = new DataSet();
            da.Fill(DS);
            return DS;
        }
    }
}