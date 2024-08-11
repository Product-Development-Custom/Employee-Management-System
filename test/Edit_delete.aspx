<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_delete.aspx.cs" Inherits="test.Edit_delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Management</title>
   
        <link href="style.css" rel="stylesheet"/>

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
				<div class="section_title">Edit / Delete Employee</div><br>
				<form id="addemployee" class="clearfix"  runat="server">



					<div class="input-box input-small left">
					
					<asp:TextBox runat="server" class="inputField" placeholder="Search Id" ID="TextBox1"></asp:TextBox>
				<asp:RequiredFieldValidator ID="quiredFieldValidator1" runat="server" 
						ErrorMessage="Enter id" ForeColor="Red"
						ControlToValidate="TextBox1" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
					</div>




					<div class="input-box input-small right">
                        <asp:Button ID="Button3" runat="server" Text="Search"  CssClass="inputField lgnbtn" OnClick="Button3_Click" />	<br />			

					</div>	
                 
					<div class="input-box input-small left">
						<label>First Name</label><br>
                        <asp:TextBox runat="server" class="inputField" placeholder="Enter First Name" ID="fname"></asp:textbox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
						ErrorMessage="Enter First Name" ForeColor="Red"
						ControlToValidate="fname" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator> 
					</div>


					<div class="input-box input-small right">
						<label>Last Name</label><br>
						<asp:textbox runat="server" class="inputField " id="lname" placeholder="Enter Last Name"></asp:textbox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValida" runat="server" 
						ErrorMessage="Enter Last Name" ForeColor="Red"
						ControlToValidate="lname" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator> 
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
						 <asp:RequiredFieldValidator ID="RequiredFiValidator1" runat="server" 
						ErrorMessage="Enter Phone number" ForeColor="Red"
						ControlToValidate="phone" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator> 
                     	<br />
						
						
					
					</div>


					<div class="input-box input-small left">
						<label>DOB</label><br />
					
                        <asp:TextBox ID="dob" runat="server" class="inputField"></asp:TextBox>		
					 <asp:RequiredFieldValidator ID="RequiredFdValidator1" runat="server" 
						ErrorMessage="Enter Date of birth" ForeColor="Red"
						ControlToValidate="dob" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator> 
						</div>


					<div class="input-box input-small right">
						<label>Joining Date</label><br/>
					 <asp:TextBox ID="jdate" runat="server" class="inputField"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredValidator1" runat="server" 
						ErrorMessage="Enter join date" ForeColor="Red"
						ControlToValidate="jdate" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator> 
					</div>


					<div class="input-box input-small left">
						<label>Address</label><br>
                        <asp:TextBox runat="server" class="inputField" placeholder="Enter Your Address" ID="address"></asp:textbox>
						 <asp:RequiredFieldValidator ID="ReqredFieldValidator1" runat="server" 
						ErrorMessage="Enter address" ForeColor="Red"
						ControlToValidate="address" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator> 
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
						 <asp:RequiredFieldValidator ID="ReqeldValidator1" runat="server" 
						ErrorMessage="Enter Salary" ForeColor="Red"
						ControlToValidate="salary" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator> 
						</div>

					<div class="input-box input-small right">
				<label>Qualifiaction</label><br>
						<asp:DropDownList ID="qualification" runat="server" CssClass="inputField">
							<asp:ListItem>BCA</asp:ListItem>
							<asp:ListItem>B.Com</asp:ListItem>
							<asp:ListItem>BBA</asp:ListItem>
						</asp:DropDownList>
					</div>

					
					<div class="input-box input-small left">
                        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="inputField upbtn"  OnClick="Button2_Click" />	<br />			
					</div>	
					<div class="input-box input-small right">
                        <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="inputField cnbtn"  OnClick="Button1_Click" />	<br />			
					</div>				
					

					
	 <div class="gridview-container">
 <asp:GridView ID="GridView1" runat="server" class="gridview" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id"  />
        <asp:BoundField DataField="fname" HeaderText="FirstName"  />
		<asp:BoundField DataField="lname" HeaderText="LastName"  />
		<asp:BoundField DataField="gender" HeaderText="Gender"  />
		<asp:BoundField DataField="phone" HeaderText="Phone"  />
		<asp:BoundField DataField="dob" HeaderText="Birth Date" DataFormatString="{0:dd/MM/yyyy}" />
		<asp:BoundField DataField="jdate" HeaderText="JoinDate"  DataFormatString="{0:dd/MM/yyyy}" />
		<asp:BoundField DataField="address" HeaderText="Address"  />
        <asp:BoundField DataField="position" HeaderText="Position"  />
		<asp:BoundField DataField="salary" HeaderText="Salary"  />
		<asp:BoundField DataField="qualification" HeaderText="Qualification"  />
    </Columns>
</asp:GridView>
		 </div>
				</form>

                
			</div>
		</div>
	</section>





     
</body>
</html>
