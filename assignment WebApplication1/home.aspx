<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="assignment_WebApplication1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    
    <title>Home</title>
    <style>



          *{
	padding:0;
	margin: 0;
    font-family:sans-serif;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
}

body{
/*	background Picture settigns*/
	font-family:Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
	background-size:cover;
    
    
}

/*Navigation bar*/
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
   position: fixed;
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
		<li><a class="active" href="Home.aspx">Home</a></li>
		<li><a href="Gallery.aspx">Gallery</a></li>
		<li><a href="Customer_Login.aspx">Orders</a></li>
		<li><a href="register.aspx">Register</a></li>
		<li><a href="Admin_login.aspx">Manage Stock</a></li>
		</ul>		
	</div>
    <img  alt="Responsive image" src="pexels-pixabay-236748.jpg" class="img-fluid"/>




       

        <div class="footer">
         <p>Saber silk.PVT(Ltd)</p>
        </div>
    
   
    </form>
</body>
</html>
