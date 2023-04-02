using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace STUDENT_SCHOOL_MANAGEMENT.AdminPanel
{
    public partial class Plantime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Updatebtn_Click(object sender, EventArgs e)
        {
            string complete = "מערכת שעות לסטודנט עודכנה";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conection"].ConnectionString);
            con.Open();
            string query = "INSERT INTO Admin_Plantime (Lesson1,Lesson2,Lesson3,Lesson4,Lesson5,Lesson6,Lesson7) VALUES (@Les1,@Les2,@Les3,@Les4,@Les5,@Les6,@Les7)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Les1", Lasson1text.Text);
            cmd.Parameters.AddWithValue("@Les2", Lasson2text.Text);
            cmd.Parameters.AddWithValue("@Les3", Lasson3text.Text);
            cmd.Parameters.AddWithValue("@Les4", Lasson4text.Text);
            cmd.Parameters.AddWithValue("@Les5", Lasson5text.Text);
            cmd.Parameters.AddWithValue("@Les6", Lasson6text.Text);
            cmd.Parameters.AddWithValue("@Les7", Lasson7text.Text);
            cmd.ExecuteNonQuery();
            con.Close();    
            msg.Text = complete;
            msg.Visible= true;
        }
    }
}