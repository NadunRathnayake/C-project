<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="assignment_WebApplication1.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <title>Gallery</title>
    <style>

  * {
  box-sizing: border-box;
  padding:0;
    margin: 0;
   font-family:sans-serif;
	text-decoration: none;
	list-style: none;


}

body {
  margin: 0;
  font-family: Arial;
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
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}




.row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap; 
  flex-wrap: wrap;
  padding: 0 4px;
}


.column {
  -ms-flex: 25%; 
  flex: 25%;
  max-width: 25%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
  width: 100%;
}


@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}


@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
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
		<li><a class="active" href="Gallery.aspx">Gallery</a></li>
		<li><a href="Customer_Login.aspx">Orders</a></li>
		<li><a href="register.aspx">Register</a></li>
		<li><a href="Admin_login.aspx">Manage Stock</a></li>
		</ul>		
	</div>
    
   <div class="row">      
  <div class="column">
 
    
    <img src="ekaterina-grosheva-la2P2D6PPyA-unsplash.jpg" style="width:100%"/>
    <img src="hector-j-rivas-Nh6NsnqYVsI-unsplash.jpg" style="width:100%"/>
      <img src="analuisa-gamboa-0ohjyDUIUq0-unsplash.jpg" style="width:100%"/>
    <img src="vishal-banik-V6T99SnUCyA-unsplash.jpg" style="width:100%"/>
    
  </div>
       <div class="column">
   
    <img src="chris-curry-nm-lChAXnFs-unsplash.jpg" style="width:100%"/>
    <img src="maksim-siadura-My0w1D60RkM-unsplash.jpg" style="width:100%"/>
    <img src="victoria-strukovskaya-BjyPGQoYw7s-unsplash.jpg" style="width:100%"/> 
     <img src="ekaterina-grosheva-wcdHwuFJfn4-unsplash.jpg" style="width:100%"/>
 
  </div>
       <div class="column">

    <img alt="Responsive image" src="kelly-sikkema-CNjfgzoY8JU-unsplash.jpg" style="width:100%"/>
    <img alt="Responsive image" src="volha-flaxeco-BCNjBsK37XA-unsplash.jpg" style="width:100%"/>
    <img src="girl-with-red-hat-qyy6pmM2Hg8-unsplash.jpg" style="width:100%"/>
    <img src="isabela-kronemberger-paL16VBYrqw-unsplash.jpg" style="width:100%"/>
    
  </div>
       <div class="column">
    <img alt="Responsive image" src="juli-kosolapova-dWm94DekLBg-unsplash.jpg" style="width:100%"/>
    <img src="toa-heftiba-zSpQkCdbRb4-unsplash.jpg" style="width:100%"/>
    <img src="erol-ahmed-_CeW6TRUWws-unsplash.jpg" style="width:100%"/>
    

  </div>

       </div>
            
        <div class="footer">
         <p>Saber silk.PVT(Ltd)</p>
        </div>
    </form>
</body>
</html>
