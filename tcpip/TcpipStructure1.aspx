<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OSI Protocol Stack</title>
    <style type="text/css">
    
        .style3 {
        }
        
        .style5
        {
            width: 960px;
        }
        .style7
        {
            width: 321px;
            font-weight: 700;
        }
        .style12
        {
            width: 321px;
            font-weight: bold;
        }
        .style13
        {
            text-align: center;
        }

        .style15
        {
            text-align: justify;
            font-weight:normal;
            font-family:Arial;

        }

        .style17
        {
            width: 319px;
        }
        .style18
        {
            width: 144px;
            font-weight: 700;
            text-align: center;
        }
        .style19
        {
            width: 144px;
            font-weight: bold;
            text-align: center;
        }
        .style20
        {
            width: 319px;
            font-weight: bold;
            text-align: center;
        }
        .style21
        {
            text-align: left;
            font-weight: bold;
        }
        .style22
        {
            width: 146px;
            font-weight: bold;
            text-align: center;
        }
        .style23
        {
            width: 321px;
            font-weight: bold;
            text-align: center;
        }
        .style24
        {
            width: 146px;
            font-weight: 700;
            text-align: center;
        }

        .style25
        {
            width: 144px;
            text-align: center;
        }

        .style26
        {
            width: 960px;
            border-style: solid;
            border-width: 1px;
        }
        .style27
        {
            width: 148px;
            font-weight: bold;
            text-align: center;
        }
        .style28
        {
            text-align: left;
            font-weight: bold;
            width: 417px;
        }
        
    </style>
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('Images/Maize.jpg') ; ">
    <form id="form1" runat="server">
    <div id="pageHeader">
    <h1>This is page Header</h1>
    </div>
<div id="ApplicationLayer" style="width:960px; height:300px; border: solid #000000; background-color:#FFCCFF;">
	<h1 class="style13"><a href="#AppLayer" style="text-decoration:none;">Application</a></h1>
	
    <div id="spaceApplication1" style="width:30px; height:200px; background:#FFCCFF; float:left;"></div>
	
    <div id="NameSysFileShare" style="width:120px; height:200px; background:#FFFFFF; float:left;">
      	<div id="NameSys" style="width:120px; height:90px; background:#FFFFFF; float:left;">
        <center><strong>Name System</strong></center> 
        	<div id="spaceNS1H" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div> 
		       	<div id="NameSysDNS" style="width:100px; height:60px; background:#FFCCFF; float:left;">
                <br />
        		<center><strong><a href="#dns" style="text-decoration:none;">DNS</a></strong>
        		</center>
        		</div>  
        </div>
        
        <div id="spaceFS2" style="width:120px; height:20px; background:#FFCCFF; float:left;"></div> 
		
        <div id="FileShare" style="width:120px; height:90px; background:#FFFFFF; float:left;">
        <center><strong>File Sharing</strong></center> 
       		<div id="spaceFS2H" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div> 
		        <div id="FileShareNFS" style="width:100px; height:60px; background:#FFCCFF; float:left;">
                <br />
        		<center><strong><a href="#nfs" style="text-decoration:none;">NFS</a></strong></center>
        		</div>  
        </div> 
	</div>

<!--- DNS and NFS section completed ok ---->

  	<div id="spaceHC2" style="width:10px; height:200px; background:#FFCCFF; float:left;"></div>
  	<div id="HostConfig" style="width:120px; height:200px; background:#FFFFFF; float:left;">
  	<center><strong>Host Config</strong></center>
		<div id="spaceHostConfig1" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    		<div id="BOOTP" style="width:100px; height:70px; background:#FFCCFF; float:left;">
    		<br />
    		<center><strong><a href="#bootp" style="text-decoration:none;">BOOTP</a></strong></center>
    		</div>
	<div id="spaceHostConfig2" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
		<div id="spaceHostConfig3" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    		<div id="DHCP" style="width:100px; height:70px; background:#FFCCFF; float:left;">
    		<br />
    		<center><strong><a href="#dhcp" style="text-decoration:none;">DHCP</a></strong></center>
    		</div>   
    
  	</div>
    
