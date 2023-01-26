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
    public partial class Store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]!=null)
            {
                Label4.Text= "Вошел в систему:" + Session["username"].ToString();
                HyperLink1.Visible= false;
                Button2.Visible = true;
            }
            else
            {
                Label4.Text = "Привет, заходи здесь...";
                HyperLink1.Visible = true;
                Button2.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Store.aspx");
            Label4.Text = "Вы успешно вышли из системы";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=(local);Database=User;Trusted_Connection=True;");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Nft where(Name like '%" + TextBox1.Text + "%') or (Price like '%" + TextBox1.Text + "%')", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart") 
            {
              //  DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddToCart.aspx?id="+e.CommandArgument.ToString());

            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}