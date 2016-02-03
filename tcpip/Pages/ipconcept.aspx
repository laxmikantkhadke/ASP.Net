<%@ Page Language="C#" %>

<%@ Register src="../Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IP</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            text-align: justify;
        }
        .style2
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            text-align: justify;
        }        
        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            text-align: justify;
        }        
        </style>
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('../Images/Maize.jpg') ; ">

    <form id="form1" runat="server">
    
        <uc1:Header ID="Header1" runat="server" />
      <div style="margin-left:auto; margin-right:auto; width:1024px; float:left; ">  
      <h1>
            Internet Protocol (IP) Concepts and Overview
      </h1>
      <p class="style1">
      IP is a very important protocol in internetworking; it wouldn't be an exaggeration to say that 
      you can not really comprehend modern networking without a good understanding of IP. 
      Unfortunately, IP can  be somewhat difficult to understand. This is probably because due to its
      importance, a large amount of complexity has become associated with the protocol over the
      years, to allow it to meet the many demands placed upon it.
      <br /><br />
      Before diving into the details of how IP works, I feel it is worthwhile to take a high-level look
      at IP and what it does. In this section I provide a brief examination of basic concepts related to 
      the Internet Protocol and how it works. I begin with an overview of IP, how it operates in
      basic terms and the most important characteristics of how it does its job. I then expand on
      this discussion by describing the main functions of Internet Protocol, which can be used
      as an introduction to the remainder of the sections that explain IP in considerably more details.
       I conclude with a brief look at the history of development of IP, its versions, and how
       it has spawned the development of several IP-related protocols.
      </p>
      <p class="style3">IP Overview and Key Operational Characteristics</p>
      <p class="style1">
      The Internet Protocol (IP) is the core of the TCP/IP protocol suite and its main protocol at
      the network layer. The network layer is primerily concerned with the delivery of data, not
      between devices on the same physical network, but between devices that may be on
      different networks that are interconnected in an arbitrary manner: an internetwork. IP is the
      mechanism by which this data is sent on TCP/IP networks. (It does have help from other
      protocols at the network layer too, of course!)
      <br /><br />
      Let's look at the TCP/IP layer model and consider what IP does from an architectural stand-
      point. As the layer three protocol, it provides a service to the layer four in the TCP/IP stack,
      represented mainly by the TCP and UDP protocols. This service is to take data that has 
      been packaged by either TCP or UDP, manipulate it as necessary, and send it out. This 
      service sometimes called internetwork  datagram delivery, as shown in figure.
      </p>
      <p style="text-align:center">
          <img src="../Images/ip/ip_internetworking1.png" alt="IP Internetworking" />
      </p>
      <p class="style1">
      As we will see, there are many details to how exactly this service is accomplished, but in a 
      nutshell, that's what IP does: sends data from point A to point B over an internetwork of
      connected networks.
      </p>
      <p class="style2">Key IP Characteristics</p>
      <p class="style1">
      Of course there are a myriad of ways in which IP could have been implemented in order to
      accomplish this task. To understand how the designers of TCP/IP made IP work, let's take a
      look at the key characteristics used to describe IP and the general manner in which it operates.
      The Internet Protocol is said to be : 
      </p>
      <ul class="style1">
        <li><p><strong>Universally-Addressed :</strong> In order to send data from point A to point B, it is necessary
        to ensure that devices know how to identify which device is "point B". IP defines the 
        addressing mechanism for the network and uses these addresses for delivery purposes.</p></li>
        <li><p><strong>Underlying-Protocol Independent :</strong> IP is designed to allow the transmission of data
        across any type of underlying network that is designed to work with TCP/IP stack. It 
        includes provisions to allow it to adapt to the requirements of various lower-level protocols such as Ethernet
        or IEEE 802.11. IP can also run on the special data link protocols SLIP and PPP
        that were created for it. An important example is IP's ability to fragment large blocks 
        of data into smaller ones to match size limits of physical
        networks, and then have the recipient reassemble the pieces again as needed.</p></li>
        <li><p><strong>Delivered Connectionlessly :</strong> IP is connectionless protocol. This means that when
        A wants to send data to B, it does not first set up connection to B and then send tha 
        data - it just makes the datagram and sends it.</p> </li>
        <li><p><strong>Delivered Unreliably :</strong> IP is said to be an "unreliable protocol". That does not means that
        one day your IP software will decide to go fishing rather than run your network. It 
        does mean that when datagrams are sent from device A to device B, device A just sends
         each one and then moves on to the next. IP does not keep track of the ones it 
         sent. It does not provide reliability or service quality capabilities such as error
         protection for data sends (through it does on the IP header), flow control or
         retransmission of lost datagrams.</p>
         <p>For this reason, IP is sometimes called a best-effort protocol. It does what it can to get
         data to where it needs to go, but "makes no guarantees" that the data will octually get there.
         </p></li>
         <li><p><strong>Delivered Without Acknowledgments :</strong> In a similar manner to its unreliable nature, IP 
         does not use acknowledgements. When device B gets a datagram from device A, it
         does not send back a "thank you note" to tell A that the datagram was received. It
         leaves device A "in the dark" so to speak.</p></li>
      
      </ul>
        <p class="style2">IP's Success Despite Its Limitations</p>    
        <p class="style1">
        The last three characteristics in the preceding list might be enough to make you cringe,
        thinking that giving your data to IP would be somewhat like trusting a new car to your 
        sixteen-year-old son. If we are going to build our entire network around this protocol, why
        design it so that it works without connections, does not guarantee that the data will get there,
        and has no means of acknowledging receipt data?
        <br /><br />
        The reason is simple: establishing connections, guaranteering delivery, error-checking and 
        similar "insurance" functions  have a cost: performance. It takes time, computer resources
        and network bandwidth to perform these task, and they are not always necessary for every
        application. Now consider that IP carries pretty much all user traffic on TCP/IP network.
        To build this complexity into IP would burden all trffic with this overhead whether it was
        needed or not.
        <br /><br />
        The solution taken by the designers of TCP/IP was to exploit the power of layering. If
        service quality features such as connections, error-checking or guaranteed delivery are
        required by an application, they are provided at the transport layer (or possibly, the application 
        layer). On the other hand, applications that do not need these features can avoid using
        them. This is in fact the major distinction between the two TCP/IP transport layer protocols:
        TCP and UDP. TCP is full featured but bit slower than UDP; UDP is spartan in its capabilities, 
        but faster than TCP. This system is really the "best of both worlds". And unlike your
        teenager with the shiny new license, it has been proven to work well in the real world.
        </p>
        <p class="style3">IP Functions</p>
        <ul class="style1">
        <li><p><strong>Addressing :</strong> In order to perform the job of delivering datagrams, IP must know where
        to deliver them to! For this reason, IP includes a mechanism for host addressing.
        Furthermore, since IP operates over internetworks, its system is designed to allow
        unique addressing of devices across arbitrarily large networks. It also contains a 
        structure to facilitate the routing of datagrams to distant network if that is required.</p>
        <p>Since most of the other TCP/IP protocols use IP, understanding the IP addressing
        scheme is of vital importance to comprehending much of what goes on in TCP/IP.</p></li>
        <li><p><strong>Data Encapsulation and Formatting/Packaging :</strong> As the TCP/IP network layer
        protocol, IP accepts data from the transport layer protocols UDP and TCP. It then
        encapsulates this data into an IP datagram using a special format prior to
        transmission.</p></li>
        <li><p><strong>Fragmentation and Reassembly :</strong> IP datagrams are passed down to the data link
        layer for transmission on the local network. However, the maximum frame size of each
        physical/data-link network using IP may be different. For this reason, IP includes the
        ability to fragment IP datagrams into pieces so they can each be carried on the local
        network. The receiving device uses the reassembly function to recreate the whole IP
        datagram again.</p></li>
        <li><p><strong>Routing / Indirect Delivery :</strong> When an IP datagram must be sent to a destination on
        the same local network, this can be done easily using the network's underlying LAN/
        WLAN/WAN protocol using what is sometimes called direct delivery. However, in many
        (if not most cases) the final destination is on a distant network not directly attached to
        the source. In this situation the datagram must be delivered indirectly. This is accomplished
        by routing the datagram through intermediate devices (shockingly called
        routers). IP accomplishes this in concert with support from the other protocols
        including ICMP and the TCP/IP gateway/routing protocols such as RIP and BGP.</p></li>
        </ul>
        <p class="style2">IP Related Protocols</p>
        <p class="style1">
        In addition to our “old” and “new” versions of IP, there are several protocols that I call IPrelated.
        They are not parts of IP proper, but protocols that add to or expand on the capabilities
        of IP functions for special circumstances. These are:
        </p>
        <ul class="style1">
        <li><p><strong>IP Network Address Translation (IP NAT / NAT) :</strong> This protocol provides IP address
        translation capabilities to allow private networks to be interfaced to public networks in
        a flexible manner. It allows public IP addresses to be shared and improves security by
        making it more difficult for hosts on the public network to gain unauthorized access to
        hosts. It is commonly called just “NAT” but it works on IP addresses so I think “IP NAT”
        is more clear.</p></li>
        <li><p><strong>IP Security (IPSec) :</strong> Defines a set of sub-protocols that provide a mechanism for
        secure transfer of data using IP. IPSec is rapidly growing in popularity as a security
        protocol to enable virtual private networks (VPNs).</p></li>
        <li><p><strong>Mobile IP :</strong> A protocol that addresses some of the difficulties associated with using IP
        on computers that frequently move from one network to another. It provides a
        mechanism to allow data to be automatically routed to a mobile host (such as a
        notebook computer) without requiring the device's IP address to be constantly reconfigured.</p></li>
        </ul>
        <p class="style1">
        IP is divided into five sections corresponding to IPv4, IPv6, IP NAT, IPSec and Mobile IP.</p>
      
            
    </div>
    <a href="../TcpipStructure.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" width="50" />
    </a>
    </form>
</body>
</html>
