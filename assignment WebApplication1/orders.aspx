<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="assignment_WebApplication1.orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <title>Order</title>

    
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
		<li><a href="Home.aspx">Home</a></li>
		<li><a href="Gallery.aspx">Gallery</a></li>
		<li><a class="active" href="orders.aspx">Orders</a></li>
		<li><a href="register.aspx">Register</a></li>
		<li><a  href="Admin_login.aspx">Manage Stock</a></li>
		</ul>		
	</div>




        <div class="container" style="padding-left:10%;">
         <p>
             <asp:Label ID="Label4" runat="server" Text="Search the Item Name"  style="font-size:32px; font-weight:bold;"></asp:Label>
            </p>
         <p>
             <asp:TextBox ID="customerSearchtext" runat="server" CssClass="form-control" ></asp:TextBox>
            </p>
         
         <p>
             <asp:Button ID="btncustsear" runat="server" OnClick="btncustsear_Click" Text="Search Item"  CssClass="btn btn-primary"/>
            </p>
             <asp:GridView ID="dllGridView1" runat="server" ShowHeaderWhenEmpty="True">
             </asp:GridView>
         <p>
             <asp:Label ID="Label1" runat="server" Text="Place Your Order" style="font-size:32px; font-weight:bold;" ></asp:Label>
            </p>
        

         <p>
             <asp:Label ID="Label2" runat="server" Text="Order Item Name"></asp:Label>
         </p>
         <p>
             <asp:TextBox ID="orderItemID" runat="server" CssClass="form-control"></asp:TextBox>
         </p>
         <p>
             &nbsp;</p>
         <p>
             <asp:Label ID="Label3" runat="server" Text="Order Item Quantity"></asp:Label>
         </p>
         <p>
             <asp:TextBox ID="orderItemqty" runat="server" CssClass="form-control"></asp:TextBox>
         </p>
         <p>
             <asp:Button ID="btnOrder" runat="server" Text="Order" CssClass="btn btn-primary" OnClick="btnOrder_Click" />
             <asp:Label ID="Label5" runat="server" ForeColor="#33CC33" Text="Succesful"></asp:Label>
         </p>

            </div>

         <div class="footer">
         <p>Saber silk.PVT(Ltd)</p>
        </div>

    </form>
</body>
</html>
