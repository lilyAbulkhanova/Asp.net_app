using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4_december
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["username"]!=null)
                {
                    Response.Redirect("Store.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string con = "Server=(local);Database=User;Trusted_Connection=True;";
            SqlDataAdapter sda = new SqlDataAdapter("Select * from tblstudent where EmailID='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(TextBox1.Text=="Admin" & TextBox2.Text=="123")
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("Admin.aspx");
            }
            else if(dt.Rows.Count==1)
            {
                Session["username"] =TextBox1.Text;
                Session["buyitems"] = null;
                Response.Redirect("Store.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Неправильный логин или пароль!";
            }
           // SqlConnection con = new SqlConnection(strcon);
           // SqlDataAdapter
           // SqlCommand com = new SqlCommand("splogin", con);
           // com.CommandType = System.Data.CommandType.StoredProcedure;
           // SqlParameter sp1 = new SqlParameter("EmailID", TextBox1.Text);
           // SqlParameter sp2 = new SqlParameter("Password", TextBox2.Text);
           // com.Parameters.Add(sp1);
           // com.Parameters.Add(sp2);
           // con.Open();
           // SqlDataReader dr = com.ExecuteReader();

           // if(TextBox1.Text== "Admin" && TextBox2.Text=="root")
           // {
           //     Label1.Text = "Aдмин успешно вошел в систему";
           //     Label1.ForeColor = System.Drawing.Color.Green;
                
           // }
           //else if (dr.HasRows)
           // {
           //     dr.Read();
           //     Label1.Text = "Login successful.";
           //     Label1.Visible = true;
           // }
           // else
           // {
           //     Label1.Text = "Invalid username or password.";
           //     Label1.Visible = true;
           //     Label1.ForeColor = System.Drawing.Color.Red;
           // }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}