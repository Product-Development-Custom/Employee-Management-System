using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Empshow();
            Managerc();
            Salarysum();
            Bonussum();

            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write(Session["id"]);
            }
        }

        private void Empshow()
        {
            string sql = "select Count(*) from Employee";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            emplb.Text = dt.Rows[0][0].ToString();


        }

        private void Managerc()
        {
            string pos = "Manager";
            string sql = "select Count(*) from Employee where position='" + pos+ "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            manalb.Text = dt.Rows[0][0].ToString();

        }

        private void Salarysum()
        {
            string sql = "select Sum(totalsalary) from salary";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            sallb.Text = dt.Rows[0][0].ToString();
        }


        private void Bonussum()
        {
            string sql = "select Sum(bonus) from salary";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            bonlb.Text = dt.Rows[0][0].ToString();
        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}