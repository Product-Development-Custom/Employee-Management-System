using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test
{


    public class Class1
    {
        public static SqlConnection cn = new SqlConnection("workstation id=EmployeeManagementSystem.mssql.somee.com;packet size=4096;user id=avim78_SQLLogin_1;pwd=5q7ik2o9q8;data source=EmployeeManagementSystem.mssql.somee.com;persist security info=False;initial catalog=EmployeeManagementSystem;TrustServerCertificate=True");
    }
}