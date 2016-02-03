<%@ Control Language="C#" ClassName="Header" %>

<script runat="server">

</script>
<div id="header" style="width:1024px; margin-left:auto; margin-right:auto;">
    <img src="../Images/jain.jpg" alt="Jain IDJO" border="1" width="960" />
</div>
<div style="width:600px; margin-left:auto; margin-right:auto;">
    <ul id="nav" class="drop">
        
        <li><a href="../TcpipStructure.aspx">Home</a></li>
        <li><a href="../TcpipStructure.aspx#AppLayer">Application</a>
            <ul><li>Name System
  		            <ul>
        	            <li><a href="../Pages/dns.aspx">DNS</a></li>
                    </ul>
                </li>
                <li>File Sharing
  		            <ul>
        	            <li><a href="../Pages/nfs.aspx">NFS</a></li>
                    </ul>
                </li>
                <li>Host Config
  		            <ul>
        	            <li><a href="../Pages/bootp.aspx">BOOTP</a></li>
                        <li><a href="../Pages/dhcp.aspx">DHCP</a></li>
                    </ul>
                </li>
                <li>Network Management
  		            <ul>
        	            <li><a href="../Pages/snmp.aspx">SNMP</a></li>
                        <li><a href="../Pages/rmon.aspx">RMON</a></li>
                    </ul>
                </li>
                <li>File Transfer
  		            <ul>
        	            <li><a href="../Pages/ftp.aspx">FTP</a></li>
                        <li><a href="../Pages/tftp.aspx">TFTP</a></li>
                    </ul>
                </li>
                <li>Email and News
  		            <ul>
        	            <li><a href="../Pages/rfc822.aspx">RFC822</a></li>
                        <li><a href="../Pages/mime.aspx">MIME</a></li>
        	            <li><a href="../Pages/smtp.aspx">SMTP</a></li>
                        <li><a href="../Pages/pop.aspx">POP</a></li>
        	            <li><a href="../Pages/imap.aspx">IMAP</a></li>
                        <li><a href="../Pages/nntp.aspx">NNTP</a></li>                               
                    </ul>
                </li>
                <li>WWW and Gopher
  		            <ul>
        	            <li><a href="../Pages/http.aspx">HTTP</a></li>
                        <li><a href="../Pages/gopher.aspx">Gopher</a></li>
                    </ul>
                </li>
                <li>Interactive
  		            <ul>
        	            <li><a href="../Pages/telnet.aspx">Telnet</a></li>
                        <li><a href="../Pages/rcom.aspx">r Commands</a></li>
                        <li><a href="../Pages/irc.aspx">IRC</a></li>
                    </ul>
                </li>
            </ul>
        </li>

        <li><a href="../TcpipStructure.aspx#TransportLayer">Transport</a>
            <ul>
		        <li><a href="../Pages/udp.aspx">UDP</a></li>
		        <li><a href="../Pages/tcp.aspx">TCP</a></li>
            </ul>
        </li>

        <li><a href="../TcpipStructure.aspx#Internet">Internet</a>
            <ul><li>IP
  		            <ul>
			        <li><a href="../Pages/ipconcept.aspx">IP</a>
            	        <ul>
                	        <li><a href="../Pages/ip.aspx">IPv4</a></li>
                            <li><a href="../Pages/ipv6.aspx">IPv6</a></li>
                        </ul>
                    </li>
			        <li><a href="../Pages/ipnat.aspx">IP NAT</a></li>
			        <li><a href="../Pages/ipsec.aspx">IP Sec</a></li>
			        <li><a href="../Pages/mobileip.aspx">Mobile IP</a></li>
	        </ul>
        </li>
        <li>IP Support Protocol
  		    <ul>
			    <li><a href="../Pages/icmp.aspx">ICMP</a></li>
			    <li><a href="../Pages/nd.aspx">ND</a></li>
		    </ul>
        </li>
        <li>IP Routing Protocol
  		    <ul>
			    <li><a href="../Pages/rip.aspx">RIP</a></li>
			    <li><a href="../Pages/ospf.aspx">OSPF</a></li>
			    <li><a href="../Pages/ggp.aspx">GGP</a></li>
			    <li><a href="../Pages/hello.aspx">HELLO</a></li>
			    <li><a href="../Pages/igrp.aspx">IGRP</a></li>
			    <li><a href="../Pages/eigrp.aspx">EIGRP</a></li>
			    <li><a href="../Pages/bgp.aspx">BGP</a></li>
			    <li><a href="../Pages/egp.aspx">EGP</a></li>
		    </ul>
        </li>
       </ul>
    </li>

    <li><a href="../TcpipStructure.aspx#arp">Layer 2 / 3</a>
        <ul>
		    <li><a href="../Pages/arp.aspx">ARP</a></li>
		    <li><a href="../Pages/rarp.aspx">RARP</a></li>
        </ul>
    </li>

    <li><a href="../TcpipStructure.aspx#NetworkInterface">Network Interface</a>
        <ul>
		    <li><a href="../Pages/slip.aspx">SLIP</a></li>
		    <li><a href="../Pages/ppp.aspx">PPP</a></li>
        </ul>
    </li>
</ul>
</div>   

