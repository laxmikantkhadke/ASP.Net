<%@ Page Language="C#" %>

<%@ Register src="../Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PPP</title>
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
            font-size: 22px;
        }
        .style3
        {
            font-size: 20px;
        }
        .style4
        {
            font-size: medium;
        }
        .style7
        {
            font-weight: bold;
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style8
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            height: 62px;
            font-weight: bold;
        }
        .style9
        {
            font-weight: bold;
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style12
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            text-align: justify;
        }
        .style13
        {
            font-size: medium;
            font-weight: bold;
        }
        .style14
        {
            width: 266px;
        }
        .style15
        {
            width: 112px;
        }
        .style16
        {
            text-decoration: underline;
        }
        .style17
        {
            font-size: 22px;
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('../Images/Maize.jpg')  ; ">

    <form id="form1" runat="server">
    
        <uc1:Header ID="Header1" runat="server" />
     <div style="margin-left:auto; margin-right:auto; width:1024px; float:left; ">  
            <h1>
            Point - to - Point Protocol (PPP)
            </h1>
            <p class="style1">
            PPP defines complete method for robust data link connectivity between units using serial lines or
            other physical layers. It includes numerous capabilities and features, including error detection, 
            compression, authentication, encryption and much more.
            <br />
            In short PPP was developed to be a complete protocol suit that would enable fully-functional layer two connectivity
             to support not just IP but the transmission of other network layer protocols as well.  
            <br /><br />
            The history of PPP goes back to the late 1980s, when SLIP was de facto standard for
             serial IP implementations. The first formal IETF document related to PPP was RFC 1134,
              published in 1989. This RFC is not the standard itself but a proposal for what would
              eventually be
                defined as the first main PPP standard, RFC 1171, in 1990. This early document 
                has been revised several times and several other documents added that define the 
                various protocols that complete the entire PPP suit.</p>
            <p class="style1">
                PPP is connection - oriented protocol that enables layer two links over a variet 
                of different physical layer connections. It is supported on both synchronous and 
                asynchronous lines, and can operate in half duplex or full duplex mode. It was 
                designed to carry IP traffic but is general enough to allow any type of network 
                layer datagram to be sent over PPP connection. As its name implies, it is for 
                point-to-point connections between exactly two devices, and assumes that frames 
                are sent and received in the same order.<br /><br />
                PPP fits into the Network Interface Layer (Link Layer) in the TCP/IP model. The operation of PPP 
                follows a specific sequence including a multi-step link establishment phase that 
                may include optional authentication.
             <br />
             <br />
             </p>
             <p align="center">
             <img src="../Images/ppplayers.png" alt="PPP Layers" height="355" width="411" /> 
             <a href="ppp_osi.aspx" ><img src="../Images/pppNosi.PNG" alt="OSI and PPP Layers" title="Click to open PPP and OSI layer" height="355" width="275" />
             </a>
             </p>
            <h3 style="font-size: 20px; font-weight: bold; ">PPP advantages and Benefits</h3>
             <p class="style1">
             Some of the specific benefits of PPP compared to SLIP include :
             </p>
             <ul class="style1">
                <li>A more comprehensive framing mechanism, compared to the single END character in SLIP.</li>
                <li>Specification of encapsulated protocol, to allow multiple layer three protocols to be
                multiplexed on a single link.</li>
                <li>Error detection for each transmitted frame through the use of a CRC code in each 
                frame header.</li>
                <li>A robust mechanism for negotiation link parameters, including the maximum frame 
                size permitted</li>
                <li>A method for testing links before datagram transmission take place, and monitoring 
                link quality.</li>
                <li>Support for authentication of the connection using multiple authentication protocols.</li>
                <li>Support for additional optional features, including compression, encryption and link
                aggregation (allowing two devices to use multiple physical links as if they were a
                single, higher-performance link).</li>
             </ul>
            
             <h2 style="font-size: 22px; font-weight: bold; text-decoration: underline">PPP 
                 Component and General Operation</h2>
             <p class="style1">
             PPP stands for the Point-to-point <em style="font-weight: bold">protocol</em>, but even the 
             standard that defines PPP immediately starts describing protocols that comprise it.
             At the highest level, the functions of PPP can be broken down into several components.
             Each of these encompasses a general class of PPP functionally, and is represented by either one protocol
              in the suit or a set of protocols.
              </p>
              <h3 style="font-size: 20px; font-weight: bold; ">Main PPP Components</h3>
              <p class="style1">
              The PPP standard itself describes three main components of PPP.<br />
              </p>
              <ul>
                  <li><p class="style1">
                  <strong>PPP Encapsulation Method:</strong> The primery job of PPP is to take higher-layer
                  messages such as IP datagrams and encapsulate them for transmission over the
                  underlying physical layer link. To this end, PPP defines a special frame format for
                  encapsulating data for transmission, based on the framing used in the HDLC protocol.
                  The PPP frame has been specially designed to be small in size and contains only
                  simple fields, to maximize bandwidth efficeiency and speed in processing.         
                      </p>
                  </li>
                  <li><p class="style1">
                  <strong>Link Control Protocol (LCP):</strong> The PPP 
                  <a href="#LCP" style="text-decoration:none"><strong>Link Control Protocol (LCP)</strong></a> is responsible for
                  setting up, maintaing and terminating the link between devices. It is a flexible, extensible protocol
                  that allows many configuration parameters to be exchanged to ensure
                  that both devices agree on how the link will be used.
                      </p>
                  </li>
                  <li><p class="style1">
                  <strong>Network Control Protocols (NCPs) :</strong> PPP supports the encapsulation of many
                  different layer three diagram types. SOme of these require additional setup before the 
                  link can be activated. After the general link setup is completed with LCP, control is 
                  passed to the PPP <a href="#NCP" style="text-decoration:none"><strong>Network Control Protocol (NCP)</strong></a>
                   specific to the layer three protocol
                  being carried on the PPP link. For example, when IP is carried over PPP the NCP
                  used is the PPP Internet Protocol Control Protocol (IPCP). Other NCPs are defined for
                  supporting the IPX protocol, the NetBIOS Frames (NBF) protocol, and so forth.
                  </p>
                  </li>
            </ul>
            <p class="style1">
            The PPP encapsulation method and LCP are defined in the main PPP standard and some 
            support standards; the NCPs are described in separate standard documents, one per NCP.
            </p>
            <h3 style="font-size: 20px; font-weight: bold; ">Additional PPP Functional Groups</h3>
            <p class="style1">
            While the three components above do constitute much of the total package of PPP, there is two
             additional functional groups. These represent some of many extra protocols that have been added 
              over time to the suit to support or enhance the basic operation of PPP :
            </p>
            <ul>
                <li><p class="style1">
                <strong>LCP Support Protocols :</strong> Several protocols are included in the PPP suite that are
                used during the link negotiation process, either to manage it or toconfigure options.
                Examples include the <a href="#CHAP" style="text-decoration:none">Authentication protocols <strong>CHAP</strong></a> and 
                <a href="#PAP" style="text-decoration:none"><strong>PAP</strong></a>, which are used by LCP during the optional
                 authentication phase.
                </p>
                </li>
                <li><p class="style1">
                <strong>LCP Optional Feature Protocols :</strong> A number of protocols have been added to the 
                basic PPP suite over the years to enhance its operation after a link has been set up
                and datatgrams are being passed between devices. For example, the<a href="#" style="text-decoration:none">
                PPP <strong>Compression Control Protocol (CCP)</strong></a> allows compression of PPP data, the 
                <a href="#" style="text-decoration:none">PPP <strong>Encryption Control Protocol (ECP)</strong></a>
                enables datagrams to be encrypted for security,
                and the <a href="#" style="text-decoration:none"><strong>PPP Multilink Protocol (PPP MP)</strong></a>
                allows a single PPP link to be operated over
                multiple physical links. The use of these features often also requires additional setup 
                during link negotiation, so several define extensions (such as extra configuration options)
                that are negotiated as part of LCP.
                 
                </p>
                </li>
            </ul>  
            <p class="style1">
            Each of these addtional protocols is generally defined by different standards document.
            </p>
            <h3 style="font-size: 20px; font-weight: bold; ">PPP General Operation</h3>
            <p class="style1">The fact that the PPP suite includes literally dozens of protocols often makes it seem like it
            must be a really complex technology. In fact, general operation of PPP is really quite
            straight-forward. The existence of all those PPP protocols allows PPP to be flexible and
            extensible, supporting many higher layer datagram types and various features.<br />
            The bottom line, however, is that PPP operation involves just three basic steps. Beginning 
            in a state where there is no PPP link between the devices, these are the operations that 
            occure in PPP
            </p>
            <ul>
                <li><p class="style1">
                <strong>Link Setup and Configuration : </strong> 
                Before the two devices can exchange information,
                they must make contact and set up a link between them. During link setup, all the
                parameters needed to manage the operation of the link are agreed upon by the two devices.
                The LCP begins this process, and invokes the help of support protocols as they 
                are needed, for options like authentication. After the link is set up in general
                terms, the appropriate NCP is called for whatever layer three technology is being
                carried on the link to complete link setup. 
                </p>
                </li>
                <li>
                <p class="style1"><strong>Link Operation :</strong>
                The devices on the link use it to send datagrams. Each device
                transmits by taking layer three datagrams, encapsulating them and sending them
                down to layer one to be transmitted. Each device receives by taking PPP frames sent
                up from its own physical layer, stripping off the PPP header and passing the datagram 
                up to layer three. Where appropriate, optional feature protocols are used here, such as
                CCP for compression.
                </p>
                </li>
                <li>
                <p class="style1"><strong>Link Termination :</strong>
                When either device decides it no longer wants to communicate, it
                terminates the link. The link can of course be re-established if desired.
                </p>
                </li>
            </ul>
            <p align="center">
             <img src="../Images/PPP_operation.png" alt="PPP Operation" height="360" width="1000" />
            </p>
            <p class="style1">
            Link setup is by far the most complicated of these general steps, as it involves several
            substeps used to negotiate link parametersand options. The next topic describes the steps 
            in link setup, and discuss the phases that link passes through as it is set up, used and 
            eventually terminated.
            </p>
            <h3 style="font-weight: bold; text-decoration: underline" class="style2">PPP Link Setup and Phases</h3>
            <p class="style1">
            Before data can be exchanged on PPP connection, a link must be set up between the two 
            devices. As part of this setup task, a configuration process is undertaken whereby the two
            configure the link and agree on the parameters for how data should be passed between
            them. Only after this is completed can frames actually pass over the link.
            <br /><br />
            The <a href="#LCP" style="text-decoration:none"><strong>PPP Link Configuration Protocol (LCP)</strong></a>
            is generally in charge of setting up and 
            maintaining PPP links. LCP may invoke an <a href="#Auth" style="text-decoration:none">authentication protocol </a>
            (PAP or CHAP) when 
            PPP is configured to use authentication. After an LCP link has been opened, PPP invokes
            one or more <a href="#NCP" style="text-decoration:none">Network Control Protocols (NCPs)</a>
            for the layer three protocol being carried on the link. These 
            perform any network-layer-specific configuration needed before the link can
            carry that paricular network layer protocol.
            <br /><br />
            The operation of a PPP link can be described as having a "life" of sort. Just as humans are 
            born, grow, have an adult life span and then die, a PPP link is established, configured, used 
            and eventually terminated. The process of setting up, using and closing a PPP link is 
            described in the PPP standard as a series of phases or states. This is a type of finite state 
            mechanism (FSM), a tool used to explain operation of protocols.
            </p>
            <h3 style="font-size: 20px; font-weight: bold; text-decoration: underline;">PPP Link Phases</h3>           
            <p class="style1">
            When we talk about a PPP link overall, we are talking about the status of LCP
            connection between the two devices; again, LCP governs the overall state of PPP as a
            whole. Once an LCP link has been opened, each of NCPs used on the link can be 
            opened or closed independently of the overall PPP (LCP) link. We'll see how this works
            momentarily.
            <br /><br />
            An excellent way of understaning how PPP works is to look at these phases, and the
            process by which transition is made from one to the next during the lifetime of the link. For
            purposes of clarity, this description is based on an example where device A is a PC
            perfoeming a dial-up networking connection to remote host B.
            </p>
            <p align="center">
            <img src="../Images/ppp_link_phases.png" alt="PPP Link Phases" 
            height="600" width="1000" />
            </p>
            <p style="font-size: 20px; font-weight: bold; ">Link Dead Phase</p>
            <p class="style1">
            By design, the PPP link always begins and ends in this phase. This phase represents the
            situation where there is no physical layer link established between the two devices. It
            remains here until the physical layer link set up, at which point the link proceeds to the
            <em>Link Establishment</em> phase.
            <br /><br />
            In our example, when A is first turned on, there is no physical layer connection (modem 
            connection) between it and B. Once the connection is made, the link can proceed to phase 
            2. (Note that in a direct connection, such as a serial cable linking two PCs, the link may only
            stay in the <em>Link Dead</em> phase for a fraction of second, until the physical layer connection is
            detected.)
            </p>
            <p style="font-weight: bold; " class="style3">Link Establishment Phase</p>
            <p class="style1">
            The physical layer is now connected and LCP performs the basic setup of the link. Device A 
            sends an LCP configuration request message to device B over the physical link, specifying
            the parameters it wishes to use. If device B agrees, it replies with an acknowledgement. If
            what it won't accept. Device A can then try different configuration request with new 
            parameters that device B will hopefully accept. This process is described in more detail in 
            the topic covering LCP.
            <br /><br />
            Hopefully, A and B will eventually come to agreement. If so, the status of the link is 
            considered LCP open, and will proceed to the <em>Authentication</em> phase. If they cannot come to 
            an agreement, the physical link is terminated, and we go back to the <em>Link Dead</em> phase.
             </p>
             <p style="font-weight: bold; " class="style3">Authentication Phase</p>
           <p class="style1">
           In many cases, a device may require authentication before it will permit connection of 
           another device. (This is certainly usually the case when PPP is used for dial-up.) Authentication
           is not considered mandatory in PPP, however. When it is used, the appropriate
           authentication protocol (CHAP or PAP) is employed.
           <br /><br />
           After successful authentication, the link proceeds to the <em>Network-Layer Protocol</em> phase.
           If aurhentication is not successful, the link fails and transitions to the <em>Link Termination</em>
           phase.<br /><br />
           Once the basic link has been configured and authentication completed, the general setup of
           the LCP link is complete. Now, the specific configuration of the appropriate network layer 
           protocol is performed by invoking the appropriate NCP, such as IPCP, IPXCP and so forth.
           <br /><br />
           Each particular network layer protocol whose NCP is successfully configured is considered 
           to be open on the LCP link. More than one NCP can be open on a particular PPP link, and 
           each can be closed independently when it is no longer needed. After all necessary NCPs 
           have been invoked, the link proceed to the <em>Link Open</em> state, even if none were 
           successfully opened.
           </p>
           <p style="font-weight: bold; " class="style3">Link Open Phase</p>
            <p class="style1">
            In this state, the LCP link and one or more NCP links are open and operational. Data can be
            passed for each NCP that has been successfully set up.
            <br /><br />
            The link can be terminated at any time by either device for a variety of reasons. Thee may
            include user request (you hit the "disconnect" button when you want to log off your dial-up
            session); link quality problems (the modem hangs up on you due to line noise); or somme
            other cause (you spend too much time in the bathroom and your ISP's idle timer logs you out).
            When any of these occure the LCP link is broken and the link transitions to the 
            <em>Link Termination</em> phase.
            </p>
            <p style="font-weight: bold; " class="style3">Link Termination Phase</p>
            <p class="style1">
            The device terminating the link sends a special LCP termination frame, and the other
            device acknowledges it. The link then goes back to the <em>Link Dead</em> phase. In the case where
            the termination was by request and the physical layer connection is still active, the PPP 
            implementation is supposed to specifically signal the physical layer to terminate the layer
            one connection.
            </p>
            <p style="font-weight: bold; " class="style3">Differentiating LCP and NCP Links</p>
            <p class="style1">
            Remember that the basic link is established by LCP, and NCP links are set up within the
            LCP link. Closing an NCP link does not cause the LCP link to be closed. Even if all NCPs are closed, 
            the LCP link remains open. (Of course, no data can be passed untill an
            appropriate NCP link is re-established; a device is required to discard frames received containing
            any layer three protocol that does not have an opened NCP.) To terminate a PPP
            connection, only the LCP link needs to be terminated in the <em>Link Termination</em> phase; the
            NCPs do not need to be explicity closed. 
            </p>
            <p style="font-weight: bold; " class="style3">PPP Link Setup and Phase Summery</p>

<table width="1000" border="0" align="center">

  <tr bgcolor="#9999FF" class="style1">
    <td width="101" class="style13"><div align="center"><strong><span class="style12">Phase / State</span></strong></div></td>
    <td width="144" class="style4"><strong>Phase Summary</strong></td>
    <td width="83"><div align="center" class="style4"><strong>LCP Link Status upon Entry to Phase</strong></div></td>
    <td width="83"><div align="center" class="style4"><strong>NCP Link Status upon Entry to Phase</strong></div></td>
    <td width="152"><div align="center" class="style4"><strong>Transition Requirement</strong></div></td>
    <td width="192"><div align="center" class="style4"><strong>Transition To Phase</strong></div></td>
  </tr>
  <tr>
    <td class="style7"><strong>Link Dead</strong></td>
    <td class="style9">Default State; Physical Layer not connected.</td>
    <td class="style9">Closed</td>
    <td class="style9">Closed</td>
    <td class="style9">Successful Physical layer Connection.</td>
    <td class="style9">Link Establishment</td>
  </tr>
  <tr>
    <td rowspan="2" bgcolor="#9999FF" class="style7"><strong>Link Establishment</strong></td>
    <td rowspan="2" bgcolor="#9999FF" class="style9">Physical layer connected, basic configuration of link performed by LCP.</td>
    <td rowspan="2" bgcolor="#9999FF" class="style9">Closed</td>
    <td rowspan="2" bgcolor="#9999FF" class="style9">Closed</td>
    <td height="43" bgcolor="#9999FF" class="style9">Successful Negotiation</td>
    <td bgcolor="#9999FF" class="style9">Authentication</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF" class="style9">Unsuccessful Negotiation.</td>
    <td bgcolor="#FFFFFF" class="style9">Link Dead</td>
  </tr>
  <tr>
    <td bgcolor="#9999FF" class="style7" rowspan="2">Authentication</td>
    <td bgcolor="#9999FF" class="style9" rowspan="2">Basic link is now opened, and optional authentication 
        of device is performed.</td>
    <td bgcolor="#9999FF" class="style9" rowspan="2">Open</td>
    <td bgcolor="#9999FF" class="style9" rowspan="2">Closed</td>
    <td bgcolor="#9999FF" class="style9">Successful Authentication or No Authentication Required.</td>
    <td bgcolor="#9999FF" class="style9">Network Layer Protocol</td>
  </tr>
  <tr>
    <td class="style8">Unsuccessful Authentication.</td>
    <td class="style8">Link Termination</td>
  </tr>
  <tr>
    <td bgcolor="#9999FF" class="style7">Network Layer Protocol</td>
    <td bgcolor="#9999FF" class="style9">One or more NCPs open an NCP link within the LCP link.</td>
    <td bgcolor="#9999FF" class="style9">Open</td>
    <td bgcolor="#9999FF" class="style9">Closed</td>
    <td bgcolor="#9999FF" class="style9">All NCPs Opened</td>
    <td bgcolor="#9999FF" class="style9">Link Open</td>
  </tr>
  <tr>
    <td class="style7">Link Open</td>
    <td class="style9">Link is Open and Operating normally.</td>
    <td class="style9">Open</td>
    <td class="style9">Open</td>
    <td class="style9">Link Failure or Close request</td>
    <td class="style9">Link Termination.</td>
  </tr>
  <tr>
    <td bgcolor="#9999FF" class="style7">Link Termination</td>
    <td bgcolor="#9999FF" class="style9">LCP link is shut down</td>
    <td bgcolor="#9999FF" class="style9">Open</td>
    <td bgcolor="#9999FF" class="style9">Open</td>
    <td bgcolor="#9999FF" class="style9">&nbsp;</td>
    <td bgcolor="#9999FF" class="style9">Link Dead</td>
  </tr>
</table>
            
       <p style="font-weight: bold; " class="style3">PPP Applications</p>  

<table width="1000" border="0" align="center">

  <tr bgcolor="#9999FF" class="style1">
    <td class="style15">RFC</td>
    <td class="style14">Standard Name</td>
    <td>Description</td>
  </tr>
  <tr>
        <td class="style9">1618</td>
        <td class="style9"><a href="#" style="text-decoration:none" title="PPP over ISDN">PPP over ISDN</a></td>
        <td class="style9">Describes application perticulars for running PPP over
        ISDN link.</td>
  </tr>
  <tr bgcolor="#9999FF">
        <td class="style9">1973</td>
        <td class="style9"><a href="#" style="text-decoration:none" title="PPP over Frame Relay">PPP in Frame Relay</a>
        </td>
        <td class="style9">Describes how PPP may be modified to run over Frame Relay at 
            layer two.</td>
  </tr>
  <tr>
        <td class="style9">2290</td>
        <td class="style9"><a href="#" style="text-decoration:none" title="PPP IPCP over Mobile-IPv4">Mobile-IPv4 Configuration 
        option for PPP IPCP</a></td>
        <td class="style9">Defines changes to PPP Internet Protocol Control Protocol (IPCP)
        to support Mobile IP.</td>
  </tr>
  <tr bgcolor="#9999FF">
        <td class="style9">2364</td>
        <td class="style9"><a href="#" style="text-decoration:none" title="PPP over ATM">PPP Over ATM (PPPoA)</a></td>
        <td class="style9">Defines a method for sending PPP frames over AAL5 (ATM);
        Commonly called PPPoA</td>
  </tr>
  <tr>
        <td class="style9">2516</td>
        <td class="style9"><a href="#" style="text-decoration:none" title="PPP over Ethernet">PPP Over Ethernet (PPPoE)</a></td>
        <td class="style9">Defines a technique for encapsulating PPP frames over
        Ethernet (PPPoE)</td>
  </tr>
  <tr bgcolor="#9999FF">
        <td class="style9">2615</td>
        <td class="style9"><a href="#" style="text-decoration:none" title="Packet over SONET">PPP over SONET/SDH</a></td>
        <td class="style9">Discuss how encapsulate PPP frames over 
        SONET/SDH links.</td>
  </tr>
  
  
</table>     
    <br />

    <p style="font-weight: bold; " class="style2">PPP Protocol Frame Format</p>
    <p class="style1">
    The PPP protocol suite includes a number of different protocols used to send both data and
    control information in different ways. Each of these packages information into messages
    called <em>frames</em>, each of which follows a particular <em>frame format.</em> PPP starts with general
     frame format that encompasses all frames sent on the link, and then includes more specific 
     format for different purposes. Understanding these format not only make diagnosing
     PPP issues easier, it also helps make more clear how the key PPP protocol function.
    <br /><br />
    In this section we are going to study the most common frame formats used for sending both data and
    control information over PPP. Then we begin with an explanation of the overall format used for all
    PPP frames. We also study the general format used for the various control protocols and
    the option format that most of them use.(One of the nice things about PPP is that so many
    of the protocols use control frames with common format.)
    </p>
    <a id="PPPGenFrame" name="PPPGenFrame" style="font-weight: bold; " class="style3">
    PPP General Frame Format</a>
    <p class="style1">
    All messages sent using PPP can be considered either <em>data</em> or <em>control information.</em> The
    word "data" describes the higher-layer datagrams we are trying to transport here at layer 
    two; this is what our "customers" are giving us to send. Control information is used to 
    manage the operation of the variousprotocols within PPP itself. Even though different 
    protocols in the PPP suite use many types of frames, at the highest level they all fit into a single, 
    <em>general frame format.</em>
    <br /><br />
    The basic operation of the suite is based on the ISO 
    High-Level Data Link Control (HDLC) protocol. This becomes very apparent when the structure of PPP
    frames overall - they use the same basic format as HDLC, even to
    the point of including certain fields that aren't strictly necessary for PPP itself. The only
    major change is the addition of new field to specify the protocol of the encapsulated data.
    The general structure of PPP frames is defined in RFC 1662, a "companion" to the main
    PPP standard RFC 1661.
    <br /><br />
    The general frame format for PPP, showing how the HDLC framing is applied to PPP, is 
    described below in table and figure.
    </p>
         <img src="../Images/ppp_general_frame_format.png" alt="PPP general frame format" width="1000" height="768" />
      
         <img src="../Images/ppp_general_frame_format_frame.png" alt="PPP general frame " width="1000" height="400"/>
    <p class="style1">
    All PPP frames are built upon the general format shown above. The first three bytes are fixed in value,
    followed by a two-byte <em>Protocol</em> field that indiactes the frame type. The variable-length <em>Information</em>
    field is formatted in variety of ways, depending on the PPP frame type. <em>Padding</em> may be applied to the frame, 
    which concludes with an FCS field of either 2 or 4 bytes (2 bytes shown here) and a trailing Flag value of 0x7E. See
    figure for an example of how this format is applied.
    </p>
         <img src="../Images/sample_ppp_data_frame.png" alt="Sample PPP data frame " width="1000" height="500"/>
    <p class="style1">
    Above fig shows one common application of the PPP general frame forma: carrying
    data. The value 0x0021 in the <em>Protocol</em> field marks this as an IPv4 datatgram. This sample
    has one byte of Padding and 2-byte FCS as well. (Obviously real IP datagrams are longer
    than the 23 bytes shown here. These bytes are arbitrary and don't represent a real datagram.)
    </p>
  
    <p style="font-weight: bold; " class="style3">Protocol field ranges</p>
    <p class="style1">
    The Protocol field is the main "frame type" indicator for the device receiving the frame. For,
    data frames this is normallynetwork layer protocol that created the datagram, and for control frames, 
    the PPP protocol that created the control message. In the case of protocols
    that modify data such as when <strong>compression (CCP)</strong> or <strong>encryption (ECP)</strong>
    are used, this field identifies the data being either compressed or encryptted, and the original Protocol 
    value is extracted after the <em>Information</em> field is decompressed / decrypted.
    <br /><br />
    There are dozens of network layer protocols and PPP control protocols, and correspondingly
    large number of protocol values. The main PPP standard defines four ranges for 
    organizing these values, as shown in following table.
    </p>
         <asp:Image ID="ELkay_PPP_field_Ranges" ImageUrl="~/Images/ppp_protocol_field_ranges.png" runat="server" 
          usemap="PPPFieldRange" />
            <map id="PPPFieldRange" name="PPPFieldRange">
            <area shape="rect" coords="816,123,957,138" href="#NCP" visible="true" title="PPP NCP" alt="NCPFieldRange"/>
            <area shape="rect" coords="244,149,374,168" href="#NCP" visible="true" title="PPP NCP" alt="NCPFieldRange"/>
            <area shape="rect" coords="244,404,523,421" href="#NCP" visible="true" title="PPP NCP" alt="NCPFieldRange"/>
            <area shape="rect" coords="457,465,493,482" href="#LCP" visible="true" title="PPP LCP" alt="LCPFieldRange"/>
            <area shape="rect" coords="820,468,857,485" href="#PAP" visible="true" title="PPP PAP" alt="PAPFieldRange"/>
            <area shape="rect" coords="902,468,958,485" href="#CHAP" visible="true" title="PPP CHAP" alt="CHAPFieldRange"/>
                       
            </map>
    
    <p style="font-weight: bold; " class="style3">Protocol Field Values</p>
    <p class="style1">
    The full list of PPP Protocol values is maintained by the <strong>Internet Assigned Numbers Authority (IANA)</strong>
    along with all the other different reserved numbers for Internet standards. Following 
    table shows some of the more common values :
    </p>
         <img src="../Images/protocol_field_value1.png" alt="Protocol field values" width="1000" />
    <p style="font-weight: bold; " class="style3">PPP Field Compression</p>
    <p class="style1">
    PPP uses the HDLC basic framing strusture, which includes two field that are needed in 
    HDLC but not in PPP due to how the latter operates: the Address and Control fields. Why 
    bother sending two bytes that have the same value for every frame and aren't used for anything?
    Originally they were maintained for compatibility, but this reduces efficiency.
    <br /><br />
    To avoide wasting two bytes in every frame, it is possible during initial link setup using LCP
    for the two devices on the link to negotiatea feature called <strong>Address and Control Field Compression 
    (ACFC)</strong> using the LCP option by that same name. When enabled, this feature simply causes these two fields
    not to be sent for most PPP frames (but not LCP control frames). In fact, the feature would be better named "Address
     and Control Field Suppression" because the fields are just suppressed: compressed down to nothing.
    <br /><br />
     Now, even when devices agree to use field compression, they must still be capable of 
     receiving bothe "compressed" and "uncompressed" frames. They differentiate one from the
     other by looking at first two bytes after the initial Flag field. If they contain the value
     0xFF03, they must the Address and Control fields; otherwise, those fields were
     suppressed.(The value 0xFF03 is not a valid Protocol field value, so there is no chance of
     ambiguity).
     <br /><br />
     Similarly, it is also possible for the two devices on the link to negotiate compression of the
     Protocol field, so it takes only one byte instead of two. This is done generally by dropping 
     the first byte if it is zero, a process called <strong>Protocol Field Compression (PFC).</strong>
     Recall that the first byte must be even and the second odd. Thus, a receiving device examines the 
     evennes of the first byte of the Protocol field in each frame. If it is odd, this means that a 
     leading byte of zeroes in the Protocol field has been suppressed, because the first byte of a 
     full two-byte Protocol value must be even.
   </p>
   
    <p style="font-weight: bold; " class="style3">PPP General Control Protocol Frame Format and Option 
    Format </p>
    <p class="style1">
    A general frame format is used for all of the many frame types defined in the PPP protocol
    suite. Within that format, the Information field carries either encapsulated layer-three user
    data, or encapsulated control messages. These control messages contain specific information
    that is used to configure, manage and discontinue PPP links, and to implement the
    various features that comprise PPP.
    <br /><br />
    The control protocols each use control messages in a slightly different way, but there is also
    a great deal of commonality between the messages in many of them. This is because most of the
    control protocols such as the NCP family, CCP and ECP are implemented as "subsets" of the functionality
    of the Link Control Protocol. They perform many of same functions, so the PPP designers wisely
    "adapted" the LCP messaging system for these other control protocols.
    <br /><br />
    This all means that control protocol frames have themselves a common format that fits within the overall 
    general frame format in PPP. Even protocols like PAP and CHAP that aren't based LCP use this general 
    control frame format, which is described in following table.
    </p>
         <img src="../Images/ppp_control_message_frame_format.png" alt="PPP Control Message Frame Format" width="1000" />
    <p class="style1">
    This entire structure becomes the payload of PPP frame, meaning that it fits into 
    Information field of PPP frame, as shown following figure.
    </p>
         <img src="../Images/ppp_control_message_format.png" alt="Control message format" width="1000" />
    <p class="style1">
    Thus, the length field is equal in size to that
    of the information field in the PPP frame. The Protocol field of a control frame is set to 
    match the protocol that generated the control frame. For example, it would be 0xC021 for 
    an LCP frame.
    </p>
    <p style="font-weight: bold; " class="style3">PPP Control Messages and Code values</p>
    <p class="style1">
    The code field indicates the type of control frame within the particular control protocol.
    Some protocols have a unique set of codes used only by that particular protocol; examples 
    include the authentication protocols (PAP and CHAP) and the Bandwidth allocation protocol (BAP).
    Since the NCPs and many of the fature control protocols like CCP and ECP are based on LCP, they
     use a common set of message codes and types. Following table
     shows these common message codes, as well as a cross-reference table indicating which 
     control protocols use them:
    </p> 
         <img src="../Images/code_values_protocol_usage.png" alt="code value protocol usage" width="1000" />
    
    
    <span class="style16">
    <a id="LCP" name="LCP" style="font-weight: bold; " class="style2">
    PPP Link Control Protocol (LCP)
    </a>
    </span>
    <p class="style1">
    <em>PPP Link Control Protocol (LCP)</em> is most important protocol.
    LCP is the "boss" PPP; it is responsible for its overall successful
    operation, and for"supervising" (in a way) the actions of other protocols.<br />
    <br />
    PPP is about links, and LCP is about controlling those links. There are three main stages of "link
    life" and LCPplays a key role in each one:
    </p>        
    <ul class="style1">
        <li><strong>Link Configuration :</strong> The process of setting up and negotiating the parameters of 
        a link.</li>
        <li><strong>Link Maintenance :</strong> The process of managing an opened link.</li>
        <li><strong>Link Termination :</strong> The process of closing an existing link when it is no longer needed
        (or when the underlying physical layer connection closes).</li>
    </ul>
    <p class="style1">
    Each ofthese functions corresponds to one of the"life phases" of a PPP link. Link
    configuration is performed during the initial <em>Link Establishment</em> phase of a link; link maintenance
    occurs while the link is open, and of course, link termination happens in thhe <em>Link Termination</em> phase.
    Following figure represents a summery of LCP link, showing the different
    message exchanges performed by LCP during these different life phases of PPP
    connection.
    </p>
    
    <p align="center">
    <img src="../Images/PPP_LCP_message_exchange.PNG" alt="LCP message exchange" height="600" width="800" />
    </p>
    <p class="style1">
    Above diagram provides an overview of many of the messag exchanges performed by LCP during different
    phases of PPP connection. Link Configuration is here shown as simple exchange of a Configure-Request and Configure-Ack. 
    After subsequent exchanges using other PPP protocols to authenticate and configure one or more NCPs, the link 
    enters the Link open phase. In this example, an Echo-Request and Echo-Reply
    message are first used to test the link, followed by sending and receiving of data by both devices. One Data
    message is shown being rejected due to an invalid code field. Finally the link is terminatedusing Terminate-Request and Terminate-Ack 
    messages.
    </p>
    
    <p style="font-weight: bold; " class="style3">LCP Frames</p>
    <p class="style1">
    Devices use LCP to control the PPP link by sending special LCP messages across the
    physical link between them. These messages are called both LCP packets and LCP frames;
    while the standard uses "packet", the term "frame" is perferred because layer two
    messages are normally called frames. There are eleven different LCP frame types defined
    in the main PPP document, which are divided into three groups that correspond to the three
    link "life stages" above. Four LCP frame types are used for link configuration, five for 
    maintenance and two for termination. <span class="style16">The frame formats themselves are 
    described as follows</span>.
      
    </p>
         <asp:Image ID="PPPFrame1"  runat="server" ImageUrl="~/Images/PPPFrame1.png" height="800" width="500"
          usemap="PPPFrame1" />
            <map id="Elkays_commedy" name="PPPFrame1">
            <area shape="rect" coords="401,90,481,99" href="#LCP-Frame" visible="true" title="PPP LCP Frame format" alt="pppframe1"/>
            </map>

           <img src="../Images/PPPFrame2.png" alt="PPP frame 2" height="800" width="500"/>

    
    <p class="style1">
    Below I will discuss each of the three major functions of LCP and how the frames 
    are used in each.
    </p>
    <p style="font-weight: bold; " class="style3">LCP Link Configuration</p>
    <p class="style1">
    Link configuration is arguably the most important job that LCP does in PPP. During the 
    <em>Link Establishment</em> phase, LCP frames are exchanged that enable the two physically-connected
    devices to negotiate the conditions under which the link will operate. Following figure 
    shows the entire procedure.
    </p>
         <img src="../Images/PPP_LCP_link_configuration_process.png" alt="LCP Configuration Process" 
         height="700" width="1000" />
    <p class="style1">
    The process starts with the initiating device (let's call it device A) creating a <em>Configure-Request</em>
    frame that contains a variable number of configuration
    option that it wants to see set up on the link. This is basically device A's "wish list" for how
    it wants the link created.
    <br /><br />
    The main PPP document(RFC 1661) defines a number of different configuration options
    that the initiator can specify in this request. Any one of these can be included and if so, filled
    in with the value corresponding to what device A wants for that option. If absent, this means
    device A is neither requesting nor specifying that option. The six options are :
    
    </p>
    <ul class="style1">
        <li><strong>Maximum-Receive-Unit(MRU) :</strong>
        Lets device A specify the maximum size datagram it wants the link to be able to carry.</li>
        <li><strong>Authentication-Protocol :</strong>
         Device A can indicate the type of authentication protocol it wishes to use (if any).</li>
        <li><strong>Quality Protocol :</strong>
        If device A wants to enable quality monitoring on the link, what protocol to use (through three
        is only one currently defined :LQR).</li>
        <li><strong>Magic-Number :</strong>
        Used to detect looped back links or other anomalies in the connection.</li>
        <li><strong>Protocol-Field-Compression :</strong>
        Allows device A to specify that it  wants to use "compressed" (8 bit) Protocol 
        fields in PPP data frames instead of the normal 16 bit Protocol field.
        This provides a small but free saving (one byte) on each PPP frame.
        Note that this has nothing to do with the compression feature offered by CCP.
        See the <a href="#PPPGenFrame" style="text-decoration:none">PPP general frame format topic</a>
         for more on this feature. </li>
        <li><strong>Address-and-Control-Field-Compression :</strong>
        The same as the option just above but used to compress the <em>Address</em> and <em>Control</em> fields,
        again small bandwidth savings. See the <a href="#PPPGenFrame" style="text-decoration:none">PPP general frame format topic</a> for more.</li>
    </ul>
    <p class="style1">
    Other options may also be added to this list by optional feature protocols. For example,
    <a href="#" style="text-decoration:none">Multilink PPP</a> adds several options that must be negotiated
    during link setup.
    </p>

    <p style="font-weight: bold; " class="style3">LCP Link Maintenance</p>
    <p class="style1">
    Once the link has been negotiated, LCP passes control to appropriate authentication
    and/or NCP protocols. Eventually the link setup will complete and go into the open state. 
    LCP messages can then be used by either device to manage or debug the link :
    </p>
    <ul class="style1">
    <li><strong>Code-Reject and Protocol-Reject :</strong>
    These frame types are used to provide feedback when one device receives an
    invalid frame due to either an unrecognized LCP Code 
    (LCP frame type) or a bad Protocol identifier.</li>
    <li><strong>Echo-Request, Echo-Reply and Discard-Request :</strong>
    These frames can be used for testing link.</li>
    </ul>

    <p style="font-weight: bold; " class="style3">LCP Link Termination</p>
    <p class="style1">
    Finally, when the link is ready to be shut down, LCP terminates it. The device initiating the
    shutdown (which may not be the one that initiated the link in the first place) sends a <em>Terminate-Request</em>
    message. The other device replies back with a <em>Terminate-Ack.</em> A
    termination request indicates that the device sending it needs to close the link.
    </p>
    <p style="font-weight: bold; " class="style3">Other LCP Messages</p>
    <p class="style1">
    The standard RFC 1570, <strong>PPP LCP Extension</strong>, also defines two new LCP message types.
    The <em>Identification</em> message is used to allow a device to identify itself to its peer on the link.
    The <em>Time-Remaining</em> message lets one device tell the other how much time remains in the current session. 
    </p>
    
    <p style="font-weight: bold; " class="style3">Relationship Between LCP and Other PPP Protocols</p>
    <p class="style1">
    Note that many of other protocols used in PPP are modeled after LCP. They use the
    same basic techniques for establishing protocol connections, and send and receive a subset of LCP message types.
    They also exchange configuration options in a similar manner. The next topic shows
    how the Network Control Protocols (NCPs) are based on
    LCP. You will see the same thing in looking at feature protocols such as CCP, ECP and others.
    </p>
    
    <a id="Elkay2" name="LCP-Frame" style="font-weight: bold"; class="style2" >
    PPP Link Control Protocol (LCP) Frame Format
    </a>
         <img src="../Images/LCP_frame_type_fields.png" alt="LCP frame type fields" width="1000" />
         <img src="../Images/LCP_frame_type_fields2.png" alt="LCP frame type fields" width="1000" />
    <p class="style1">
    <strong>Note:</strong> LCP frame types 5, 6, 9, 10, 11, 12, and 13 allow an additional amount of 
    data to be included in Data field whose use is not strictly described by the
    protocol. The PPP standard says that this may be zerro or more octets that 
    "contains uninterpreted data for use by the sender" and "may consist of any binary value."
    The inclusion of this "uninterpreted data" is left as an implementation-dependent option.
    </p>
      
           

    <span class="style16">
    <a id="A2" name="NCP" style="font-weight: bold"; class="style2" >
    PPP Network Control Protocols (IPCP, IPXCP, NBFCP and others)
    </a>
    </span>
 
    <p class="style1">
    One of the reasons why PPP is such powerful technology is that it is flexible and
    expandable. Even though it was originally created with the idea of carrying IP datagrams,
    PPP's designers recognized that it would be short-sighted to think so narrowlt. PPP could
    easily carry data from many types of network layer protocols, and on some networks, it 
    might even be advantageous to let it carry datagrams from different layer three protocols
    simultaneously.
    <br /><br />
    Allowing PPP to support multiple network layer protocols would require it to have
    knowledge of each one's idiosyncrasies. If we used only LCP for link configuration, it would
    need to know all the unique requirements of each layer three protocol. This would also
    require that LCP be constantly updated as new layer three protocols were defined and as 
    new paramrters were defined for existing ones.
    <br /><br />
    Instead of this inflexible design, PPP takes a "modular" approach to link establishment. LCP
    performs the basic link setup, and after (optional) authentication, invokes a Network Control
    Protocol (NCP) that is specific to each layer three protocol that is carried over the link.
    The NCP conducts a negotiation of any parameters that are unique to the particular network
    layer protocol. More than one NCP can be run for each LCP link; the process of how this is
    done and the relationship between the NCP links and LCP link can be seen in the topic on PPP
    link setup and phases.
    <br /><br />
    Each of the common network layer technologies has a PPP NCP defined for it in a separate 
    RFC. These documents are usually named in this pattern: "The PPP &lt; layer three protocol
    name &gt; Control Protocol". The most common ones are <span class="style16">The PPP Internet Protocol
    Control Protocol (IPCP)</span>, <span class="style16">The PPP Internetworking Packet Exchange Control Protocol
    (IPXCP)</span>, and <span class="style16">The PPP NetBIOS Frames Control Protocol (NBFCP)</span>.
    These are the NCPs for IP, IPX and NBF (also called NetBEUI), respectively. A separate NCP is also defined for IP 
    version 6, the PPP IP version 6 Control Protocol (IPv6CP). 
    </p>
    <p style="font-weight: bold"; class="style3" >
    Operation of PPP Network Control Protocols 
    </p>
    <p class="style1">
    Each NCP operates very much like a "lite" version of LCP, you can see by examining following figure.
    </p>
    <img src="../Images/IPCP_message_exchange.png" alt="IPCP message exchange" width="1000" />
    <p class="style1">
    Like LCP, each NCP performs function for link setup, maintenance and termination - only it deals
    with its particular type of NCP link and not the "overall" LCP link. Each NCP uses a subset
    of seven of the message type defined in LCP, and uses them in very much the same way 
    as the message type of the same name is uused in LCP:
    </p>
    <ul class="style1">
    <li><strong>Link Configuration :</strong>
    The process of setting up and negotiating the parameters of the 
    particular NCP link (once an LCP link established) is accomplished using 
    Configure-Request, Configure-Ack, Configure-Nak and Configure-Reject messages
    just as described in LCP topic, except these ones are particular to the NCP. The 
    configuration options are of course different; they are the network layer protocol 
    parameters being negotiated.
    </li>
    <li><strong>Link Maintenance :</strong>
    Code-Reject messages can be sent to indicate invalid code values
    (NCP frame types).
    </li>
    <li><strong>Link Termination :</strong>
    An NCP link can be terminated using Terminate-Request and
    Terminate-Ack. (Remember that NCP links are set up within LCP link; there can be
    more than one NCP link open, and closing NCP links doesn't terminate the LCP link.
    Also, NCP links do not need to be closed when an LCP link is terminated.)
    </li>
    </ul>  
   <p class="style1">
   <strong>Note :</strong> After the primary PPP link is established using LCP, each 
   network layer protocol to be carried over the link requires the establishment of 
   the appropriate NCP link. The most important of these is PPP Internet Protocol Control
   Protocol (IPCP), which allows IP datagrams to be carried over PPP.
   </p> 
    <p style="font-weight: bold"; class="style3" >
    An Example NCP: The Internet Protocol Control Protocol (IPCP)
    </p>
    <p class="style1">
    Let's look at the NCP for IP, IPCP. When PPP is set up to carry IP datagrams, IPCP is
    invoked in the Network-Layer Protocol phase (one of the PPP phases) to set up an IP NCP 
    link between the two devices. The setup is carried out using the four "Confiure-"
    messages. FOr IP, there are  two configuration options that can be specified in an IPCP
    Configure-Request.     
    </p>   
    <ul class="style1">
    <li><strong>IP-Compression-Protocol :</strong>
    Allows devices to negotiate the use of something called "Van Jacobson TCP/IP header compression".
    This compresses the size of TCP and IP headers to save bandwidth. Thus, this is similar in concept to the 
    Protocol-Field-Compression and Address-and-Control-field-Compression (ACFC)option in LCP.
    </li>
    <li><strong>IP-Address :</strong>
    Allows the device sending the Configure-Request to either specify an IP
    address it wants to use for routing IP over the PPP link, or to request that the other
    device supply it with one. This is most commonly used for dial-up networking links.
    </li>
    </ul>
    <p class="style1">
    Again, the receiving device can send back an IPCP Configure-Ack, an IPCP 
    Configure-Nak, or an IPCP Configure-Reject, just as they work in LCP. 
    The other NCPs are similar, but use different configure options. After 
    configuration is complete, data  can sent for the layer three protocol 
    corresponding to the NCP negotiated. This is indicated by using the appropriate 
    value for the Protocol field in PPP data frames containing that layer three data.
    </p>
    
    <span class="style16">
    <a id="Auth" name="Auth" style="font-weight: bold"; class="style2" >
    PPP Authentication Protocols:<br /> </a></span>
    <p class="style1">Password Authentication Protocol (PAP) and 
    Challenge Handshake Authentication Protocol (CHAP)</p>
    
    <p class="style1">
    PPP was designed to provide layer two connectivity over a variety of serial links and other
    physical layer technologies, some of which have much more of a concern about security
    than others. For example, suppose you hook two machines in your computer lab together with a 
    serial cable and want to run PPP between them. When one of these initiates a PPP
    link with the other, you don't really need to worry about "who's calling". On other hand,
    consider an Internet Service Provider using PPP for remote dial-in users. They generally 
    want to allow only their customers to connect, not just anyone.
    <br /><br />
    The PPP protocol suite was designed to include the use of an optional authentication
    protocol for links where authentication is important. During basic link setup by LCP, devices
    can negotiates the use of an authentication protocol. If they agree, after the LCP link is set up
    a series of authentication messages are sent to verify the identity of the device initiating
    the link. Only if authentication is successful can the link configuration proceed.
    <br /><br />
    The PPP suite initially defined two different authentication protocols:the Password Authentication 
    Protocol (PAP) and Challenge Handshake Authentication Protocol (CHAP).
    </p>
    
    
    <span class="style16">
    <a id="PAP" name="PAP" style="font-weight: bold"; class="style2" >
    Password Authentication Protocol (PAP)
    </a>
    </span>
    
    <p class="style1">
    PAP is a very straight-forward authentication scheme, consisting of only two basic steps, 
    as shown in following figure.
    </p>
    <img src="../Images/PAP.png" alt="PAP Authentication" width="1000" />
    <ul class="style1">
    <li><strong>Authentication Request :</strong>
     The initiating device sends an Authentication-Request message that contains a name 
     and a password.</li>
     <li><strong>Authentication Reply :</strong>
     The responding device looks at the name and password and
     decides whether to accept the initiating device and continue in setting up the link. If 
     so, it sends back an Authenticate-Ack. Otherwise, it sends an Authenticate-Nak.
     </li>
    </ul>
     
     <p style="font-weight: bold"; class="style3" >
        PPP PAP Control Frame Formats
    </p>
         <img src="../Images/PAP_frame_table.png" alt="PAP Frame table" width="1000" />
         <img src="../Images/PAP_frame.png" alt="PAP Frame" width="1000"/>
         
         

    <span class="style16">
    <a id="CHAP" name="CHAP" style="font-weight: bold"; class="style2" >
    Challenge Handshake Authentication Protocol (CHAP)
    </a>
    </span>

    <p class="style1">
    In CHAP, a basic LCP link is set up between the initiator (calling client) and authenticator
    (generally the server that is deciding whether to grant authentication). The authenticator then
     takes charge of the authentication process, using a technique called a <em>three-way handshake.</em>
     This is a fairly common general authentication procedure; the same basic technique is used,
     for examle, in IEEE 802.11 Shared Key Authentication.
     <br /><br />
     The three-way handshake steps are as follows :
    </p>
         <img src="../Images/chap_authentkn.png" alt="CHAP Authentication" width="1000"/>
         
    <ul class="style1">
    <li><strong>Challenge :</strong>
    The authenticator generates a frame called a <em>Challenge</em> and sends it to
    the initiator. This frame contains a simple text message (sometimes called 
    challenge text). The message has no inherent special meaning so it doesn't matter if 
    anyone intercepts it. The important thing is that after receipt of the Challenge both
     devices have the same challenge message.
    </li>
    <li><strong>Response :</strong>
    The initiator uses its password (or some other shared "secret" that the authenticators 
    also knows) to encrypt the challenge text. It then sends the encrypted 
    challenge text as a Response back to the authenticator.
    </li>
    <li><strong>Success or Failure</strong>
    The authenticator performs the same encryption on the 
    challenge text that the initiator did. If the authenticator gets the same result that the
    initiator sent it in the Response, the authenticator knows that the initiator had the right
    password when it did its encryption, so the authenticator sends back a Success message.
    Otherwise, it sends a Failure message.
    </li>
    </ul>
    
    <p style="font-weight: bold"; class="style3" >
        PPP CHAP Control Frame Formats
    </p>
    
         <img src="../Images/CHAP_frame_tabular.png" alt="CHAP Frame Format" width="1000"/>
         
         <img src="../Images/CHAP_frame.png" alt="CHAP Frames" width="1000"/>
         
    <p style="font-weight: bold"; class="style2" >
      <span class="style16">PPP Feature Protocols</span>
    </p>         
    <p class="style1">
    PPP is the standard for data link layer connectivity over serial links because its core
    protocols provide  a solid operational foundation. However, PPP's popularity is based 
    not just on its highly capable link establishment and
    management features. It also has a number of very useful features that provide important
    security and performance benefits to network users. 
    </p>
    
    <p style="font-weight: bold"; class="style2" >
      <span class="style16">PPP Link Quality Monitoring / Reporting (LQM/LQR)</span>
    </p>     
    <p class="style1">
    PPP includes optional authentication in recognition of the varying security needs of the
    many defferent kinds of links over which PPP may operate. These links also differ greatly
     in terms of their quality. Just as we don't need to worry about authentication much when two
     machines are linked with short cable, we also can feel pretty confident that data sent
      between them is going to arrive intact. Now, contrast that to a PPP session established 
      over a long-distance telephone call. (For that matter, how about PPP over a dial-up call using an
      analog cellular phone?)
      <br /><br />
      PPP includes in its basic package a provision for detecting errors in sent frames (a CRC
      field), and higher-layer protocols like TCP also include methods of providing robustness on 
      noisy lines. These techniqes allow a link to tolerate problems, but provide little in the way
      of useful information about what the status of link is. In some situations, devices may
      want to be able to keep track of how well the link is working, and perhaps take action on it.
      For example, a device experiencing too many errors on a dial-up connection might want to 
      cut off and retry a new call. In some cases a device might want to try an alternate method of
      attachment if the current physical link is not working well.
      <br /><br />
      Recognizing this need, the PPP suite inclues a feature that allows devices to analyze the
      quality of the link between them. This is called PPP Link Quality Monitoring or (LQM). PPP is
      set up generically to allow any number of different monitoring functions to be used, but at
      present there is only one, called Link Quality Reporting (LQR). LQR works by having a device request
      that its peer (the other device on the link) keep track of statistics about the link and send them in reports
      on a regular basis.
      <br /><br />
      <strong>LQR Setup</strong><br />
      Before LQR can be used it must be set up, which is done by LCP as part of the negotiation
      of basic link parameters in Link Establishment phase. The device opening the link
      requests link monitoring by including the Quality-Protocol configuration option in its
      Configure-Request frame. Again, LQR is the only quality protocol presently defined. The 
      configuration option also specifies a reporting period that indicates the longest period of the
      time the requesting device wants to go between receiving reports.
      <br /><br />
      <strong>LQR Conters</strong><br />
      Assuming that the negotiation is successful, LQR will be enabled. A number of counters are
      set up that keep track of various link statistics, and a timer used to regulate the sending of
      quality reports over the link. Each time the timer expires a special quality report is 
      generated and sent in a PPP frame over the link. These are sent using the special PPP Protocol
      field hexadecimal value 0xC025.
      <br /><br />
      Each counter holds information about a different statistic regarding the use of the link. Each
      of these counters is reset to zero when LQR is set up and then incremented each time a
      transmission is made or an event occurs that is relevant to counter. The statistics tracked include the following :
      </p>
      <ul class="style1">
      <li>The number of frames sent/received.</li>
      <li>The number of octets (bytes) in all frames sent/received.</li>
      <li>The number of errors that have occurred.</li>
      <li>The number of frames that had to be discarded.</li>
      <li>The number of link quality reports generated.</li>
      </ul>  
      <p class="style1">
      These counters are only reset at the start of the link, so they contain figures kept
      cumulatively over the life of the connection. The counters can be used in the absolute sense, 
      meaning that the counter value itself is reported. Alternately, they can be expressed as
      relative (or delta) values, which represent the change since the last report. This is done
      when a report is received simply by subtracting the previous reports's numbers from those in 
      the current report.<br /><br />
      <strong>Using Link Quality Reports</strong><br />
      LQR specifies the quality reporting mechanism, but not specific standards for link quality,
      since these are so so implementation-dependant. Based on the numbers in these reports, a
      device can decide for itself what conclusions to draw about link quality, and in turn what 
      action to take, if any. For example:
      </p> 
      <ul class="style1">
      <li>Some devices might decide to shut down a link if the absolute number of errors seen
      in any report reaches a certain threshold.</li>
      <li>Some might look at the trend in successive reporting periods and take action if 
      they detect certain trends, such as an increase in the rate of dicarded frames.</li>
      <li>Some devices might just log the information and take no action at all.</li>
      </ul>
      <p class="style1">
      Note that LQR aggregates its statistics for all higher-layer protocols transmitted over a 
      perticular link. It doesn't keep track of statistics for different higher layer protocols
      separately (which makes sense, since the quality of the link shouldn't vary from one higher layer protocol 
      to the next).
      </p> 
      <p class="style17">PPP Compression Control Protocol (CCP) and Compression Algorithms</p>
      <p class="style1">
        PPP is, of course, primarily used to provide data link layer connectivity to physical serial
        links. One of the biggest problems with serial links compared to many other types of layer
        one connections is that they are relatively slow. Consider that while 10 Mbps regular
        Ethernet is considered sluggish by modern LAN standards, it is actually much faster than
        most serial lines used for WAN connectivity, which can be 10, 100 or even 1000 times
        slower.
        <br /><br />
        One way to improve performance over serial links is to use compression on the data sent
        over the line. Depending on the data transferred, this can double the performance
        compared to uncompressed transmissions, and can in some cases do even better than
        that. For this reason, many hardware devices include the ability to compress the data
        stream at the physical layer. The best example of this is probably the set of compression
        protocols used on analog modems.
        <br /><br />
        Some physical links don't provide any compression capabilities, but could still benefit from
        it. To this end, an optional compression feature was created for PPP. It is implemented
        using two distinct protocol components:
      </p>
      <ul class="style1">
      <li><p><strong>PPP Compression Control Protocol (CCP) :</strong> This protocol is responsible for negotiating
        and managing the use of compression on a PPP link.</p></li>
      <li><p><strong>PPP Compression Algorithms :</strong> A set of compression algorithms that perform the
        actual compression and decompression of data. Several of these are defined in
        Internet standards (RFCs). In addition, it is possible for two devices to negotiate the
        use of a proprietary compression method if they want to use one not defined by a
        public standard.</p></li>
      </ul>
      <p class="style1">
        <strong>Key Concept</strong>: PPP includes an optional compression feature, which can improve
        performance over slow physical links. A variety of different compression algorithms
        are supported. To enable compression, both devices on a PPP link use the PPP
        Compression Control Protocol (CCP) to negotiate a compression algorithm to use. The
        compression algorithm is then used to compress and decompress PPP data frames.
      </p>
      <p class="style2">CCP Operation: Compression Setup</p>
      <p class="style1">
        When most people talk about compression in PPP they mention CCP, which is considered
        “the” compression protocol for PPP. However, CCP is actually used only to configure and
        control the use of compression; it is the algorithms that do the real work of compressing and
        decompressing. This “separation of powers” provides flexibility, since it allows each implementation
        to choose what type of compression they wish to use.
        <br /><br />
        CCP is analogous to the Network Control Protocols (NCPs) that negotiate parameters
        specific to a network layer protocol sent on the link. An NCP lets two devices decide how
        they will carry layer three traffic, such as how IPCP lets the devices determine how to carry
        IP. CCP lets two devices decide how they will compress data, in the same basic way.
        <br /><br />
        Similarly, just as each NCP is like a “lite” version of LCP, CCP is also like a “lite” version of
        LCP. It is used to set up a compression connection called a CCP link within an LCP link
        between two devices. Once established, compressed frames can be sent between the two
        devices. CCP also provides messaging capabilities for managing and eventually terminating
        a CCP link, again very similar to how each network layer protocol sets up a NCP link
        within LCP. A CCP link is maintained independently of any NCP links.
        <br /><br />
        CCP uses the same subset of seven LCP message types that the NCPs use, and adds two
        additional ones. The use of these messages for each of the “life stages” of a CCP link is as
        follows, which should look very familiar if you've already read about how the NCPs and LCP
        itself work:
      </p>
      <ul class="style1">
      <li><p><strong>Link Configuration :</strong> Like the NCPs, compression configuration is done once CCP
        reaches the Network-Layer Protocol phase. The process of setting up compression
        and negotiating parameters is accomplished using Configure-Request, Configure-Ack,
        Configure-Nak and Configure-Reject messages just as described in the LCP topic,
        except the configuration options are particular to CCP.</p></li>
      <li><p><strong>Link Maintenance :</strong> Code-Reject messages can be sent to indicate invalid code
        values in CCP frames. The two new message types are Reset-Request and Reset-
        Ack, which are used to reset the compression (the CCP link) in the event of a detected
        failure in decompression.</p></li>
      <li><p><strong>Link Termination :</strong> A CCP link can be terminated using Terminate-Request and
        Terminate-Ack. Again, remember that like the NCP links, the CCP link is set up within
        an LCP link, and closing it doesn't terminate the LCP link which controls PPP overall.</p></li>
      </ul>
      <p class="style2">CCP Configuration Options and Compression Algorithms</p>
      <p class="style1">
        CCP configuration options are used for only one purpose: to negotiate the type of
        compression to be used by the two devices, and the specifics of how that algorithm is to be
        employed. The device initiating the negotiation sends a Configure-Request with one option
        for each of the compression algorithms it supports. The other device compares this list of
        options to the algorithms it understands. It also checks for any specific details relevant to
        the option to see if it agrees on how that algorithm should be used. It then sends back the
        appropriate reply (Ack, Nak or Reject) and a negotiation ensues until the two devices come
        up with a common algorithm both understand. If so, compression is turned on; otherwise, it
        is not enabled.
        <br /><br />
        The CCP configuration options begin with a Type value that indicates the compression
        algorithm. When the Type value is 0, this indicates that the option contains information
        about a special, proprietary compression algorithm not covered by any RFC standards,
        which can be used if both devices understand it. Several values from 1 to 254 indicate
        compression algorithms that have been defined for use with CCP. Following Table shows the most
        common values of the Type field, including the compression algorithm each corresponds to
        and the number of the RFC that defines it:
      </p>
      <p style="text-align:center">
          <img src="../Images/ccp_algorithms.png" alt="ccp algorithms" />
          </p>
      <p class="style2">Compression Algorithm Operation: Compressing and Decompressing Data</p>
      <p class="style1">
        Once an algorithm has been successfully negotiated, the compression algorithm is used to
        compress data before transmission, and to decompress it once received. To compress, the
        transmitting device takes the data that would normally be put in the Information field of an
        uncompressed PPP frame and runs it through the compression algorithm. To indicate that a
        frame has been compressed, the special value 0x00FD (hexadecimal) is placed in the PPP
        Protocol field. When compression is used with multiple links and the links are compressed
        independently, a different value is used: 0x00FB. Recall that in a regular uncompressed
        frame, the Protocol field indicates what layer three protocol the data comes from; since we
        still need to know this, the original Protocol value is actually prepended to the data before
        compression. When the data is decompressed, this value is used to restore the original
        Protocol field, so the receiving device knows what higher layer the data belongs to.
        <br /><br />
        For example, if we use IPCP to encapsulate IP data in PPP, the uncompressed frame would
        have a value of 0x8021 (hex) in the Protocol field. This value (0x8021) would be placed at
        the start of the data to be compressed. The compressed data would be put in a PPP frame
        with a Protocol value of 0x00FD. The receiving device would see the value 0x00FD in the
        Protocol field, recognize the frame as compressed, decompress it and restore the original
        frame with 0x8021 as the Protocol value. The PPP general frame format topic covers this in
        more detail.
        <br /><br />
        In theory, a compression algorithm can put more than one PPP data frame into a
        compressed PPP data frame. Despite this, many if not most of the algorithms maintain a
        one-to-one correspondence, putting each PPP data frame into one compressed frame.
        Note that LCP frames are not compressed, nor are the control frames used for other
        protocols. For example, a data frame carrying IP traffic would be compressed, but a control
        frame for IPCP (the Network Control Protocol for IP) would not be.
        <br /><br />
        Compression can be combined with encryption; in this case compression is done before
        encryption.
        <br /><br />
        <strong>Note</strong>: The compression performed by CCP has nothing to do with the header
        compression options that can be negotiated as part of LCP. That type of
        “compression” doesn't involve compressing a data stream using a compression
        algorithm, but rather a simple way of saving space in headers when both ends of a link
        agree to do so.
      </p>
      <p class="style17">PPP Encryption Control Protocol (ECP) and Encryption Algorithms</p>
      <p class="style1">
        The PPP authentication protocols PAP and CHAP can be used to ensure that only authorized
        devices can establish a PPP connection. Once that is done, PPP normally provides
        no other security to the data being transmitted. In particular, all data is normally sent “in the
        clear” (unencrypted), making it easy for someone who intercepts it to read. For important
        data that must be kept secure, encryption prior to transmission is a good idea. This can be
        done at higher layers using something like IPSec, but PPP also provides an optional feature
        that allows data to be encrypted and decrypted at the data link layer itself.
        <br /><br />
        <strong>Note</strong> : This topic is very similar in structure and content to the preceding one that
        covers PPP compression, because the features are implemented in a very similar
        way. For the benefit of those who may not be reading in sequence I have provided
        a standalone description in this topic, without assuming you have read the prior topic on
        compression. This means this topic may seem almost like “deja vu” if you just read the topic
        on CCP.
      </p>
      <p class="style1">PPP data encryption is implemented using two protocol components:</p>
      <ul class="style1">
      <li><p><strong>PPP Encryption Control Protocol (ECP) :</strong> This protocol is responsible for negotiating
        and managing the use of encryption on a PPP link.</p></li>
      <li><p><strong>PPP Encryption Algorithms :</strong> A family of encryption algorithms that perform the
        actual encryption and decryption of data. Several of these are defined in Internet
        standards (RFCs), and two devices can also negotiate a proprietary encryption
        method if they want to use one not defined by a public standard.</p></li>
      </ul>
      <p class="style1">
        ECP is usually the only part mentioned when encryption in PPP is discussed. ECP is in fact
        used only to configure and control the use of encryption; it is the algorithms that do the real
        work. This technique allows each implementation to choose what type of encryption they
        wish to use. The original ECP defined only a single encryption method, and a couple of
        others have since been added.
        <br /><br />
        <strong>Key Concept</strong>: PPP includes an optional encryption feature, which provides privacy
        for data transported over PPP. A number of encryption algorithms are supported. To
        enable encryption, both devices on a PPP link use the PPP Encryption Control
        Protocol (ECP) to negotiate which algorithm to use. The selected algorithm is then used to
        encrypt and decrypt PPP data frames.
      </p>
      <p class="style2">ECP Operation: Compression Setup</p>
      <p class="style1">
        Like CCP, ECP is analogous to the Network Control Protocols (NCPs) that negotiate
        parameters specific to a network layer protocol sent on the link, but deals with how devices
        encrypt data rather than how they transport layer three traffic. This also means that like the
        NCPs, ECP is a "lite" version of LCP and works in the same basic way. Once an ECP link is
        negotiated, encrypted frames can be sent between devices. When no longer needed, the
        ECP link can be terminated.
        <br /><br />
        ECP uses the same subset of seven LCP message types that the NCPs use, and adds two
        more. The use of these messages for each of the “life stages” of an ECP link is as follows:
      </p>
      <ul class="style1">
      <li><p><strong>Link Configuration :</strong> Like the NCPs (and also like CCP of course), encryption configuration
        is done once ECP reaches the Network-Layer Protocol phase. The process of
        setting up encryption and negotiating parameters is accomplished using Configure-
        Request, Configure-Ack, Configure-Nak and Configure-Reject messages just as
        described in the LCP topic, except the configuration options are particular to ECP.</p></li>
      <li><p><strong>Link Maintenance :</strong> Code-Reject messages can be sent to indicate invalid code
        values in ECP frames. The two new message types are Reset-Request and Reset-
        Ack, which are used to reset the encryption (the ECP link) in the event of a detected
        failure in decryption.</p></li>
      <li><p><strong>Link Termination :</strong> An ECP link can be terminated using Terminate-Request and
        Terminate-Ack. Again, remember that like the NCP links, the ECP link is set up within
        an LCP link, so closing it doesn't terminate the LCP link.</p></li>
      </ul>
      <p class="style2">ECP Configuration Options and Encryption Algorithms</p>
      <p class="style1">
        ECP configuration options are used only to negotiate the type of encryption algorithm to be
        used by the two devices, and the specifics of how that algorithm is to be employed. The
        device initiating the negotiation sends a Configure-Request with one option for each of the
        encryption algorithms it supports. The other device compares this list of options to the
        algorithms it understands. It also checks for any details relevant to the option to see if it
        agrees on how that algorithm should be used. It then sends back the appropriate reply (Ack,
        Nak or Reject) and a negotiation ensues until the two devices come up with a common
        algorithm both understands. If so, encryption is enabled, and otherwise, it is left turned off.
        <br /><br />
        The ECP configuration options begin with a Type value that indicates the encryption
        algorithm. When the Type value is 0, this indicates that the option contains information
        about a special, proprietary encryption method not covered by any RFC standards, which
        can be used if both devices understand it. Values in the range from 1 to 254 indicate
        encryption algorithms that have been defined for use with ECP; at present, only two are
        defined. Table shows the values of the Type field, including the encryption algorithm
        each corresponds to and the number of the RFC that defines it:
      </p>
      <p style="text-align:center">
          <img src="../Images/ecp_encryption_algorithm.png" alt="ecp encryption algorithm" />
          </p>
      <p class="style2">Encryption Algorithm Operation: Encrypting and Decrypting Data</p>
      <p class="style1">
        After an encryption algorithm has been successfully negotiated, it is used to encrypt data
        before transmission, and to decrypt data received. To encrypt, the transmitting device takes
        the data that would normally be put in the Information field of an unencrypted PPP frame
        and runs it through the encryption algorithm. To indicate that a frame has been encrypted,
        the special value 0x0053 (hexadecimal) is placed in the PPP Protocol field. When
        encryption is used with multiple links and the links are encrypted independently, a different
        value is used: 0x0055. Recall that in a regular unencrypted frame, the Protocol field
        indicates what layer three protocol the data comes from; since we still need to know this,
        the original Protocol value is actually prepended to the data before encryption. When the
        data is decrypted, this value is used to restore the original Protocol field, so the receiving
        device knows what higher layer the data belongs to.
        <br /><br />
        For example, if we use IPCP to encapsulate IP data in PPP, the unencrypted frame would
        have a value of 0x8021 (hex) in the Protocol field. This value (0x8021) would be placed at
        the start of the data to be encrypted. The encrypted data would be put in a PPP frame with
        a Protocol value of 0x0053. The receiving device would see the value 0x0053 in the
        Protocol field, recognize the frame as encrypted, decrypt it and restore the original frame
        with 0x8021 as the Protocol value.The discussion of the PPP general frame format covers
        this more completely.
        <br /><br />
        Each encrypted PPP data frame carries exactly one PPP data frame. Note that unlike what
        we saw in compression, LCP frames and the control frames used for other protocols can be
        encrypted. Compression can be combined with encryption; in this case compression is
        done before encryption.
      </p>
      <p class="style17">PPP Multilink Protocol (MP/MLP/MLPPP)</p>
      <p class="style1">
        Most of the time, there is only a single physical layer link between two devices. There are
        some situations, however, when there may actually be two layer one connections between
        the same pair of devices. This may seem strange; why would there be more than one link
        between any pair of machines?
        <br /><br />
        There are in fact a number of situations in which this can occur. One common one is when
        two links are intentionally placed between a pair of devices. This is often done to increase
        performance by “widening the pipe” between two devices, without going to a newer, more
        expensive technology. For example, if two machines are connected to each other using a
        regular analog modem and it is too slow, a relatively simple solution is to just use two
        analog modem pairs connecting the machines to double bandwidth.
        <br /><br />
        A slightly different situation occurs when multiplexing creates the equivalent of several
        physical layer “channels” between two devices even if they only have one hardware link
        between them. Consider ISDN for example. The most common form of ISDN service (ISDN
        basic rate interface or BRI) creates two 64,000 bps B channels between a pair of devices.
        These B channels are time division multiplexed and carried along with a D channel on a
        single pair of copper wire, but to the devices they appear as if there were two physical layer
        links between devices, each of which carries 64 kbps of data. And the ISDN primary rate
        interface (PRI) actually creates 23 or even more channels, all between the same pair of
        hardware devices.
        <br /><br />
        In a situation where we have multiple links, we could of course just establish PPP over each
        connection independently. However, this is far from an ideal solution, because we would
        then have to manually distribute our traffic over the two (or more) channels or links that
        connect them. If you wanted to connect to the Internet, you'd have to make separate
        connections and then choose which to use for each action. Not exactly a recipe for fun, and
        what's worse is that you could never use all the bandwidth for a single purpose, such as
        downloading the latest 100 megabyte Microsoft security patch.
        <br /><br />
        What we really want is a solution that will let us combine multiple links and use them as if
        they were one high-performance link. Some hardware devices actually allow this to be done
        at the hardware level itself; in ISDN this technology is sometimes called bonding when done
        at layer one. For those hardware units that don't provide this capability, PPP makes it
        available in the form of the PPP Multilink Protocol (MP). This protocol was originally
        described in RFC 1717, and was updated in RFC 1990.
        <br /><br />
        <strong>Note </strong>: The PPP Multilink Protocol is properly abbreviated “MP”, but it is common to
        see any of a multitude of other abbreviations used for it. Many of these are actually
        derived from changing the order of the words in the name into “Multilink PPP”, so
        you will frequently see this called “ML PPP”, “MLPPP”, “MPPP”, “MLP” and so forth. These
        are technically “incorrect” but widely used, especially “MLPPP”. I use the correct abbreviation
        in this Guide.
      </p>
      <p class="style2">PPP Multilink Protocol Architecture</p>
      <p class="style1">
        MP is an optional feature of PPP, so it must be designed to integrate seamlessly into
        regular PPP operation. To accomplish this, MP is implemented as a new architectural
        “sublayer” within PPP. In essence, an MP sublayer is inserted between the “regular” PPP
        mechanism and any network layer protocols using PPP, as shown in Figure. This allows
        MP to take all network layer data to be sent over the PPP link and spread it over multiple
        physical connections, without causing either the normal PPP mechanisms or the network
        layer protocol interfaces to PPP to “break”.
      </p>
      <p style="text-align:center">
          <img src="../Images/multilink_ppp_architecture.png" alt="multilink ppp architecture"/>
          </p>
      <p class="style2">PPP Multilink Protocol Setup and Configuration</p>
      <p class="style1">
        To use MP, both devices must have it implemented as part of their PPP software and must
        negotiate its use. This is done by LCP as part of the negotiation of basic link parameters in
        the Link Establishment phase (just like Link Quality Reporting). Three new configuration
        options are defined to be negotiated to enable MP:
      </p>
      <ul class="style1">
      <li><p><strong>Multilink Maximum Received Reconstructed Unit :</strong> Provides the basic indication
        that the device starting the negotiation supports MP and wants to use it. The option
        contains a value specifying the maximum size of PPP frame it supports. If the device
        receiving this option does not support MP it must respond with a Configure-Reject LCP
        message.</p></li>
      <li><p><strong>Multilink Short Sequence Number Header Format :</strong> Allows devices to negotiate use
        of a shorter sequence number field for MP frames, for efficiency. (See the topic on MP
        frames for more.)</p></li>
      <li><p><strong>Endpoint Discriminator :</strong> Uniquely identifies the system; used to allow devices to
        determine which links go to which other devices.</p></li>
      </ul>
      <p class="style1">
        Before MP can be used, a successful negotiation of at least the Multilink Maximum
        Received Reconstructed Unit option must be performed on each of the links between the
        two devices. Once this is done and an LCP link exists for each of the physical links, a virtual
        bundle is made of the LCP links and MP is enabled.
      </p>
      <p class="style2">PPP Multilink Protocol Operation</p>
      <p class="style1">
        As mentioned above, MP basically sits between the network layer and the regular PPP links
        and acts as a “middleman”. Here is what it does for each “direction” of communication:
      </p>
      <ul class="style1">
      <li><p><strong>Transmission :</strong> MP accepts datagrams received from any of the network layer
        protocols configured using appropriate NCPs. It first encapsulates them into a
        modified version of the regular PPP frame. It then takes that frame and decides how to
        transmit it over the multiple physical links. Typically, this is done by dividing the frame
        into fragments that are evenly spread out over the set of links. These are then encapsulated
        and sent over the physical links. However, an alternate strategy can also be
        implemented as well, such as alternating full-sized frames between the links. Also,
        smaller frames are typically not fragmented, nor are control frames such as those used
        for link configuration.</p></li>
      <li><p><strong>Reception :</strong> MP takes the fragments received from all physical links and reassembles
        them into the original PPP frame. That frame is then processed like any PPP frame, by
        looking at its Protocol field and passing it to the appropriate network layer protocol.</p></li>
      </ul>
      <p class="style1">
        The fragments used in MP are similar in concept to IP fragments, but of course these are
        different protocols running at different layers. To PPP or MP, an IP fragment is just an IP
        datagram like any other.
        <br /><br />
        The fragmenting of data in MP introduces a number of complexities that the protocol must
        handle. For example, since fragments are being sent roughly concurrently, we need to
        identify them with a sequence number to facilitate reassembly. We also need some control
        information to identify the first and last fragments. A special frame format is used for MP
        fragments to carry this extra information, which I describe in the section on PPP frame
        formats. That topic also contains more information about how fragmenting is accomplished,
        as well as an illustration that demonstrates how it works.
      </p>
      <p class="style17">PPP Bandwidth Allocation Protocol (BAP) and Bandwidth Allocation Control
        Protocol (BACP)</p>
      <p class="style1">
        The PPP Multilink Protocol (MP) described in the previous topic allows multiple links
        between a pair of devices, whether physical or in the form of virtual channels, to be
        combined into a “fat pipe” (high-capacity channel). This offers tremendous advantages to
        many PPP users, as it lets them make optimal use of all their bandwidth, especially for
        applications such as Internet connectivity. It's no surprise, then, that MP has become one of
        the most popular features of PPP.
        <br /><br />
        The original standard defining MP basically assumed that multiple links would be combined
        into a single bundle. For example, if you had two modem links they would both be
        connected and then combined, or two B channels in an ISDN link would be combined. After
        MP was set up the bundle would be available for either device to use in its entirety.
        There's one drawback to this system: the “fat pipe” is always enabled, and in many cases, it
        is expensive to have this set up all the time. It often costs more to connect two or more layer
        one links than a single one, and it's not always needed. For example, some ISDN services
        charge per minute for calls on either of the B channels. In the case of modem dialup there
        are per-minute charges in some parts of the world. Even where regular phone calls are
        “free”, there is a cost in the form of tying up a phone line. Consider that in many applications,
        the amount of bandwidth needed varies over time.
        <br /><br />
        It would be better if we could set up MP so that it could dynamically add links to the bundle
        when needed, such as when we decided to download some large files, and then automatically
        drop them when no longer required. This enhancement to the basic MP package was
        provided in the form of a pair of new protocols described in RFC 2125:
      </p>
      <ul class="style1">
      <li><p><strong>Bandwidth Allocation Protocol (BAP) :</strong> Describes a mechanism where either device
        communicating over an MP bundle of layer one links may request that a link be added
        to the bundle or removed from it.</p></li>
      <li><p><strong>Bandwidth Allocation Control Protocol (BACP) :</strong> Allows devices to configure how
        they want to use BAP.</p></li>
      </ul>
      <p class="style2">BACP Operation: Configuring the Use of BAP</p>           
      <p class="style1">
        Let's start with BACP, since it is the protocol used for initial setup of the feature. BACP is
        very similar in general concept to all those other PPP protocols with “Control” in their
        names, such as LCP, the NCP family, CCP and ECP, but is actually even simpler. It is used
        only during link configuration to set up BAP. This is done using Configure-Request,
        Configure-Ack, Configure-Nak and Configure-Reject messages just as described in the
        LCP topic. The only configuration option that is negotiated in BACP is one called Favored-
        Peer, which is used to ensure that the two devices on the link don't get “stuck” if each tries
        to send the same request at the same time.
        <br /><br />
        If both devices support BAP then the BACP negotiation will succeed and BAP will be
        activated.
      </p>
      <p class="style2">BAP Operation: Adding and Removing Links</p>
      <p class="style1">
        BAP defines a special set of messages that can be sent between devices to add or drop
        links to/from the current PPP bundle. What's particularly interesting about BAP is that it
        includes the tools necessary to have a device actually initiate different types of physical
        layer connections (such as dialing a modem for bundled analog links or enabling an extra
        ISDN channel) when more bandwidth is required, and then shut them down when no longer
        needed.
        <br /><br />
        A brief description of the BAP message types:
      </p>
      <ul class="style1">
      <li><p><strong>Call-Request and Call-Response :</strong> When one device on the link wants to add a link to
        the bundle and initiate the new physical layer link itself, it sends a Call-Request frame
        to tell the other device, which replies with a Call-Response.</p></li>
      <li><p><strong>Callback-Request and Callback-Response :</strong></p> These are just like the two message
        types above, but used when a device wants its peer (the other device on the link) to
        initiate the call to add a new link. So, if device A says “I need more bandwidth but I
        want you to call me, instead of me calling you”, it sends device B a Callback-Request.</li>
      <li><p><strong>Call-Status-Indication and Call-Status-Response :</strong> After a device attempts to add a
        new link to the bundle (after sending a Call-Request or receiving a Callback-Request)
        it reports the status of the new link using the Call-Status-Indication frame. The other
        device then replies with a Call-Status-Response.</p></li>
      <li><p><strong>Link-Drop-Query-Request and Link-Drop-Query-Response :</strong> These messages are
        used by one device to request that a link be dropped and the other to respond to that
        request.</p></li>
      </ul>
      <p class="style1">
        I should also point out that the decision of when to add or remove links is not made by these
        protocols. It is left up to the particular implementation.
      </p>
      
      
                 
    
            
   </div>
    <a href="../TcpipStructure.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" 
        width="50" />
    </a>
    </form>
</body>
</html>