<!--- BOOTP and DHCP section completed ok ---->

    <div id="space3" style="width:10px; height:200px; background:#FFCCFF; float:left;"></div>
  	<div id="NwManegment" style="width:120px; height:200px; background:#FFFFFF; float:left;">
  	<center><strong>Network Management</strong></center>
	<div id="spaceNwMgmt1" style="width:10px; height:60px; background:#FFFFFF; float:left;"></div>  
    	<div id="SNMP" style="width:100px; height:60px; background:#FFCCFF; float:left;">
    	<br />
    		<center><strong><a href="#snmp" style="text-decoration:none;">SNMP</a></strong></center>
    	</div>
	<div id="NwMgmt2" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
	<div id="spaceNwMgmt3" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    	<div id="RMON" style="width:100px; height:70px; background:#FFCCFF; float:left;">
    	<br />
    		<center><strong><a href="#rmon" style="text-decoration:none;">RMON</a></strong></center>
    	</div>  

  	</div>

<!--- SNMP and RMON section completed ok  ---->

	<div id="space4" style="width:10px; height:200px; background:#FFCCFF; float:left;"></div>
  	<div id="FileTransfer" style="width:120px; height:200px; background:#FFFFFF; float:left;">
  	<center><strong>File Transfer</strong></center>
	<div id="spaceFileTransfer1" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    	<div id="FTP" style="width:100px; height:70px; background:#FFCCFF; float:left;">
    	<br />
    		<center><strong><a href="#ftp" style="text-decoration:none;">FTP</a></strong></center>
    	</div>
	<div id="spaceFileTransfer12" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
	<div id="spaceFileTransfer13" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    	<div id="TFTP" style="width:100px; height:70px; background:#FFCCFF; float:left;">
    	<br />
    		<center><strong><a href="#tftp" style="text-decoration:none;">TFTP</a></strong></center>
    	</div>  


	</div>
    
<!--- FTP and TFTP section completed ok --->

	<div id="space5" style="width:10px; height:200px; background:#FFCCFF; float:left;"></div>
  	<div id="EmailNews" style="width:120px; height:200px; background:#FFFFFF; float:left;">
  	<center><strong>E-mail & News</strong></center>
	<div id="spaceEmailNews1" style="width:10px; height:30px; background:#FFFFFF; float:left;"></div>  
    	<div id="MIME" style="width:100px; height:30px; background:#FFCCFF; float:left; font-size:14px; ">
        <center><strong><a href="#rfc822" style="text-decoration:none;">RFC822 / MIME</a></strong></center>
    	</div>
	<div id="spaceEmailNews2" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
	<div id="spaceEmailNews3" style="width:10px; height:30px; background:#FFFFFF; float:left;"></div>  
    	<div id="SMTP" style="width:100px; height:30px; background:#FFCCFF; float:left;">
       	<center><strong><a href="#smtp" style="text-decoration:none;">SMTP</a></strong></center>
    	</div>
	<div id="spaceEmailNews4" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
	<div id="spaceEmailNews5" style="width:10px; height:30px; background:#FFFFFF; float:left;"></div>  
    	<div id="POPIMAP" style="width:100px; height:30px; background:#FFCCFF; float:left;">
       	<center><strong><a href="#pop" style="text-decoration:none;">POP / IMAP</a></strong></center>
    	</div>
    <div id="spaceEmailNews6" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
   	<div id="spaceEmailNews7" style="width:10px; height:30px; background:#FFFFFF; float:left;"></div>   
    	<div id="NNTP" style="width:100px; height:20px; background:#FFCCFF; float:left;">
    	<center><strong><a href="#nntp" style="text-decoration:none;">NNTP</a></strong></center>
    	</div>      
    

  	</div>
    
 <!--- Email and News section completed ok --->

    
	<div id="space6" style="width:10px; height:200px; background:#FFCCFF; float:left;"></div>
  	<div id="WWWGopher" style="width:120px; height:200px; background:#FFFFFF; float:left;"><center>
	<strong>WWW & Gopher</strong></center>
	<div id="spaceWWWGopher1" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    	<div id="HTTP" style="width:100px; height:70px; background:#FFCCFF; float:left;">
    	<br />
    		<center><strong><a href="#http" style="text-decoration:none;">HTTP</a></strong></center>
    	</div>
	<div id="spaceWWWGopher2" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
	<div id="spaceWWWGopher3" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    	<div id="Gopher" style="width:100px; height:70px; background:#FFCCFF; float:left;">
    	<br />
    		<center><strong><a href="#gopher" style="text-decoration:none;">Gopher</a></strong></center>
    	</div>
  	
    </div>  
    
