<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage stock.aspx.cs" Inherits="assignment_WebApplication1.manage_stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <title>Manage Stock</title>

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
    <form id="form1" runat="server" >
    <div class="nacbar">
		<ul>
		<li>
            <a href="Home.aspx">Home</a></li>
		<li><a href="Gallery.aspx">Gallery</a></li>
		<li><a href="Customer_Login.aspx">Orders</a></li>
		<li><a href="register.aspx">Register</a></li>
		<li><a class="active" href="manage stock.aspx">Manage Stock</a></li>
		</ul>		
	</div>
        <div class="container" style="padding-left:5%;">
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label11" runat="server" Text="Item List" style="font-size:32px; font-weight:bold;" ></asp:Label>
            <asp:GridView ID="dlorderview" runat="server">
            </asp:GridView>
            </p>
        
        <p>
            &nbsp;</p>
            <asp:Label ID="Label1" runat="server" Text="Add Items" style="font-size:32px; font-weight:bold;" ></asp:Label>
       <br />
       <br />
        <p>
            <asp:Label ID="Label2" runat="server" Text="Item ID"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Item_ID" runat="server" CssClass="form-control"></asp:TextBox>
        </p>
        <br />
        <br />
        <p>
            <asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Item_name" runat="server" CssClass="form-control"></asp:TextBox>
        </p>
       <br />
       <br />
        <p>
            <asp:Label ID="Label4" runat="server" Text="Color"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Item_color" runat="server" CssClass="form-control"></asp:TextBox>
        </p>
        <br />
        <br />
        <p>
            <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Item_price" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Item Quantity"></asp:Label>
            <br />
        </p>
        <p>
            <asp:TextBox ID="Item_quantity" runat="server" CssClass="form-control"></asp:TextBox>
            </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
            <asp:Button ID="btnclear" runat="server" CssClass="btn btn-primary" OnClick="btnclear_Click" Text="Clear" />
            <asp:Label ID="Label12" runat="server" ForeColor="#009933" Text="Successful"></asp:Label>
            </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
            <asp:Label ID="Label6" runat="server" Text="Search/Update Items" style="font-size:32px; font-weight:bold;" ></asp:Label>
        <br />
        <p>
            <asp:Label ID="Label7" runat="server" Text="Item ID"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="item_idsearch" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
        </p>
        <p>
            <asp:Label ID="Label10" runat="server" Text="Updating Stock"></asp:Label>
            </p>
            <p>
            <asp:TextBox ID="addqty" runat="server" CssClass="form-control"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnsearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click"/>
            <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnupdate_Click"/>
            <asp:Label ID="Label13" runat="server" ForeColor="#009933" Text="Successfully Updated"></asp:Label>
            <asp:GridView ID="dlitems" runat="server" ShowHeaderWhenEmpty="True">
            </asp:GridView>
        </p>
             
            </div>

        <div class="footer">
         <p>Saber silk.PVT(Ltd)</p>
        </div>

       
    </form>

    
        
</body>
</html>
