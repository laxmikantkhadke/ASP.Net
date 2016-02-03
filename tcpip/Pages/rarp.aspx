<%@ Page Language="C#" %>

<%@ Register src="../Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RARP</title>
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
        
        </style>
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('../Images/Maize.jpg') ; ">

    <form id="form1" runat="server">
    
        <uc1:Header ID="Header1" runat="server" />
     <div style="margin-left:auto; margin-right:auto; width:1024px; float:left">   
            <h1>
            Reverse Address Resolution Protocol (RARP)
            </h1>
            <p class="style1">
            If a device doesn’t know its own IP address, there is no way to generate ARP requests
            and ARP replies. This is often the case when a device such as a diskless workstation is
            on the network. The only address the device is aware of is the physical address set on the
            network interface card.
            <br /><br />
            A simple solution is the Reverse Address Resolution Protocol (RARP), which works as
            the reverse of ARP. RARP sends out the physical address of a destination and expects
            back an IP address. The reply containing the IP address is sent by a RARP server, a
            machine that can supply the information. Although the originating device sends the message
            as a broadcast, RARP rules stipulate that only the RARP server can generate a
            reply. Many networks assign more than one RARP server, both to spread the processing
            load and to act as a backup in case of problems.
            <br /><br />
            RARP is often used in “diskless stations” that do not have local storage. Modern diskless
            stations may actually have a local disk, but this disk is used for speeding up the operation
            of the operating system and not for storing TCP/IP-related parameters, which are kept at
            a remote server. For example, the local disk may only be used for holding a local swap
            area needed to implement the operating system’s virtual memory mechanism.
            <br /><br />
            Diskless stations also have a copy of the operating system image kept on remote servers.
            On startup the diskless station downloads a copy of the operating system image from the
            remote server to its memory. Before the diskless station can download its operating system
            image using TCP/IP file transfer protocols, it needs an IP address. This IP address
            cannot be a random value; it must be unique and have the same prefix as the IP addresses
            of other nodes on that network segment. For example, if other stations on the network
            have IP addresses like 199.245.180.1, 199.245.180.5, 199.245.180.7, then the common
            prefix is “199.245.180”. The diskless station must also have the same common prefix. A
            common prefix is needed because information on how to route to a network segment is
            embedded as a prefix value in the IP address.
            <br /><br />
            The diskless station typically obtains its IP address by sending a request to servers on
            that network segment. Because it does not know the address information of the remote
            server, this request is sent as a Data Link Layer broadcast. One mechanism to obtain IP
            addresses from remote servers is the Reverse Address Resolution Protocol (RARP). The
            protocol is called Reverse ARP, because the information it seeks is opposite to that
            sought by the ARP protocol.
            <br /><br />
            Diskless stations are used to reduce hardware costs, simplify node configuration and
            upgrades by keeping critical information in a central location, and reduce the possibility
            of viruses being introduced because the users cannot easily introduce programs through
            diskless workstations.
            </p>         
            <p class="style2">RARP Operation</p>
            <p class="style1">
            In RARP operation, the node that wants to discover its IP address (called the RARP
            client) broadcasts a request called the RARP request. The RARP request is broadcast at
            the Data Link Layer because the RARP client does not know the address (hardware or IP
            address) of the remote server. The remote server that processes the RARP request is
            called the RARP server. All nodes on the network segment will receive the RARP
            request broadcast, but only the nodes acting as RARP servers will respond.
            <br /><br />
            If there is more than one RARP server, all RARP servers will attempt to process the
            RARP request. The RARP client will typically accept the first response it receives and
            silently ignore the rest.
            <br /><br />
            The RARP server keeps a table of the IP address for nodes on the network segment. This
            table is indexed by a unique identifier that is specific to each machine. This unique identifier
            is sent in the RARP request. For diskless stations this unique identifier must be
            some hardware-specific parameter that it can easily read. The identifier cannot be a value
            stored in local storage because diskless stations do not have a local disk available for this
            purpose. The RARP designers (see STD 38, RFC 903) decided to use the hardware
            addresses as unique identifiers because they are unique for a network segment and can be
            easily read by the network drivers.
            <br /><br />
            When a RARP server receives a RARP request, it consults its table of IP address and
            hardware address bindings (see Figure). 
            </p>
            <p style="text-align:center">
                <img src="../Images/rarp/rarp_operation1.png" alt="RARP Operation" />
            </p>
            
            <p class="style1">
            If it finds an entry in the RARP table that
            matches the hardware address found in the RARP request, it returns the corresponding IP
            address in a RARP reply. The RARP reply is not broadcast because the RARP server
            looks up the hardware address of the RARP client from the RARP request.
            <br /><br />
            The RARP request and reply packets use the same packet format as ARP packets. The
            difference between ARP and RARP is the values that are placed in the fields. When
            RARP packets are in an Ethernet frame, an EtherType value of 8035 hex is used.
            <br /><br />
            The RARP request fields are filled in as follows.<br /><br />
            RARP Request:<br /><br />
            Data Link Destination Hardware Address = Broadcast<br /><br />
            Data Link Source Hardware Address = RARP client HA<br /><br />
            DataLink EtherType = 8035 hex<br /><br />
            Operation = 3 (RARP Request)<br /><br />
            Sender HA = RARP client HA<br /><br />
            Sender IP = Undefined; Usually 0.0.0.0 used<br /><br />
            Target HA = RARP client HA<br /><br />
            Target IP = Undefined<br /><br /><br />
            RARP Reply:<br /><br />
            Data Link Destination Hardware Address = RARP client HA<br /><br />
            Data Link Source Hardware Address = RARP server HA<br /><br />
            DataLink EtherType = 8035 hex<br /><br />
            Operation = 4 (RARP Reply)<br /><br />
            Sender HA = RARP server HA<br /><br />
            Sender IP = RARP server IP address<br /><br />
            Target HA = RARP client HA<br /><br />
            Target IP = RARP client IP address; This is the answer
            <br /><br />        
            The Target HA address field in the RARP request is set to that of the RARP client. This
            is done as a convenience for the RARP server that does not then have to modify this
            field, because it contains the RARP client hardware address in the RARP reply.
            <br /><br />            
            The network driver can examine the EtherType field and know that this is a RARP
            packet (EtherType = 8035 hex) and send the request to the RARP module. The Operation
            code fields used for RARP are 3 for RARP request and 4 for RARP reply. These fields
            could also be used to distinguish an ARP packet from a RARP packet. However, this
            approach is not very efficient because the ARP module would have to examine the
            Operation field first, and if this indicated a RARP packet, the ARP module would then
            send it to the RARP module. By using the EtherType field protocol, demultiplexing can
            be done efficiently at a lower layer.
            <br /><br />
            <strong>Note :</strong>
            In many implementations RARP is not automatically provided by the ARP or IP
            module. It must be run as a separate process, such as a daemon process, on the
            computer that is to act as a RARP server.
            </p>
            
            <p class="style2">RARP Storms</p>
            <p class="style1">
            If the RARP server is unavailable because of a hardware link failure or because the
            RARP server is down, RARP clients will be unable to boot up. RARP clients will continually
            send out RARP broadcast requests. If many RARP clients simultaneously send
            out RARP request broadcasts, then a heavy network traffic load results.
            <br /><br />
            The situation of not receiving a RARP reply is more serious than not receiving an ARP
            reply. Not receiving an ARP reply means that a particular host and its services are not
            available. The ARP client can still try to access other nodes on the network. However, if
            there is no RARP reply, the RARP client cannot boot up. Many RARP clients continue
            to send RARP broadcast requests indefinitely in the hope that the RARP server may
            eventually become available. The situation of repeated RARP broadcast requests is
            therefore more serious than that of ARP requests because it can result in greater network
            traffic.
            </p>
            <p class="style2">Primary and Backup RARP Servers</p>
            <p class="style1">
            To make the availability of RARP services more reliable, multiple RARP servers can be
            used. With multiple RARP servers, all servers would attempt to answer to the RARP
            broadcast request simultaneously. Only one of the RARP replies is used by the RARP
            client; all other RARP replies are discarded as to not use up network bandwidth. One
            scheme to prevent multiple RARP replies is to designate one of the RARP servers as a
            primary and all others as secondary RARP servers.
            <br /><br />
            On receiving a RARP request, the primary RARP server will respond to the request. The
            secondary servers do not respond, but note the arrival time of the RARP request. If the
            primary does not respond within a timeout interval, the secondary RARP server assumes
            that the primary RARP server is down, and responds to the RARP request.
            <br /><br />
            If there are multiple secondary RARP servers, all secondary servers will attempt to
            respond at the same time. A refinement of this scheme is to have secondary RARP
            servers wait for a random time interval before responding. If the primary server is functioning
            normally, there will be no additional delays in sending the RARP reply. If the primary
            server is down, there may be a small random delay before one of the secondary
            RARP server responds.
            </p>
            <p class="style2">Using the ARP Command</p>
            <p class="style1">
            Most implementations of TCP/IP (but not all) provide a way for you to check the ARP
            cache. Both UNIX and Windows NT/2000/XP implement the arp command. The arp
            command shows you all the entries in the machine’s cache. To see the cache contents,
            issue the command with the -a (for all) option:
            <br /><br />
            $ arp -a<br />
            
            brutus &lt;205.150.89.3&gt; at 0:0:d2:03:08:10<br />
            <br />
            In this case, one machine called brutus has the IP address 205.150.89.3 and the MAC
            (Media Access Control) address 0:0:d2:03:08:10.
            The arp command is seldom used except when a network administrator is trying to
            resolve the problem of duplicate IP addresses. If there are two machines with the same
            address (but with different MACs), they will show up in the ARP cache.
            </p>
            
            
            
            
    </div>
    <a href="../TcpipStructure.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" width="50" />
    </a>
    </form>
</body>
</html>
