using MySqlX.XDevAPI;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4_december
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.Enabled = false;

            }
            else
            {
                Button1.Enabled = true;
            }

            //add to griview
            Session["addtoproduct"] = "false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("nid");
            dt.Columns.Add("nim");
            dt.Columns.Add("nname");
            dt.Columns.Add("nprice");
            //   dt.Columns.Add("tprice");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    SqlConnection con = new SqlConnection("Server=(local);Database=User;Trusted_Connection=True;");
                    SqlDataAdapter da = new SqlDataAdapter("Select * from Nft where NftId=" + Request.QueryString["id"], con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    dr["sno"] = sr + 1;
                    dr["nid"] = ds.Tables[0].Rows[0]["NftId"].ToString();
                    dr["nim"] = ds.Tables[0].Rows[0]["Image"].ToString();
                    dr["nname"] = ds.Tables[0].Rows[0]["Name"].ToString();
                    dr["nprice"] = ds.Tables[0].Rows[0]["Price"].ToString();

                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button1.Enabled = true;
                    //  GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    // GridView1.FooterRow.Cells[4].Text = grandtotal.ToString();
                    Response.Redirect("AddToCart.aspx");
                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];




                GridView1.DataSource = dt;
                GridView1.DataBind();
                //if(GridView1.Rows.Count>0)
                //{
                //    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                //  //  GridView1.FooterRow.Cells[4].Text = grandtotal.ToString();

                //}
            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = OrderDate;
            orderid();
        }
       

        public void orderid()
        {
            String alpha = "qwertyuiopasdfghjklzxcvbnm123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];
            }
            string orderid;
            orderid = "Order_Id:" + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["Orderid"] = orderid;


        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Store.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i=0;i<=dt.Rows.Count-1;i++)
            {
                int sr;
                int sr1;
                string qdata;
                String dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if(sr==sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }    

            }

            for(int i=1;i<=dt.Rows.Count;i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("AddToCart");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Store.aspx");
        }
    }
}