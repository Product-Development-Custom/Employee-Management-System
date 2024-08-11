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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\Documents\\project.mdf;Integrated Security=True;Connect Timeout=30");

        private void clear()
        {
            fname.Text = lname.Text = gender.Text = phone.Text = dob.Text = jdate.Text = address.Text = position.Text = salary.Text = qualification.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string sql = "insert into employee values('"+fname.Text+"','"+lname.Text+"','" + gender.SelectedItem.ToString()+"','"+phone.Text+"','"+ dob.Text.ToString()+"','"+ jdate.Text.ToString()+"','"+address.Text+"','"+ position.SelectedItem.ToString() + "','"+ salary.Text+ "','"+ qualification.SelectedItem.ToString() + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql, Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            clear();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

        }

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

        }

      
    }
}