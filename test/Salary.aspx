<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Salary.aspx.cs" Inherits="test.Salary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Manegement</title>

    <link href="style.css" rel="stylesheet" />

	
		    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
    $(document).ready(function () {
        $('#paydate').datepicker({
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
			<div class="section_title">Salary</div><br>
			<form id="addemployee" class="clearfix"  runat="server">
			
			


				<div class="input-box input-small left">
				<label>Employee Id</label><br>
                    <asp:DropDownList ID="empid" runat="server" CssClass="inputField">			
				</asp:DropDownList>
					<asp:RequiredFieldValidator ID="RequiredFldValidator1" runat="server" ErrorMessage="Select Id" ForeColor="Red"
					ControlToValidate="empid" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>
</div>
				
				<div class="input-box input-small right">
          
                    <asp:Button ID="Load" runat="server" Text="Load" CssClass="inputField cnbtn" OnClick="load_Click" />
                </div>


				<div class="input-box input-small left">
				<label>Employee Name</label><br>
                    <asp:TextBox ID="empname" runat="server" class="inputField" ReadOnly="True"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldVidator1" runat="server" ErrorMessage="Employee Name" ForeColor="Red"
					ControlToValidate="empname" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
				
</div>
				
		
			<div class="input-box input-small right">
			<label>Salary</label><br>
                <asp:TextBox ID="empsalary" runat="server" class="inputField" ReadOnly="True"></asp:TextBox>	
			<asp:RequiredFieldValidator ID="RequiredFieldValator1" runat="server" ErrorMessage="Salary" ForeColor="Red"
					ControlToValidate="empsalary" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
			</div>
				

				
				<div class="input-box input-small left">
				<label>Bonus Name</label><br>
                      <asp:DropDownList ID="bonus" runat="server" CssClass="inputField">			
			</asp:DropDownList> 
					<asp:RequiredFieldValidator ID="uiredFieldValidator1" runat="server" ErrorMessage="Select Bonus" ForeColor="Red"
					ControlToValidate="bonus" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>
</div>
				
		
			<div class="input-box input-small right">
			<label>Bonus Amount</label><br>
                <asp:TextBox ID="bamount" runat="server" class="inputField" ReadOnly="True"></asp:TextBox>		
				<asp:RequiredFieldValidator ID="RequiredFieldValtor1" runat="server" ErrorMessage="Bonus Amount" ForeColor="Red"
					ControlToValidate="bamount" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
			
			</div>

				<div class="input-box input-small left">
				<label>Employee Name</label><br>
                    <asp:DropDownList ID="attendanceid" runat="server" CssClass="inputField">
					</asp:DropDownList>
					<asp:RequiredFieldValidator ID="RequiredFldValidat1" runat="server" ErrorMessage="Select Name" ForeColor="Red"
					ControlToValidate="attendanceid" ValidationGroup="myvalidationgroup"></asp:RequiredFieldValidator>
					</div>

				<div class="input-box input-small right">
					<label>Present</label><br>
                    <asp:TextBox ID="present" runat="server" class="inputField" ReadOnly="True"></asp:TextBox>	
					<asp:RequiredFieldValidator ID="RequiredFialidator1" runat="server" ErrorMessage="Present Days" ForeColor="Red"
					ControlToValidate="present" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small left">
					<label>Absence</label><br>
                        <asp:TextBox ID="absence" runat="server" class="inputField" ReadOnly="True"></asp:TextBox>	
						<asp:RequiredFieldValidator ID="eldValtor1" runat="server" ErrorMessage="Absence Days" ForeColor="Red"
					ControlToValidate="absence" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small right">
					<label>Leave</label><br>
                        <asp:TextBox runat="server" class="inputField" ID="leave" ReadOnly="True"></asp:textbox>
						<asp:RequiredFieldValidator ID="ReqeldValidator1" runat="server" ErrorMessage="Leave Days" ForeColor="Red"
					ControlToValidate="leave" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
					</div>


					<div class="input-box input-small left">
					<label>Total Salary</label><br>
                        <asp:TextBox runat="server" class="inputField" ID="totalsalary"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RedFieldValidator1" runat="server" ErrorMessage="Total Salary" ForeColor="Red"
					ControlToValidate="totalsalary" ValidationGroup="validationgroup"></asp:RequiredFieldValidator>
                    </div>

					<div class="input-box input-small right">
					<label>Payment date</label><br>
					<asp:TextBox runat="server" class="inputField" ID="paydate"></asp:textbox>
						<asp:RequiredFieldValidator ID="RiredFielddator1" runat="server" ErrorMessage="Select Date" ForeColor="Red"
					ControlToValidate="paydate" ValidationGroup="validationg"></asp:RequiredFieldValidator>
					</div>


	<div class="input-box input-small right">
		</div>
				<div>
                    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="inputField lgnbtn" OnClick="submit_Click" />   
                   
				</div>		

				 <div class="gridview-container">
			<asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="False">
				 <Columns>
						<asp:BoundField DataField="id" HeaderText="Salary Id"  />
						<asp:BoundField DataField="empid" HeaderText="Emp Id"  />
						<asp:BoundField DataField="empname" HeaderText="Employee Name"  />
						<asp:BoundField DataField="salary" HeaderText="Salary"  />
						<asp:BoundField DataField="bonus" HeaderText="Bonus"  />
						<asp:BoundField DataField="totalsalary" HeaderText="Salary Paid"  />
						<asp:BoundField DataField="paydate" HeaderText="Pay Date"  DataFormatString="{0:dd/MM/yyyy}" />
					</Columns>
			</asp:GridView>
 </div>


			</form>
		</div>
	</div>
</section>
</body>
</html>
