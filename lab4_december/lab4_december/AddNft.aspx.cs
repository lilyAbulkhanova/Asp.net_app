using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4_december
{
    public partial class AddNft : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=(local);Database=User;Trusted_Connection=True;");
            if(FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Nft values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + filepath + "','" + TextBox4.Text + "')",con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Store.aspx");
            }
        }
    }
}