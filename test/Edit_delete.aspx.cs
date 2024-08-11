using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test
{
    public partial class Edit_delete : System.Web.UI.Page
    {

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

           

            showemployee();
        }

        private void clear()
        {
            fname.Text = lname.Text = gender.Text = phone.Text = dob.Text = jdate.Text = address.Text = position.Text = salary.Text = qualification.Text = string.Empty;
        }
        private void showemployee()
        {
            string sql = "select * from employee";
            SqlDataAdapter da = new SqlDataAdapter(sql,Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            string sql = "select * from employee where id='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                    fname.Text = dr["fname"].ToString();
                    lname.Text = dr["lname"].ToString();
                    gender.Text = dr["gender"].ToString();
                    phone.Text = dr["phone"].ToString();
                    dob.Text = dr["dob"].ToString();
                    jdate.Text = dr["jdate"].ToString();
                    address.Text = dr["address"].ToString();
                    position.Text = dr["position"].ToString();
                    salary.Text = dr["salary"].ToString();
                    qualification.Text = dr["qualification"].ToString();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.Validate("validationgroup");
            if (Page.IsValid)
            {
                string sql = "delete from employee where id='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                clear();
                showemployee();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted Successfully')", true);

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Validate("validationgroup");
            if (Page.IsValid)
            {
                Page.Validate("myvalidationgroup");
                if (Page.IsValid)
                {
                    string sql = "update employee set fname='" + fname.Text + "',lname='" + lname.Text + "',gender='" + gender.SelectedValue.ToString() + "'," +
                    "phone='" + phone.Text + "',dob='" + dob.Text.ToString() + "',jdate='" + jdate.Text.ToString() + "',address='" + address.Text + "'," +
                    "position='" + position.SelectedItem.ToString() + "',salary='" + salary.Text + "',qualification='" + qualification.SelectedItem.ToString() + "'where id='" + TextBox1.Text + "'";
                    SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    clear();
                    showemployee();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);

                }
                else
                {

                    
                }
            }
        }
    }
}