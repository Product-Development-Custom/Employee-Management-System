<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="test.Attendance1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Management</title>
	
	    <link href="style.css" rel="stylesheet" />


		    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
    $(document).ready(function () {
        $('#Period').datepicker({
            dateFormat: 'dd-mm-yy',
            showButtonPanel: true, // Optional, displays the "Today" and "Done" buttons
            changeMonth: true,
            changeYear: true
        });
    });

</script>

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
			<div class="section_title">Attendance</div><br>
			<form id="addemployee" class="clearfix"  runat="server">
             
				
				<div class="input-box input-small left">
				<label>Attendance ID</label><br>
					<asp:TextBox ID="TextBox1" CssClass="inputField" runat="server" Placeholder="Enter Id"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFialidator2" runat="server" ErrorMessage="Enter id" ForeColor="Red"
					ControlToValidate="TextBox1" ValidationGroup="validationgg"></asp:RequiredFieldValidator>
					<br />
				</div>
				<div class="input-box input-small right">
				 <asp:Button ID="Button2" runat="server" Text="Search"  CssClass="inputField lgnbtn" OnClick="Button2_Click" /> 
					
					 <asp:Button ID="Load" runat="server" Text="Load" CssClass="inputField cnbtn" OnClick="delete0_Click" />
					</div>
				

				<div class="input-box input-small left">
					<label>Employee Id</label><br>
                    <asp:DropDownList ID="empid" runat="server" CssClass="inputField"></asp:DropDownList>
					<asp:RequiredFieldValidator ID="uiredFielalidator1" runat="server" ErrorMessage="Enter id" ForeColor="Red"
					ControlToValidate="empid" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>	
				</div>


				<div class="input-box input-small right">
					<label>Employee Name</label><br>
                    <asp:TextBox ID="empname" CssClass="inputField" runat="server" ReadOnly="True"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequedFieldValidator1" runat="server" ErrorMessage="Load Name" ForeColor="Red"
					ControlToValidate="empname" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>
                    <br />
				</div>
				


				<div class="input-box input-small left">
				<label>Present</label><br>
				 <asp:TextBox ID="present" runat="server" class="inputField"></asp:TextBox>		
					<asp:RequiredFieldValidator ID="RequireeldValidator1" runat="server" ErrorMessage="Enter Present Days" ForeColor="Red"
					ControlToValidate="present" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>
				</div>


				<div class="input-box input-small right">
				<label>Absence</label><br>
				 <asp:TextBox ID="absence" runat="server" class="inputField" ></asp:TextBox>		
				<asp:RequiredFieldValidator ID="RequiredFielalidator1" runat="server" ErrorMessage="Enter absence Days" ForeColor="Red"
					ControlToValidate="absence" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>
				
				</div>


				<div class="input-box input-small left">
				<label>Leave</label><br>
				<asp:TextBox ID="leave" runat="server" class="inputField" ></asp:TextBox>
				<asp:RequiredFieldValidator ID="Requiredlidator1" runat="server" ErrorMessage="Enter Leave Days" ForeColor="Red"
					ControlToValidate="leave" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>	
					
				</div>


				<div class="input-box input-small right">
				<label>Period</label><br>
				<asp:TextBox runat="server" class="inputField" ID="Period"></asp:textbox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter date" ForeColor="Red"
					ControlToValidate="Period" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>	
				
				</div>

				

				
				<div>
                    <asp:Button ID="submit" runat="server" Text="Submit"  CssClass="inputField lgnbtn" OnClick="submit_Click" />   
					 <asp:Button ID="delete" runat="server" Text="Delete" CssClass="inputField cnbtn" OnClick="delete_Click" />
						<asp:Button ID="update" runat="server" Text="Update" CssClass="inputField upbtn" OnClick="update_Click" />
				
				</div>		
				<br />

			 <div class="gridview-container">
						<asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="False">
							 <Columns>
									<asp:BoundField DataField="id" HeaderText="Att Id"  />
									<asp:BoundField DataField="empid" HeaderText="Emp Id"  />
									<asp:BoundField DataField="empname" HeaderText="Employee Name"  />
									<asp:BoundField DataField="present" HeaderText="Day Present"  />
									<asp:BoundField DataField="absence" HeaderText="Day Absence"  />
									<asp:BoundField DataField="leave" HeaderText="Leave"  />
									<asp:BoundField DataField="period" HeaderText="Period"  DataFormatString="{0:dd/MM/yyyy}" />
								</Columns>
						</asp:GridView>
			 </div>





			</form>
		</div>
	</div>
</section>
   
</body>
</html>


