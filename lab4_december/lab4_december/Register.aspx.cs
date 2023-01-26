using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4_december
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = "Server=(local);Database=User;Trusted_Connection=True;";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("registration", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter("FullName", TextBox1.Text);
            SqlParameter sp2 = new SqlParameter("Address", TextBox2.Text);
            SqlParameter sp3 = new SqlParameter("EmailID", TextBox3.Text);
            SqlParameter sp4 = new SqlParameter("Password", TextBox4.Text);
            com.Parameters.Add(sp1);
            com.Parameters.Add(sp2);
            com.Parameters.Add(sp3);
            com.Parameters.Add(sp4);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            con.Close();
            Label1.Text = "Registration Successful";
            Label1.Visible = true;
            Response.Redirect("LoginUser.aspx");
        }
    }
}