<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="mufizproject.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
             background-image: url('loginimage.jpg');
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 0.75rem 1.25rem;
            margin: 0.5rem 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 0.87rem 1.25rem;
            margin: 0.5rem 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 0.87rem 1.25rem;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 1.5rem 0 0.75rem 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 1rem;
        }
        span.psw {
            float: right;
            padding-top: 1rem;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 18.75rem) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        h1{
            color:whitesmoke;
        }
        .textcolor{
            color:whitesmoke;
        }
        .imgc{
            height:7.5rem;
            width:7.5rem;
            border-radius:50%;
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
    <form id="form1" runat="server" class="frmalg">

        <div class="container">
            <center>
                <img src="logos.jpg" class="imgc" />

              <h1>Login</h1>
            </center>
            <asp:label for="uname" runat="server" ID="lbl1" CssClass="textcolor"><b>Username</b></asp:label>
           <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <asp:label for="psw" runat="server" ID="lbl2" CssClass="textcolor"><b>Password</b></asp:label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <center>
            <asp:Label for="uname" runat="server" ID="lbl3" fon="" ForeColor="Red"></asp:Label><br />
                </center>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
            <asp:Button runat="server" ID="btn_cancel" Text="Clear" class="cnbtn" OnClick="btn_cancel_Click" />
        </div>
    </form>
</body>
</html>
