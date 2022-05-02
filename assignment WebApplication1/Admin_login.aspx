<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="assignment_WebApplication1.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <title>Admin Login</title>

     <style>

         *{
	padding:0;
	margin: 0;
    font-family:sans-serif;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
}
p1,p2{
	color: #000000;
	font-weight: bold;
}

body{

	background: url('91513.jpg') no-repeat;
    background-size:cover;
	
}


.nacbar{
    overflow:hidden;
    background-color:black;
}
.nacbar a{
    float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.nacbar a:hover{
    background-color: #ddd;
  color: black;
}



        

      .footer {
   position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;

}


         .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}


    </style>

</head>
<body>
    <form id="form1" runat="server">
     <div class="container" style="padding-left:5%;">
    
        <p>
    
        <asp:Label ID="Label1" runat="server" Text="Admin Login" style="font-size:32px; font-weight:bold;" ></asp:Label>
    
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter Admin Username"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="admin_user" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="admin_user" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Enter Admin Password"></asp:Label>
        </p>
          <p>
            <asp:TextBox ID="admin_pass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="admin_pass" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="adminlogin" runat="server" CssClass="btn btn-primary" OnClick="adminlogin_Click" Text="Login" />
            <asp:Button ID="adhome" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Home" />
        </p>
         </div>

        <div class="footer">
         <p>Saber silk.PVT(Ltd)</p>
        </div>
       
    </form>
</body>
</html>
