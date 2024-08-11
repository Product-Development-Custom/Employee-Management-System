using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Printing;
using System.Security.Policy;
using System.Xml.Linq;

namespace test
{
    public partial class Salary : System.Web.UI.Page
    {
        int DP = 0, DL = 0, DB = 0, TT = 0, GTR = 0, BA = 0;
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
            


            if (!Page.IsPostBack)
            {
                showid();
                showbonus();
                showattendance();
                showsalarygrid();
            }
          
        }

        private void clear()
        {
            empid.Text = empsalary.Text = empname.Text = bamount.Text = bonus.Text = attendanceid.Text = present.Text = absence.Text = leave.Text = paydate.Text = string.Empty;
        }
        private void showsalarygrid()
        {
            string sql = "select * from salary";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void showid()
        {
            string sql = "select id,salary,fname + ' ' + lname as fullname from Employee";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            empid.DataSource = dt;
            empid.DataTextField = "id";
            empid.DataValueField = "fullname";      
            empid.DataBind();
            empid.Items.Insert(0, new ListItem("Select Id", ""));
            
        }

        private void showsalary()
        {
            
            string sql = "select salary from employee where id='" +empid.SelectedItem.Text+ "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                empsalary.Text = dr["salary"].ToString();

            }

        }

        private void showbonus()
        {
            string sql = "select bname,bamount from bonus";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            bonus.DataSource = dt;
            bonus.DataTextField = "bname";
            bonus.DataValueField = "bamount";
            bonus.DataBind();
            bonus.Items.Insert(0, new ListItem("Select Bonus", ""));

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Page.Validate("validationg");
            Page.Validate("myvalidationgroup");
            if (Page.IsValid)
            {
              
               
                    Page.Validate("validationgroup");
                    if (Page.IsValid)
                    {


                        string sql = "insert into salary values('" + empid.SelectedItem.Text + "','" + empname.Text + "','" + empsalary.Text + "','" + bamount.Text + "','" + totalsalary.Text + "','" + paydate.Text.ToString() + "')";
                        SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        showsalarygrid();
                        clear();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);



                }
            }
        }

        private void showattendance()
        {
            string sql = "select empname from attendance";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            attendanceid.DataSource = dt;
            attendanceid.DataValueField = "empname";
            attendanceid.DataBind();
            attendanceid.Items.Insert(0, new ListItem("Select Employee", ""));
        }

        private void showday()
        {

            string sql = "select * from attendance where empname='" + attendanceid.SelectedItem.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                present.Text = dr["present"].ToString();
                absence.Text = dr["absence"].ToString();
                leave.Text = dr["leave"].ToString();


            }

        }
        protected void load_Click(object sender, EventArgs e)
        {
            
            Page.Validate("myvalidationgroup");
            if (Page.IsValid)
            {
                empname.Text = empid.Text;
                bamount.Text = bonus.Text;
                showsalary();
                showday();




                DP = Convert.ToInt32(present.Text);
                DL = Convert.ToInt32(leave.Text);
                DB = Convert.ToInt32(empsalary.Text) / 28;
                TT = ((DB) * DP) + ((DB / 2) * DL);
                BA = Convert.ToInt32(bamount.Text);
                GTR = TT + BA;
                totalsalary.Text = GTR.ToString();
            }

        }

      
    }
}