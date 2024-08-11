using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using test;

namespace mufizproject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
     
        
        private void clear()
        {
            txt_Username.Text = txt_password.Text = string.Empty;
        }
        protected void btn_Login_Click(object sender, EventArgs e)
        {
            string sql = "select * from login where username='" + txt_Username.Text+ "' and password='" + txt_password.Text+ "'";
            SqlDataAdapter da = new SqlDataAdapter(sql,Class1.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            clear();
           if(dt.Rows.Count > 0 )
            {
                Session["id"]=txt_Username.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lbl3.Text= "Invalid Username Or Password";
            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}