<!--- HTTP and Gopher section completed ok --->
    
	<div id="space7" style="width:10px; height:200px; background:#FFCCFF; float:left;"></div>
  	<div id="Interactive" style="width:120px; height:200px; background:#FFFFFF; float:left;"><center>
	<strong>Interactive</strong></center>
	<div id="spaceInteractive1" style="width:10px; height:30px; background:#FFFFFF; float:left;"></div>  
    	<div id="Telnet" style="width:100px; height:30px; background:#FFCCFF; float:left;">
    	<center><strong><a href="#telnet" style="text-decoration:none;">Telnet</a></strong></center>
    	</div>
	<div id="spaceInteractive2" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
	<div id="spaceInteractive3" style="width:10px; height:70px; background:#FFFFFF; float:left;"></div>  
    	<div id="rCommands" style="width:100px; height:70px; background:#FFCCFF; float:left;">
        <br />
    	<center><strong><a href="#rcom" style="text-decoration:none;">"r" Commands</a></strong></center>
    	</div>
	<div id="spaceInteractive4" style="width:120px; height:20px; background:#FFFFFF; float:left;"></div> 
   	<div id="spaceInteractive5" style="width:10px; height:30px; background:#FFFFFF; float:left;"></div>   
    	<div id="IRC" style="width:100px; height:30px; background:#FFCCFF; float:left;">
    	<center><strong><a href="#irc" style="text-decoration:none;">IRC</a></strong></center>
    	</div>        


  	</div>  
    
<!--- Telnet, "r" commands and IRC section completed ok --->    
</div>

<!--- Application Layer ok --->

<div id="TCPLayer" style="width:960px; height:200px; border: solid #000000; background-color:#FFCCFF;">
	<h1 class="style13"><a href="#TransportLayer" style="text-decoration:none;">Transport</a></h1>
    <div id="spaceUDP1" style="width:20px; height:100px; background:#FFCCFF; float:left;"></div>
    <div id="UDP" style="width:450px; height:100px; background:#FFFFFF; float:left;">
    <br /><br />
    <center class="style3"><strong><a href="#udp" style="text-decoration:none;">UDP</a></strong></center>
  </div>
  <div id="spaceTCP1" style="width:20px; height:100px; background:#FFCCFF; float:left;"></div>
    <div id="TCP" style="width:450px; height:100px; background:#FFFFFF; float:left;">
    <br /><br />
    <center><strong><a href="#tcp" style="text-decoration:none;">TCP</a></strong>
    </center>
  </div>

<!--- UDP and TCP section completed ok --->
</div>

<!--- Transport Layer ok --->

