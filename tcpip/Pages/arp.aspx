<%@ Page Language="C#" %>

<%@ Register src="../Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ARP</title>
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
            font-weight: bold;
            }
    
        .style3
        {
            width: 100%;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            text-align: justify;
        }
        .style4
        {
            width: 300px;
            text-align: center;
        }
    
            
        .style5
        {
            width: 97px;
        }
            .style6
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            text-align: justify;
            font-weight: bold;
                      
        }
            
        .style7
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            text-align: justify;
            font-weight: bold;
        }
    
            
        .style8
        {
            width: 146px;
        }
        .style9
        {
            width: 146px;
            text-align: left;
        }
        .style10
        {
            text-align: center;
        }
    
            
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
   
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('../Images/Maize.jpg') ; ">

    <form id="form1" runat="server">
    <uc1:Header ID="Header1" runat="server" />
    
    <div style="margin-left:auto; margin-right:auto; width:1024px; float:left">
    <h1>Address Resolution Protocol (ARP)</h1>
    <p class="style1">
    In order to send datagrams from one machine to another on a local or wide area network,
    the sender needs to know the destination machine’s physical address, if it is not known.
    There needs to be some method to resolve the IP addresses (provided by applications)
    into the physical addresses of the hardware connecting each machine to the network.
    <br /><br />
    The brute-force method of providing an IP address to physical address resolution is to
    build a table of conversions on each machine. Then, when an application sends data to
    another machine, the software can examine the conversion table for the physical address.
    This method has a variety of problems associated with it, which is why almost no one
    does it. The primary disadvantage is the need to constantly update the tables of addresses
    on each machine whenever there is a change.
    <br /><br />
    The Address Resolution Protocol was developed to help solve this problem. ARP’s task
    is to convert IP addresses to physical addresses (network and local) and in doing so,
    eliminate the need for applications to know anything about physical addresses. Put in its
    simplest terms, ARP is a conversion table of IP addresses and their corresponding physical
    addresses. This is called an ARP table. The ARP table is usually built dynamically,
    although static entries can be manually added for troubleshooting and fixing ARP corruption
    table problems.
       <br /><br />
    The layout of an ARP table is shown in Figure :
      </p>   
      <p style="text-align:center">
      <img src="../Images/arp/arp_table.png" alt="ARP table layout" />
      </p>
    <p class="style1">
    ARP also maintains a cache of entries
    in memory, called an ARP cache. Usually the ARP cache is searched for a match, then
    the ARP table is checked if one is not found in the cache. Dynamically generated ARP
    cache entries are timed-out after the ARP cache timeout has been exceeded, whereas static
    entries are not meant to be timed out. Static entries being timed-out indicates a corruption
    problem in the ARP cache tables.
    </p>
    <p class="style6">
    The ARP Cache
    </p>
    <p class="style1">
    Each row in the ARP cache corresponds to one device, with the following four pieces of
    information stored for each device:
    </p>
    <ul class="style1">
    <li>IF Index—The physical port (interface)</li>
    <li>Physical Address—The physical address of the device</li>
    <li>IP Address—The IP address corresponding to the physical address</li>
    <li>Type—The type of entry to which this line corresponds</li>
    </ul>
    <p class="style1">
    The type has one of four possible values. A value of 2 means the entry is invalid; a value
    of 3 means the mapping is dynamic (the entry may change); a value of 4 means static
    (the entry doesn’t change); and a value of 1 means none of the above.
    <br /><br />
    When ARP is handed an IP address to discover the corresponding physical address, it
    searches the ARP cache and ARP table for a match. If it finds one, it returns the physical
    address to whoever supplied the IP address. If ARP doesn’t find a match for an IP
    address, it sends a message out on the network. The message, called an ARP request, is a
    broadcast that is received by all devices on the local network.
    <br /><br />
    The ARP request contains the IP address of the intended recipient device. If a device recognizes
    the IP address as belonging to it, the device sends a reply message containing its
    physical address back to the machine that generated the ARP request, which places the
    information into its ARP table and cache for future use. In this manner, ARP can determine
    the physical address for any machine based on its IP address.
    <br /><br />
    The layout of an ARP request or ARP reply is shown in Figure :
    </p>
        <p style="text-align: center">
        <img src="../Images/arp/arp_req_reply_layout.png" alt="ARP Request and Reply layout" />
        </p>
    <p class="style1">
    When an ARP request is sent, all fields in the layout are used except the Recipient Hardware Address
    (which the request is trying to identify). In an ARP reply, all the fields are used.<br /><br />
    The fields in the ARP request and reply can have several values. The remainder of this
    section presents a look at each of the fields in a little more detail to show their uses.
    </p>
    <p class="style7">
    Hardware Type
    </p>
    <p class="style1">
    The hardware type identifies the type of hardware interface. Legal values are 
    </p>
   
 
     <table class="style3" border="0">
        <tr>
            <th class="style4">
                Type</th>
            <th>
                Description</th>
        </tr>
        <tr>
            <td class="style4">
                1</td>
            <td>
                Ethernet</td>
        </tr>
        <tr>
            <td class="style4">
                2</td>
            <td>
                Experimental Ethernet</td>
        </tr>
        <tr>
            <td class="style4">
                3</td>
            <td>
                X.25</td>
        </tr>
        <tr>
            <td class="style4">
                4</td>
            <td>
                Proteon ProNET (Token Ring)</td>
        </tr>
        <tr>
            <td class="style4">
                5</td>
            <td>
                Chaos</td>
        </tr>
        <tr>
            <td class="style4">
                6</td>
            <td>
                IEEE 802.X</td>
        </tr>
        <tr>
            <td class="style4">
                7</td>
            <td>
                ARCnet</td>
        </tr>
        <tr>
            <td class="style4">
                8</td>
            <td>
                Hyperchannel</td>
        </tr>
        <tr>
            <td class="style4">
                9</td>
            <td>
                Lanstar</td>
        </tr>
        <tr>
            <td class="style4">
                10</td>
            <td>
                Autonet Short Address</td>
        </tr>
        <tr>
            <td class="style4">
                11</td>
            <td>
                LocalTalk</td>
        </tr>
        <tr>
            <td class="style4">
                12</td>
            <td>
                LocalNet</td>
        </tr>
        <tr>
            <td class="style4">
                13</td>
            <td>
                Ultra link</td>
        </tr>
        <tr>
            <td class="style4">
                14</td>
            <td>
                SMDS</td>
        </tr>
        <tr>
            <td class="style4">
                15</td>
            <td>
                Frame Relay</td>
        </tr>
        <tr>
            <td class="style4">
                16</td>
            <td>
                Asynchronous Transmission Mode (ATM)</td>
        </tr>
        <tr>
            <td class="style4">
                17</td>
            <td>
                HDLC</td>
        </tr>
        <tr>
            <td class="style4">
                18</td>
            <td>
                Fibre Channel</td>
        </tr>
        <tr>
            <td class="style4">
                19</td>
            <td>
                Asynchronous Transmission Mode (ATM)</td>
        </tr>
        <tr>
            <td class="style4">
                20</td>
            <td>
                Serial Line</td>
        </tr>
        <tr>
            <td class="style4">
                21</td>
            <td>
                Asynchronous Transmission Mode (ATM)</td>
        </tr>
    </table>
    
    <p class="style7">
    Protocol Type
    </p>
    <p class="style1">
    The protocol type identifies the type of protocol the sending device is using. With
    TCP/IP, these protocols are usually an EtherType, for which the legal values are as
    follows:
    </p>
      
        <table class="style3">
            <tr>
                <th class="style4">
                    Decimal</th>
                <th>
                    Description</th>
            </tr>
            <tr>
                <td class="style4">
                    512</td>
                <td>
                    XEROX PUP</td>
            </tr>
            <tr>
                <td class="style4">
                    513</td>
                <td>
                    PUP Address Translation</td>
            </tr>
            <tr>
                <td class="style4">
                    1536</td>
                <td>
                    XEROX NS IDP</td>
            </tr>
            <tr>
                <td class="style4">
                    2048</td>
                <td>
                    Internet Protocol (IP)</td>
            </tr>
            <tr>
                <td class="style4">
                    2049</td>
                <td>
                    X.75</td>
            </tr>
            <tr>
                <td class="style4">
                    2050</td>
                <td>
                    NBS</td>
            </tr>
            <tr>
                <td class="style4">
                    2051</td>
                <td>
                    ECMA</td>
            </tr>
            <tr>
                <td class="style4">
                    2052</td>
                <td>
                    Chaosnet</td>
            </tr>
            <tr>
                <td class="style4">
                    2053</td>
                <td>
                    X.25 Level 3</td>
            </tr>
            <tr>
                <td class="style4">
                    2054</td>
                <td>
                    Address Resolution Protocol (ARP)</td>
            </tr>
            <tr>
                <td class="style4">
                    2055</td>
                <td>
                    XNS</td>
            </tr>
            <tr>
                <td class="style4">
                    4096</td>
                <td>
                    Berkeley Trailer</td>
            </tr>
            <tr>
                <td class="style4">
                    21000</td>
                <td>
                    BBN Simnet</td>
            </tr>
            <tr>
                <td class="style4">
                    24577</td>
                <td>
                    DEC MOP Dump/Load</td>
            </tr>
            <tr>
                <td class="style4">
                    24578</td>
                <td>
                    DEC MOP Remote Console</td>
            </tr>
            <tr>
                <td class="style4">
                    24579</td>
                <td>
                    DEC DECnet Phase IV</td>
            </tr>
            <tr>
                <td class="style4">
                    24580</td>
                <td>
                    DEC LAT</td>
            </tr>
            <tr>
                <td class="style4">
                    24582</td>
                <td>
                    DEC</td>
            </tr>
            <tr>
                <td class="style4">
                    24583</td>
                <td>
                    DEC</td>
            </tr>
            <tr>
                <td class="style4">
                    32773</td>
                <td>
                    HP Probe</td>
            </tr>
            <tr>
                <td class="style4">
                    32784</td>
                <td>
                    Excelan</td>
            </tr>
            <tr>
                <td class="style4">
                    32821</td>
                <td>
                    Reverse ARP</td>
            </tr>
            <tr>
                <td class="style4">
                    32823</td>
                <td>
                    AppleTalk</td>
            </tr>
            <tr>
                <td class="style4">
                    32824</td>
                <td>
                    DEC LANBridge</td>
            </tr>
        </table>
    <p class="style1">
    If the protocol is not EtherType, other values are allowed.
    </p>
    <p class="style7">
    Hardware Address Length
    </p>
    <p class="style1">
    Hardware address length is the length of each hardware address in the datagram, given in
    bytes. For Ethernet networks, this value is set to 4 bytes.
    </p>
    <p class="style7">
    Protocol Address Length
    </p>
    <p class="style1">
    Protocol address length is the length of the protocol address in the datagram, given in
    bytes. For the IP protocol, the protocol address length is set to 4 bytes.
    </p>
    <p class="style7">
    Operation Code (Opcode)
    </p>    
    <p class="style1">
    The Opcode indicates whether the datagram is an ARP request or an ARP reply. If it
    is an ARP request, the value is set to 1. If the datagram is an ARP reply, the value is
    set to 2.
    </p>
    <p class="style7">
    Sender Hardware Address
    </p>
    <p class="style1">
    The sender hardware address is the hardware address of the sending device.
    </p>
    <p class="style7">
    Sender IP Address
    </p>
    <p class="style1">
    The sender IP address is the IP address of the sending device.
    </p>
    <p class="style7">
    Recipient Hardware Address
    </p>
    <p class="style1">
    The recipient hardware address is the hardware address of the recipient device.
    </p>
    <p class="style2">
    Recipient IP Address
    </p>
    <p class="style1">
    The recipient IP address is the IP address of the recipient device.
    </p>
    
    <p class="style6">Details of ARP Operation</p>
    <p class="style1">
    As an IP packet is sent through the network layers of nodes in a TCP/IP internet, the
    routing component of the Network Layer determines the IP address of the next router.
    <br /><br />
    The routing component of the Network Layer determines whether the IP datagram is to
    be sent to a host on the local network or a host on a different network segment.
    <br /><br />
    If the sender host determines that the destination is on the local network, it needs to find
    the destination’s hardware address. If the destination is on a remote network (different
    network than the local network) then the sender needs to find the hardware address of the
    router port to which the IP datagram is to be forwarded.
    <br /><br />
    For broadcast networks ARP is used to find the hardware address of the target node
    which is either the node on the local network or the router port on the local network.
    ARP is implemented as part of the IP module in networks that need address resolution
    such as broadcast LANs (Ethernet, Token Ring and so on). The ARP protocol is directly
    encapsulated by the Data Link Layer protocol; it is not encapsulated by the IP protocol.
    This means that the ARP protocol cannot be routed; that is, it cannot cross a router
    boundary.
    <br /><br />
    Before sending the ARP request, the ARP module tries to find the target address in its
    local cache, also called the ARP cache table. The ARP cache table keeps pairs of entries
    of IP addresses and the corresponding hardware address.
    <br /><br />
    If the target IP address is found in the ARP cache table, it looks up the corresponding
    hardware address and returns it to the ARP module. The ARP module returns the hardware
    address to the network driver that made the request for discovering the target node’s
    hardware address. The network driver then transmits a Data Link Layer frame containing
    the IP datagram with the target node’s hardware address placed in the destination hardware
    address field. In the scenario just discussed, an ARP request is never generated,
    because the target node’s hardware address was discovered in the local cache.
    <br /><br />
    What happens if the ARP cache does not contain the target node’s hardware address? In
    this case, the ARP module generates a Data Link Layer frame containing the ARP
    request to discover the target node’s hardware address. The ARP request is broadcast at
    the Data Link Layer to all nodes on the local network segment. As mentioned earlier, the
    ARP request/replies are confined to the local network segment and do not cross router
    boundaries.
    <br /><br />
    When an ARP request is received, the Data Link Layer at the target node gives the
    packet to the Address Resolution module. The ARP request is broadcast at the Data Link
    level, so all nodes on the local network will receive it. However, only the node whose IP
    address corresponds to the Target IP address will respond with an ARP reply.
    <br /><br />
    The steps performed by the ARP module at the receiving node are outlined here:
    </p>
    <ul class="style1">
        <li>First, the node checks to see whether it recognizes the hardware type in the
            Hardware Type field of the ARP request packet. If it does recognize the hardware
            type, it optionally checks the hardware length Hlen in the ARP request packet.
        </li>

        <li>The node then answers this question, “Do I speak the protocol in the Protocol Type
            field in ARP request packet?” If the answer is yes, the node optionally checks the
            protocol length Plen in the ARP request packet.
        </li>
        <li>The Set Merge_flag is set to false.
        </li>

        <li>If the pair &lt;protocol type, sender protocol address&gt; is already in the node’s translation
            table, it updates the sender hardware address field of the entry with the new
            information in the packet and sets the Merge_flag to true.
        </li>

        <li>The node then answers the question, “Am I the target protocol address?” This
            means “Is my IP address the same as that in the Target IP address field?” If the
            answer is yes, then the following occurs: If the merge flag is false, add the triplet
            &lt;protocol type, sender protocol address, sender hardware address&gt; to the translation
            table.
        </li>

        <li>Finally, the node answers the question, “Is the Operation field value a request?” If
            the answer is yes, swap the hardware and protocol fields, putting the local hardware
            and protocol addresses in the sender fields. See the Operation field to ARP
            reply. Send the packet to the (new) target hardware address on the same hardware
            on which the request was received.
        </li>
    </ul>
    <p class="style1">
    In the algorithm just described, the ^lt;protocol type, sender protocol address, sender hardware
    address&gt; triplet is merged into the ARP cache table before the Operation field is
    examined in step 4. This step only occurs if a node has an entry for the sender’s IP
    address in their ARP cache table.
    <br /><br />
    Note that only the ARP cache table for nodes that have an entry for the sender IP address
    are modified.
    <br /><br />
    Updating or adding ARP cache entries is done because the upper layers of the target
    node are likely to respond to the ARP request sender; when the target generates a Data
    Link Layer frame, it will consult its ARP cache table and discover that it already knows
    the hardware address of the sender. Thus an ARP request to discover the sender’s hardware
    address is not required.
    <br /><br />
    Also note also that if the target node already has an entry in its ARP cache table for the
    &lt;protocol type, sender protocol address&gt; pair, then the new hardware address replaces
    the old address. This could occur in any of the following situations:
    </p>
    <ul class="style1">
        <li>New network hardware was added in the ARP request sender to replace the existing
            one. In this case the hardware address of the node is different.</li>
        <li>The IP addresses were reassigned. The ARP request sender is another node that
            was assigned the IP address that is in the ARP cache table of the target. The hardware
            address of the ARP sender is different because it is a different node.</li>
        <li>There is a duplicate address problem. Another node claims to have the same IP
            address as the one in the target node’s ARP cache table.</li>
    </ul>
    <p class="style1">
    Although the first two situations are normal, the last situation of duplicate IP addresses is
    an error condition and is examined in detail in the sections on duplicate IP addresses.
    </p>
    <p class="style6">The ARP Protocol Design</p>
    <p class="style1">In theory, the length fields HLen and PLen in the ARP packet format are redundant,
    because the length of the hardware address and the protocol address can be determined
    by the value of the Hardware Type and Protocol Type fields. For instance, the Hardware
    Type field having a value of 1 indicates an Ethernet frame, and this implies an HLen
    value of 6 octets because Ethernet addresses are 6 octets long. Similarly, if the Protocol
    Type field indicates an IP protocol, the PLen value is 4 octets because IP addresses are 4
    octets long.
    <br /><br />
    The redundant HLen and PLen fields are included for optional consistency checking, and
    for the use of network monitoring tools.
    <br /><br />
    The Operation field is used to determine whether this is a request or a reply to a previous
    request. Using a two-octet field is excessive considering the number of the operation
    codes that have been assigned thus far. In retrospect, a one-octet field would have been
    sufficient.
    <br /><br />
    The Sender HA and Sender IP address fields are needed because these fields are potentially
    recorded in the ARP cache tables of the receiving nodes. In the ARP request the
    Target HA has no meaning because its value is not known. Note that the answer is actually
    returned in the Sender HA field in the ARP reply. The Target HA is included for
    completeness and network monitoring.
    <br /><br />
    The Target IP field is necessary in the ARP request so that a machine can determine
    whether or not it is the target node and therefore needs to send a reply. The Target IP
    field is not necessarily needed in the ARP reply if one assumes a reply is only provoked
    by a request. It could be used for network monitoring, and to simplify the ARP
    request/reply processing algorithm.
    </p>
    <p class="style6">Network Monitoring with ARP</p>
    <p class="style1">
    ARP can be used by a monitoring device to gain knowledge about the higher level protocol
    activity by just examining the ARP frame headers. For example, the networkmonitoring
    device can determine which protocols are in use by examining the Protocol
    Type field value. A monitoring device could be designed along the lines suggested in this
    section.
    <br /><br />
    When the monitoring device receives an ARP packet, it can enter the protocol type,
    sender protocol address, and sender hardware address in a table. Additionally, it can
    determine the length of the hardware and protocol address from the HLen and PLen
    fields of the ARP packet. Note that ARP requests are broadcast at the Data Link level,
    and a monitor receives all ARP requests.
    <br /><br />
    If the Operation field indicates an ARP reply packet, and the target protocol address
    matches the protocol address of the monitor, the monitor sends an ARP reply like any
    other target node. The monitor will not receive any other ARP replies because an ARP
    reply is sent directly to the requesting host.</p>
    <p class="style6">Timeouts in the ARP Cache Table</p>
    <p class="style1">
    ARP cache tables are often implemented with a timeout mechanism. Entries in the ARP
    cache table may have timestamp values associated with them. The following is a discussion
    of some of the timeout issues associated with ARP tables.
    <br /><br />
    If a node is moved it is usually shut down before moving. Shutting down a node clears
    its ARP cache table so old entries will not cause confusion. Other nodes on the network
    will generally not be aware that a particular node has moved or been shut down.
    If the node has been moved to a location on the same network segment, the ARP cache
    information about the moved node will still be valid because the IP address and hardware
    address of the moved node will not have changed.
    <br /><br />
    If the node has been shut down, other nodes will not be able to reach this node. They
    will use their ARP cache information to access the node but be unable to make the connection.
    An implementation could use the failure to initiate a connection to a node to
    delete the information in the ARP cache table about the node. It could also try accessing
    the node by sending a few more ARP requests before giving up.
    <br /><br />
    If the node has been moved to a location on a different network segment, it is behind a
    router boundary. Because IP addresses contain information about the network segment
    they are attached to, the IP address of the moved node must change even though its hardware
    address remains the same. Recall that ARP transmissions do not go beyond a router
    boundary. For all practical purposes the new node can be assumed to be shut down or
    unavailable.
    <br /><br />
    An ARP implementation typically updates the timestamps when the address resolution
    entry is used for transmitting packets to a node. The timestamps are also updated when
    ARP requests are received from a node whose entry exists in the ARP cache table. If no
    packets are received from a node for a suitable length of time, called the ARP timeout
    value, the address resolution entry is discarded.
    <br /><br />
    An ARP implementation may also have an independent process (also called a daemon
    process). This independent process checks the ARP cache table periodically and timesout
    old entries. In many TCP/IP implementations, a default timeout of 15 minutes is
    used, and in some implementations this value can be configured by a system administrator.
    As a refinement, it is also possible for the ARP daemon to first send an ARP request to
    the node directly. If an ARP reply is not seen after a few retransmissions, the ARP entry
    is discarded. In this situation, the ARP request is sent directly and not broadcast because
    the hardware address of the node is known from the ARP cache table. This refinement is
    common in Linux implementations.
    <br /><br />
    Many TCP/IP implementations allow you to make manual entries in the ARP cache
    table. Normally, there is no need to make manual entries in the ARP table, as the
    dynamic ARP operation determines the IP address and hardware associations. ARP
    entries made manually are not timed out and can be used to fix problems with incorrect
    entries in the ARP table because of duplicate IP address problems or malfunctioning
    software. The tool used to view or make changes in the ARP table depends on the operating
    system: It can be a command-line tool or a graphical tool. A tool called ARP is available
    on both Windows NT/2000 and UNIX systems. The following shows the syntax for
    the ARP command for Windows 2000:
    <br /><br />
    ARP -s inet_addr eth_addr [if_addr]<br />
    ARP -d inet_addr [if_addr]<br />
    ARP -a [inet_addr] [-N if_addr]<br />
    </p>
    <table class="style1" border="1">
    <tr>
        <td class="style5" valign="top">-a</td>
        <td>Displays current ARP entries by interrogating the current
            protocol data. If inet_addr is specified, the IP and Physical
            addresses for only the specified computer are displayed. If
            more than one network interface uses ARP, entries for each ARP
            table are displayed.</td>
    </tr>
    <tr>
        <td class="style5">-g</td>
        <td>Same as -a.</td>
    </tr>    
    <tr>
        <td class="style5">inet_addr</td>
        <td>Specifies an internet address.</td>
    </tr>
    <tr>
        <td class="style5">-N if_addr</td>
        <td>Displays the ARP entries for the network interface specified
            by if_addr.</td>
    </tr>
    <tr>
        <td class="style5">-d</td>
        <td>Deletes the host specified by inet_addr. inet_addr may be
            wildcarded with * to delete all hosts.</td>
    </tr>
    <tr>
        <td class="style5" valign="top">-s</td>
        <td>Adds the host and associates the Internet address inet_addr
            with the Physical address eth_addr. The Physical address is
            given as 6 hexadecimal bytes separated by hyphens. The entry
            is permanent.</td>
    </tr>
    <tr>
        <td class="style5">eth_addr</td>
        <td>Specifies a physical address.</td>
    </tr>
    <tr>
        <td class="style5" valign="top">if_addr</td>
        <td>If present, this specifies the Internet address of the
            interface whose address translation table should be modified.
            If not present, the first applicable interface will be used.</td>
    </tr>
    </table>
    <p class="style1">
    Example:<br />
    &gt; arp -s 157.55.85.212 00-aa-00-62-c6-09&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .... Adds a static entry. <br />
    &gt; arp -a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    .... Displays the arp table.
    </p>
    <p class="style6">ARP in Bridged Networks</p>    
    <p class="style1">
    Networks can be interconnected by using bridge devices that operate at OSI layer 2 and
    routers that operate at OSI layer 3. Bridges extend the range of LANs. ARP operation on
    LANs requires special discussion, which is the focus of this section.
    <br /><br />
    When a TCP/IP connection fails, the TCP protocol, which is responsible for reliable
    delivery, attempts to recover from the failure by retransmitting packets. If the failure was
    caused by a physical link failure and other paths to the destination are available, the IP
    datagrams get routed around the failed link. If TCP is unable to recover from the failure,
    recovery continues at the lower layers. At the lower layers, the ARP module attempts to
    recover from the connection by broadcasting ARP requests. If the target node is on the
    local network segment, this is viable technique for recovering from failure. However, a
    complication arises when the several nodes start sending ARP request broadcasts. This
    could happen when a central host is no longer available because of host or link failure.
    If 100 stations are connected to a central host on the network, and the connection to the
    host goes down, all 100 stations will start transmitting ARP broadcasts simultaneously.
    On some systems, ARP requests are sent every second. One hundred stations sending
    ARP broadcasts results in 100 broadcast packets being sent every second. This broadcast
    traffic will cause a significant amount of network traffic that would affect the network
    availability to other nodes on the network.
    <br /><br />
    Broadcast traffic could even slow down nodes not currently accessing the network. This
    is because the network board and the associated software driver must examine every
    broadcast packet. In the case of ARP requests, the ARP module will also be executed for
    every broadcast request. Processing even 50 ARP requests/second can take a fair amount
    of processing power and have a significant slowdown effect on a node. As a result all
    nodes on the network will appear to slow down.
    <br /><br />
    The repeated ARP broadcasts create further complications in a bridged network. Network
    segments separated by bridges are considered to be part of the same MAC domain. ARP
    requests/replies must be transmitted across these bridges. Propagation of broadcast traffic
    across bridges can have a multiplying effect and the network traffic could increase even
    more. Creating a large or complex network topology using bridges is therefore not desirable
    under these conditions.
    </p>
    <p class="style6">Duplicate Addresses and ARP</p>
    <p class="style1">
    IP addresses on a network must be unique. How do you ensure this uniqueness? You
    ensure it by proper documentation and assignment of IP addresses. Because of the
    human element involved in assigning IP addresses, inadvertently assigning nodes on a
    network with the same IP address is possible. When this happens, chaos and confusion
    ensues. Networked applications work intermittently or sometimes mysteriously stop
    working altogether.
    <br /><br />
    To help you understand the effect of duplicate IP addresses, the following sections discuss
    two scenarios:
    </p>
    <ul class="style1">
        <li>Duplicate IP addresses at TCP/IP clients</li>
        <li>Duplicate IP addresses at TCP/IP servers</li>
    </ul>
    <p class="style2">Duplicate IP Addresses at TCP/IP Clients</p>
    <p class="style1">
    Consider the situation where two TCP/IP clients called “workstation 1” and “workstation
    2” access a central TCP/IP server at IP address 144.19.74.102. The server’s hardware
    address is 080020021545.
    <br /><br />
    Workstations 1 and 2 are using the same IP address of 144.19.74.1. Their hardware
    addresses are 0000C0085121 and 0000C0075106, respectively.
    <br /><br />
    Workstation 1 starts an FTP session with the TCP/IP server. Before the FTP session
    starts, workstation 1 will issue an ARP broadcast request to discover the hardware
    address of the TCP/IP server. On receiving the ARP request, the TCP/IP server will add
    an entry for the ARP request sender (workstation 1) in its ARP cache table, and send an
    ARP reply to the sender. On receiving the ARP reply, workstation 1 will add an entry for
    the TCP/IP server in its local ARP cache table. At this point the ARP cache tables for the
    TCP/IP server and workstation 1 are as follows:
    <br /><br />
    TCP/IP server:</p>
    <table class="style1">
    <tr>
    <th class="style8">IP Address </th>
    <th>Hardware Address</th>
    </tr>
    <tr>
    <td class="style9">144.19.74.1</td>
    <td class="style10">0000C0085121</td>
    </tr>
    </table>
    <p class="style1">Workstation 1:</p>
    <table class="style1">
    <tr>
    <th class="style8">IP Address </th>
    <th>Hardware Address</th>
    </tr>
    <tr>
    <td class="style9">144.19.74.102</td>
    <td class="style10">080020021545</td>
    </tr>
    </table>
    <p class="style1">
    In the second phase, workstation 2 attempts to establish a TCP/IP session (perhaps
    another FTP session) to the same TCP/IP server.
    <br /><br />
    Before making the connection, workstation 2 must discover the TCP/IP server’s hardware
    address. It attempts to do just that by sending an ARP request. On receiving the
    ARP request, the TCP/IP server will want to add an entry for the ARP request sender
    (workstation 2) in its ARP cache table, and send an ARP reply to the sender. The TCP/IP
    server will find that there is already an entry for 144.19.74.1 in its ARP cache table. As
    per RFC 826 on the Address Resolution Protocol, the TCP/IP server must replace the
    existing entry with the new one. Most TCP/IP implementations will perform this replacement
    silently without issuing any warning of a potential duplicate IP address problem.
    Some TCP/IP implementations will issue a warning of a potential duplicate IP address
    problem. The TCP/IP server will reply to the ARP request from workstation 2. On
    receiving the ARP reply, workstation 2 will add an entry for the TCP/IP server in its
    local ARP cache table. At this point the ARP cache tables for the TCP/IP server and
    workstation 2 are as follows: 
    </p>  
    <p class="style1">TCP/IP server:</p>
    <table class="style1">
    <tr>
    <th class="style8">IP Address </th>
    <th>Hardware Address</th>
    </tr>
    <tr>
    <td class="style9">144.19.74.1</td>
    <td class="style10">0000C0075106</td>
    </tr>
    </table>

    <p class="style1">Workstation 2:</p>
    <table class="style1">
    <tr>
    <th class="style8">IP Address </th>
    <th>Hardware Address</th>
    </tr>
    <tr>
    <td class="style9">144.19.74.102</td>
    <td class="style10">080020021545</td>
    </tr>
    </table>
    
    <p class="style1">
    When the TCP/IP server wants to send data to workstation 1, it will look up the hardware
    address of workstation 1 at IP address 144.19.74.1 in its local ARP cache table and send
    the data to this hardware address. Unfortunately, this is workstation 2’s hardware
    address, and the data will be sent to workstation 2. Workstation 1 on not receiving
    expected data will try to resend its last transmission, and the TCP/IP server will continue
    sending the response to workstation 2. Workstation 1 will therefore “hang” waiting for a
    response. It will eventually time-out, or the workstation may have to be rebooted to
    recover from the error. In any case, an application that was working fine some time ago
    may suddenly stop working, much to the consternation of the user and system administrator
    alike!
    <br /><br />
    Workstation 2 on receiving unexpected data destined for workstation 1 will probably
    reject it, optionally generate an error message, and continue with its session with the
    TCP/IP server. Alternatively, workstation 2 can become confused with unexpected data
    and also “hang.”
    <br /><br />
    If the user at workstation 1 reboots the “hung” computer and tries to reconnect to the
    TCP/IP server, the ARP cache entry for workstation 2 at the TCP/IP server will be
    replaced with that for workstation 1. This will cause workstation 2 to “hang,” and the situation
    could repeat until the users give up in frustration.
    If the users at workstations 1 and 2 are not in communication with each other about the
    problems they are experiencing, each will experience his or her side of the story—that is,
    the workstation “hangs” unexpectedly in the middle of accessing the TCP/IP server. If
    the users do not access the TCP/IP server at the same time, they will never experience
    this problem and the duplicate IP address problem will go undetected. If the users experience
    the problem occasionally, they may dismiss the problem as a fluke on the network
    and never report it. Again, the problem will go undetected.
    </p>
    <p class="style2">Duplicate IP Addresses at TCP/IP Servers</p>
    <p class="style1">
    Consider the situation where there are two TCP/IP servers called “server 1” and “server
    2.” They are both set to the duplicate IP address of 144.19.74.102. The servers’ hardware
    addresses are 080020021545 and AA0004126750, respectively.
    <br /><br />
    A workstation with the IP address 144.19.74.1 tries to access the TCP/IP server at
    144.19.74.102. The workstation’s hardware address is 0000C0085121.
    <br /><br />
    The workstation tries to connect with server 2. Before making the TCP/IP connection,
    the workstation will issue an ARP broadcast request to discover the hardware address of
    the TCP/IP server. There are two TCP/IP servers at the same target IP address of
    144.19.74.102. On receiving the ARP request, both servers 1 and 2 will add an entry for
    the ARP request sender (workstation) in their local ARP cache tables, and send an ARP
    reply to the sender. Two responses are sent on the network. The workstation accepts the
    first ARP reply and silently ignores the second response. If server 2’s ARP reply reaches
    the workstation first, the workstation will add an entry for server 2 in its local ARP cache
    table. At this point the ARP cache tables for the servers and the workstation are as follows:
    </p>
    <table class="style1">
    <tr>
    <th>Server 1</th>
    </tr>
    <tr>
    <th class="style8">IP Address </th>
    <th>Hardware Address</th>
    </tr>
    <tr>
    <td class="style9">144.19.74.1</td>
    <td class="style10">0000C0085121</td>
    </tr>
    <tr>
    <th>Server 2</th>
    </tr>
    <tr>
    <th class="style8">IP Address </th>
    <th>Hardware Address</th>
    </tr>
    <tr>
    <td class="style9">144.19.74.1</td>
    <td class="style10">AA0004126750</td>
    </tr>
    <tr>
    <th>Workstation</th>
    </tr>
    <tr>
    <th class="style8">IP Address </th>
    <th>Hardware Address</th>
    </tr>
    <tr>
    <td class="style9">144.19.74.102</td>
    <td class="style10">080020021545</td>
    </tr>
    </table>
    <p class="style1">
    The workstation will then continue interacting with server 2, instead of server 1 as it had
    originally intended. If server 2 does not have the expected service, the connection will
    fail, and the user will experience an error message about the service not being supported
    at the server. This would be puzzling to the user, especially if the user had successfully
    accessed services at server 1 on prior occasions.
    <br /><br />
    If server 2 has the service that the workstation expects, the user will attempt to log on to
    that service. If the service is Telenet or FTP, a user login and password will be required.
    If the user is not alert, he or she may not notice that the FTP server or Telnet server
    name/version number reported on the screen is different from the one he or she expects.
    If the user does not have a logon account with the same name and password as server 1,
    logon will be denied. If the logon account and password are the same on both servers,
    the user will log on to the wrong server. The user may not find the files or data he or she
    is expecting because he or she has logged on to the wrong server.
    <br /><br />
    If the server is a multihomed host (a server with multiple network connections) that acts
    as a router, there may be the possibility of even more confusion because packets destined
    to outside networks may not follow the expected route or may not get delivered because
    the wrong server has accepted the packets for delivery.
    </p>
    <p class="style2">The ARP Duplicate Address Test</p>
    <p class="style1">
    Many TCP/IP implementations broadcast an ARP request on startup. The ARP request is
    sent with the Target IP field in the ARP request set to that of the node that is starting up.
    <br /><br />
    The purpose of this initial ARP request is to discover whether any nodes have a duplicate
    IP address. If an ARP reply is received, another node (the one generating the ARP reply)
    has the same IP address as that of the node that is booting up. The node that is starting
    up should report the duplicate IP address in a suitable manner. It is even possible for the
    node responding to the ARP request to do an extra check on the Sender IP field in the
    ARP request packet to see whether it is the same as its own IP address. If the Sender IP
    and Target IP address fields match, the responding node can generate a suitable alert
    about a duplicate IP address problem.
    <br /><br />
    The initial ARP frame can only discover duplicate IP address problems on the same network
    segment. Because ARP packets do not cross router boundaries, they cannot detect
    duplicate IP address problems for network segments connected by routers.
    <br /><br />
    Another function of the initial ARP broadcast is for nodes that have an entry for the node
    that is starting up to update their ARP cache table. If the node that is starting up has a
    different hardware address (because the network hardware was changed), all nodes
    receiving the ARP broadcast discard the old hardware address and update their ARP
    cache tables with the new hardware address.
    </p>
    <p class="style6">Proxy ARP</p>
    <p class="style1">
    Earlier in this chapter, you saw that two networks connected through a gateway can have
    the same network address. The gateway has to determine to which of the networks the
    physical address or IP address of an incoming datagram corresponds. The gateway can
    do this with a modified ARP called Proxy ARP (sometimes called Promiscuous ARP).
    <br /><br />
    Proxy ARP creates an ARP cache consisting of entries from both networks. The gateway
    has to manage the ARP requests and replies that cross the two networks. By combining
    two ARP caches into one, Proxy ARP adds flexibility to the resolution process and prevents
    excessive request and reply ARP datagrams whenever an address has to cross a network
    gateway.

    </p>
                   
    
    
    
    </div>
    <a href="../TcpipStructure.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" width="50" />
    </a>
    </form>
</body>
</html>
