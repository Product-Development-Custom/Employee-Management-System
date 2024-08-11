using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace test
{
    public partial class Bonus : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\Documents\\project.mdf;Integrated Security=True;Connect Timeout=30");


        protected void Page_Load(object sender, EventArgs e)
        {
                if (Session["id"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write(Session["id"]);
                }

           
            showbonus();
            
        }
        private void clear()
        {
            bname.Text = bamount.Text = TextBox1.Text = string.Empty;
        }

        private void showbonus()
        {
            string sql = "select * from bonus";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
                Page.Validate("myvalidationgroup");
                if (Page.IsValid)
                {
                    string sql = "insert into bonus values('" + bname.Text + "','" + bamount.Text + "')";
                    SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    showbonus();
                    clear();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

            }
            else
                {

                    clear();
                }

            
            
        }

        protected void delete_Click(object sender, EventArgs e)
        {

            Page.Validate("validationgroup");
            if (Page.IsValid)
            {
                string sql = "delete from bonus where id='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            clear();
            showbonus();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted Successfully')", true);

            }
            else
            {
                clear();
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
        Page.Validate("validationgroup");
            if (Page.IsValid)
            {
                Page.Validate("myvalidationgroup");
                if (Page.IsValid)
                {
                    string sql = "update bonus set bname='" + bname.Text + "',bamount='" + bamount.Text + "' where id='" + TextBox1.Text + "'";
                    SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    clear();
                    showbonus();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);

                }
                else
                {

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql = "select * from bonus where id='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                bname.Text = dr["bname"].ToString();
                bamount.Text = dr["bamount"].ToString();

            }
        }
    }
}