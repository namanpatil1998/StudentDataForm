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
    public partial class LoginorSignUP : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-OB21UUJ4;Initial Catalog=StudentForm;Integrated Security=True"))
                {
                    SqlCommand com = new SqlCommand("xp_signupForm", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("username", username.Text);
                    SqlParameter p2 = new SqlParameter("password", password.Text);
                    SqlParameter p3 = new SqlParameter("email", email.Text);
                    SqlParameter p4 = new SqlParameter("SignupFlag", true);

                    com.Parameters.Add(p1);
                    com.Parameters.Add(p2);
                    com.Parameters.Add(p3);
                    com.Parameters.Add(p4);
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Signup')", true);
                }

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

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateUser(L_username.Text, L_password.Text))
                {
                    FormsAuthenticationTicket tkt;
                    string cookiestr;
                    HttpCookie ck;
                    tkt = new FormsAuthenticationTicket(1, L_username.Text, DateTime.Now,
                    DateTime.Now.AddMinutes(30), chkPersistCookie.Checked, $"{L_username.Text} : Data saved in cookie");
                    cookiestr = FormsAuthentication.Encrypt(tkt);
                    ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);
                    if (chkPersistCookie.Checked)
                        ck.Expires = tkt.Expiration;
                    ck.Path = FormsAuthentication.FormsCookiePath;
                    Response.Cookies.Add(ck);

                    string strRedirect;
                    strRedirect = Request["~/About.aspx"];
                    string message = "Logged in Successfully!!!";
                    this.Session["User"] = username.Text;
                    this.Session["LogInData"] = $"Hey {username.Text}, You {message}";
                    if (strRedirect == null)
                        strRedirect = $"~/About.aspx";
                    Response.Redirect(strRedirect);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid User!!! Please login with valid credentials.')", true);
                }
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

        protected void LoginPage_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        private bool ValidateUser(string userName, string passWord)
        {
            try
            {
                // Check for invalid userName.
                // userName must not be null and must be between 1 and 10 characters.
                if ((null == userName) || (0 == userName.Length) || (userName.Length > 10))
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
                    return false;
                }

                // Check for invalid passWord.
                // passWord must not be null and must be between 1 and 10 characters.
                if ((null == passWord) || (0 == passWord.Length) || (passWord.Length > 10))
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
                    return false;
                }
                using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-OB21UUJ4;Initial Catalog=StudentForm;Integrated Security=True"))
                {
                    SqlCommand com = new SqlCommand("xp_signupForm", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("username", L_username.Text);
                    SqlParameter p2 = new SqlParameter("password", L_password.Text);
                    SqlParameter p3 = new SqlParameter("SignupFlag", false);
                    com.Parameters.Add(p1);
                    com.Parameters.Add(p2);
                    com.Parameters.Add(p3);
                    con.Open();
                    DataTable dt = new DataTable();
                    dt.Load(com.ExecuteReader());
                    con.Close();
                    if (dt.Rows[0].Field<string>("userLoggedIn") == L_username.Text)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch
            {
                throw;
            }
        }

    }
}