<div id="InternetLayer" style="width:960px; height:300px; border: solid #000000; background-color:#FFCCFF;">
	<h1 class="style13"><a href="#Internet" style="text-decoration:none;">Internet</a></h1>
	<div id="spaceInternet1" style="width:60px; height:200px; background:#FFCCFF; float:left;"></div>
    	<div id="IP" style="width:400px; height:200px; background:#FFFFFF; float:left;">
    		<div id="spaceIP1" style="width:10px; height:200px; background:#FFFFFF; float:left;"></div>
    
    			<div id="IPv4" style="width:230px; height:200px; background:#FFFFFF; float:left;">
    			<br /><br /><br /> 
    			<span class="style3"><br />
    			</span>
    			<center class="style3">
    			  <span class="style3"><strong><a href="#ip" style="text-decoration:none;">Internet Protocol <br /> 
      			(IP / IPv4, IPv6)</a></strong></span>
    			</center>
		  </div> 
		  <div id="spaceIP2" style="width:10px; height:200px; background:#FFFFFF; float:left;"></div>
    		<div id="spaceIP3" style="width:140px; height:40px; background:#FFFFFF; float:left;"></div>
    			<div id="IPNAT" style="width:140px; height:20px; background:#FFCCFF; float:left;">
    			<center><strong><a href="#ipnat" style="text-decoration:none;">IP NAT</a></strong>
    			</center>
		  </div>
    		<div id="spaceIP4" style="width:140px; height:40px; background:#FFFFFF; float:left;"></div>
    			<div id="IPSec" style="width:140px; height:20px; background:#FFCCFF; float:left;">
    			<center><strong><a href="#ipsec" style="text-decoration:none;">IP Sec</a></strong>
    			</center>
		  </div>
    		<div id="spaceIP5" style="width:140px; height:40px; background:#FFFFFF; float:left;"></div>
    			<div id="MobileIP" style="width:140px; height:20px; background:#FFCCFF; float:left;">
    			<center><strong><a href="#mobileip" style="text-decoration:none;">Mobile IP</a></strong>
    			</center>
		  </div>
    	
        </div> 
        
<!--- IP section completed ok --->

	<div id="spaceInternet2" style="width:20px; height:200px; background:#FFCCFF; float:left;"></div>
		<div id="IPSupportProtocol" style="width:200px; height:200px; background:#FFFFFF; float:left;">
        <center><strong>IP Support Protocols</strong></center>
        	<div id="spaceICMP1" style="width:10px; height:180px; background:#FFFFFF; float:left;"></div>
            	<div id="ICMP" style="width:180px; height:80px; background:#FFCCFF; float:left;">
                <center><strong><br /><a href="#icmp" style="text-decoration:none;">
                ICMP / ICMPv4 , ICMPv6</a></strong>
                </center>
          </div>
 			<div id="spaceND1" style="width:180px; height:20px; background:#FFFFFF; float:left;"></div>       
            	<div id="ND" style="width:180px; height:60px; background:#FFCCFF; float:left;">
                <center><strong><br /><a href="#nd" style="text-decoration:none;">Neighbour Discovery (ND)
                </a></strong></center>
                </div>
        
        
        </div>
  
<!--- IP support protocol section completed ok ---->
 
 	<div id="spaceInternet3" style="width:20px; height:200px; background:#FFCCFF; float:left;"></div>
    	<div id="IPRoutingProtocol" style="width:200px; height:200px; background:#FFFFFF; float:left;">
        <center><strong>IP Routing Protocols</strong></center>
        	<div id="spaceIPRoutProt1" style="width:20px; height:160px; background:#FFFFFF; float:left;"></div>
            <div id="spaceIPRoutProt2" style="width:160px; height:20px; background:#FFFFFF; float:left;"></div>
            <div id="IPRoutProt" style="width:160px; height:140px; background:#FFCCFF; float:left;">
            <center><br />
              <p><strong><a href="#rip" style="text-decoration:none;">RIP, OSPF,
              <br />
              GGP, HELLO,
              <br />
              IGRP, EIGRP,
              <br />
              BGP, EGP </a>
              </strong></p>
              </center>
            </div>
        
        </div>
        
<!--- IP Routing Protocol section ok ---->

</div>

<!--- Internet Layer ok --->

<div id="L2-L3Layer" style="width:960px; height:20px; background-color:#FFFFFF; float:left;"></div>

