<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="test.Admin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Management</title>
    <link href="style.css" rel="stylesheet" />

	<style>
     
          .tbl
     {
         width:100%;
         
         }
      .tblhead
{
  
  height:3.16rem;
  font-size:1.56rem;
  font-weight:bold;
  text-align:center;
  color:#fff;
  background:navy;
    
    }
		#acc {
    width: 11.87rem;
    height: 7.5rem;
    border: solid 1px green;
    float: left;
    margin: 1.25rem;
    background: linear-gradient(navy 80%, #ffff66);
}

.acc {
    height: 1.87rem;
    border-bottom: solid 2px #fff;
    font-weight: bold;
    text-align: center;
    font-size: 1.12rem;
    color: #fff;
    padding-top: 1px;
}

.acc1 {
    font-weight: bold;
    text-align: center;
    font-size: 2.62rem;
    color: #fff;
    padding-top: 0.12rem;
}
.imgl{
    height:3.12rem;
    width:3.12rem;
    
}
  @media(max-width:998px){
        html{
            font-size:55%;
        }
    }
    @media(max-width:768px){
        html{
            font-size:45%;
        }

    }

	</style>
</head>
<body>
    
                <section class="side-menu fixed left">
		<div class="top-sec">
			<div class="dash_logo">
			<img src="aa.png" />
			</div>			
			
		</div>
		<ul class="nav">
				<li class="nav-item" runat="server"><a href="Home.aspx"><span class="nav-icon"></span>Home</a></li>
				<li class="nav-item" runat="server"><a href="Employee.aspx"><span class="nav-icon"></span>Add Employee</a></li>
				<li class="nav-item" runat="server"><a href="Edit_delete.aspx"><span class="nav-icon"></span>Employee Record</a></li>
				<li class="nav-item" runat="server"><a href="Bonus.aspx"><span class="nav-icon"></span>Bonus</a></li>
				<li class="nav-item" runat="server"><a href="Attendance.aspx"><span class="nav-icon"></span>Attendance</a></li>
				<li class="nav-item" runat="server"><a href="Salary.aspx"><span class="nav-icon"></span>Salary</a></li>	
					
</ul>
	</section>
	<section class="contentSection right clearfix">

<div class="container">
    
          <table class="tbl">
     <tr>
         <td class="tblhead">
              <form id="form1" runat="server">
             Welcome To Employee Management

             
             <asp:ImageButton runat="server" ImageUrl="logout.png" CssClass="imgl" ImageAlign="Right" OnClick="Unnamed1_Click"></asp:ImageButton>
</form>
</td>
       
     </tr>
  </table>

             
		<div id="acc">
			<table class="style1">
				 <tr>
					<td class="acc">Employees</td>
				</tr>
           <tr>
					<td class="acc1">
                   <asp:Label ID="emplb" runat="server" Text="0"></asp:Label>
               </td>
           </tr>
       </table>
   </div>

       
		<div id="acc">
			<table class="style1">
				 <tr>
					<td class="acc">Managers</td>
				</tr>
           <tr>
					<td class="acc1">
                   <asp:Label ID="manalb" runat="server" Text="0"></asp:Label>
               </td>
           </tr>
       </table>
   </div>

       

       
		<div id="acc">
			<table class="style1">
				 <tr>
					<td class="acc">Bonus Paid</td>
				</tr>
           <tr>
					<td class="acc1">
                   <asp:Label ID="bonlb" runat="server" Text="0"></asp:Label>
               </td>
           </tr>
       </table>
   </div>
				
<div id="acc">
<table class="style1">
	 <tr>
		<td class="acc">Salary Paid</td>
	</tr>
        <tr>
		<td class="acc1">
                <asp:Label ID="sallb" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
    </table>
</div>
</div>
</section>
    -
</body>
</html>
