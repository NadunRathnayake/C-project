<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="assignment_WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <title>Register</title>

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



        .img-fluid {
           height:500px;
           width: 1847px;
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

      .nacbar a.active {
  background-color: blue;
  color: white;
}

    </style>



</head>
<body>
    <form id="form1" runat="server">
     <div class="nacbar">
		<ul>
		<li>
            <a href="Home.aspx">Home</a></li>
		<li><a href="Gallery.aspx">Gallery</a></li>
		<li><a href="Customer_Login.aspx">Orders</a></li>
		<li><a class="active" href="register.aspx">Register</a></li>
		<li><a href="Admin_login.aspx">Manage Stock</a></li>
		</ul>		
	</div>
                <div class="container" style="padding-left:5%;">
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Registration Forum" style="font-size:32px; font-weight:bold;" ></asp:Label>
        </p>
        
        <p>
            <asp:Label ID="Label10" runat="server" Text="First Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="First_name" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="First_name" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        
        <p>
            <asp:Label ID="Label11" runat="server" Text="Last Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Last_name" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Last_name" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
       
        <p>
            <asp:Label ID="Label12" runat="server" Text="Email"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
           
        </p>
        
        <p>
            <asp:Label ID="Label13" runat="server" Text="User Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="User_name" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="User_name" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        
        <p>
            <asp:Label ID="Label14" runat="server" Text="Password"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        
        <p>
            <asp:Label ID="Label17" runat="server" Text="Confirm Password"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Confirm_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Confirm_password" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        
        <p>
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
            <asp:Button ID="btnclear" runat="server" Text="Clear" CssClass="btn btn-primary" OnClick="btnclear_Click"  value ="Reset" />
            <asp:Label ID="Label18" runat="server" ForeColor="#009933" Text="Successful"></asp:Label>
        </p>
                    </div>

         <div class="footer">
         <p>Saber silk.PVT(Ltd)</p>
        </div>

    </form>
</body>
</html>
