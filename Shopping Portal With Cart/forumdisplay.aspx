<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forumdisplay.aspx.vb" Inherits="forum" %>

<%@ Register src="forum.ascx" tagname="forum" tagprefix="uc1" %>

<%@ Register src="_SiteHeader.ascx" tagname="_SiteHeader" tagprefix="uc2" %>

<%@ Register src="_loginstatus.ascx" tagname="_loginstatus" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" href="main.css" type="text/css"/>
</head>
<body>
<div id="main">  
    <div class="container">  
  
    <form id="form1" runat="server">
  
            <div id="header">   
  
                
			   
      <div id="iconplacer"><!-- icon -->
         <a class="rssfollow" title="Subscribe to Rss" href="http://feeds.feedburner.com/logo" target="_blank">M-Sign RSS</a>
         <a class="facebook" title="Shutterdown on facebook" href="http://www.facebook.com/login.php" target="_blank">Shutter down on Facebook</a>
         <a class="twitterfollow" title="Shutterdown on twitter" href="http://twitter.com/login" target="_blank">shutterdown on Twitter</a>
         <a class="deviantart" title="products from deviantart" href="http://http://shop.deviantart.com/" target="_blank">shutterdown products Deviantart</a>
         <a class="flickr" title="Shutterdown on Flickrs" href="http://www.flickr.com/cameras/" target="_blank">shutterdown on Flickr</a>
         <a class="youtube" title="Shutterdown on Youtube" href="http://www.youtube.com/" target="_blank">shutterdown on Youtube </a>      </div>  <!-- End Icon -->
  
                <div id="logo">  
                    <h1>Shutter Down<uc3:_loginstatus ID="_loginstatus1" runat="server" />
                    </h1>  
                    <small>Anything.Anytime.Anywhere</small>  
                </div>  
  
            </div> 
			<div id="men">
                 <!–NAVIAGTION HERE –>
          </div>
		  
<div class="block_feature">
	 <span class="block_inside">
	 <img src="images/featured_prod.gif" class="ribbon1"/>
	 
	 <div class="image_block">  
                    <img src="images/home_11_r1.jpg" width="315" height="190" /></div>  
        <div class="text_block">  
                     <h2>Total Delivery Solution.........<small>We value your time...money..we value you. </small>				   </h2>
                     <p>And then a short description of the website would go in here.  Something saying maybe what awesome skills I used on the project and how happy the client was. </p>  
                     <br />  
                     <a href="" class="button">View Project</a>		</div>
      </span>
	  <div></div>
	  </div>
	  


<div>
    <div>
    <table width="100%">
    <tr>
    <td bgcolor="#313131" >
    
        &nbsp;</td>
    </tr>
    </table>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    <table>
    <tr align="center"><td>
    <uc1:forum ID="forum1" runat="server" />
    </td></tr>
    </table>
    </div>
    </form>
    </div></div>
    <div id="footer">
  <div class="container">
    <div id="div">
      <div class="container">
        <div class="footer_column long">
		<div style="float:left;"> 
    	<a href="home" title="ENJOY Pvt. Ltd. | Home" class="bottom">Home</a> 
        &nbsp;|&nbsp;
        <a href="organization" title="Organization" class="bottom">Organization</a> 
        &nbsp;|&nbsp;
        <a href="products" title="Products" class="bottom">Products</a> 
        &nbsp;|&nbsp;
        <a href="register" title="Join Now" class="bottom">Join Now</a> 
        &nbsp;|&nbsp;
        <a href="downloads" title="Downloads" class="bottom">Downloads</a> 
        &nbsp;|&nbsp;
        <a href="contact-us" title="Contact Us" class="bottom">Contact Us</a> 
        <br /><br /><br /> 
        <span style="font-size:10px;">© Copyrights 2010. All Right Reserved SHUTTER DOWN Pvt. Ltd.</span> 
    </div> 
         
        </div>
        <div class="footer_column">
          <h3>More Links</h3>
          <ul>
            <li><a href="http://gmail.com">Gmail</a></li>
            <li><a href="http://linked.net">linked</a></li>
            <li><a href="http://facebook.com">facebook</a></li>
            <li><a href="http://yahoo.com">yahoo</a></li>
            <li><a href="http://google.com">google</a></li>
          </ul>
        </div>
        <div class="footer_column">
          <h3>RSS</h3>
          <ul>
            <li><a href="">RSS Feed</a></li>
            <li><a href="">What is RSS?</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>  
</body>
</html>
