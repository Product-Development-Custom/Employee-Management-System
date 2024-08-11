<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="test.WebForm1" %>

<!DOCTYPE html>
<html> 
	<head>
        <title>Employee Management</title>
        <link href="style.css" rel="stylesheet" />


			    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
				<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
				<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script>
        $(document).ready(function () {
    $('#<%= dob.ClientID %>').datepicker({
        maxDate: '-18Y', // Restrict to dates up to 18 years ago
        changeYear: true,
        yearRange: '-100:+0', // Allow selection of the last 100 years
        dateFormat: 'dd-mm-yy'
    });
		});



        $(document).ready(function () {
            $('#jdate').datepicker({
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
				<img src="aa.png" alt="Sharpnet Logo">
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
				<div class="section_title">Add Employee</div><br>
				<form id="addemployee" class="clearfix"  runat="server">
                 
					<div class="input-box input-small left">
						<label>First Name</label><br>
                        <asp:TextBox runat="server" class="inputField" placeholder="Enter First Name" ID="fname"></asp:textbox>
						  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
						ErrorMessage="Enter First Name" ForeColor="Red"
						ControlToValidate="fname"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small right">
						<label>Last Name</label><br>
						<asp:textbox runat="server" class="inputField " id="lname" placeholder="Enter Last Name"></asp:textbox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
						ErrorMessage="Enter Last Name" ForeColor="Red"
						ControlToValidate="lname"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small left">
						<label>Gender</label><br>
                        <asp:DropDownList ID="gender" runat="server" CssClass="inputField">
							<asp:ListItem>Male</asp:ListItem>
							<asp:ListItem>Female</asp:ListItem>
							
						</asp:DropDownList>
					</div>


					<div class="input-box input-small right">
						<label>Phone number</label><br>
						<asp:textbox runat="server" class="inputField" id="phone" placeholder="Enter Phone Number" CssClass="inputField"></asp:textbox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
						<br />
						
						
					
					</div>


					<div class="input-box input-small left">
						<label for="dateemployed">DOB</label><br>
					 <asp:TextBox ID="dob" runat="server" class="inputField"></asp:TextBox>		
					
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
					ErrorMessage="Select DOB" ForeColor="Red"
					ControlToValidate="dob"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small right">
						<label for="dateemployed">Joining Date</label><br>
					 <asp:TextBox ID="jdate" runat="server" class="inputField" ></asp:TextBox>		
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
					ErrorMessage="Select Joining Date" ForeColor="Red"
					ControlToValidate="jdate"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small left">
						<label>Address</label><br>
                        <asp:TextBox runat="server" class="inputField" placeholder="Enter Your Address" ID="address"></asp:textbox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
					ErrorMessage="Enter Address" ForeColor="Red"
					ControlToValidate="address"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small right">
						<label>Position</label><br>
					<asp:DropDownList ID="position" runat="server" CssClass="inputField">
						<asp:ListItem>Manager</asp:ListItem>
						<asp:ListItem>Senior</asp:ListItem>
						<asp:ListItem>Junior</asp:ListItem>
						</asp:DropDownList>
					</div>

					<div class="input-box input-small left">
						<label>Salary</label><br>
                        <asp:TextBox runat="server" class="inputField" placeholder="Enter Salary" ID="salary"></asp:textbox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
					ErrorMessage="Enter Salary" ForeColor="Red"
					ControlToValidate="salary"></asp:RequiredFieldValidator>
					</div>

					<div class="input-box input-small right">
				<label>Qualifiaction</label><br>
						<asp:DropDownList ID="qualification" runat="server" CssClass="inputField">
							<asp:ListItem>BCA</asp:ListItem>
							<asp:ListItem>B.Com</asp:ListItem>
							<asp:ListItem>BBA</asp:ListItem>
						</asp:DropDownList>
					</div>

					
					<div>
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="inputField lgnbtn" OnClick="Button1_Click"/>	<br />			
					</div>	
					
					 
				</form>
			</div>
           
		</div>
	</section>

</body>
</html>
