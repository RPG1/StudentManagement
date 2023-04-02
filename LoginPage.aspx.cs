using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace STUDENT_SCHOOL_MANAGEMENT
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logbtn_Click(object sender, EventArgs e)
        {
            string errormsg = "שם משתמש או סיסמה אינם נכונים";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conection"].ConnectionString);
            con.Open();
            string sql = "SELECT * FROM Student_Login WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@username", nametext.Text);
            cmd.Parameters.AddWithValue("@password", passtext.Text);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable ta = new DataTable();
            ad.Fill(ta);
            if (ta.Rows.Count > 0)
            {
                Response.Redirect("Pages/Students.aspx");
                nametext.Text = "";
                passtext.Text = "";
                error.Text = "";
                error.Visible = false;
                con.Close();

            }
            else
            {
                error.Text = errormsg;
                error.Visible = true;
            }
        }

        protected void adminbtn_Click(object sender, EventArgs e)
        {
            string errormsg = "אתה לא מנהל אינך רשאי להיכנס";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conection"].ConnectionString);
            con.Open();
            string sql = "SELECT * FROM Student_Login WHERE username=@username AND password=@password";
            SqlCommand Admincmd = new SqlCommand(sql,con);
            Admincmd.Parameters.AddWithValue("@username",nametext.Text);
            Admincmd.Parameters.AddWithValue("@password", passtext.Text);
            SqlDataAdapter Adminadap = new SqlDataAdapter(Admincmd);
            DataTable Atable = new DataTable();
            Adminadap.Fill(Atable);
            if (Atable.Rows.Count > 0)
            {
                string user = Atable.Rows[0]["username"].ToString();
                if (user.ToLower() == "admin")
                {
                    Response.Redirect("AdminPanel/Plantime.aspx");
                    nametext.Text = "";
                    passtext.Text = "";
                    error.Text = "";
                    error.Visible = false;
                    con.Close();

                }
                else
                {
                    error.Text = errormsg;
                    error.Visible = true;
                }

            }
            else
            {
                error.Text = errormsg;
                error.Visible = true;
            }
        }
    }
}