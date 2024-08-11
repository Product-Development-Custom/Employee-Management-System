<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bonus.aspx.cs" Inherits="test.Bonus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Management</title>
    <link href="style.css" rel="stylesheet" />

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
		<div class="wrapper add_employee clearfix">
			<div class="section_title">Bonus</div><br>
			<form id="addemployee" class="clearfix"  runat="server">
             
				

				<div class="input-box input-small left">
				 <asp:TextBox ID="TextBox1" runat="server" class="inputField" placeholder="Enter Id"></asp:TextBox>	
						<asp:RequiredFieldValidator ID="RequiredFielalidator1" runat="server" ErrorMessage="Enter id" ForeColor="Red"
					ControlToValidate="TextBox1" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>	
				</div>
				<div class="input-box input-small right">
                    <asp:Button ID="Button1" runat="server" Text="Search" CssClass="inputField upbtn" OnClick="Button1_Click" />
				</div>
				<div class="input-box input-small left">
				<label>Bonus Name</label><br>
				 <asp:TextBox ID="bname" runat="server" class="inputField" placeholder="Enter Bonus Name"></asp:TextBox>
				
					<asp:RequiredFieldValidator ID="RequiredFieldidator5" runat="server" 
					ErrorMessage="Enter Bonusname" ForeColor="Red"
					ControlToValidate="bname" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>	
 					
				</div>
				
		
			<div class="input-box input-small right">
			<label>Bonus Amount</label><br>
			 <asp:TextBox ID="bamount" runat="server" class="inputField" placeholder="Enter Bonus Amount"></asp:TextBox>		
			<asp:RequiredFieldValidator ID="RequiredFieldValida" runat="server" 
					ErrorMessage="Enter amount" ForeColor="Red"
					ControlToValidate="bamount" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>	
			
			</div>
				



	<div>
				<asp:Button ID="submit" runat="server" Text="Submit"  CssClass="inputField lgnbtn" OnClick="submit_Click" />   
        <asp:Button ID="delete" runat="server" Text="Delete" CssClass="inputField cnbtn" OnClick="delete_Click" />
        <asp:Button ID="update" runat="server" Text="Update" CssClass="inputField upbtn" OnClick="update_Click" />

</div>		
				 <div class="gridview-container">
				 <asp:GridView ID="GridView1" runat="server" class="gridview" AutoGenerateColumns="false">
				<Columns>
					<asp:BoundField DataField="id" HeaderText="ID" />
					<asp:BoundField DataField="bname" HeaderText="BonusName"  />
			        <asp:BoundField DataField="bamount" HeaderText="BonusAmount"  />
				</Columns>
				</asp:GridView>
				</div>
			</form>
		</div>
	</div>
</section>




</body>
</html>
