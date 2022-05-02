<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Login.aspx.cs" Inherits="assignment_WebApplication1.Customer_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <title>Customer Login </title>

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
        <asp:Label ID="Label1" runat="server" Text="Customer Login" style="font-size:32px; font-weight:bold;" ></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter Username"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="custuser" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="custuser" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Enter Password"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="custpass" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="custpass" Display="Dynamic" ErrorMessage="*field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
            <asp:Button ID="btnsign" runat="server" OnClick="btnsign_Click" CssClass="btn btn-primary" Text="SignUp" />
            <asp:Button ID="Custhome" runat="server" CssClass="btn btn-primary" OnClick="Custhome_Click" Text="Home" />
        </p>
            </div>
        <div class="footer">
         <p>Saber silk.PVT(Ltd)</p>
        </div>
    </form>
</body>
</html>
