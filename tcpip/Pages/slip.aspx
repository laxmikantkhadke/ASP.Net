<%@ Page Language="C#" %>

<%@ Register src="../Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SLIP</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            text-align: justify;
        }
    </style>
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('../Images/Maize.jpg') ; ">

    <form id="form1" runat="server">
    
        <uc1:Header ID="Header1" runat="server" />
     <div style="margin-left:auto; margin-right:auto; width:1024px; float:left">   
            <h1>
            Serial Line Internet Protocol (SLIP)
            </h1>

            <p class="style1">
            SLIP was an early protocol used to connect remote users to a local host. RFC 1055 is
            an informational specification only because SLIP was already a de facto standard when
            RFC 1055 was written. SLIP was one of the first useful remote access protocols in that
            it provided for IP connectivity to the remote networks that were appearing in the early
            1980s.
            <img src="../Images/slip01.JPG" alt="SLIP" width="1000" />
            </p>
            <p class="style1">
            SLIP is a very simple-minded protocol because it was designed when networking was
simpler, and the problem that was being solved was just to send IP datagrams across serial
links. The entire RFC, including code, is only five pages long. All the SLIP protocol
does is define how data is framed on a serial line. There is no error correction or detection,
addressing, packet identification, or compression. Its sole purpose was to push packets
across a serial line.
            </p>
            <p class="style1">
            Due to SLIP’s simple nature, a number of deficiencies make it less than desirable in a
large-scale network implementation. The most onerous is that in a SLIP session, both
ends of the session must know the other’s IP address. Without it, there is no way to handle
the routing issues. In modern networks this can be an issue, especially in a DHCP-based
environment. However, this same simple nature makes SLIP easy to implement.
</p>
            <p class="style1">
Datagrams are usually kept to less than 1006 bytes, well below the MTU size limit of
many links. An additional concern is maximum modem speed. It is recommended that
SLIP connections not exceed 19.2Kbps. In practice this limit is good to stay with.
Higher speed connections benefit from the additional error checking provided by PPP.
            </p>
            <img src="../Images/SLIP.png" alt="SLIP Working"  height="400" width="1000" />
            <h2>Working of SLIP</h2>
            <p class="style1 ">
            IP datagrams are passed down to the SLIP software at Layer two (a simplified 
            one with only five bytes is shown here). There, they are framed by surrounding them with
             END characters (Hex value C0h).
            Special characters with hexadecimal values DBh and C0h are replaced by two byte sequences. 
            Note that thepresence of the 
            bracketing END characters forces the receiving device to see the noisy byte (03h)
            as a separate IP datagram, rather than part of either of real ones. It will rejected 
            when passeed up to the IP layer.
            </p>
            <h2>Compressed SLIP (CSLIP)</h2>
            <p class="style1">
CSLIP is a protocol that reduces transport overhead by using VanJacobsen TCP header
compression to reduce the size of the combined TCP and IP header size from a 40 to
3–7-byte signature. Header compression is made possible because most of the packets
have very little that changes in the TCP and IP header. Data compression, such as runlength
encoding, can be used. This technique replaces strings of repeated characters with
a single character and a count. This can be a big difference when you’re sending lots of
little packets, as can be the case with protocols like Telnet.
            </p>
           
    </div>
    <a href="../TcpipStructure.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" width="50" />
    </a>
    </form>
</body>
</html>