<div id="L2-L3" style="width:960px; height:140px; background-color:#FFFFFF; float:left;">
	<div id="spaceARPL2-L3" style="width:20px; height:120px; background:#FFFFFF; float:left;"></div>
	<div id="ARP" style="width:450px; height:120px; background-color:#FFCCFF; float:left;">
	<center><strong><br /> <br /><br />
	    <span class="style3"><a href="#arp" style="text-decoration:none;">
	    Address Resolution Protocol (ARP)</a></span></strong>
	</center>
    </div>
	<div id="space2L2-L3" style="width:20px; height:120px; background-color:#FFFFFF; float:left;"></div>
	<div id="RARP" style="width:450px; height:120px; background-color:#FFCCFF; float:left;">
	<center><strong><br /> <br /><br />
	    <span class="style3"><a href="#rarp" style="text-decoration:none;">
	    Reverse Address Resolution Protocol (RARP)</a></span></strong>
	</center>
    </div>
</div>

<!--- L2-L3 section ok --->

<div id="NetworkInterface" style="width:960px; height:240px; border:solid #000000; background-color:#FFCCFF; float:left;">
<h1 class="style13"><a href="#NetworkInterface" style="text-decoration:none;">Network Interface</a></h1>
	<div id="space" style="width:20px; height:140px; background:#FFCCFF; float:left;"></div>
    <div id="SLIP" style="width:300px; height:140px; background:#FFFFFF; float:left;">
    <center><strong><br /><br /><br />
        <span class="style3"><a href="#slip" style="text-decoration:none;">
        Serial Line Interface Protocol (SLIP)</a></span>)</strong>
    </center>
    </div>
	<div id="space1" style="width:20px; height:140px; background:#FFCCFF; float:left;"></div>
  <div id="PPP" style="width:300px; height:140px; background:#FFFFFF; float:left;">
    <center><strong><br /><br /><br />
        <span class="style3"><a href="#ppp" style="text-decoration:none;">
        Point-to-Point Protocol (PPP)</a></span></strong>
    </center>
  </div>
	<div id="space2" style="width:20px; height:140px; background:#FFCCFF; float:left;"></div>
  <div id="HwDriver" style="width:280px; height:140px; background:#FFFFFF; float:left;">
    <center><strong><br /><br /><br />
        <span class="style3">( LAN / WLAN / WAN <br /> Hardware Drivers )</span></strong>
    </center>
  </div>
    
    
</div>
<!--- Protocol block diagram completed ---->

<!--- Protocol layer description ---->

<div id="description" style="width:960px; height:auto; float:left;">
<br />
<br />
    <h2><a id="NetworkInterfaceLayer">Network Interface Layer Protocols</a></h2>
    
</div>

    </form>
    <table border="1" class="style5">
        <tr>
            <td class="style23">Protocol Name</td>
            <td class="style22">Protocol Abbrivation</td>
            <td class="style21">&nbsp;Description</td>
        </tr>
        <tr>
            <td class="style12">
            <h3><a id="slip" href="Pages/slip.aspx" style="text-decoration:none">Serial Line Internet Protocol</a></h3>
            </td>
            <td class="style24">SLIP</td>
            <td class="style15">
            Provides TCP/IP functionality by creating layer two connection between two 
            devices over a serial line.</td>
        </tr>
        <tr>
            <td class="style7"><h3><a id="ppp" href="Pages/ppp.aspx" style="text-decoration:none">Point - to - Point Protocol</a></h3></td>
            <td class="style24">
                PPP</td>
            <td class="style15">
                Provides layer-two connectivity like SLIP, but is much more sophisticated and 
                capable. PPP is itself a suite of protocols that allow for functions such as 
                authentication, data encapsulation, and agregation, facilitating TCP/IP 
                operation over WAN links.</td>
        </tr>
    </table>
    <h2><a id="L2L3" >Network Interface / Network Layer ("OSI Layer 2/3") Protocols</a></h2>
        <table border="1" class="style5">
        <tr>
            <td class="style23">
                Protocol Name</td>
            <td class="style22">
                Protocol Abbrivation</td>
            <td class="style21">&nbsp;Description</td>
        </tr>
        <tr>
            <td class="style12">
                <h3><a id="arp" href="Pages/arp.aspx" style="text-decoration:none">Address Resolution Protocol</a></h3>
            </td>
            <td class="style24">
                ARP</td>
            <td class="style15">
                Used to map layer three IP address to layer two physical network addresses.</td>
        </tr>
        <tr>
            <td class="style7">
                <h3><a id="rarp" href="Pages/rarp.aspx" style="text-decoration:none">Reverse Address Resolution Protocol</a></h3>
            </td>
            <td class="style24">
                RARP</td>
            <td class="style15">
                Determines the layer three addresses of a machine from its layer two address. 
                Now mostly superseded by BOOTP and DHCP. </td>
        </tr>
    </table>
    <h2><a id="Internet" >Network Layer (OSI Layer 3) Protocols</a></h2>
    
    <table border="02" class="style5">
        <tr>
            <td class="style20">
                Protocol Name</td>
            <td class="style19">
                Protocol Abbrivation</td>
            <td style="font-weight: 700">
                &nbsp;&nbsp;&nbsp; Description</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="ip" href="Pages/ip.aspx" style="text-decoration:none">Internet Protocol</a></h3>
                <h3><a id="ipv6" href="Pages/ipv6.aspx" style="text-decoration:none">Internet Protocol Version 6</a></h3>
            </td>
            <td class="style25">
                <b>IP , IPv6</b></td>
            <td class="style15">
                Provides encapsulation and connectionless delivery of transport layer messages 
                over a TCP/IP network. Also responsible for addressing and routing functions. </td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="ipnat" href="Pages/ipnat.aspx" style="text-decoration:none">IP Network Address Translation</a></h3>
            </td>
            <td class="style18">
                IP NAT</td>
            <td class="style15">
                Allows addresses on a private network to be automatically translated to 
                different addresses on public network, providing address sharing and security 
                benefits. (Note that some people don&#39;t consider IP NAT to be a protocol in the 
                strict sense of that word.)</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="ipsec" href="Pages/ipsec.aspx" style="text-decoration:none">IP Security</a></h3>
            </td>
            <td class="style18">
                IP Sec</td>
            <td class="style15">
                A set of IP-related protocols that improve the security of&nbsp; IP 
                transmissions.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="mobileip" href="Pages/mobileip.aspx"style="text-decoration:none">Internet Protocol Mobility Support</a></h3>
            </td>
            <td class="style18">
                Mobile IP</td>
            <td class="style15">
                Resolves certain problems with IP associated&nbsp; with mobile devices.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="icmp" href="Pages/icmp.aspx" style="text-decoration:none">Internet Control Message Protocol</a></h3>
            </td>
            <td class="style18">
                ICMP / ICMPv4,&nbsp; ICMPv6</td>
            <td class="style15">
                A &quot;support protocol&quot; for IP and IPv6 that provides the error reporting and 
                information request-and-reply capabilities to the hosts. </td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="nd" href="Pages/nd.aspx" style="text-decoration:none">Neighbour Discovery Protocol</a></h3>
            </td>
            <td class="style18">
                ND</td>
            <td class="style15">
                A new &quot;support protocol&quot; for IPv6 that includes several functions performed by 
                ARP and ICMP in conventional IP.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="rip" href="Pages/rip.aspx" style="text-decoration:none">Routing Information Protocol</a></h3>
                <h3><a id="ospf" href="Pages/ospf.aspx" style="text-decoration:none">Open Shortest Path First</a></h3>
                <h3><a id="ggp" href="Pages/ggp.aspx" style="text-decoration:none">Gateway-to-Gateway Protocol</a></h3>
                <h3><a id="hello" href="Pages/hello.aspx" style="text-decoration:none">HELLO Protocol</a></h3>
                <h3><a id="igrp" href="Pages/igrp.aspx" style="text-decoration:none">Interior Gateway Routing Protocol</a></h3>
                <h3><a id="eigrp" href="Pages/eigrp.aspx" style="text-decoration:none">Enhance Interior Gateway Routing Protocol</a></h3>
                <h3><a id="bgp" href="Pages/bgp.aspx" style="text-decoration:none">Border Gateway Protocol</a></h3>
                <h3><a id="egp" href="Pages/egp.aspx" style="text-decoration:none">Exterior Gateway Protocol</a></h3>               
            </td>
            <td class="style18">
                RIP,<br />
                OSPF,<br />
                GGP,<br />
                HELLO,<br />
                IGRP,<br />
                EIGRP,<br />
                BGP,<br />
                EGP</td>
            <td class="style15">
                Protocols used to support the routing of IP datagrams and the exchange of 
                routing information.</td>
        </tr>
    </table>

    <h2><a id="TransportLayer" >Transport Layer (OSI Layer 4) Protocols</a></h2>
    
    <table border="1" class="style5">
        <tr>
            <td class="style23">
                Protocol Name</td>
            <td class="style22">
                Protocol Abbrivation</td>
            <td class="style21">&nbsp;Description</td>
        </tr>
        <tr>
            <td class="style12">
                <h3><a id="tcp" href="Pages/tcp.aspx" style="text-decoration:none">Transmission Control Protocol</a></h3>
            </td>
            <td class="style24">
                TCP</td>
            <td class="style15">
                The main transport layer protocol for TCP/IP. Establishes and manages&nbsp; 
                connections between devices and ensures reliable and flow-controlled delivery of 
                data using IP.&nbsp; </td>
        </tr>
        <tr>
            <td class="style7">
                <h3><a id="udp" href="Pages/udp.aspx" style="text-decoration:none">User Datagram Protocol</a></h3>
            </td>
            <td class="style24">
                UDP</td>
            <td class="style15">
                A transport protocol that can be considered a &quot;severely stripped-down&quot; version 
                of&nbsp; TCP. It is used to send data in a simple way between application 
                processes, without the many reliability and flow management features of TCP, but 
                often with the greater efficiency. </td>
        </tr>
    </table>    

    <h2><a id="AppLayer">Application Layer (OSI Layer 5/6/7) Protocols</a></h2>

  
    <table border="1" class="style26">
        <tr>
            <td class="style23">
                Protocol Name</td>
            <td class="style22">
                Protocol Abbrivation</td>
            <td class="style28">&nbsp;Description</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="dns" href="Pages/dns.aspx" style="text-decoration:none">Domain Name System</a></h3>
            </td>
            <td class="style27">
                DNS</td>
            <td class="style15">
                Provides the ability to refer to IP devices using names instead of just 
                numerical IP addresses. Allows machines to resolve these names into their 
                corresponding IP addresses.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="nfs" href="Pages/nfs.aspx" style="text-decoration:none">Network File System</a></h3>
            </td>
            <td class="style27">
                NFS</td>
            <td class="style15">
                Allows files to be shared seamlessly across TCP/IP networks.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="bootp" href="Pages/bootp.aspx" style="text-decoration:none">Bootstrap Protocol</a></h3>
            </td>
            <td class="style27">
                BOOTP</td>
            <td class="style15">
                Developed to address some of the issues with RARP and used in a similar manner: 
                to allow the configuration of a TCP/IP devices at startup.Generally superseded 
                by DHCP.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="dhcp" href="Pages/dhcp.aspx" style="text-decoration:none">Dynamic Host Configuration Protocol</a></h3>
            </td>
            <td class="style27">
                DHCP</td>
            <td class="style15">
                A complete protocol for configuring TCP/IP devices and managing IP addresses. 
                The successor to RARP and BOOTP, it includes numerous features and capabilities.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="snmp" href="Pages/snmp.aspx" style="text-decoration:none">Simple Network Management Protocol</a></h3>
            </td>
            <td class="style27">
                SNMP</td>
            <td class="style15">
                A full-featured protocol for remote management of networks and devices.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="rmon" href="Pages/rmon.aspx" style="text-decoration:none">Remote Monitoring</a></h3>
            </td>
            <td class="style27">
                RMON</td>
            <td class="style15">
                A diagnostic &quot;protocol&quot; (really a part of SNMP) used for remote monitoring of 
                network devices.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="ftp" href="Pages/ftp.aspx" style="text-decoration:none">File Transfer Protocol</a></h3>
                <h3><a id="tftp" href="Pages/tftp.aspx" style="text-decoration:none">Trivial File Transfer Protocol</a></h3>
            </td>
            <td class="style27">
                FTP,<br />
                TFTP</td>
            <td class="style15">
                Protocols designed to permit the transfer of the all types of files from one 
                device to another.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="rfc822" href="Pages/rfc822.aspx" style="text-decoration:none">RFC 822</a></h3>
                <h3><a id="mime" href="Pages/mime.aspx" style="text-decoration:none">Multipurpose Internet Mail Extensions</a></h3>
                <h3><a id="smtp" href="Pages/smtp.aspx" style="text-decoration:none">Simple Mail Transfer Protocol</a></h3>
                <h3><a id="pop" href="Pages/pop.aspx" style="text-decoration:none">Post Office Protocol</a></h3>
                <h3><a id="imap" href="Pages/imap.aspx" style="text-decoration:none">Internet Message Access Protocol</a></h3>
            </td>
            <td class="style27">
                RFC 822,<br />
                MIME,<br />
                SMTP,<br />
                POP,<br />
                IMAP</td>
            <td class="style15">
                Protocols that defines the formating, delivery and storage of electronic mail 
                messages on TCP/IP networks.</td>
        </tr>
        <tr>
            <td class="style17">
            <h3><a id="nntp" href="Pages/nntp.aspx" style="text-decoration:none">Network News Transfer Protocol</a></h3>
            </td>
            <td class="style27">
                NNTP</td>
            <td class="style15">
                Enables the operation of the Usenet online community by transferring Usenet news 
                messages between hosts.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="http" href="Pages/http.aspx" style="text-decoration:none">
                    Hypertext Transfer Protocol</a></h3>
            </td>
            <td class="style27">
                HTTP</td>
            <td class="style15">
                Tranfers hypertext documents between hosts; implements the World Wide Web.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="gopher" href="Pages/gopher.aspx" style="text-decoration:none">
                    Gopher Protocol</a></h3>
            </td>
            <td class="style27">
                Gopher</td>
            <td class="style15">
                An older document retrieval protocol, now largely replaced by World Wide Web.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="telnet" href="Pages/telnet.aspx" style="text-decoration:none">
                    Telnet Protocol</a></h3>
            </td>
            <td class="style27">
                Telnet</td>
            <td class="style15">
                Allows user on one machine to establish a remote terminal session on another.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="rcom" href="Pages/rcom.aspx" style="text-decoration:none">
                    Berkeley &quot;r&quot; Command</a></h3>
            </td>
            <td class="style27">
                -</td>
            <td class="style15">
                Permit commands and operations on one machine to be performed on another.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a id="irc" href="Pages/irc.aspx" style="text-decoration:none">
                    Internet Relay Chat</a></h3>
            </td>
            <td class="style27">
                IRC</td>
            <td class="style15">
                Allows real-time chat between TCP/IP users.</td>
        </tr>
        <tr>
            <td class="style17">
                <h3><a href="Pages/admin.aspx" style="text-decoration:none">
                    Administration and Troubleshooting Utilities and Protocols</a></h3>
            </td>
            <td class="style27">
                -</td>
            <td class="style15">
                A collection of software tools that allows administrators to manage, configure 
                and troubleshoot TCP/IP internetworks.</td>
        </tr>

    </table>

  
</body>
</html>
