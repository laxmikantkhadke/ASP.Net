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
            .style4
            {
                font-family: Arial, Helvetica, sans-serif;
                font-size: x-large;
                text-align: justify;
                text-decoration: underline;
            }
            .style5
            {
                color: #CC00FF;
            }
            .style6
            {
                text-decoration: underline;
            }
        </style>
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('../Images/Maize.jpg') ; ">

    <form id="form1" runat="server">
    
        <uc1:Header ID="Header1" runat="server" />
      <div style="margin-left:auto; margin-right:auto; width:1024px; float:left; ">  
      <h1>Internet Protocol Version 4 (IPv4)</h1>
      
      <p class="style1">
        Even though the name seems to imply that it's the fourth iteration of the key Internet
        Protocol, version 4 of IP was the first that was widely used in modern TCP/IP. IPv4, as it is
        sometimes called to differentiate it from the newer IPv6, is the Internet Protocol version in
        use on the Internet today, and an implementation of the protocol is running on hundreds of
        millions of computers. It provides the basic datagram delivery capabilities upon which all of
        TCP/IP functions, and it has proven its quality in use over a period of more than two
        decades.
        <br /><br />
        In this section I provide extensive detail on the operation of the current version of the
        Internet Protocol, IPv4. There are four main subsections, which represent the four main
        functions of IP. The first subsection provides a comprehensive discussion of IP addressing.
        The second discusses how data is encoded and formatted into IP datagrams for transmission.
        The third describes datagram size issues and how fragmentation and reassembly
        are used to convey large datagrams over networks designed to carry small frames. The last
        subsection covers matters related to the delivery and routing of IP datagrams. After the four
        main subsections I conclude our look at IPv4 with an overview of IP multicasting, which is
        used for delivering a single datagram to more than one recipient.
      </p>
      <p class="style2">IP Addressing</p>
      <p class="style1">
        The primary job of IP is delivering messages between devices, and like any good delivery
        service, it can't do its job too well if it doesn't know where the recipients are located.
        Obviously then, one of the most important functions of the Internet Protocol is addressing.
        IP addresses are used not only to uniquely identify IP addresses but to facilitate the routing
        of IP datagrams over internetworks. They are used and referred to extensively in TCP/IP
        networking.
        <br /><br />
        In this section I provide a comprehensive explanation of the issues and techniques
        associated with IP addressing. There are five subsections. The first provides an overview of
        IP addressing concepts and issues. The second discusses the original class-based
        (“classful”) IP addressing scheme and how the different classes work. The third and fourth
        subsections are devoted to IP subnets and subnet addressing. This includes a discussion
        of subnetting concepts and also a thorough illustration of practical step-by-step subnetting.
        The last subsection describes the new classless addressing system, also sometimes called
        “supernetting”.
      </p>
      <p class="style2">IP Addressing Concepts and Issues</p>
      <p class="style1">
        Even though the original IP addressing scheme was relatively simple, it has become
        complex over time as changes have been made to it to allow it to deal with various
        addressing requirements. The more advanced styles of IP addressing, such as subnetting
        and classless addressing, are the ones used most in modern networks. However, they can
        be a bit confusing to understand. To help make sense of them we must start at the
        beginning with a discussion of the fundamentals of IP addressing.
        <br /><br />        
        In this section I begin our larger exploration of IP addressing by explaining the key concepts
        and issues behind it. I begin with an overview of IP addressing and discussion of what it is
        all about in general terms. I describe the size of IP addresses, the concept of its “address
        space” and the notation usually used for IP addresses. I provide basic information on the
        structure of an IP address and how it is divided into a network identifier and host identifier. I
        then describe the different types of IP addresses and the additional information such as a
        subnet mask and default gateway that often accompanies an IP address on larger
        networks. I provide a brief description of how multiple addresses are sometimes assigned
        to single devices and why. I conclude with a description of the process by which public IP
        addresses are registered and managed, and the organizations that do this work for the
        global Internet.
      </p>
      <p class="style2">IP Addressing Overview and Fundamentals</p>
      <p class="style1">
        In the introduction of this section, I mentioned that IP addressing is important because it
        facilitates the primary function of the Internet Protocol—the delivery of datagrams across an
        internetwork. Understanding this in more detail requires us to examine a few different but
        essential issues related to how IP and its addresses operate.
      </p>
      <p class="style2">IP Address Functions: Identification and Routing</p>
      <p class="style1">
        The first point that bears making is that there are actually two different functions of the IP
        address:
      </p>
      <ul class="style1">
      <li><p><strong>Network Interface Identification :</strong> Like a street address, the IP address provides
        unique identification of the interface between a device and the network. This is
        required to ensure that the datagram is delivered to the correct recipients.</p></li>
      <li><p><strong>Routing :</strong> When the source and destination of an IP datagram are not on the same
        network, the datagram must be delivered “indirectly” using intermediate systems, a
        process called routing. The IP address is an essential part of the system used to route
        datagrams.</p></li>
      </ul>
      <p class="style1">
        You may have noticed a couple of things about this short list. One is that I said the IP
        address identifies the network interface—not that it identifies the device itself. This
        distinction is important because it underscores the concept that IP is oriented around
        connections to a large “virtual network” at layer three, which can span multiple physical
        networks. Some devices, such as routers, will have more than one network connection:
        they must, in order to take datagrams from one network and route them onto another. This
        means they will also have more than one IP address, one per connection.
        <br /><br />
        You might also find it curious that I said the IP address facilitates routing. How can it do
        that? The answer is that the addressing system is designed with a structure that can be
        interpreted to allow routers to determine what to do with a datagram based on the values in
        the address. Numbers related to the IP address, such as the subnet mask when subnetting
        is used, support this function.
        <br /><br />
        Let’s now look at some other important issues and characteristics associated with IP
        addresses in general terms.
      </p>
      <p class="style2">Number of IP Addresses Per Device</p>
      <p class="style1">
        Any device that has data sent to it at the network layer will have at least one IP address:
        one per network interface. As I mentioned above, this means that normal hosts such as
        computers and network-capable printers usually get one IP address, while routers get more
        than one IP address. Some special hosts may have more than one IP address if they are
        multihomed—connected to more than one network.
        
        Lower-level network interconnection devices such as repeaters, bridges and switches don't
        require an IP address because they pass traffic based on layer two (data link layer)
        addresses. Network segments connected by bridges and switches form a single broadcast
        domain and any devices on them can send data to each other directly without routing. To
        the Internet Protocol, these devices are “invisible”, they are no more significant than the
        wires that connect devices together (with a couple of exceptions). Such devices may,
        however, optionally have an IP address for management purposes. In this regard, they are
        acting like a regular host on the network. See following Figure for an illustration.
      </p>
      <p style="text-align:center">
          <img src="../Images/ip/ip_interface.png" alt="IP Interface for common devices" />      
      </p>
      <p class="style2">Address Uniqueness</p>
      <p class="style1">
        Each IP address on a single internetwork must be unique. This seems rather obvious
        (although there are exceptions in IPv6, in the form of special anycast addresses!)
      </p>
      <p class="style2">Network-Specificity of IP Addresses</p>
      <p class="style1">
        Since IP addresses represent network interfaces and are used for routing, the IP address is
        specific to the network to which it is connected. If the device moves to a new network, the IP
        address will usually have to change as well. For the full reason why, see the discussion of
        basic IP address structure. This issue was a primary motivation for the creation of Mobile IP.
      </p>
      <p class="style2">Contrasting IP Addresses and Data Link Layer Addresses</p>
      <p class="style1">
        IP addresses are used for network-layer data delivery across an internetwork. This makes
        IP addresses quite different from the data link layer address of a device, such as its
        Ethernet MAC address. (In TCP/IP parlance these are sometimes called physical
        addresses or hardware addresses.) At the network layer, a single datagram may be sent
        “from device A to device B”. However, the actual delivery of the datagram may require that
        it passes through a dozen or more physical devices, if A and B are not on the same
        network.
        <br /><br />
        It is also necessary to provide a function that maps between IP and data link layer
        addresses. In TCP/IP this is the job of the Address Resolution Protocol (ARP).
      </p>
      <p class="style2">IP Address Datagram Delivery Issues</p>
      <p class="style1">
        In a physical network such as an Ethernet, the MAC address is all the information needed
        to send data between devices. In contrast, an IP address represents only the final delivery
        point of the datagram. The route taken depends on the characteristics of the network paths
        between the source and destination devices. It is even possible that there may not be a
        route between any two devices, which means two devices cannot exchange data even if
        they know each other's addresses!
      </p>
      <p class="style2">Private and Public IP Network Addresses</p>
      <p class="style1">
        There are two distinct ways that a network can be set up with IP addresses. On a private
        network a single organization controls the assignment of the addresses for all devices; they
        have pretty much absolute control to do what they wish in selecting numbers as long as
        each address is unique. In contrast, on a public network a mechanism is required to ensure
        both that organizations don't use overlapping addresses and also to enable efficient routing
        of data between organizations. The best-known example of this is of course the Internet,
        where public IP registration and management facilities have been created to address this
        issue. There are also advanced techniques now such as IP Network Address Translation
        that allow a network using private addresses to be interfaced to a public TCP/IP network.
      </p>
      <p class="style2">IP Address Configuration</p>
      <p class="style1">
        There are two basic ways that IP addresses can be configured. In a static configuration
        setup, each device is manually configured with an IP address that doesn't change. This is
        fine for small networks but quickly becomes an administrative nightmare in larger networks
        when changes are required. The alternative, dynamic configuration, allows IP addresses to
        be assigned to devices and changed under software control. The two host configuration
        protocols, BOOTP and DHCP, were created to fill this latter function.
      </p>
      <p class="style2">Unicast, Multicast and Broadcast Addressing</p>
      <p class="style1">
        Provision is included in the IP addressing scheme for all three basic types of addressing.
        The topics that follow in this section, and the other sections in our discussion of IP, expand
        upon these concepts with more particulars.
      </p>
      <p class="style4">IP Address Size, Address Space and "Dotted Decimal" Notation</p>
      <p class="style1">
        Now that we have looked at the general issues and characteristics associated with IP
        addresses, it's time to get past the introductions and dig into the “meat” of our IP address
        discussion. Let's start by looking at the physical construction and size of the IP address and
        how it is referred to and used.
      </p>
      <p class="style2">IP Address Size and Binary Notation</p>
      <p class="style1">
        At its simplest, the IP address is just a 32-bit binary number: a set of 32 ones or zeroes. At
        the lowest levels computers always work in binary and this also applies to networking
        hardware and software. While different meanings are ascribed to different bits in the
        address as we shall soon see, the address itself is just this 32-digit binary number.
        <br /><br />
        Humans don't work too well with binary numbers, because they are long and complicated,
        and the use of only two digits makes them hard to differentiate. (Quick, which of these is
        larger: 11100011010100101001100110110001 or 11100011010100101001101110110001?
        ☺) For this reason, when we use IP addresses we don't work with them in binary except
        when absolutely necessary.
        <br /><br />
        The first thing that humans would naturally do with a long string of bits is to split it into four
        eight-bit octets (or bytes, even though the two aren't technically the same), to make it more
        manageable. So, 11100011010100101001101110110001 would become “11100011 -
        01010010 - 10011101 - 10110001”. Then, we could convert each of those octets into a more
        manageable two-digit hexadecimal number, to yield the following: “E3 - 52 - 9D - B1”. This
        is in fact the notation used for IEEE 802 MAC addresses, except that they are 48 bits long
        so they have six two-digit hex numbers, and they are usually separated by colons, not
        dashes as I used here.
      </p>
      <p class="style2">IP Address "Dotted Decimal" Notation</p>
      <p class="style1">
        Most people still find hexadecimal a bit difficult to work with. So IP addresses are normally
        expressed with each octet of 8 bits converted to a decimal number and the octets separated
        by a period (a “dot”). Thus, the example above would become 227.82.157.177, as shown in
        Figure.
      </p>
      <p style="text-align:center">
          <img src="../Images/ip/ip_add_bin_hex_dotted.png" alt="IP addressing binary" />
      </p>
      <p class="style1">
        This is usually called dotted decimal notation for rather obvious reasons. Each of
        the octets in an IP address can take on the values from 0 to 255 (not 1 to 256, note!) so the
        lowest value is theoretically 0.0.0.0 and the highest is 255.255.255.255.
      <br /><br />
        Dotted decimal notation provides a convenient way to work with IP addresses when
        communicating amongst humans. Never forget that to the computers, the IP address is
        always a 32-bit binary number; the importance of this will come in when we look at how the
        IP address is logically divided into components in the next topic, as well as when we
        examine techniques that manipulate IP addresses, such as subnetting.
      </p>
      <p class="style2">IP Address Space</p>
      <p class="style1">
        Since the IP address is 32 bits wide, this provides us with a theoretical address space of
        232, or 4,294,967,296 addresses. This seems like quite a lot of addresses! And in some
        ways it is. However, as we will see, due to how IP addresses are structured and allocated,
        not every one of those addresses can actually be used. One of the unfortunate legacies of
        the fact that IP was originally created on a rather small internetwork is that decisions were
        made that “wasted” much of the address space. For example, all IP addresses starting with
        “127” in the first octet are reserved for the loopback function. Just this one decision makes
        1/256th of the total number of addresses, or 16,277,216 addresses, no longer available.
        There are also other ways that the IP address space was not “conserved”, which caused
        difficulty as the Internet grew in size. We'll see more about this in the section on “classful”
        addressing.
        <br /><br />
        <strong>Note :</strong>Since IP addresses are 32 bits long, the total address space of IPv4
        is 2<sup>32</sup> or 4,294,967,296 addresses. However, not all of these addresses can be used,
        for a variety of reasons.
        <br /><br />
        This IP address space dictates the limit on the number of addressable interfaces in each IP
        internetwork. So, if you have a private network you can in theory have 4 billion plus
        addresses. However, in a public network such as the Internet, all devices must share the
        available address space. Techniques such as CIDR (“supernetting”) and Network Address
        Translation (NAT) were designed in part to more efficiently utilize the existing Internet IP
        address space. Of course, IP version 6 expands the IP address size from 32 bits all the way
        up to 128, which increases the address space to a ridiculously large number and makes the
        entire matter of address space size moot.
      </p>
      <p class="style4">IP Basic Address Structure and Main Components: Network ID and Host ID</p>
      <p class="style1">
        As I mentioned in the IP addressing overview, one of the ways that IP addresses are used
        is to facilitate the routing of datagrams in an IP internet. This is made possible because of
        the way that IP addresses are structured, and how that structure is interpreted by network
        routers.
      </p>
      <p class="style2">Internet IP Address Structure</p>
      <p class="style1">
        As we just saw, each version 4 IP address is 32 bits long. When we refer to the IP address
        we use a dotted-decimal notation, while the computer converts this into binary. However,
        even though these sets of 32 bits are considered a single “entity”, they have an internal
        structure containing two components:
      </p>
      <ul class="style1">
      <li><p><strong>Network Identifier (Network ID) :</strong> A certain number of bits, starting from the left-most
        bit, is used to identify the network where the host or other network interface is located.
        This is also sometimes called the network prefix or even just the prefix.</p></li>
      <li><p><strong>Host Identifier (Host ID) :</strong> The remainder of the bits are used to identify the host on
        the network.</p></li>
      </ul>
      <p class="style1">
      <strong>Note :</strong> By convention, IP devices are often called hosts for simplicity, as I do
        throughout this Guide. Even though each host usually has a single IP address,
        remember that IP addresses are strictly associated with network-layer network
        interfaces, not physical devices, and a device may therefore have more than one IP
        address.
      </p>
      <p style="text-align:center">
          <img src="../Images/ip/basic_ip_address_division.png" alt="Basic IP address Division"/>
      </p>
      <p class="style1">
        As you can see in above Figure, this really is a fairly simple concept; it's the same idea as the
        structure used for phone numbers in North America. The telephone number (401) 555-7777
        is a ten-digit number usually referred to as a single “phone number”. However, it has a
        structure. In particular, it has an area code (“401”) and a local number (“555-7777”).
      </p>
      <p class="style2">Implications of Including the Network ID in IP Addresses</p>
      <p class="style1">
        The fact that the network identifier is contained in the IP address is what partially facilitates
        the routing of IP datagrams when the address is known. Routers look at the network portion
        of the IP address to determine first of all if the destination IP address is on the same
        network as the host IP address. Then routing decisions are made based on information the
        routers keep about where various networks are located. Again, this is conceptually similar
        to how the area code is used by the equivalent of “routers” in the phone network to switch
        telephone calls. The host portion of the address is used by devices on the local portion of
        the network.
        <br /><br />
        Since the IP address can be split into network ID and host ID components, it is also
        possible to use either one or the other by itself, depending on context. These addresses are
        assigned special meanings. For example, if the network ID is used with all ones as the host
        ID, this indicates a broadcast to the entire network. Similarly, if the host ID is used by itself
        with all zeroes for the network ID, this implies an IP address sent to the host of that ID on
        “the local network”, whatever that might be.
        <br /><br />
        It is the inclusion of the network identifier in the IP address of each host on the network that
        causes the IP addresses to be network-specific. If you move a device from one network to a
        different one the network ID must change to that of the new network. Therefore, the IP
        address must change as well. This is an unfortunate drawback that shows up most
        commonly when dealing with mobile devices.
      </p>
      <p class="style2">Location of the Division Between Network ID and Host ID</p>
      <p class="style1">
        One difference between IP addresses and phone numbers is that the dividing point
        between the bits used to identify the network and those that identify the host isn't fixed. It
        depends on the nature of the address, the type of addressing being used, and other factors.
        Let's take the example from the last topic, 227.82.157.177. It is possible to divide this into a
        network identifier of “227.82” and a host identifier of “157.177”. Alternately, the network
        identifier might be “227” and the host identifier “82.157.177” within that network.
        <br /><br />
        To express the network and host identifiers as 32-bit addresses, we add zeroes to replace
        the missing “pieces”. In the latter example just above, the address of the network becomes
        “227.0.0.0” and the address of the host “0.82.157.177”. (In practice, network addresses of
        this sort are routinely seen with the added zeroes; network IDs are not as often seen in 32-
        bit form this way.)
        <br /><br />
        Lest you think from these examples that the division must always be between whole octets
        of the address, it's also possible to divide it in the middle of an octet. For example, we could
        split the IP address 227.82.157.177 so there were 20 bits for the network ID and 12 bits for
        the host ID. The process is the same, but determining the dotted decimal ID values is more
        tricky because here, the “157” is “split” into two binary numbers. The results are
        “227.82.144.0” for the network ID and “0.0.0.13.177” for the host ID, as shown in Figure
      </p>
      <p style="text-align:center">
          <img src="../Images/ip/mid_octet_ip_address_division.png" alt="Mid Octet IP Address Division"/>
      </p>
      <p class="style1">
        The place where the “line is drawn” between the network ID and the host ID must be known
        in order for devices such as routers to know how to interpret the address. This information
        is conveyed either implicitly or explicitly depending on the type of IP addressing in use. I
        describe this in the following topic.
        <br /><br />
        <strong>Note :</strong>The basic structure of an IP address consists of two components: the
        network ID and host ID. The dividing point of the 32-bit address is not fixed, but
        rather, depends on a number of factors, and can occur in a variety of places,
        including in the middle of a dotted-decimal octet.
      </p>
      <p class="style4">IP Addressing Categories (Classful, Subnetted and Classless) and IP Address
        Adjuncts (Subnet Mask and Default Gateway)</p>
      <p class="style1">
        The preceding topic illustrated how the fundamental division of the 32 bits in an IP address
        is into the network identifier (network ID) and host identifier (host ID). The network ID is
        used for routing purposes while the host ID uniquely identifies each network interface on
        the network. In order for devices to know how to use IP addresses on the network they must
        be able to tell which bits are used for each ID. However, the “dividing line” is not predefined.
        It depends on the type of addressing used in the network.
      </p>  
      <p class="style2">IP Addressing Scheme Categories</p>
      <p class="style1">
        Understanding how these IDs are determined leads us into a larger discussion of the three
        main categories of IP addressing schemes. Each of these uses a slightly different system of
        indicating where in the IP address the host ID is found.
      </p>
      <p class="style2">Conventional (“Classful”) Addressing</p>
      <p class="style1">
        The original IP addressing scheme is set up so that the dividing line occurs only in one of a
        few locations: on octet boundaries. Three main classes of addresses, A, B and C are differentiated
        based on how many octets are used for the network ID and how many for the host
        ID. For example, class C addresses devote 24 bits to the network ID and 8 to the host ID.
        This type of addressing is now often referred to by the made-up word “classful” to differentiate
        it from newer “classless” scheme.
        <br /><br />
        This most basic addressing type uses the simplest method to divide the network and host
        identifiers: the class, and therefore the dividing point, are encoded into the first few bits of
        each address. Routers can tell from these bits which octets belong to which identifier.
      </p>
      <p class="style2">Subnetted “Classful” Addressing</p>
      <p class="style1">
        In the subnet addressing system, the two-tier network/host division of the IP address is
        made into a three-tier system by taking some number of bits from a class A, B or C host ID
        and using them for a subnet identifier. The network ID is unchanged. The subnet ID is used
        for routing within the different subnetworks that constitute a complete network, providing
        extra flexibility for administrators. For example, consider a class C address that normally
        uses the first 24 bits for the network ID and remaining 8 bits for the host ID. The host ID can
        be split into, say, 3 bits for a subnet ID and 5 for the host ID.
        <br /><br />
        This system is based on the original “classful” scheme, so the dividing line between the
        network ID and “full” host ID is based on the first few bits of the address as before. The
        dividing line between the subnet ID and the “sub-host” ID is indicated by a 32-bit number
        called a subnet mask. In the example above, the subnet mask would be 27 ones followed
        by 5 zeroes—the zeroes indicate what part of the address is the host. In dotted decimal
        notation, this would be 255.255.255.224.
      </p>
      <p class="style2">Classless Addressing</p>
      <p class="style1">
        In the classless system, the classes of the original IP addressing scheme are tossed out the
        window. The division between the network ID and host ID can occur at an arbitrary point,
        not just on octet boundaries like in the “classful” scheme.
        The dividing point is indicated by putting the number of bits used for the network ID, called
        the prefix length, after the address (recall that the network ID bits are also sometimes called
        the network prefix, so the network ID size is the prefix length). For example, if
        227.82.157.177 is part of a network where the first 27 bits are used for the network ID, that
        network would be specified as 227.82.157.160/27. The “/27” is conceptually the same as
        the 255.255.255.224 subnet mask, since it has 27 one bits followed by 5 zeroes.
      <br /><br />
        <strong>Key Concept :</strong> An essential factor in determining how an IP address is interpreted is
        the addressing scheme in which it is used. The three methods, arranged in
        increasing order of age, complexity and flexibility, are “classful” addressing,
        subnetted “classful” addressing, and classless addressing.
        <br /><br />
        Did I just confuse the heck out of you? Sorry—and don't worry. I'm simply introducing the
        concepts of “classful”, subnetted and classless addressing and showing you how they
        impact the way the IP address is interpreted. This means of necessity that I have greatly
        summarized important concepts here. All three methods are explained in their own sections
        in full detail.
      </p>
      <p class="style2">IP Address Adjuncts: Subnet Mask and Default Gateway</p>
      <p class="style1">
        As you can see, in the original “classful” scheme the division between network ID and host
        ID is implied. However, if either subnetting or classless addressing is used, then the subnet
        mask or “slash number” are required to fully qualify the address. These numbers are
        considered adjuncts to the IP address and usually mentioned “in the same breath” as the
        address itself, because without them, it is not possible to know where the network ID ends
        and the host ID begins.
        <br /><br />
        One other number that is often specified along with the IP address for a device is the default
        gateway identifier. In simplest terms, this is the IP address of the router that provides default
        routing functions for a particular device. When a device on an IP network wants to send a
        datagram to a device it can't see on its local IP network, it sends it to the default gateway
        which takes care of routing functions. Without this, each IP device would also have to have
        knowledge of routing functions and routes, which would be inefficient. See the sections on
        routing concepts and TCP/IP routing protocols for more information.
      </p>
      <p class="style4">Number of IP Addresses and Multihoming</p>
      <p class="style1">
        Each network interface on an IP internetwork has a separate IP address. In a classical
        network, each regular computer, usually called a host, attaches to the network in exactly
        only one place, so it will have only one IP address. This is what most of us are familiar with
        when using an IP network (and is also why most people use the term “host” when they
        really mean “network interface”.)
        <br /><br />
        If a device has more than one interface to the internetwork, it will have more than one IP
        address. The most obvious case where this occurs is with routers, which connect together
        different networks and thus must have an IP address for the interface on each one. It is also
        possible for hosts to have more than one IP address, however. Such a device is sometimes
        said to be multihomed.
      </p>
      <p class="style2">Multihoming Methods</p>
      <p class="style1">
      There are two ways that a host can be multihomed :
      </p>
      <ul class="style1">
      <li><p><strong>Two Or More Interfaces To The Same Network :</strong> Devices such as servers or highpowered
        workstations may be equipped with two physical interfaces to the same
        network for performance and/or reliability reasons. They will have two IP addresses on
        the same network with the same network ID.</p></li>
      <li><p><strong>Interfaces To Two Or More Different Networks :</strong> Devices may have multiple interfaces
        to different networks. The IP addresses will typically have different network IDs
        in them.</p></li>
      </ul>
      <p style="text-align:center">
          <img src="../Images/ip/ip_network_multihomed_devices.png" alt="Multihomed Devices on IP Network" />
          </p>
      <p class="style1">
        Above figure shows examples of both types of multihomed device. Of course, these could be
        combined, with a host having two connections to one network and a third to another
        network. There are also some other “special cases”, such as a host with a single network
        connection having multiple IP address aliases.
        <br /><br />
        <strong>Note :</strong> When subnetting is used the same distinction can be made between multihoming
        to the same subnet or a different subnet.
        
      </p>
      <p class="style2">Using a Multihomed Host as a Router</p>
      <p class="style1">
        Now, let's consider the second case. If a host has interfaces to two or more different
        networks, then could it not pass IP datagrams between them? Of course, it certainly could,
        if it had the right software running on it. If it does this, wouldn't that make the host a router,
        of sorts? In fact, that is exactly the case! A multihomed host with interfaces to two networks
        can use software to function as a router. This is sometimes called software routing.
        <br /><br />
        Using a host as a router has certain advantages and disadvantages compared to a
        hardware router. A server that is multihomed can perform routing functions and also, well,
        act as a server. A dedicated hardware router is designed for the job of routing and usually
        will be more efficient than a software program running on a host.
        <br /><br />
        <strong>Key Concept :</strong> A host with more than one IP network interface is said to be multihomed.
        A multihomed device can have either multiple connections to the same
        network or to different networks, or both. A host connected to two networks can be
        configured to function as a router.
      </p>
      <p class="style2">Popularity of Multihoming</p>
      <p class="style1">
        Multihoming was once considered a fairly “esoteric” application, but has become more
        common in recent years. This is also true of multihoming on different networks for software
        routing use. In fact, you may be doing this in your home without realizing it!
        <br /><br />
        Suppose you have two PCs networked together and a single phone line to connect to the
        Internet. One computer dials up to your Internet Service Provider, and runs software such
        as Microsoft's Internet Connection Sharing (ICS) to let the other computer access the
        Internet. Millions of people do this every day—they have a multihomed system (the one
        connecting to the Internet and the other PC) with ICS acting in the role of a software router
        (though there are some technical differences between ICS and a true router, of course.)
      </p>
     
      <p class="style4">IP "Classful" (Conventional) Addressing</p>
      <p class="style1">
        The prior section on IP addressing concepts describes the three different ways that IP
        addresses are assigned in TCP/IP. The original addressing method worked by dividing the
        IP address space into chunks of different sizes called classes and assigning blocks of
        addresses to organizations from these classes based on the size and requirements of the
        organization. In the early 1980s, when the Internet was in its infancy, this conventional
        system really had no name; today, to contrast it to the newer “classless” addressing
        scheme, it is usually called the “classful” IP addressing system.
        <br /><br />
        In this section I describe the first scheme used for IP addressing: so-called “classful” IP
        addressing. I begin with an overview of the concept and general description of the different
        classes. I discuss the network and host IDs and address ranges associated with the
        different classes. I discuss the “capacities” of each of the commonly-used classes, meaning
        how many networks belong to each, and how many hosts each network can contain. I
        discuss the special meanings assigned to certain IP address patterns, and also the special
        ranges reserved for private IP addressing, loopback functions, and multicasting. I conclude
        with a discussion of the problems with this type of addressing, which led to it eventually
        being abandoned in favor of subnetting, and eventually, classless assignment of the IP
        address space.
        <br /><br />
        I should note that the “classful” addressing scheme has now been replaced on the Internet
        by the newer classless addressing system described later in this section. However, I think it
        is still important to understand how this original system operates, as it forms the foundation
        upon which the more sophisticated addressing mechanisms were built. Just keep in mind
        that the class system isn't really used on the Internet any more.
        <br /><br />
        I should also point out that the word “classful” is also sometimes seen as “classfull”. That
        would be a misspelling, except, well, “classful” is not really an English word at all. That's
        why I always put the word “classful” in double-quotes. In fact, I must admit that I pretty much
        hate the word. It sounds like something an elementary school kid made up because he
        didn't know the opposite of the word “classless”. (The right word is classed, in case anyone
        cares.)
      </p>
      <p class="style4">IP "Classful" Addressing Overview and Address Classes</p>
      <p class="style1">
        When the first precursor of the Internet was developed, some of the requirements of the
        internetwork, both present and future, were quickly realized. The Internet would start small
        but eventually grow. It would be shared by many organizations. Since it is necessary for all
        IP addresses on the internetwork to be unique, a system had to be created for dividing up
        the available addresses and share them amongst those organizations. A central authority
        had to be established for this purpose, and a scheme developed for it to effectively allocate
        addresses.
        <br /><br />
        The developers of IP recognized that organizations come in different sizes and would
        therefore need varying numbers of IP addresses on the Internet. They devised a system
        whereby the IP address space would be divided into classes, each of which contained a
        portion of the total addresses and were dedicated to specific uses. Some would be devoted
        to large networks on the Internet, while others would be for smaller organizations, and still
        others reserved for special purposes.
        <br /><br />
        Since this was the original system, it had no name; it was just “the” IP addressing system.
        Today, in reference to its use of classes, it is called the “classful” addressing scheme, to
        differentiate it from the newer classless scheme. As I said at the end of the introduction to
        this section, “classful” isn't really a word, but it's what everyone uses.
      </p>
      <p class="style2">IP Address Classes</p>
      <p class="style1">
        There are five classes in the “classful” system, which are given letters A through E. Table 
        provides some general information about the classes, their intended uses and other general
        characteristics about them:
      </p>
      <p style="text-align:center">
          <img src="../Images/ip/ip_add_class.png" alt="IP Address Classes and Class Characteristics and Uses" />
          <img src="../Images/ip/division_ipv4_add_space.png" alt="Division IPv4 Address Space" />
          </p>
      <p class="style1">
        Looking at this table (and at Figure) you can see that the first three, classes A, B and C,
        comprise most of the total address space (7/8ths of it). These are the classes used for
        unicast IP addressing, which means for messages sent to a single network interface. (The
        blocks also include associated broadcast addresses for these networks.) This is what we
        usually consider “normal” IP addressing. You can think of classes A, B and C as the “papa
        bear”, “mama bear” and “baby bear” of traditional IP addressing. They allow the Internet to
        provide addressing for a small number of very large networks, a moderate number of
        medium-sized organizations, and a large number of smaller companies. This approximately
        reflects the distribution of organization sizes, approximately, in the real world, though the
        large gulf in the maximum number of hosts allowed for each address class leads to inflexibility
        and problems.
        <br /><br />
        As you can see, the classes differ in the place where the “dividing line” is drawn between
        the network ID and the host ID portions of the addresses they contain. However, in each
        case the division is made on octet boundaries: in classful addressing, the division does not
        occur within an octet.
        <br /><br />
        Classes D and E are special—to the point where many people don't even realize they exist.
        Class D is used for IP multicasting, while class E was reserved for “experimental use”. I
        discuss IP multicast addressing later in this section.
      </p>
      <p class="style2">Rationale for "Classful" Addressing</p>
     <p class="style1">
        While the drawbacks of the “classful” system are often discussed today (and that includes
        myself as well, later in this section), it's important to keep in context what the size of the
        Internet was when this system was developed—it was tiny, and the 32-bit address space
        seemed enormous by comparison to even the number of machines its creators envisioned
        years into the future. It's only fair to also remember the many advantages of the “classful”
        system developed over 25 years ago:
     </p>
     <ul class="style1">
     <li><p><strong>Simplicity and Clarity :</strong> There are only a few classes to choose from and it's very
        simple to understand how the addresses are split up. The distinction between classes
        is clear and obvious. The divisions between network ID and host ID in classes A, B
        and C are on octet boundaries, making it easy to tell what the network ID is of any
        address.</p></li>
     <li><p><strong>Reasonable Flexibility :</strong> Three levels of “granularity” match the sizes of large,
        medium-sized and small organizations reasonably well. The original system provided
        enough capacity to handle the anticipated growth rate of the Internet at the time.</p></li>
     <li><p><strong>Routing Ease :</strong> As we will see shortly, the class of the address is encoded right into the
        address to make it easy for routers to know what part of any address is the network ID
        and what part is the host ID. There was no need for “adjunct” information such as a
        subnet mask.</p></li>
     <li><p><strong>Reserved Addresses :</strong> Certain addresses are reserved for special purposes. This
        includes not just classes D and E but also special reserved address ranges for
        “private” addressing.</p></li>
     </ul>
     <p class="style1">
        Of course it turned out that some of the decisions in the original IP addressing scheme were
        regrettable—but that's the benefit of hindsight. I'm sure we'd all like to have back the 268
        odd million addresses that were set aside for Class E. While it may seem wasteful now to
        have reserved a full 1/16th of the address space for “experimental use”, remember that the
        current size of the Internet was never anticipated even ten years ago, never mind twentyfive.
        Furthermore, it's good practice to reserve some portion of any scarce resource for
        future use. (And besides, if we're going to play Monday morning quarterback, the real
        decision that should be changed in retrospect was the selection of a 32-bit address instead
        of a 48-bit or 64-bit one!)
        <br /><br />
        <strong>Key Concept :</strong> The “classful” IP addressing scheme divides the IP address space
        into five classes, A through E, of differing sizes. Classes A, B and C are the most
        important ones, designated for conventional unicast addresses and comprising 7/
        8ths of the address space. Class D is reserved for IP multicasting, and Class E for experimental
        use.
     </p>
     <p class="style4">IP "Classful" Addressing Network and Host Identification and Address Ranges</p>
     <p class="style1">
        The “classful” IP addressing scheme divides the total IP address space into five classes, A
        through E. One of the benefits of the relatively simple “classful” scheme is that information
        about the classes is encoded directly into the IP address. This means we can determine in
        advance which address ranges belong to each class. It also means the opposite is
        possible: we can identify which class is associated with any address by examining just a
        few bits of the address.
        <br /><br />        
        This latter benefit was one of the main motivators for the initial creation of the “classful”
        system, as we saw in the previous topic.
     </p>
     <p class="style2">"Classful" Addressing Class Determination Algorithm</p>
     <p class="style1">
        When TCP/IP was first created computer technology was still in its infancy, compared to its
        current state. Routers needed to be able to quickly make decisions about how to move IP
        datagrams around. The IP address space was split into classes in a way that looking at only
        the first few bits of any IP address would tell the router where to “draw the line” between the
        network ID and host ID, and thus what to do with the datagram.
        <br /><br />
        The number of bits the router needs to look at may be as few as one or as many as four,
        depending on what it finds when it starts looking. The algorithm used corresponds to the
        system used to divide the address space; it involves four very basic steps
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/class_determine_algorithm.png" alt="Class Determine Algorithm" />
        </p>
     <ol class="style1">
     <li>If the first bit is a “0”, it's a class A address and we're done. (Half the address space
        has a “0” for the first bit, so this is why class A takes up half the address space.) If it's a
        “1”, continue to step two.</li>
     <li>If the second bit is a “0”, it's a class B address and we're done. (Half of the remaining
        non-class-A addresses, or one quarter of the total.) If it's a “1”, continue to step three.</li>
     <li>If the third bit is a “0”, it's a class C address and we're done. (Half again of what's left,
        or one eighth of the total.) If it's a “1”, continue to step four.</li>
     <li>If the fourth bit is a “0”, it's a class D address. (Half the remainder, or one sixteenth of
        the address space.) If it's a “1”, it's a class E address. (The other half, one sixteenth.)</li>
     </ol>
     <p class="style2">Determining Address Class From the First Octet Bit Pattern</p>
     <p class="style1">
        As humans, of course, we generally work with addresses in dotted decimal notation and not
        in binary, but it's pretty easy to see the ranges that correspond to the classes. For example,
        consider class B. The first two bits of the first octet are “10”. The remaining bits can be any
        combination of ones and zeroes. This is normally represented as “10xx xxxx” (shown as
        two groups of four for readability.) Thus, the binary range for the first octet can be from
        “<span class="style5">10</span>00 0000” to “<span class="style5">10</span>11 1111”. This is 128 to 191 in decimal. So, in the “classful” scheme, any
        IP address whose first octet is from 128 to 191 (inclusive) is a class B address.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ip_address_class_bit_pattern.png" alt="IP Address Class Bit Pattern" width="1000" />
         </p>
     <p class="style1">
        In Table I have shown the bit patterns of each of the five classes, and the way that the
        first octet ranges can be calculated. In the first column is the format for the first octet of the
        IP address, where the “x”s can be either a zero or a one. Then I show the lowest and
        highest value for each class in binary (the “fixed” few bits are highlighted so you can see
        that they do not change while the others do.) I then also show the corresponding range for
        the first octet in decimal.
        <br /><br />
        <strong>Key Concept :</strong> In the “classful” IP addressing scheme, the class of an IP address is
        identified by looking at the first one, two, three or four bits of the address. This can be
        done both by humans working with these addresses and routers making routing
        decisions. The use of these bit patterns means that IP addresses in different classes fall
        into particular address ranges that allow an address’s class to be determined by looking at
        the first byte of its dotted-decimal address.
     </p>
     <p class="style2">Address Ranges for Address Classes</p>
     <p class="style1">
        I have also shown in above table the theoretical lowest and highest IP address ranges for each
        of the classes. This means that the address ranges shown are just a result of taking the full
        span of binary numbers possible in each class. In reality, some of the values are not
        available for normal use. For example, even though 192.0.0.0 to 192.0.0.255 is technically
        in class C, it is reserved and not actually used by hosts on the Internet.
        <br /><br />
        Also, there are IP addresses that can't be used because they have special meaning. For
        example, you can't use an IP address of 255.255.255.255, as this is a reserved “all ones”
        broadcast address. In a similar vein, note that the range for Class A is from 1 to 126 and not
        0 to 127 like you might have expected. This is because class A networks 0 and 127 are
        reserved; 127 is the network containing the IP loopback address. These special and
        reserved addresses are discussed later in this section.
        <br /><br />
        Now, recall that classes A, B and C differ in where the dividing line is between the network
        ID and the host ID: 1 for network and 3 for host for class A, 2 for each for class B, and 3 for
        network and 1 for host for class C. Based on this division, I have highlighted the network ID
        portion of the IP address ranges for each of classes A, B and C. The plain text corresponds
        to the range of host IDs for each allowable network ID. Figure shows graphically how
        bits are used in each of the five classes.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ip_add_class_bit_assignment.png" alt="IP Address Class Bit Assignment" />
         </p>
     <p class="style1">
        Phew, time for another example methinks. Let's look at class C. The lowest IP address is
        <span class="style5">192.0.0</span>.0 and the highest is <span class="style5">223.255.255</span>.255. The first three octets are the network ID, and
        can range from <span class="style5">192.0.0</span> to <span class="style5">223.255.255.</span> For each network ID in that range, the host ID can
        range from 0 to 255.
        <br /><br />
        <strong>Note :</strong> It is common to see resources refer to the network ID of a “classful” address
        as including only the “significant” bits, that is, only the ones that are not common to
        all networks of that class. For example, you may see a Class B network ID shown
        in a diagram as having 14 bits, with the “<span class="style5">10</span>” that starts all such networks shown separately,
        as if it were not part of the network ID. Remember that the network ID does include those
        bits as well; it is 8 full bits for Class A, 16 for Class B and 24 for Class C. In the case of
        Class D addresses, all 32 bits are part of the address, but only the lower 28 bits are part of
        the multicast group address; see the topic on multicast addressing for more.
     </p>
     <p class="style4">IP Address Class A, B and C Network and Host Capacities</p>
     <p class="style1">
        In the preceding topics I introduced the concepts of IP address classes and showed how
        the classes related to ranges of IP addresses. Of the five classes, D and E are dedicated to
        special purposes, so I will leave those alone for now. Classes A, B and C are the ones
        actually assigned for normal (unicast) addressing purposes on IP internetworks, and
        therefore the primary focus of our continued attention.
        <br /><br />
        As we've seen, they differ in the number of bits (and octets) used for the network ID
        compared to the host ID. The number of different networks possible in each class is a
        function of the number of bits assigned to the network ID, and likewise, the number of hosts
        possible in each network depends on the number of bits provided for the host ID. We must
        also take into account the fact that one, two or three of the bits in the IP address is used to
        indicate the class itself, so it is effectively "excluded" from use in determining the number of
        networks (though again, it is still part of the network ID).
        <br /><br />
        Based on this information, we can calculate the number of networks in each class, and for
        each class, the number of host IDs per network. Table shows the calculations.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ip_add_class_network_host_capability.png" 
         alt="IP Address Class Network and Host Capability" width="1000" />
         </p>
     <p class="style1">
        Let's walk through one line of this table so we can see how it works. I'll stick with class B
        since it's "in the middle". The basic division is into 16 bits for network ID and 16 bits for host
        ID. However, the first two bits of all class B addresses must be "10”, so that leaves only 14
        bits to uniquely identify the network ID. This gives us a total of 2<sup>14</sup> or 16,384 class B
        network IDs. For each of these, we have 2<sup>16</sup> host IDs, less two, for a total of 65,534.
        <br /><br />
        Why less two? For each network ID, two host IDs cannot be used: the host ID with all
        zeroes and the ID with all ones. These are addresses with "special meanings" as described
        in the topic that follows. You will also notice that 2 has been subtracted from the number of
        network IDs for class A. This is because two of the class A network IDs (0 and 127) are
        reserved. There are actually several other address ranges that are set aside in all three of
        the classes that I haven't shown here. They are listed in the topic on reserved, private and
        loopback addresses. (The exclusion of 0 and 127 from class A is probably the best-known
        address range reservation which is why I am explicit with that one in the table above.)
        <br /><br />
        <strong>Key Concept :</strong> In the “classful” IP addressing scheme, a Class A network contains
        addresses for about 16 million network interfaces; a Class B about 65,000; and a
        Class C, 254.
        <br /><br />
        As you can see, there is quite a disparity in the number of hosts available for each network
        in each of these classes. What happens if an organization needs 1,000 IP addresses? They
        have to either use four class Cs or use one class B (and in so doing waste over 90% of the
        possible addresses in the class B network.) Bear in mind that there are only about 16,000
        class B network IDs available worldwide and you begin to understand one of the big
        problems with "classful" addressing.
     </p>
     <p class="style4">IP Addresses With Special Meanings</p>
     <p class="style1">
        Most IP addresses have the “usual” meaning I have described in the preceding topics in this
        section: they refer to an interface to a device on a TCP/IP network. However, some IP
        addresses do not refer directly to specific hardware devices in this manner. Instead, they
        are used to refer “indirectly” to one or more devices. To draw an analogy with language,
        most IP addresses refer to proper nouns, like “John” or “the red table in the corner”.
        However, some are used more the way we use pronouns such as “this one” or “that group
        over there”. I call these IP addresses with special meanings.
     </p>
     <p class="style2">Special Network ID and Host ID Address Patterns</p>
     <p class="style1">Special IP addresses are constructed by replacing the normal network ID or host ID (or
        both) in an IP address with one of two special patterns. The two patterns are:</p>
     <ul class="style1">
     <li><p><strong>All Zeroes :</strong> When the network ID or host ID bits are replaced by a set of all zeroes, the
        special meaning is the equivalent of the pronoun “this”, referring to whatever was
        replaced. It can also be interpreted as “the default” or “the current”. So for example, if
        we replace the network ID with all zeroes but leave the host ID alone, the resulting
        address means “the device with the host ID given, on this network”. Or alternatively,
        “the device with the host ID specified, on the default network or the current
        network”.</p></li>
     <li><p><strong>All Ones :</strong> When the network ID or host ID bits are replaced by a set of all ones, this
        has the special meaning of “all”. So replacing the host ID with all ones means the IP
        address refers to all hosts on the network. This is generally used as a broadcast
        address for sending a message to “everyone”.</p></li>
     </ul>
     <p class="style1">
        <strong>Key Concept</strong> : When the network ID or host ID of an IP address is replaced by a
        pattern of all ones or all zeroes, the result is an address with a special meaning.
        Examples of such addresses include “all hosts” broadcast addresses, and addresses
        that refer to a specific host or a whole network.
     </p>
     <p class="style2">Specific IP Address Patterns With Special Meanings</p>
     <p class="style1">
        Since there are many network IDs and host IDs, there are also many of these “special”
        addresses. A small number are universal across the entire TCP/IP network, while others
        exist for each network ID or host ID. Since there are two “special patterns” that can be
        applied to the network ID, host ID or both, this yields six potential combinations, each of
        which has its own special meaning. Of these, five are used.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ip_add_pattern_special_meaning.png" alt="IP Address Pattern" />
            </p>
     <p class="style1">
        Table describes each of these special meanings. In the table I have also provided three
        examples, one from each of Class A, B and C. This shows how an IP address in each of the
        common classes can be modified to each of the “special meaning” forms. (The first row
        shows the examples in their normal form, for reference.)
        <br /><br />
        <strong>Note </strong>: The missing combination from Table is that of the network ID being all
        ones and the host ID normal. Semantically, this would refer to “all hosts of a
        specific ID on all networks”, which doesn't really mean anything useful in practice,
        so it's not used. Note also that in theory, a special address where the network ID is all
        zeroes and the host ID is all ones would have the same meaning as the all-ones limited
        broadcast address. The latter is used instead, however, because it is more general, not
        requiring knowledge of where the division is between the network ID and host ID.        
     </p> 
     <p class="style2">IP Address Limitations Due to Special Meaning Patterns</p>
     <p class="style1">
        Since the all-zeroes and all-ones patterns are reserved for these special meanings, they
        cannot be used for regular IP addresses. This is why, when we looked at the number of
        hosts per network in each of the classes, we had to subtract two from the theoretical
        maximum: one for the all-zeroes case and one for the all-ones case.
        <br /><br />
        Similarly, the network ID cannot be all zeroes either. However, this doesn't require specific
        exclusion because the entire block of addresses with “0” in the first octet (0.x.x.x) is one of
        the reserved sets of IP addresses. These reserved addresses, described in the next topic,
        further restrict the use of certain addresses in the IP address space for “regular” uses.
     </p>
     <p class="style4">IP Reserved, Loopback and Private Addresses</p>
     <p class="style1">
        In the preceding topic I showed how certain IP addresses cannot be used for regular
        network devices because they are addresses with “special meanings”. These special
        addresses reduce the total number of networks that are possible in the “classful”
        addressing scheme, and also the total number of hosts available in each network.
        <br /><br />
        In addition to these unusable numbers, there are several other sets of IP addresses set
        aside for various special uses, which are not available for normal address assignment.
        These ranges of IP addresses generally fall into the following three categories: reserved,
        loopback and private addresses.
     </p>
     <p class="style2">Reserved Addresses</p>
     <p class="style1">
        Several blocks of addresses were designated just as “reserved” with no specific indication
        given of what they were reserved for. They may have been set aside for future experimentation,
        or for internal use in managing the Internet, or for other purposes. (In general, it’s a
        good idea to set aside some portion of any limited resource for unanticipated needs!) There
        are a couple of these blocks in each of the three main classes (A, B, and C), appearing right
        at the beginning and end of each class. (In a manner of speaking, all of classes D and E are
        also “reserved”, since they aren't used for regular addressing, though the term “reserved” is
        usually used to refer to unusable parts of classes A, B and C.
     </p>
     <p class="style2">Loopback Addresses</p>
     <p class="style1">
        Normally, when a TCP/IP application wants to send information, that information travels
        down the protocol layers to IP where it is encapsulated in an IP datagram. That datagram
        then passes down to the data link layer of the device's physical network for transmission to
        the next hop, on the way to the IP destination.
        <br /><br />
        However, one special range of addresses is set aside for loopback functionality. This is the
        range 127.0.0.0 to 127.255.255.255. IP datagrams sent by a host to a 127.x.x.x loopback
        address are not passed down to the data link layer for transmission. Instead, they “loop
        back” to the source device at the IP level. In essence, this represents a “short-circuiting” of
        the normal protocol stack; data is sent by a device's layer three IP implementation and then
        immediately received by it.
        <br /><br />
        The purpose of the loopback range is testing of the TCP/IP protocol implementation on a
        host. Since the lower layers are short-circuited, sending to a loopback address allows the
        higher layers (IP and above) to be effectively tested without the chance of problems at the
        lower layers manifesting themselves. 127.0.0.1 is the address most commonly used for
        testing purposes.
        <br /><br />
        <strong>Key Concept </strong>: Portions of the IP address space are set aside for reserved, private
        and loopback addresses.
     </p>
     <p class="style2">Private/Unregistered/Non-Routable Addresses</p>
     <p class="style1">
        Recall that in the IP address overview I contrasted private and public IP addresses. Every
        IP address on a IP network must be unique, and in the case of a public IP network,
        addresses are allocated using a central authority to ensure that there is no overlap. In
        contrast, if you set up a private network you can use whatever addresses you want; it's your
        show and nobody else has a say on what you do.
        <br /><br />
        So, if this is the case, why not just pick any random block of class A, B or C addresses for
        your private network and use that? Well, you could; since you aren't connected to the
        Internet you could use, say, the class A network 18.x.x.x that is reserved on the Internet to
        the Massachusetts Institute of Technology (MIT). Since you aren't connected to MIT, what
        does it matter?
        <br /><br />
        In the past, there were people who did choose to do this—and ended up regretting that
        decision. As the Internet grew in importance, they would later decide that such private
        networks needed to connect to the public Internet after all. If that happened and you had
        used 18.x.x.x addresses, you'd find yourself having to renumber all your devices to avoid
        getting a big bunch of geeks really angry. (There were in fact cases where companies that
        had used IP address space belonging to other companies accidentally connected those
        machines to the Internet, causing a small amount of ruckus in the process.)
        <br /><br />
        From a more mundane standpoint, having internal devices with MIT's IP addresses is a
        source of confusion. It's just not a great idea to have lots of different companies “borrowing”
        IP addresses for their private networks.
        <br /><br />
        As an alternative, RFC 1918 (superseding RFC 1597) defines a set of special address
        blocks that are set aside just for private addresses. These addresses simply don't exist to
        the public Internet. Anyone can use them with no need to contact any authority for
        permission. At the same time, they cannot connect to the global Internet, because routers
        are not programmed with entries to forward traffic with these address ranges outside of
        local organizations. RFC 1918 was in fact published to encourage the use of these private
        blocks, in order to cut down on the number of devices on the public Internet that didn't really
        need to be publicly-accessible. This was in response to the need to conserve the public
        address space.
        <br /><br />
        In order to connect a network using private addressing to the public Internet, it is necessary
        to employ additional hardware and/or software. A gateway machine can be used as an
        interface between the public and private networks. Technologies such as IP Network
        Address Translation (NAT) are often used in conjunction with private IP addresses to allow
        these hosts to communicate on the public IP network.
        <br /><br />
        <strong>Key Concept</strong> : Private address blocks were created to allow private IP internets to be
        created using addresses that were guaranteed not to conflict with public IP
        addresses. They are commonly used in internetworks not connected to the global
        Internet; devices using them can also access the global Internet by using NAT.
     </p>
     <p class="style2">Reserved, Loopback and Private Addressing Blocks</p>
     <p style="text-align:center">
         <img src="../Images/ip/Reserved_Loopback_Private_IP_%20Addresses.png" 
         alt="Reserved Loopback Private IP Addresses" width="1000" />
         </p>
     <p class="style1">
        Table shows all of the special blocks set aside from the normal IP address space in
        numerical order, with a brief explanation of how each is used.
        <br /><br />
        I have shown both the “classful” and classless notation representing each of these blocks.
        This is both because the Internet now uses classless addressing, and because some of the
        private blocks don't correspond to single class A, B or C networks. Note especially the
        private address block from 192.168.0.0 to 192.168.255.255. This is the size of a class B
        network, but it isn't class B in the “classful” scheme, because the first octet of “192” puts it in
        the class C part of the address space. It is in fact 256 contiguous class C networks.
        <br /><br />
        You may also notice the special class B (/16) block 169.254.x.x. This is reserved for
        Automatic Private IP Addressing (APIPA). Systems that are configured to use this feature
        will automatically assign systems addresses from this block to enable them to communicate
        even if no server can be found for “proper” IP address assignment using DHCP. This is
        described in a special topic in the section describing DHCP.
     </p>
     <p class="style4">IP Multicast Addressing</p>
     <p class="style1">
        The vast majority of traffic on IP internetworks is of the unicast variety: one source device
        sending to one destination device. IP also supports multicasting, where a source device can
        send to a group of devices. Multicasting is not used a great deal on the Internet as a whole
        at the present time, mainly due to lack of widespread hardware support, so most of our
        focus in looking at IP is on unicast. Multicast is useful in certain circumstances, however,
        especially as a more efficient alternative to broadcasting. I include one summary topic on
        multicasting for your perusal, and also want to briefly discuss here IP addressing issues
        related to multicasting.
        <br /><br />
        The “classful” IP addressing scheme sets aside a full one-sixteenth of the address space for
        multicast addresses: Class D. Multicast addresses are identified by the pattern “1110” in the
        first four bits, which corresponds to a first octet of 224 to 239. So, the full range of multicast
        addresses is from 224.0.0.0 to 239.255.255.255. Since multicast addresses represent a
        group of IP devices (sometimes called a host group) they can only be used as the destination
        of a datagram; never the source.
     </p>
     <p class="style2">Multicast Address Types and Ranges</p>
     <p class="style1">
        The 28 bits after the leading “1110” in the IP address define the multicast group address.
        The size of the Class D multicast address space is therefore 228 or 268,435,456 multicast
        groups. There is no substructure that defines the use of these 28 bits; there is no specific
        concept of a network ID and host ID as in classes A, B and C. However, certain portions of
        the address space are set aside for specific uses. Table and Figure show the general
        allocation of the Class D address space.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ip_multicast_add.png" alt="IP Multicast Address" width="1000" />
         <img src="../Images/ip/ip_multicast_add_range.png" alt="IP Multicast Address Range" width="1000" />
         </p>
     <p class="style1">
        The bulk of the address space is in the middle multicast range, which are “normal” multicast
        addresses. They are analogous to the Class A, B and C unicast addresses and can be
        assigned to various groups.
        <br /><br />
        The last address range is for administratively-scoped multicast groups. This is a fancy term
        for multicast groups used within a private organization; this block, representing 1/16th of the
        total multicast address space, is comparable to the private addresses we saw in the
        preceding topic. This block is also subdivided further into site-local multicast addresses,
        organization-local addresses and so forth.
        <br /><br />
        <strong>Note </strong>: As with the other IP address classes, the entire 32 bits of the address is
        always used; we are just only interested in the least-significant 28 bits because the
        upper four bits never change.
     </p>
     <p class="style2">Well-Known Multicast Addresses</p>
     <p class="style1">
        The first block of 256 addresses is used to define special, well-known multicast address
        blocks. These do not represent arbitrary groups of devices and cannot be assigned in that
        manner. Instead, they have special meaning that allows a source to send a message to a
        predefined group. Table shows some of the “well-known” multicast addresses:
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ip_multicast_addresses.png" alt="IP Multicast Addresses" />
         <img src="../Images/ip/ip_multicast_addresses2.png" alt="IP Multicast Addresses 2" />
         
         </p>
     <p class="style1">
        Delivery of IP multicast traffic is more complex than unicast traffic due to the existence of
        multiple recipients. Instead of the normal resolution method through the ARP protocol used
        for unicast datagrams, a special mapping is performed between the IP multicast group and
        a hardware multicast group.
     </p>
     <p class="style4">Problems With "Classful" IP Addressing</p> 
     <p class="style1">
        The “classful” addressing system was the first major attempt to define a method for
        universal addressing of a large IP internetwork. The system had some advantages, as I
        mentioned in the overview of the “classful” scheme, and given that it was developed
        decades ago for a network that was limited in size, it did the job remarkably well for a long
        time.
        <br /><br />
        Nobody ever expected the Internet to mushroom to anything close to its current size. As it
        grew, problems become apparent with the “classful” IP addressing mechanism—slowly at
        first, but then more rapidly as growth became more rapid. I've hinted at some of theses
        problems in my explanation of how this type of addressing works, but to help frame the
        discussion of newer addressing types, I think it is useful to look at this in more detail.
     </p> 
     <p class="style2">Summary of “Classful” Addressing Issues</p>  
     <p class="style1">
        There are three main problems with “classful” addressing, which are somewhat related to
        each other (making them a bit harder to explain). Let's start with a quick summary of what
        these issues are:
     </p>
     <ol class="style1">
     <li><p><strong>Lack of Internal Address Flexibility :</strong> Big organizations are assigned large,
        “monolithic” blocks of addresses that don't match well the structure of their underlying
        internal networks.</p></li>
     <li><p><strong>Inefficient Use of Address Space :</strong> The existence of only three block sizes (classes
        A, B and C) leads to waste of limited IP address space.</p></li>
     <li><p><strong>Proliferation of Router Table Entries :</strong> As the Internet grows, more and more entries
        are required for routers to handle the routing of IP datagrams, which causes performance
        problems for routers. Attempting to reduce inefficient address space allocation
        leads to even more router table entries.</p></li>
     </ol>
     <p class="style4">IP Subnet Addressing ("Subnetting") Concepts</p>
     <p class="style1">
        The original “classful” IP addressing scheme conceptually divides a large internetwork into
        a simple two-level hierarchy: many networks of different sizes, each of which contains a
        number of hosts. The system works well for smaller organizations that may connect all their
        machines in a single network. However, it lacks flexibility for large organizations that often
        have many subnetworks, or subnets. To better meet the administrative and technical
        requirements of larger organizations, the “classful” IP addressing system was enhanced
        through a technique known as subnet addressing, or more simply, subnetting.
        <br /><br />
        In this section I describe the concepts and general techniques associated with IP subnet
        addressing. I begin with an overview of subnetting, including a discussion of the motivation
        for the system and its advantages. I discuss how the traditional “two-level” method for
        dividing IP addresses becomes “three-level” for subnetting. I talk about subnet masks and
        how they are used in calculations for addressing and routing. I discuss the default subnet
        masks used to represent the “classful” Class A, B and C networks in a subnetting
        environment, and then how custom subnet masks are used for classes A, B and C. I then
        discuss subnet identifiers and general concepts behind determining subnet and host
        addresses in a subnet environment. I provide summary tables for subnetting Class A, B and
        C networks. I conclude with a brief discussion of Variable Length Subnet Masking (VLSM),
        an enhancement of “conventional” subnetting that improves its flexibility further.
     </p>
     <p class="style4">IP Subnet Addressing Overview, Motivation, and Advantages</p>
     <p class="style1">
        IP addressing was originally designed around the assumption of a strict two-level hierarchy
        for internetworks. The first level was the network, and the second level the host. Each
        organization was usually represented by a single network identifier that indicated a Class A,
        B or C block dedicated to them. Within that network they had to put all of the devices they
        wanted to connect to the public IP network.
     </p>
     <p class="style2">The Motivation for Subnet Addressing</p>
     <p class="style1">
        It did not take long after the “classful” scheme was developed for serious inadequacies in it
        to be noticed, especially by larger organizations. The reason is that while dividing a large
        internetwork into networks that contain hosts is conceptually simple, it doesn't always
        match well the structure of each of the networks that comprises the internet. A big company
        with thousands of computers doesn't structure them as one big whomping physical network.
        Trying to assign and administer IP addresses to an organization's entire network without
        any form of internal logical structure is very difficult.
        <br /><br />
        Unfortunately, under the original “classful” addressing scheme, there was no good solution
        to this problem. The most commonly-chosen alternative at the time was to trade a single
        large block of addresses such as a Class B for a bunch of Class Cs. However, this caused
        additional problems:
     </p>
     <ul class="style1">
     <li><p>It contributed to the explosion in size of IP routing tables.</p></li>
     <li><p>Every time more address space was needed, the administrator would have to apply for
        a new block of addresses.</p></li>
     <li><p>Any changes to the internal structure of a company's network would potentially affect
        devices and sites outside the organization.</p></li>
     <li><p>Keeping track of all those different Class C networks would be a bit of a headache in
        its own right.</p></li>
     </ul>
     <p class="style2">The Development of Subnet Addressing</p>
     <p class="style1">
        In order to address this problem adequately, an enhancement was required to the “classful”
        addressing scheme. This change was outlined in RFC 950, which defined a new
        addressing procedure called subnet addressing or subnetting. (This RFC was published
        way back in 1985, which surprises some people!)
        <br /><br />
        The basic idea behind subnet addressing is to add an additional hierarchical level in the
        way IP addresses are interpreted. The concept of a network remains unchanged, but
        instead of having just “hosts” within a network, a new two-level hierarchy is created:
        subnets and hosts. Each subnet is a subnetwork, and functions much the way a full network
        does in conventional classful addressing. A three-level hierarchy is thus created: networks,
        which contain subnets, each of which then has a number of hosts.
        <br /><br />
        Thus, instead of an organization having to lump all of its hosts under that network in an
        unstructured manner, it can organize hosts into subnets that reflect the way internal
        networks are structured. These subnets fit within the network identifier assigned to the
        organization, just as all the “unorganized” hosts used to.
     </p>
     <p class="style2">Advantages of Subnet Addressing</p>
     <p class="style1">
        In essence, subnet addressing allows each organization to have its own “internet within the
        Internet”. Just as the real Internet looks only at networks and hosts, a two-level hierarchy,
        each organization can now also have subnets and hosts within their network. This change
        provides numerous advantages over the old system:
     </p>
     <ul class="style1">
     <li><p><strong>Better Match to Physical Network Structure :</strong> Hosts can be grouped into subnets
        that reflect the way they are actually structured in the organization's physical network.</p></li>
     <li><p><strong>Flexibility :</strong> The number of subnets and number of hosts per subnet can be
        customized for each organization. Each can decide on its own subnet structure and
        change it as required.</p></li>
     <li><p><strong>Invisibility To Public Internet :</strong> Subnetting was implemented so that the internal
        division of a network into subnets is visible only within the organization; to the rest of
        the Internet the organization is still just one big, flat, “network”. This also means that
        any changes made to the internal structure are not visible outside the organization.</p></li>
     <li><p><strong>No Need To Request New IP Addresses :</strong> Organizations don't have to constantly
        requisition more IP addresses, as they would in the workaround of using multiple small
        Class C blocks.</p></li>
     <li><p><strong>No Routing Table Entry Proliferation :</strong> Since the subnet structure exists only within
        the organization, routers outside that organization know nothing about it. The organization
        still maintains a single (or perhaps a few) routing table entries for all of its
        devices. Only routers inside the organization need to worry about routing between
        subnets.</p></li>
     </ul>
     <p class="style2">The Impact of Subnetting on Addressing and Routing</p>
     <p class="style1">
        The change to subnetting affects both addressing and routing in IP networks. Addressing
        changes of course, because instead of having just a network ID and host ID, we now also
        have a subnet ID to be concerned with. The size of the subnet ID can vary for each
        network, so an additional piece of information is needed to supplement the IP address to
        indicate what part of the address is the subnet ID and what part is the host ID. This is a 32-
        bit number commonly called a subnet mask. The mask is used both for calculating subnet
        and host addresses, and by routers for determining how to move IP datagrams around a
        subnetted network.
        <br /><br />
        Routing changes because of the additional level of hierarchy. In regular “classful”
        addressing, when a router receives an IP datagram, it only needs to decide if the destination
        is on the same network or a different network. Under subnetting, it must also look at
        the subnet ID of the destination and make one of three choices: same subnet, different
        subnet on the same network, or different network. Again, this is done using the subnet
        mask. Changes are also required to routing protocols, such as the Routing Information
        Protocol (RIP), to deal with subnets and subnet masks.
        <br /><br />
        <strong>Key Concept :</strong> Subnet addressing adds an additional hierarchical level to how IP
        addresses are interpreted, by dividing an organization’s IP network into subnets.
        This allows each organization to structure its address space to match its internal
        physical networks, rather than being forced to treat them a flat block. This solves a number
        of problems with the original “classful” addressing scheme, but requires changes to how
        addressing and routing work, as well as modifications to several TCP/IP protocols.
        <br /><br />
        It’s funny, but the main drawbacks to subnetting, compared with the older addressing
        scheme, have more to do with understanding how subnetting works than the technology
        itself! More effort is required to deal with addressing and routing in a subnet environment,
        and administrators must learn how to subdivide their network into subnets and properly
        assign addresses. This can be a bit confusing to someone who is new to subnetting.
        However, the technology today is quite well-established so even this is not much of a
        problem. 
     </p>
     <p class="style4">IP Subnetting: "Three-Level" Hierarchical IP Subnet Addressing</p>
     <p class="style1">
        The simplest division of IP addresses is into a structure containing two elements: the
        network ID and the host ID. In explaining this concept, I drew an analogy to the way North
        American phone numbers are ten digits long, but are broken down into a three-number area
        code and a seven-digit local number.<br /><br />
        As I mentioned in the preceding topic, subnetting adds an additional level to the hierarchy of
        structures used in IP addressing. To support this, IP addresses must be broken into three
        elements instead of two. This is done by leaving the network ID alone and dividing the host
        ID into a subnet ID and host ID. These subnet ID bits are used to identify each subnet within
        the network. Hosts are assigned to the subnets in whatever manner makes the most sense
        for that network.<br /><br />
        Interestingly, the analogy to telephone numbers that we used before still holds in the world
        of subnetting, and shows how subnetting changes the way IP addresses are interpreted. A
        number like (401) 555-7777 has an area code (“401”) and a local number (“555-7777”) as I
        said before. The local number, however, can itself be broken down into two parts: the
        exchange (“555”) and the local extension (“7777”). This means phone numbers really are
        comprised of three hierarchical components just as IP addresses are in subnetting.
        <br /><br />
        Of course, the number of bits in an IP address is fixed at 32. This means that in splitting the
        host ID into subnet ID and host ID, we reduce the size of the host ID portion of the address.
        In essence, we are “stealing” bits from the host ID to use for the subnet ID. Class A
        networks have 24 bits to split between the subnet ID and host ID: class B networks have 16,
        and class C networks only 8.
        <br /><br />
        <strong>Key Concept</strong> : A “classful” network is subnetted by dividing its host ID portion,
        leaving some of the bits for the host ID while allocating others to a new subnet ID.
        These bits are then used to identify individual subnets within the network, into which
        hosts are assigned.
        <br /><br />
        Now, remember when we looked at the sizes of each of the main classes, we saw that for
        each class, the number of networks and the number of hosts per network are a function of
        how many bits we use for each. The same applies to our splitting of the host ID. Since we
        are dealing with binary numbers, the number of subnets is two to the power of the size of
        the subnet ID field. Similarly, the number of hosts per subnet is two to the power of the size
        of the host ID field (less two for excluded special cases).
        <br /><br />
        Let's take a brief example to see how this works. Imagine that we start with Class B network
        154.71.0.0. 16 bits are for the network ID (154.71) and 16 for the host ID. In regular
        “classful” addressing there are no subnets (well, one “subnet” that is the whole network, but
        never mind about that) and 65,534 hosts total. To subnet this network, we can decide to
        split those 16 bits however we feel best suits the needs of our network: 1 bit for the subnet
        ID and 15 for the host ID, or 2 and 14, 3 and 13, and so on. Most any combination will work,
        as long as the total is 16, such as 5 and 11, which I illustrate in following figure. The more bits we
        “steal” from the host ID for the subnet ID, the more subnets we can have—but the fewer
        hosts we can have for each subnet.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/subnetting_class_networks.png" alt="Subnetting A Class B Network" />
         </p>
     <p class="style1">
        Deciding how to make this choice is one of the most important design considerations in
        setting up a subnetted IP network. The number of subnets is generally determined based
        on the number of physical subnetworks in the overall organizational network. The number
        of hosts per subnetwork must not exceed the maximum allowed for the particular subnetting
        choice we make. Choosing how to divide the original host ID bits into subnet ID bits and
        host ID bits is sometimes called custom subnetting and is described in more detail later in
        this section.
     </p>
     <p class="style4">IP Subnet Masks, Notation and Subnet Calculations</p>
     <p class="style1">
        Subnetting divides an organization's network into a two-level structure of subnets and
        hosts. This division is entirely internal and hidden from all other organizations on the
        Internet. One of the many advantages of this is that each organization gets to make their
        own choice about how to divide the “classful” host ID into subnet ID and host ID.
        <br /><br />
        In a non-subnetted “classful” environment, routers use the first octet of the IP address to
        determine what the class is of the address, and from this they know which bits are the
        network ID and which are the host ID. When we use subnetting, these routers also need to
        know how that host ID is divided into subnet ID and host ID. However, this division can be
        arbitrary for each network. Furthermore, there is no way to tell how many bits belong to
        each simply by looking at the IP address.
        <br /><br />
        In a subnetting environment, the additional information about which bits are for the subnet
        ID and which for the host ID must be communicated to devices that interpret IP addresses.
        This information is given in the form of a 32-bit binary number called a subnet mask. The
        term “mask” comes from the binary mathematics concept called bit masking. This is a
        technique where a special pattern of ones and zeroes can be used in combination with
        boolean functions such as AND and OR to select or clear certain bits in a number. I explain
        bit masking in the background section on binary numbers and mathematics.
     </p>
     <p class="style2">Function of the Subnet Mask</p>
     <p class="style1">
        There's something about subnet masks that seems to set people's hair on end, especially if
        they aren't that familiar with binary numbers. However, the idea behind them is quite
        straight-forward. The mask is a 32-bit number, just as the IP address is a 32-bit number.
        Each of the 32 bits in the subnet mask corresponds to the bit in the IP address in the same
        location in the number. The bits of the mask in any given subnetted network are chosen so
        that the bits used for either the network ID or subnet ID are ones, while the bits used for the
        host ID are zeroes.
        <br /><br />
        <strong>Key Concept :</strong> The subnet mask is a 32-bit binary number that accompanies an IP
        address. It is created so that it has a one bit for each corresponding bit of the IP
        address that is part of its network ID or subnet ID, and a zero for each bit of the IP
        address’s host ID. The mask thus tells TCP/IP devices which bits in that IP address belong
        to the network ID and subnet ID, and which are part of the host ID.
        <br /><br />
        Why bother doing this with a 32-bit binary number? The answer is the magic of boolean
        logic. We use the subnet mask by applying the boolean AND function between it and the IP
        address. For each of the 32 “bit pairs” in the IP address and subnet mask we employ the
        AND function, the output of which is 1 only if both bits are 1. What this means in practical
        terms is the following, for each of the 32 bits:
     </p>
     <ul class="style1">
     <li><p><strong>Subnet Bit Is A One :</strong> In this case, we are ANDing either a 0 or 1 in the IP address
        with a 1. If the IP address bit is a 0, the result of the AND will be 0, and if it is a 1, the
        AND will be 1. In other words, where the subnet bit is a 1, the IP address is preserved
        unchanged.</p></li>
     <li><p><strong>Subnet Bit Is A Zero :</strong> Here, we are ANDing with a 0, so the result is always 0
        regardless of what the IP address is. Thus, when the subnet bit is a 0, the IP address
        bit is always cleared to 0.</p></li>     
     </ul>
     <p class="style1">
        So, when we use the subnet mask on an IP address, the bits in the network ID and subnet
        ID are left intact, while the host ID bits are removed. Like a mask that blocks part of your
        face but lets other parts show, the subnet mask blocks some of the address bits (the host
        bits) and leaves others alone (the network and subnet bits). A router that performs this
        function is left with the address of the subnet. Since it knows from the class of the network
        what part is the network ID, it also knows what subnet the address is on.
        <br /><br />
        <strong>Key Concept :</strong> To use a subnet mask, a device performs a boolean AND operation
        between each bit of the subnet mask and each corresponding bit of an IP address.
        The resulting 32-bit number contains only the network ID and subnet ID of the
        address, with the host ID cleared to zero.
     </p>
     <p class="style2">Subnet Mask Notation</p>
     <p class="style1">
        Like IP addresses, subnet masks are always used as a 32-bit binary number by computers.
        And like IP addresses, using them as 32-bit binary numbers is difficult for humans.
        Therefore, they are usually converted to dotted decimal notation for convenience, just like
        IP addresses are.
        <br /><br />
        Let's take a quick example to show what this is all about. Suppose we have the Class B
        network 154.71.0.0. We decide to subnet this using 5 bits for the subnet ID and 11 bits for
        the host ID. In this case, the subnet mask will have 16 ones for the network portion (since
        this is Class B) followed by 5 ones for the subnet ID, and 11 zeroes for the host ID. That's
        “11111111 11111111 <span class="style5">11111</span>000 00000000” in binary, with the bits corresponding to the subnet
        ID highlighted. Converting to dotted decimal, the subnet mask would be 255.255.248.0.
        Figure illustrates this process.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/determining_subnet_mask.png" 
         alt="Determining the Subnet Mask of a Subnetted Network" />
     </p>
     <p class="style2">Applying the Subnet Mask: An Example</p>
     <p class="style1">
        Now, let's see how the subnet mask might be used. Suppose we have a host on this
        network with an IP of 154.71.150.42. A router needs to figure out which subnet this address
        is on. This is done by performing the masking operation shown in Table and Figure.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/determining_subnet_id.png" alt="determining subnet id" />
         <img src="../Images/ip/determining_subnet_id_through_subnet_mask.png" 
         alt="determining subnet id through subnet mask" />
            </p>
     <p class="style1">
        (Subnet masking involves performing a boolean AND between each corresponding bit in the subnet mask and
        the IP address. The subnet mask can be likened to a physical mask; each 1 in it lets the corresponding bit of
        the IP address “show through”, while each 0 blocks the corresponding IP address bit. In this way the host ID
        bits of the address are stripped so the device can determine the subnet to which the address belongs.)
        <br /><br />
        This result, 154.71.144.0, is the IP address of the subnet to which 154.71.150.42 belongs.
        There is no need to explicitly differentiate the network ID bits from the subnet ID bits,
        because we are still using “classful” addresses. Any router can see that since the first two
        bits of the address are “10”, this is a Class B address. So the network ID is 16 bits, and this
        means the subnet ID must be bits 17 to 21, counting from the left. Here, the subnet is the
        portion highlighted above: “10010”, or subnet #18.
        <br /><br />
        <strong>Key Concept :</strong> The subnet mask is often expressed in dotted decimal notation for
        convenience, but is used by computers as a binary number, and usually must be
        expressed in binary to understand how the mask works and the number of subnet ID
        bits it represents.
     </p>    
     <p class="style4">IP Default Subnet Masks For Address Classes A, B and C</p>
     <p class="style1">
        Subnetting is the process of dividing a Class A, B or C network into subnets, as we've seen
        in the preceding topics. In order to better understand how this “division of the whole” is
        accomplished, it's worth starting with a look at how the “whole” class A, B and C networks
        are represented in a subnetted environment. This is also of value because there are situations
        where you may need to define an unsubnetted network using subnetting notation.
        <br /><br />
        This might seem like a strange concept—if you aren't going to bother creating subnets, why
        do you need to consider how the old-fashioned classes are used under subnetting? The
        answer is that after subnetting became popular, most operating systems and networking
        hardware and software were designed under the assumption that subnetting would be
        used. Even if you decide not to subnet, you may need to express your unsubnetted network
        using a subnet mask.
        <br /><br />
        In essence, a non-subnetted class A, B or C network can be considered the “default case”
        of the more general, custom-subnetted network. Specifically, it is the case where we choose
        to divide the host ID so that zero bits are used for the subnet ID and all the bits are used for
        the host ID. I realize that this seems like a bit of a semantic game. However, this default
        case is the basis for the more practical subnetting we will examine in the next topic.
        <br /><br />
        Just as is always the case, the subnet mask for a default, unsubnetted class A, B or C
        network has ones for each bit that is used for network ID or subnet ID, and zeroes for the
        host ID bits. Of course, we just said we aren't subnetting, so there are no subnet ID bits!
        Thus, the subnet mask for this default case has 1s for the network ID portion and 0s for the
        host ID portion. This is called the default subnet mask for each of the IP address classes.
        <br /><br />
        Since classes A, B and C divide the network ID from the host ID on octet boundaries, the
        subnet mask will always have all ones or all zeroes in an octet. Therefore, the default
        subnet masks will always have 255s or 0s when expressed in decimal notation. Table
        summarizes the default subnet masks for each of the classes; they are also shown graphically
        in Figure.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/default_subnet_mask.png" alt="Default Subnet mask" width="1000" />
         <img src="../Images/ip/default_subnet_mask_class_network.png" 
         alt="Default subnet mask 2" width="1000" />
         </p>
     <p class="style1">
        So, the three default subnet masks are 255.0.0.0 for Class A, 255.255.0.0 for class B, and
        255.255.255.0 for Class C. Note that while all default subnet masks use only “255” and “0”,
        not all subnet masks with “255” and “0” are defaults. There are a small number of custom
        subnets that divide on octet boundaries as well. These are:
     </p>    
     <ul class="style1">
     <li><p><strong>255.255.0.0 :</strong> This is the default mask for Class B, but can also be the custom subnet
        mask for dividing a Class A network using 8 bits for the subnet ID (leaving 16 bits for
        the host ID).</p></li>
     <li><p><strong>255.255.255.0 :</strong> This is the default subnet mask for Class C, but can be a custom Class
        A with 16 bits for the subnet ID or a Class B with 8 bits for the subnet ID.</p></li>
     </ul>
     <p class="style1">
     <strong>Key Concept</strong> : Each of the three IP unicast/broadcast address classes, A, B and C,
        has a default subnet mask defined that has a one for each bit of the class’s network
        ID, a zero bit for each bit of its host ID, and no subnet ID bits. The three default
        subnet masks are 255.0.0.0 for Class A, 255.255.0.0 for class B, and 255.255.255.0 for
        Class C.
     </p>
     <p class="style4">IP Custom Subnet Masks</p>
     <p class="style1">
        It's important to understand what default subnet masks are and how they work. A default
        subnet mask doesn't really represent subnetting, however, since it is the case where we are
        assigning zero bits to the subnet ID. To do “real” subnetting we must dedicate at least one
        of the bits of the pre-subnetted host ID to the subnet ID, as shown in the example in the
        topic that introduced subnet masks.
        <br /><br />
        Since we have the ability to customize our choice of dividing point between subnet ID and
        host ID to suit the needs of our network, this is sometimes called customized subnetting.
        The subnet mask that we use when creating a customized subnet is, in turn, called a
        custom subnet mask. The custom subnet mask is used by network hardware to determine
        how we have decided to divide the subnet ID from the host ID in our network.
     </p>
     <p class="style2">Deciding How Many Subnet Bits to Use</p>
     <p class="style1">
        The key decision in customized subnetting is how many bits to take from the host ID portion
        of the IP address to put into the subnet ID. Recall that the number of subnets possible on
        our network is two to the power of the number of bits we use to express the subnet ID, and
        the number of hosts possible per subnet is two to the power of the number of bits left in the
        host ID (less two, which I will explain later in this topic).
        <br /><br />
        Thus, the decision of how many bits to use for each of the subnet ID and host ID represents
        a fundamental trade-off in subnet addressing:
     </p>
     <ul class="style1">
     <li>Each bit taken from the host ID for the subnet ID doubles the number of subnets that
        are possible in the network.</li>
     <li>Each bit taken from the host ID for the subnet ID (approximately) halves the number of
        hosts that are possible within each subnet on the network.</li>
     </ul>
     <p class="style2">Subnetting Bit Allocation Options</p>
     <p class="style1">
        Let's take a brief example or two to see how this works. Imagine that we start with a Class B
        network with the network address 154.71.0.0. Since this is Class B, 16 bits are for the
        network ID (154.71) and 16 are for the host ID. In the default case there are no subnets
        (well, one “subnet” that is the whole network) and 65,534 hosts total. To subnet this
        network, we have a number of choices:
     </p>
     <ol class="style1">
     <li>We can decide to use 1 bit for the subnet ID and 15 bits for the host ID. If we do this,
        then the total number of subnets is 2<sup>1</sup> or 2: the first subnet is 0 and the second is 1.
        The number of hosts available for each subnet is 2<sup>15</sup>-2 or 32,766.</li>
     <li>We can use 2 bits for the subnet ID and 14 for the host ID. In this case, we double the
        number of subnets: we now have 2<sup>2</sup> or 4 subnets: 00, 01, 10 and 11 (subnets 0, 1, 2
        and 3). But the number of hosts is now only 2<sup>14</sup>-2 or 16,382.</li>
     <li>We can use any other combination of bits that add up to 16, as long as they allow us at
        least 2 hosts per subnet: 4 and 12, 5 and 11, and so on.</li>
     </ol>
     <p class="style2">Trading Off Bit Allocations To Meet Subnetting Requirements</p>
     <p class="style1">
        How do we decide how to divide the “classful” host ID into subnet ID and host ID bits? This
        is the key design decision in subnetting. We must make this choice based on our requirements
        for the number of subnets that exist in the network, and also on the maximum
        number of hosts that need to be assigned to each subnet in the network. For example,
        suppose we have 10 total subnets for our Class B network. We need 4 bits to represent this,
        because 2<sup>4</sup> is 16 while 2<sup>3</sup> is only 8. This leaves 12 bits for the host ID, for a maximum of
        4,094 hosts per subnet.
        <br /><br />
        However, suppose instead that we have 20 subnets. If so, 4 bits for subnet ID won't suffice:
        we need 5 bits (2<sup>5</sup>=32). This means in turn that we now have only 11 bits for the host ID, for
        a maximum of 2,046 hosts per subnet.
        <br /><br />
        Now, what happens if we have 20 subnets and also need a maximum of 3,000 hosts per
        subnet? Well, we have a problem. We need 5 bits to express 20 different subnets. However,
        we need 12 bits to express the number 3,000 for the host ID. That's 17 bits—too many. The
        solution? We might be able to shuffle our physical networks so that we only have 16. If not,
        we need a second Class B network.
        <br /><br />
        It's also important to realize that in regular subnetting, the choice of how many bits to use
        for the subnet ID is fixed for the entire network. You can't have subnets of different sizes—
        they must all be the same. Thus, the number of hosts in the largest subnet will dictate how
        many bits you need for the host ID. This means that in the case above, if you had a strange
        configuration where 19 subnets had only 100 hosts each but the 20th had 3,000, you'd have
        a problem. If this were the case, you could solve the problem easily by dividing that one
        oversized subnet into two or more smaller ones. An enhancement to subnetting called
        Variable Length Subnet Masking (VLSM) was created in large part to remove this
        restriction.
        <br /><br />
        <strong>Key Concept </strong>: The fundamental trade-off in subnetting: each addition of a bit to the
        subnet ID (and thus, subtraction of that bit from the host ID) doubles the number of
        subnets, and approximately halves the number of hosts in each subnet. Each
        subtraction of a bit from the subnet ID (and addition of that bit to the host ID) does the
        opposite.
     </p>
     <p class="style2">Determining the Custom Subnet Mask</p>
     <p class="style1">
        Once we have determined how many bits we are going to devote to the subnet ID and the
        host ID, we can figure out the subnet mask. This is fairly easy to do, now that we understand
        how subnetting works. We begin with the default subnet mask in binary for the
        appropriate class of our network. We then start with the left-most zero in that mask and
        change as many bits to 1 as we have dedicated to the subnet ID. We can then express the
        subnet mask in dotted decimal form. Figure shows how the custom subnet mask can be
        determined for each of the subnetting options of a Class C network, in both binary and
        decimal.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/custom_subnet_mask_for_class_c.png" alt="custom subnet mask for class c" />
         </p>
     <p class="style1">
        So, to take the example in that figure, consider the Class C network 200.13.94.0. There are
        8 bits in the original host ID, which gives us six different subnetting options (we can’t use 7
        or 8 bits for the subnet ID, for reasons we will discuss shortly.) Suppose we use three of
        these for the subnet ID and five are left for the host ID. To determine the custom subnet
        mask, we start with the Class C default subnet mask:
        <br /><br />
        11111111 11111111 11111111 00000000
        <br /><br />
        We then change the first three zeroes to ones, to get the custom subnet mask:
        <br /><br />
        11111111 11111111 11111111 <span class="style5">111</span>00000
        <br /><br />
        In dotted decimal format, this is 255.255.255.224.
        <br /><br />
        <strong>Key Concept</strong> : Once the choice of how to subnet has been made, the custom subnet
        mask is determined simply, by starting with the default subnet mask for the network
        and changing each subnet ID bit from a 0 to a 1.
    </p>
    <p class="style2">Subtracting Two From the Number of Hosts Per Subnet and (Possibly) Subnets Per
        Network</p>
     <p class="style1">
        There's one more issue that needs to be explained regarding the split into subnet ID and
        host ID. We've already seen how in regular “classful” addressing, we must subtract 2 from
        the number of hosts allowed in each network. This is necessary because two host IDs in
        each subnet have “special meanings”: the all-zeroes host ID meaning “this network”, and
        the all-ones host ID which is a broadcast to “all hosts on the network”. These restrictions
        apply also to each subnet under subnetting too, which is why we must continue to subtract
        2 from the number of hosts per subnet. (This is also why dividing the 8 host ID bits of a
        Class C network into 7 bits for subnet ID and 1 bit for host ID is not just silly, but in fact
        meaningless: it leaves 21-2=0 hosts per subnet. Not particularly useful.)
        <br /><br />
        There is a similar issue that occurs with the subnet ID as well. When subnetting was originally
        defined in RFC 950, the standard specifically excluded the use of the all-zeroes and
        all-ones subnets. This was due to concern that routers might become confused by these
        cases. A later standard, RFC 1812 (Requirements for IP Version 4 Routers) removed this
        restriction in 1995. Thus, modern hardware now has no problem with the all-zeroes or allones
        subnets, but some very old hardware may still balk at it.
        <br /><br />
        <strong>Key Concept</strong> : The number of hosts allowed in each subnet is the binary power of
        the number of host ID bits remaining after subnetting, less two. The reduction by two
        occurs because the all-zeroes and all-ones host IDs within each subnet are reserved
        for two “special meaning” addresses: to refer to the subnetwork itself and its local broadcast
        address. In some implementations, the number of subnets is also reduced by two because
        the all-zeroes and all-ones subnet IDs were originally not allowed to be used.
        <br /><br />
        For this reason, you will sometimes see discussions of subnetting that exclude these cases.
        When that is done, you lose 2 potential subnets: the all-zeroes and all-ones subnets. If you
        do this, then choosing 1 bit for subnet ID is no longer valid, as it yields 2<sup>1</sup>-2=0 subnets. You
        must choose 2 bits if you need 2 subnets.
     </p>
     <p class="style4">IP Subnet Identifiers, Subnet Addresses and Host Addresses</p>
     <p class="style1">
        The main advantage of conventional “classful” addressing without subnets is its simplicity.
        Even though we've seen that there can be problems with how to manage thousands of
        devices in a single Class B network, for example, there is little complexity in how to assign
        addresses within the network. They are all lumped together, so any combination of bits can
        be used within the host ID (except for all-zeroes and all-ones, which are special).
        <br /><br />
        When we subnet, however, we create a two-level structure within the “classful” host ID—
        subnet ID and host ID. This means we must choose IP addresses for devices more
        carefully. In theory, we are selecting subnets to correspond to our physical networks within
        the organization, so we want to assign IP addresses in a way that is consistent with our
        physical network structure.
     </p>
     <p class="style2">Subnet Identifiers</p>
     <p class="style1">
        Once we decided how many subnets we are going to have, we need to identify the subnets
        and determine what the addresses are for the subnets. Let's start by looking at the subnet
        identifier. This is just the subnet ID of any of the subnets in our network. Subnets are
        numbered starting with 0 and increasing up to one less than the maximum number of
        subnets, which is a function of how many bits are in the subnet ID. (If the all-zero and allone
        subnet IDs are excluded as specified in RFC 950 then the first subnet identifier is one).
        <br /><br />
        Of course, we may not need all of the subnets that can theoretically be defined. For
        example, if we have 20 subnets, we need 5 bits for the subnet identifier, which allows a
        theoretical maximum of 32 subnets. We would use only subnets 0 to 19; 20 through 31
        would be reserved for future use. These subnets could be expressed either in decimal form
        (0, 1, 2 … up to 19) or in binary (00000, 00001, 00010 … up to 10011).
     </p>
     <p class="style2">Subnet Addresses</p>
     <p class="style1">
        For each subnet we can also determine the subnet address. To do this we start with the IP
        address for the overall network, which recall has all zeroes in the “classful” host ID field (8
        bits, 16 bits or 24 bits). We then insert the subnet identifier for a particular subnet into the
        designated subnet bits.
        <br /><br />
        As an example, let’s refer back to the subnetting of a Class B network, 154.71.0.0 . We used five subnet ID bits there. We start with the following network IP
        address, with the subnet ID bits highlighted:
        <br /><br />
        10011010 01000111 <span class="style5">00000</span>000 00000000
        <br /><br />
        To find the address of say, subnet #11, we would substitute “01011” for these bits, leaving
        the host ID bits zero:
        <br /><br />
        10011010 01000111 <span class="style5">01011</span>000 00000000
        <br /><br />
        We can then convert this from binary form to dotted decimal, resulting in a subnet address
        of 154.71.<span class="style5">88</span>.0.
        <br /><br />
        <strong>Key Concept</strong> : The subnet identifier of a subnet is just its subnet ID. The subnet
        address of a subnet is determined by substituting its subnet ID into the subnet bits of
        the overall network address.
     </p>
     <p class="style2">Subnet Address Formulas</p>
     <p class="style1">
        Notice when looking at subnet addressing that when you substitute subnet IDs in sequence,
        a pattern becomes immediately visible. The first subnet address is always the address of
        the overall network, because the subnet ID is all zeroes. Then, the second subnet address
        in decimal form is found by adding a specific multiple of two to one of the octets. The third
        address is then found by adding this same number to the second address, and so on.
        <br /><br />
        In fact, I realized that the decimal value of each subnet address can be expressed as a
        formula, based on the class of the original network and the number of bits being used for
        the subnet ID. For example, consider a Class B network with overall address of “x.y.0.0” (it
        doesn't matter what “x” and “y” are for our purposes). Now, say we are using two bits for the
        subnet ID. We have four subnet addresses here:
     </p>
     <ol class="style1">
     <li>The address of subnet #0 will be the same as the network address: x.y.0.0.</li>
     <li>The address of subnet #1 will be found by substituting “01” for the first two bits of the
        third octet. This yields an address of “x.y.01000000.0000000”, or “x.y.64.0” in straight
        decimal.</li>
     <li>Subnet #2's address is found by substituting “10” for the subnet ID bits, so it is
        “x.y.10000000.0000000”, or “x.y.128.0” in straight decimal.</li>
     <li>Subnet #3's address will be “x.y.192.0”.</li>
     </ol>
     <p class="style1">
        So, the formula in this case for subnet #N is “x.y.N*64.0”. If we use five bits for a subnet, the
        formula is “x.y.N*8.0”; as we saw above, the subnet address for subnet #11 in network
        154.71.0.0 is 154.71.<span class="style5">88</span>.0. I have shown the formulas for all of the combinations of subnet
        ID and host ID size in the subnetting summary tables. These formulas may seem a bit
        confusing at first, but they can be a real time-saver once you become more familiar with
        subnetting.
     </p>
     <p class="style2">Host Addresses Within Each Subnet</p>
     <p class="style1">
        Once we know the subnet address for a particular subnet, assigning IP addresses is easy.
        We just plug in values into the remaining host ID bits. Of course, we skip the all-zeroes
        value, so the first host in the subnet has all zeroes for the host ID except for a one in the
        right-most bit position. Then the next host has all zeroes except for “10” at the end (two in
        decimal). We can do this all the way up to one less than the all-ones value. Again, we then
        convert each IP address from binary to decimal.
        <br /><br />
        Some more examples would definitely help you understand much better how these
        addresses are determined. This requires us to deal with a large number of nitty-gritty details
        and lots of binary numbers. You can find exactly these details in the section on practical
        subnetting.
     </p>
     <p class="style4">IP Subnetting Summary Tables For Class A, Class B and Class C Networks</p>
     <p class="style1">
        Since there are only a few options for how to subnet each of Class A, Class B and Class C
        networks, I have listed the options for each class in three summary tables below: Table A,
        Table B and Table C.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/class_a_subnet_table.png" alt="Class A subnet table" width="1000" height="1400"/>
         <img src="../Images/ip/class_b_subnet_table.png" alt="Class B subnet table" width="1000" />
         <img src="../Images/ip/class_c_subnet_table.png" alt="Class C subnet table" width="1000" />
         </p>
     <p class="style1">
        These tables can help you quickly decide how many bits to use for
        subnet ID and host ID, and then what the subnet mask is for their selection. They also
        summarize nicely what we've discussed in this section.
        <br /><br />
        Each row of each table shows one possible subnetting option for that class, including the
        number of bits for each of the subnet ID and host ID, and the number of subnets and hosts
        based on the number of bits. I then show the subnet mask in binary and decimal form, as
        well as in CIDR notation. Finally, I include the formula for calculating the addresses for each
        subnet under each of the options.
     </p>
     <p class="style2">Notes on the Three Subnetting Summary Tables</p>
     <p class="style1">A few additional explanatory notes are in order regarding these tables:</p>
     <ul class="style1">
     <li>The values for the number of subnets per network assume that the all-zeroes and allones
        subnets are allowed. If not, you must subtract 2 from those figures; this also
        means that the option using only one bit for the subnet ID becomes invalid, and the
        subnet address formulas no longer work as shown.</li>
     <li>The number of hosts per subnet does exclude the all-zeroes and all-ones cases, so it
        is two to the power of the number of host ID bits, less two.</li>
     <li>The first row of each table shows the “default” case where the number of subnet bits is
        zero, and thus the subnet mask is the default subnet mask for the class.</li>
     <li>In the subnet mask for all options but the default, I have highlighted the portion of the
        subnet mask corresponding to the subnet ID, for clarity. This has been done for each
        individual bit of the binary mask, and for each octet in the dotted decimal representation
        of the mask where part of the subnet ID is found.</li>     
     <li>You will see that not all of the divisions make a great deal of sense in the real world…
        though you might be surprised. For example, at first glance it seems silly to think that
        we might want to assign 14 bits of a Class B host ID to the subnet ID and leave 2 bits
        for the host ID—what sort of real network has 16,384 subnets with 2 hosts on each?
        Yet some larger Internet service companies may indeed require thousands of tiny
        subnets when setting up connections between routers, or between their core network
        and their customers.</li>
     <li>The subnet address formulas in the last column of each table show the address for
        subnet #N (numbering from zero up to one less than the maximum number of
        subnets).</li>
     </ul>
     <p class="style4">IP Variable Length Subnet Masking (VLSM)</p>
     <p class="style1">
        Conventional Subnet masking replaces the two-level IP addressing scheme with a more
        flexible three-level method. Since it lets network administrators assign IP addresses to
        hosts based on how they are connected in physical networks, subnetting is a real breakthrough
        for those maintaining large IP networks. It has its own weaknesses though, and still
        has room for improvement. The main weakness of conventional subnetting is in fact that the
        subnet ID represents only one additional hierarchical level in how IP addresses are interpreted
        and used for routing.
     </p>
     <p class="style2">The Problem With Single-Level Subnetting</p>
     <p class="style1">
        It may seem “greedy” to look at subnetting and say “what, only one additional level”? ☺
        However, in large networks, the need to divide our entire network into only one level of
        subnetworks doesn't represent the best use of our IP address block. Furthermore, we have
        already seen that since the subnet ID is the same length throughout the network, we can
        have problems if we have subnetworks with very different numbers of hosts on them—the
        subnet ID must be chosen based on whichever subnet has the greatest number of hosts,
        even if most of subnets have far fewer. This is inefficient even in small networks, and can
        result in the need to use extra addressing blocks while wasting many of the addresses in
        each block.
        <br /><br />
        For example, consider a relatively small company with a Class C network, 201.45.222.0/24.
        They have six subnetworks in their network. The first four subnets (S1, S2, S3 and S4) are
        relatively small, containing only 10 hosts each. However, one of them (S5) is for their
        production floor and has 50 hosts, and the last (S6) is their development and engineering
        group, which has 100 hosts.
        <br /><br />
        The total number of hosts needed is thus 196. Without subnetting, we have enough hosts in
        our Class C network to handle them all. However, when we try to subnet, we have a big
        problem. In order to have six subnets we need to use 3 bits for the subnet ID. This leaves
        only 5 bits for the host ID, which means every subnet has the identical capacity of 30 hosts,
        as shown in following Figure. 
        </p>
        <p style="text-align:center">
            <img src="../Images/ip/class_c_network_split.png" alt="Class C Network Split" />
            </p>
        <p class="style1">
        This is enough for the smaller subnets but not enough for the larger
        ones. The only solution with conventional subnetting, other than shuffling the physical
        subnets, is to get another Class C block for the two big subnets and use the original for the
        four small ones. But this is expensive, and means wasting hundreds of IP addresses!
     </p>
     <p class="style2">The Solution: Variable Length Subnet Masking</p>
     <p class="style1">
        The solution to this situation is an enhancement to the basic subnet addressing scheme
        called Variable Length Subnet Masking (VLSM). VLSM seems complicated at first, but is
        easy to comprehend if you understand basic subnetting. The idea is that you subnet the
        network, and then subnet the subnets just the way you originally subnetted the network. In
        fact, you can do this multiple times, creating subnets of subnets of subnets, as many times
        as you need (subject to how many bits you have in the host ID of your address block). It is
        possible to choose to apply this multiple-level splitting to only some of the subnets, allowing
        you to selectively cut the "IP address pie" so that some of the slices are bigger than others.
        This means that our example company could create six subnets to match the needs of its
        networks, as shown in Figure
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/class_c_network_split_using_vlsm.png" alt="Class C Network Split Using VLSM"/>
         </p>
     <p class="style1">
        <strong>Key Concept</strong> : Variable Length Subnet Masking (VLSM) is a technique where
        subnetting is performed multiple times in iteration, to allow a network to be divided
        into a hierarchy of subnetworks that vary in size. This allows an organization to much
        better match the size of its subnets to the requirements of its networks.
     </p>
     <p class="style2">An Example: Multiple-Level Subnetting Using VLSM</p>
     <p class="style1">
        VLSM subnetting is done the same way as regular subnetting; it is just more complex
        because of the extra levels of subnetting hierarchy. You do an initial subnetting of the
        network into large subnets, and then further break down one or more of the subnets as
        required. You add bits to the subnet mask for each of the "sub-subnets" and "sub-sub-
        subnets" to reflect their smaller size. In VLSM, the slash notation of classless addressing is
        commonly used instead of binary subnet masks—VLSM is very much like CIDR in how it
        works—so that's what I will use.
        <br /><br />
        Let's take our example above again and see how we can make everything fit using VLSM.
        We start with our Class C network, 201.45.222.0/24. We then do three subnettings as
        follows (see Figure for an illustration of the process):
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/vlsm_example.png" alt="VLSM Example" />
         </p>
     <ol class="style1">
     <li>We first do an initial subnetting by using one bit for the subnet ID, leaving us 7 bits for
        the host ID. This gives us two subnets: 201.45.222.0/25 and 201.45.222.128/25. Each
        of these can have a maximum of 126 hosts. We set aside the first of these for subnet
        S6 and its 100 hosts.</li>
     <li>We take the second subnet, 201.45.222.128/25, and subnet it further into two subsubnets.
        We do this by taking one bit from the 7 bits left in the host ID. This gives us
        the sub-subnets 201.45.222.128/26 and 201.45.222.192/26, each of which can have
        62 hosts. We set aside the first of these for subnet S5 and its 50 hosts.</li>
     <li>We take the second sub-subnet, 201.45.222.192/26, and subnet it further into four
        sub-sub-subnets. We take 2 bits from the 6 that are left in the host ID. This gives us
        four sub-sub-subnets that each can have a maximum of 14 hosts. These are used for
        S1, S2, S3 and S4.</li>
     </ol>
     <p class="style1">
        Okay, I did get to pick the numbers in this example so that they work out just perfectly, but
        you get the picture. VLSM greatly improves both the flexibility and the efficiency of
        subnetting. In order to use it, routers that support VLSM-capable routing protocols must be
        employed. VLSM also requires more care in how routing tables are constructed to ensure
        that there is no ambiguity in how to interpret an address in the network.
        <br /><br />
        As I said before, VLSM is similar in concept to the way classless addressing and routing
        (CIDR) is performed. The difference between VLSM and CIDR is primarily one of focus.
        VLSM deals with subnets of a single network in a private organization. CIDR takes the
        concept we just saw in VLSM to the Internet as a whole, by changing how organizational
        networks are allocated by replacing the single-level “classful” hierarchy with a multiple-layer
        hierarchy.
     </p>
     <p class="style4">IP Subnetting: Practical Subnet Design and Address Determination Example</p>
     <p class="style4">IP Subnetting Step #1: Requirements Analysis</p>
     <p class="style1">
        When you are building or upgrading a network as a whole, the first step isn't buying
        hardware, or figuring out protocols, or even design. It's requirements analysis, the process
        of determining what it is the network needs to do. Without this foundation, you risk implementing
        a network that may perfectly match your design—but not meet the needs of your
        organization. The exact same rule applies to subnetting as well. Before we look at the gory
        details of host addresses and subnet masks, we must decide how to subnet the network. To
        do that, we must understand the requirements of the network.
     </p>
     <p class="style2">Key Subnetting Requirements</p>
     <p class="style1">
        Analyzing the requirements of the network for subnetting isn't difficult, because there are
        only a few issues that we need to consider. Since requirements analysis is usually done by
        asking questions, here's a list of the most important questions in analyzing subnetting
        requirements:
     </p>
     <ul class="style1">
     <li>What class is our IP address block?</li>
     <li>How many physical subnets are on the network today? (A “physical subnet” generally
        refers to a broadcast domain on a LAN; a set of hosts on a physical network bounded
        by routers.)</li>
     <li>Do we anticipate adding any more physical networks in the near future, and if so, how
        many?</li>
     <li>How many hosts do we have in the largest of our subnets today?</li>
     <li>How many hosts do we anticipate having in the largest subnet in the near future?</li>
     </ul>
     <p class="style1">The first question is important because everything in subnetting is based around dividing up
        a Class A, Class B or Class C network, so we need to know which we are dealing with. If we
        are in the process of designing a network from scratch and don't have a Class A, B or C
        block yet, then we will determine which we need based on the approximate size of the
        organization. After that, we need to determine two key numbers: how many physical
        subnets we have, and the maximum number of hosts per subnet.
    </p>
    <p class="style2">Assessing Future Needs During Requirements Analysis</p>
    <p class="style1">
        We need to analyze the requirements above not only for the present network, but for the
        near future as well. The current values for these two numbers represent how the network
        needs to be designed today. However, designing only for the present is not a good idea.
        <br /><br />
        Suppose we have exactly four subnetworks in our network now. In theory, we could use
        only two bits for the subnet ID, since 2<sup>2</sup> is 4. However, if our company is growing rapidly,
        this would be a poor choice. When we need to add a fifth subnet we'd have a problem!
        <br /><br />
        Similarly, consider the growth in the number of hosts in a subnet. If the current largest
        subnet has 60 hosts, you don't want 6a bits for the host ID, because that limits you to 62
        hosts. You can divide large subnets into smaller ones, but this may just mean unnecessarily
        additional work.
        <br /><br />
        So, what is the “near future”? The term is necessarily vague, because it depends on how far
        into the future the organization wants to look. On the one hand, planning for several years'
        growth can make sense, if you have enough IP addresses to do it. On the other, you don't
        want to plan too far out, since changes in the short term may cause you to completely
        redesign your network anyway.
        <br /><br />
        <strong>Key Concept</strong> : To successfully subnet a network, you must begin by learning what
        the requirements of the network will be. The most important parameters to determine
        are the number of subnets required and the maximum number of hosts needed per
        subnet. Numbers should be based not just on present needs but requirements in the near
        future.
    </p>
    <p class="style4">IP Subnetting Step #2: The Key Design Trade-off: Partitioning Network Address Host
        Bits</p>
    <p class="style1">
        After we complete our brief requirements analysis, we should know the two critical parameters
        that we must have in order to subnet our network: the number of subnets required for
        the network, and the maximum number of hosts per subnetwork. In using these figures to
        design our subnetted network, we will be faced with the key design decision in subnetting:
        how to divide the 8, 16 or 24 bits in the “classful” host ID into subnet ID and host ID.
    </p>
    <p class="style2">Deciding How Many Bits to Use for the Subnet ID and Host ID</p>   
    <p class="style1">
        Put another way, we need to decide how many bits to “steal” from the host ID to use for the
        subnet ID. As I introduced in the topic on custom subnet masks, the fundamental trade-off
        in choosing this number is as follows:
    </p>
    <ul class="style1">
    <li>Each bit taken from the host ID for the subnet ID doubles the number of subnets that
        are possible in the network.</li>
    <li>Each bit taken from the host ID for the subnet ID (approximately) halves the number of
        hosts that are possible within each subnet on the network.</li>
    </ul>
    <p class="style1">
        There are six possible ways this decision can be made for a Class C network, as illustrated
        in Figure
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/subnet_design_trade_off_class_c.png" alt="subnet design trade off class c" />
        </p>
     <p class="style1">
        The relationship between the bits and the number of subnets and hosts is as follows:
     </p>
     <ul class="style1">
     <li>The number of subnets allowed in the network is two to the power of the number of
        subnet ID bits.</li>
     <li>The number of hosts allowed per subnet is two to the power of the number of host ID
        bits, less two.</li>
     </ul>
     <p class="style1">
        We subtract two from the number of hosts in each subnet to exclude the “special meaning”
        cases where the host ID is all zeroes or all ones. As I explained in the topic on custom
        subnetting, this exclusion was originally also applied to the subnet ID, but is no longer in
        newer systems.
        <br /><br />
        Now, to choose how many bits to use for the subnet we could use trial and error. By this I
        mean we could try to first calculate the number of subnets and hosts when we use one bit
        for the subnet ID and leave the rest for the host ID. We could then try with two bits for the
        subnet ID, and then try with three and so on. This would be silly, however; it's time
        consuming and makes it hard for us to choose the best option. There's an easier method:
        we can use the subnetting summary tables. They let us look at all our options and usually
        see immediately the best one for us.
     </p>
     <p class="style2">Class C Subnetting Design Example</p>
     <p class="style1">
        Let's take an example. Suppose we have a Class C network, base address 211.77.20.0,
        with a total of 7 subnets. The maximum number of hosts per subnet is 25. Looking at the
        subnetting summary table for Class C, the answer is instantly clear: we need 3 bits for the
        subnet ID. Why? This allows us 8 subnets and 30 hosts per subnet. If we try to choose 2
        bits, we can't define enough subnets (only 4). As Figure shows, if we choose 4 bits for
        the subnet ID, then we can only have 14 hosts per subnet.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/example_class_c_subnetting.png" alt="example class c subnetting" />
         </p>
     <p class="style2">Class B Subnetting Design Example</p>
     <p class="style1">
        In some cases, especially with larger networks, we may have multiple choices. Consider a
        more interesting example, the larger Class B network 166.113.0.0, where we have a total of
        15 subnets and the largest has 450 hosts. Examining the subnet summary table for Class B
        suggests four acceptable options, as shown in Figure
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/example_class_b_subnetting.png" alt="example_class_b_subnetting"/>
            </p>
     <p class="style1">
        In all four of these, the number of subnets is equal to 15 or greater, and the number of hosts
        per subnet is over 450. So, which option should we choose? Usually, we want to pick
        something in the middle. If we use 4 bits for the subnet ID, this gives us only a maximum of
        16 subnets, which limits growth in the number of subnets, since we already have 15. The
        same applies to the choice of 7 bits for the subnet ID, since we already have 450 hosts in
        one subnet now, and that limits us to 510. Thus, we probably want either 5 or 6 bits here. If
        we expect more growth in the number of hosts in the largest subnet, we'd choose 5 bits; if
        we expect more growth in the number of subnets, we'd choose 6 bits. If unsure, it's probably
        best to assume more growth in the number of hosts per subnet, so here we would choose 5
        bits.
        <br /><br />
        The converse problem may also occur: you may be in a position where there are no rows in
        the table that will match. For example, if our Class C example has 35 hosts in the largest
        subnet instead of 25, we are out of luck: there is no combination of subnet ID and host ID
        size that works. The same is true in our Class B example if we had 4,500 hosts in that big
        subnet instead of 450. In this situation we must either divide the large subnet into a smaller
        one, use more than one IP address block, or upgrade to a larger block.
        <br /><br />
        <strong>Key Concept </strong>: If there is more than one combination of subnet ID and host ID sizes
        that will meet requirements, try to choose a “middle-of-the-road” option that best
        anticipates future growth requirements. If no combination meets the requirements,
        the requirements have to change!
     </p>
     <p class="style4">IP Subnetting Step #3: Determining The Custom Subnet Mask</p>
     <p class="style1">
        Once we have decided how many bits to use for the subnet ID and how many to leave for
        the host ID, we can determine the custom subnet mask for our network. Now, don't go
        running for cover on me. ☺ A lot of people's eyes glaze over at mention of the subnet mask,
        but it's really quite simple to figure out once we have done our homework in making the
        design decision we did in Step #2. In fact, there are two ways of doing this; one is less work
        than the other, but they're both quite easy. I was going to call them the “hard” way and the
        “easy” way, but instead, I'll call them “easy” and “easier”.
     </p>
     <p class="style2">Calculating The Custom Subnet Mask</p>
     <p class="style1">
        Let's start with the “easy” method, in which we determine the subnet mask in binary form
        from the information we already have about our network, and then convert the mask to
        decimal. To refresh your memory and guide the process, remember this: the subnet mask is
        a 32-bit binary number where a 1 represents each bit that is part of the network ID or subnet
        ID, and a 0 represents each bit of the host ID.
     </p>
     <p class="style2">Class C Custom Subnet Mask Calculation Example</p>
     <p class="style1">
        Refer back to the Class C example in the previous topic. We decided to use 3 bits for the
        subnet ID, leaving 5 bits for the host ID. Here are the steps we will follow to determine the
        custom subnet mask for this network (illustrated in following figure):
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/determining_subnet_mask_for_class_c.png" alt="determining subnet mask for class c" />
         </p>
     <ol class="style1">
     <li><p><strong>Determine Default Subnet Mask :</strong> Each of Classes A, B and C has a default subnet
        mask, which is the subnet mask for the network prior to subnetting. It has a 1 for each
        network ID bit and a 0 for each host ID bit. For Class C, the subnet mask is
        255.255.255.0. In binary, this is:
        <br /><br />
        11111111 11111111 11111111 00000000</p></li>
     <li><p><strong>Change Left-Most Zeroes To Ones For Subnet Bits :</strong> We have decided to use 3 bits
        for the subnet ID. The subnet mask has to have a 1 for each of the network ID or
        subnet ID bits. The network ID bits are already 1 from the default subnet mask, so, we
        change the 3 left-most 0 bits in the default subnet mask from a 0 to 1, shown
        highlighted below. This results in the following custom subnet mask for our network:
        <br /><br />
        11111111 11111111 11111111 11100000</p></li>
     <li><p><strong>Convert Subnet Mask To Dotted Decimal Notation :</strong> We take each of the octets in
        the subnet mask and convert it to decimal. The result is our custom subnet mask in the
        form we usually see it: 255.255.255.224.</p></li>
     <li><p><strong>Express Subnet Mask In “Slash Notation” :</strong> Alternately, we can express the subnet
        mask in “slash notation”. This is just a slash followed by the number of ones in the
        subnet mask. 255.255.255.224 is equivalent to “/27”.</p></li>
     </ol>
     <p class="style2">Class B Custom Subnet Mask Calculation Example</p>
     <p class="style1">
        Now, let's do the same example with our Class B network (166.113.0.0) with 5 bits for the
        subnet ID (with a bit less narration this time; see Figure):
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/custom_subnet_mask_for_class_b.png" alt="custom subnet mask for class b" />
         </p>
     <ol class="style1">
     <li><p><strong>Determine Default Subnet Mask :</strong> For Class B, the subnet mask is 255.255.0.0. In
        binary, this is:
        <br /><br />
        11111111 11111111 00000000 00000000</p></li>
     <li><p><strong>Change Left-Most Zeroes To Ones For Subnet Bits :</strong> We have decided to use 5 bits
        for the subnet ID, so, we change the 5 left-most 0 bits from a 0 to 1, shown highlighted
        below, to give us our binary custom subnet mask:<br /><br />
        11111111 11111111 <span class="style5">11111</span>000 00000000</p></li>
     <li><p><strong>Convert Subnet Mask To Dotted Decimal Notation :</strong> We take each of the octets in
        the subnet mask and convert it to decimal, to give us a custom subnet mask of
        255.255.<span class="style5">248</span>.0</p></li>
     <li><p><strong>Express Subnet Mask In “Slash Notation” :</strong> We can express the subnet mask
        255.255.248.0 as “/21”, since it is 21 ones followed by 11 zeroes. In other words, its
        prefix length is 21.</p></li>
     </ol>
     <p class="style2">Determining The Custom Subnet Mask Using Subnetting Tables</p>
     <p class="style1">
        Now, what could be easier than that? Well, you could simply refer to the subnetting
        summary tables. Find the table for the appropriate class, and then find the row that you
        selected in the previous step that matches the number of subnet ID bits you want to use.
        You can see the matching subnet mask right there.
     </p>
     <p class="style4">IP Subnetting Step #4: Determining Subnet Identifiers and Subnet Addresses</p>
     <p class="style1">
        The network ID assigned to our network applies to the entire network. This includes all
        subnets and all hosts in all subnets. Each subnet, however, needs to be identified with a
        unique subnet identifier or subnet ID, so it can be differentiated from the other subnets in
        the network. This is of course the purpose of the subnet ID bits that we took from the host
        ID bits in subnetting. After we have identified each subnet we need to determine the
        address of each subnet, so we can use this in assigning hosts specific IP addresses.
        <br /><br />
        This is another step in subnetting that is not really hard to understand or do. The key to
        understanding how to determine subnet IDs and subnet addresses is to always work in
        binary form, and then convert to decimal later. We will also look at a “shortcut” for determining
        addresses in decimal directly, which is faster but less conceptually simple.
        <br /><br />
        Let's go directly to our examples to see how subnet IDs and addresses are determined. We
        number the subnets starting with 0, and then going to 1, 2, 3 and so on, up to the highest
        subnet ID that we need.
        <br /><br />
        We determine the subnet IDs and addresses as follows     
     </p>
     <ol class="style1">
     <li><p><strong>Subnet ID :</strong> This is just the subnet number, and can be expressed in either binary or
        decimal form.</p></li>
     <li><p><strong>Subnet Address :</strong> This is the address formed by taking the address of the network as
        a whole, and substituting the (binary) subnet ID in for the subnet ID bits. We need to
        do this in binary, but only for the octets where there are subnet ID bits; the ones where
        there are only network ID bits or only host ID bits are left alone.</p></li>
     </ol>
     <p class="style2">Class C Subnet ID and Address Determination Example</p>
     <p class="style1">
        Recall our Class C network, 211.77.20.0. The network address in binary is:
        <br /><br />
        11010011 01001101 00010100 00000000
        <br /><br />
        We are subnetting using 3 bits for the subnet ID, leaving 5 bits for the host ID. Now let's see
        the network address with the subnet bits in bold:
        <br /><br />
        11010011 01001101 00010100 <span class="style5">000</span>00000
        <br /><br />
        These are the bits we substitute with the subnet ID for each subnet. Notice that since the
        first three octets contain network ID bits, and the network ID is the same for every subnet,
        they never change. We don't even really need to look at them in binary form, though for
        clarity we will do so.
        <br /><br />
        Here's how we determine the subnet IDs and addresses, again, starting with 0 (see Figure):
     </p>
     <ol start="0" class="style1">
     <li><p>Subnet #0 has a subnet ID of 0, or 000 in binary. To find the address, we start with the
        network address in binary, and substitute “000” for the subnet ID bits. Well gee, those
        bits are already all zero! What this means is that the address for subnet #0 is the same
        as the address for the network as a whole: 211.77.20.0.<br /><br />
        This is always the case: subnet #0 always has the same address as the network.</p></li>
     <li><p>Subnet #1 has a subnet ID of 1 in decimal or 001 in binary. To find the address we
        substitute “001” for the subnet ID bits, to yield the following:<br /><br />
        11010011 01001101 00010100 <span class="style5">001</span>00000
        <br /><br />
        Converting to decimal, we get 211.77.20.32.</p></li>
     <li><p>Subnet #2 has a subnet ID of 2, or 010 in binary. To find its address we substitute “010”
        for the subnet ID bits, to give:<br /><br />
        11010011 01001101 00010100 <span class="style5">010</span>00000
        <br /><br />
        Which is 211.77.20.64 in binary.</p></li>
     <li><p>Subnet #3 has a subnet ID of 011. As we can see the first three octets of the address
        are always 211.77.20. The last octet here is “<span class="style5">011</span>00000”, which is 96 in decimal, so the
        whole address is 211.77.20.96.</p></li>
     </ol>
     <p class="style1">
        Starting to see a pattern here? Yep, the address of any subnet can be found by adding 32 to
        the last octet of the previous subnet. This pattern occurs for all subnetting choices; the
        increment depends on how many bits we are using for the subnet ID. Here, the increment is
        32, which is 2<sup>5</sup>; 5 is the number of host ID bits left after we took 3 subnet ID bits.
     </p>
     <ol start="4" class="style1">
     <li>Subnet #4 is 100, address is 211.77.20.128.</li>
     <li>Subnet #5 is 101, address is 211.77.20.160.</li>
     <li>Subnet #6 is 110, address is 211.77.20.192.</li>
     <li>Subnet #7 is 111, address is 211.77.20.224.</li>
     </ol>
     <p style="text-align:center">
         <img src="../Images/ip/subnet_addresses_for_a_class_c_network.png"
          alt="determining subnet addresses for a class c network" /> 
         </p>
     <p class="style1">
     <strong>Key Concept</strong> : The subnet addresses in a subnetted network are always evenly
        spaced numerically, with the spacing depending on the number of subnet ID bits.
        <br /><br />
        We only needed seven subnets in our example, #0 through #6. Subnet #7 would be a
        spare. Notice that the last subnet has the same last octet as the subnet mask for our
        network? That's because we substituted “111” for the subnet ID bits, just as we did when we
        calculated the subnet mask.
     </p>
     <p class="style2">Class B Subnet ID and Address Determination Example</p>
     <p class="style1">
        Let's look at our other example now, Class B network 166.113.0.0. In binary this is:
        <br /><br />
        0100110 01110001 00000000 00000000
        <br /><br />
        We are using 5 bits for the subnet ID, leaving 11 host ID bits. The network address with the
        subnet ID bits highlighted is:
        <br /><br />
        0100110 01110001 <span class="style5">00000</span>000 00000000
        <br /><br />
        Here, only the third octet will ever change for the different subnets. The first two will always
        be “166.113” and the last octet will always be zero. There are 32 possible subnets; I'll list
        the first few so you can see the pattern (refer to Figure as well):
     </p>
     <ol start="0" class="style1">
     <li><p>Subnet #0 has a subnet ID of 00000. This means the address will be 166.113.0.0, the
        network address, as we would expect.</p></li>
     <li><p>Subnet #1 has a subnet ID of 00001. The address becomes:
        <br /><br />          
        10100110 01110001 00001000 00000000
        <br /><br />
        This is 116.113.8.0 in decimal.</p></li>
     <li><p>Subnet #2 has a subnet ID of 00010, giving an address of 116.113.00010000.0 or
        116.113.16.0.</p></li>
     <li>Subnet #3 has a subnet ID of 00011 and a subnet address of 116.113.24.0.</li>
     </ol>
     <p style="text-align:center">
         <img src="../Images/ip/subnet_addresses_for_a_class_b_network.png" 
         alt="subnet addresses for a class b network" />
         </p>
     <p class="style1">
        Again, the pattern here is obvious: you add 8 to the third octet to get successive addresses.
        The last subnet here is #31, which has a subnet address of 116.113.248.0, which has the
        same third and fourth octets as our subnet mask of 255.255.248.0.
     </p>
     <p class="style2">Using Subnet Address Formulas to Calculate Subnet Addresses</p>
     <p class="style1">
        Since the subnet addresses form a pattern, and the pattern depends on the number of
        subnet ID bits, it is possible to express the subnet addresses using a single formula for
        each subnetting option. I have shown these formulas for each of Classes A, B and C in the
        subnetting summary tables. The formulas can be used to directly calculate the address of
        subnet #N, where N is numbered from 0 up to one less than the total number of subnets, as
        we have done above.
     </p>
     <p class="style4">IP Subnetting Step #5: Determining Host Addresses For Each Subnet</p>
     <p class="style1">
        Once we know the addresses of each of the subnets in our network, we use these
        addresses as the basis for assigning IP addresses to the individual hosts in each subnet.
        We start by associating a subnet base address with each physical network (since at least in
        theory, our subnets correspond to our physical networks). We then sequentially assign
        hosts particular IP addresses within the subnet (or in a different manner, if we prefer!)
        <br /><br />
        Determining host addresses is really quite simple, once we know the subnet address. All
        we do is substitute the numbers 1, 2, 3… and so on for the host ID bits in the subnet
        address. We must do this in binary of course, and then convert the address to decimal form.
        Again, we can do some “short-cutting” once the rather obvious pattern of how to assign
        addresses emerges. We'll look at those later in the topic.
     </p>
     <p class="style2">Class C Host Address Determination Example</p>
     <p class="style1">
        Let's start with our Class C example again, 211.77.20.0, which we divided into 8 subnets
        using 3 subnet bits. Here's how the address appears with the subnet bits shown
        highlighted, and the host ID bits shown highlighted and underlined.:
        
        11010011 01001101 00010100 <span class="style5">000<span class="style6">00000</span></span>
        
        The first subnet is subnet #0, which has all zeroes for those subnet bits, and thus the same
        address as the network as a whole: 211.77.20.0. We substitute the numbers 1, 2, 3 and so
        on for the underlined bits to get the host IDs. (Remember that we don't start with 0 here
        because for the host ID, the all-zero and all-one binary patterns have special meaning). So
        it goes like this:
     </p>
     <ol class="style1">
     <li><p>The first host address has the number 1 for the host ID, or “00001” in binary. So, it is:
        <br /><br />
        11010011 01001101 00010100 <span class="style5">000<span class="style6">00001</span></span>
        <br /><br />
        In decimal, this is 211.77.20.1.</p></li>
     <li><p>The second host address has the number 2 for the host ID, or “00010” in binary. Its
        binary value is:
        <br /><br />
        11010011 01001101 00010100 <span class="style5">000<span class="style6">00010</span></span>
        <br /><br />
        In decimal, this is 211.77.20.2</p></li>
     </ol>
     <p class="style1">
        I'm sure you get the picture already; the third host will be 211.77.20.3, the fourth
        211.77.20.4 and so on. There is a maximum of 30 hosts in each subnet, as we saw before.
        So, the last host in this subnet will be found by substituting 30 (11110 in binary) for the host
        ID bits, resulting in a decimal address of 211.77.20.30.
        <br /><br />
        We can do the same thing for each of the other subnets; the only thing that changes is the
        values in the subnet ID bits. Let's take for example, subnet #6. It has “110” for the subnet
        bits instead of “000”. So, its subnet base address is 211.77.20.192, or:
        <br /><br />
        11010011 01001101 00010100 <span class="style5">110<span class="style6">00000</span></span>
        <br /><br />
        We assign hosts to this subnet by substituting 00001, then 00010, then 00011 for the host
        ID bits as before:
     </p>
     <ol class="style1">
     <li><p>The first host address is:
        <br /><br />
        11010011 01001101 00010100 <span class="style5">110<span class="style6">00001</span></span>
        <br /><br />
        Or 211.77.20.193.</p></li>
     <li><p>The second host address is:
        <br /><br />
        11010011 01001101 00010100 <span class="style5">110<span class="style6">00010</span></span>
        <br /><br />
        Or 211.77.20.194.</p></li>
     </ol>
     <p class="style1">
        And so on, all the way up to the last host in the subnet, which is 211.77.20.222. Figure
        shows graphically how subnet and host addresses are calculated for this sample network.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/determining_host_address_for_a_class_c_network.png" 
         alt="determining host address for a class c network" />          
            </p>
     <p class="style1">
        One more address we may wish to calculate is the broadcast address for the subnet. This
        of course is one of the special cases, found by substituting all ones for the host ID. For
        subnet #0, this would be 211.77.20.31. For subnet #6, it would be 211.77.20.223. That's
        pretty much all there is to it.
     </p>
     <p class="style2">Class B Host Address Determination Example</p>
     <p class="style1">
        We can do the same thing for our Class B network, naturally. The address of that network is
        166.113.0.0. Now, say we want to define the hosts that go in subnet #13. We substitute 13
        in binary (01101) for the subnet ID bits, to get the following subnet address, shown with the
        subnet ID bits highlighted and the host ID bits highlighted and underlined:
        <br /><br />
        10100110 01110001 <span class="style5">01101<span class="style6">000 00000000</span></span>
        <br /><br />
        This is the subnet address 166.113.104.0. Now, we have 11 bits of host ID, so we can have
        a maximum of 2,046 hosts. The first is found by substituting “000 00000001” for the host ID
        bits”, to give an address of 166.113.104.1. The second host is 166.113.104.2, and so on.
        The last is found by substituting “111 11111110”, to give an address of 166.113.111.254.
        Note that since the host ID bits extend over two octets, two octets change as we increment
        the host ID, unlike our Class C example. The broadcast address is 166.113.111.255.
        <br /><br />
        <strong>Key Concept</strong>: In a subnetted network, the address of host #H within subnet number
        #S is found by plugging in the binary value of S for the network’s subnet ID bits, and
        the binary value of H for subnet’s host ID bits.
     </p>
     <p class="style2">"Shortcuts" For Quickly Computing Host Addresses</p>
     <p class="style1">
        As you can see, defining the host IDs is really quite straight-forward. If you can substitute
        bits and convert to decimal, you have all you need to know. You can also see that as was
        the case with defining the subnet addresses, there are patterns that you can use in defining
        host IDs and understanding how they work. These generally define ways that we can more
        quickly determine certain host addresses by working directly in decimal instead of bothering
        with binary substitutions. This is a bit more complex conceptually, so only proceed if you are
        feeling a bit brave.
        <br /><br />
        The following are some of the “shortcuts” you can use in determining host IP addresses in a
        subnet environment:
     </p>
     <ul class="style1">
     <li><p><strong>First Host Address :</strong> The first host address is always the subnet address with the last
        octet incremented by 1. So, in our class C example, subnet #3's base address is
        211.77.20.96. The first host address in subnet #3 is thus 211.77.20.97.</p></li>
     <li><p><strong>Subsequent Host Addresses :</strong> After you find the first host address, to get the next
        one you just add one to the last octet of the previous address. If this makes the last
        octet 256 (which can happen only if there are more than 8 host ID bits) you “wrap
        around” this to zero and increment the third octet.</p></li>
     <li><p><strong>Directly Calculating Host Addresses :</strong> If the number of host ID bits is 8 or less, you
        can find host #N's address by adding “N” to the last octet's decimal value. For
        example, in our class C example, subnet #3's base address is 211.77.20.96.
        Therefore, host #23 in this subnet has an address of 211.77.20.119.
        <br /><br />
        If there are more than 8 bits in the host ID, this only works for the first 255 hosts, after
        which you have to “wrap around” and increase the value of the third octet. Consider
        again subnet #13 in our Class B example, which has a base address of 166.113.104.0.
        Host #214 on this subnet has address 166.113.104.0, but host #314 isn't
        166.113.104.314. It is 166.113.105.58 (host #255 is 166.113.104.255, then host #256
        is 166.113.105.0, and we count up 58 more (314-256) to get to #314, 166.113.105.58).</p></li>
     <li><p><strong>Range Of Host Addresses</strong> The range of hosts for any subnet is determined as
        follows:</p>
        <ul class="style1">
        <li><p><strong>First Address :</strong> Base address of subnet with last octet incremented by one.</p></li>
        <li><p><strong>Last Address :</strong> Base address of <strong>next subnet after this one</strong>, less two in the last
            octet (which may require changing a “0” in the last octet to “254” and reducing the
            value of the third octet by 1).</p></li>
        </ul>
        <p>For example, consider subnet #17 in our Class B example. Its subnet address is
        166.113.136.0. The address of subnet #18 is 166.113.144.0. So, the range of hosts for
        subnet #17 is 166.113.136.1 to 166.113.143.254.</p></li>
     <li><p><strong>Broadcast Address :</strong> The broadcast address for a subnet is always one less than the
        base address of the subsequent subnet. Or alternately, one more than the last “real”
        host address of the subnet. So, for subnet #17 in our Class B example, the broadcast
        address is 166.113.143.255.</p></li>
     </ul>
     <p class="style1">remember the following quick summary when working with IP addresses in a
        subnet environment:</p>
     <ol class="style1">
     <li>The network ID is the same for all hosts in all subnets, and all subnets in the network.</li>
     <li>The subnet ID is the same for all hosts in each subnet, but unique to each subnet in
        the network.</li>
     <li>The host ID is unique within each subnet. Each subnet has the same set of host IDs.</li>
     <li>Subnetting is fun!</li>    
     </ol>   
     
     <p class="style4">IP Classless Addressing: Classless Inter-Domain Routing (CIDR) /
        "Supernetting"</p>
     <p class="style1">
        As the early Internet began to grow dramatically, three main problems arose with the
        original “classful” addressing scheme. These difficulties were addressed partially through
        subnet addressing, which provides more flexibility for the administrators of individual
        networks on an internet. Subnetting, however, doesn't really tackle the problems in general
        terms. Some of these issues remain due to the use of classes even with subnets.
        <br /><br />
        While development began on IP version 6 and its roomy 128-bit addressing system in the
        mid-1990s, it was recognized that it would take many years before widespread deployment
        of IPv6 would be possible. In order to extend the life of IP version 4 until the newer IP
        version 6 could be completed, it was necessary to take a new approach to addressing IPv4
        devices. This new system calls for eliminating the notion of address classes entirely,
        creating a new classless addressing scheme sometimes called Classless Inter-Domain
        Routing (CIDR).
        <br /><br />
        In this section I describe modern classless IP addressing. I begin with an overview of the
        concepts behind classless addressing and the idea behind “supernetting”, including why it
        was created and what its advantages and disadvantages are. I then define CIDR and
        describe how the system works in more detail, including the notation used for address
        blocks. I list each of the CIDR address block sizes and show how they relate to the older
        class A, B and C networks. I conclude with an example of CIDR addressing, which is similar
        to the practical subnetting section prior to this one, but focused on CIDR and a bit more
        condensed.
     </p>
     <p class="style4">IP Classless Addressing and "Supernetting" Overview, Motivation, Advantages and
        Disadvantages</p>
     <p class="style1">
        Subnet addressing was an important development in the evolution of IP addressing,
        because it solved some important issues with the conventional, two-level class-based
        addressing scheme. Subnetting's contribution to ease in IP addressing was allowing each
        network to have its own two-level hierarchy, giving the administrator of each network the
        equivalent of an “internet within the Internet”.
        <br /><br />
        When we looked at the advantages of subnetting, we saw that one was that subnetting was
        local within each organization, and “invisible” to other organizations. This is an advantage in
        that it lets each organization tailor its network without other groups having to worry about
        the details of how this is done. Unfortunately, this “invisibility” also represents a key 
        <strong>disadvantage</strong>
        of subnetted “classful” addressing: it cannot correct the fundamental inefficiencies
        associated with that type of addressing, because organizations are still assigned address
        blocks based on classes.
        <br /><br />
        <strong>Key Concept</strong>: Classless Inter-Domain Routing (CIDR) is a system of IP addressing
        and routing that solves the many problems of “classful” addressing by eliminating
        fixed address classes in favor of a flexible, multiple-level, hierarchical structure of
        networks of varying size.
     </p>
     <p class="style2">The Many Benefits of Classless Addressing and Routing</p>
     <p class="style1">
        CIDR provides numerous advantages over the “classful” addressing scheme, whether or
        not subnetting is used:
     </p>
     <ul class="style1">
     <li><p><strong>Efficient Address Space Allocation :</strong> Instead of allocating addresses in fixed-size
        blocks of low granularity, under CIDR addresses are allocated in sizes of any binary
        multiple. So, a company that needs 5,000 addresses can be assigned a block of 8,190
        instead of 65,534 . Or, to think of it another way, the equivalent
        of a single Class B network can be shared amongst 8 companies that each need 8,190
        or fewer IP addresses.</p></li>
     <li><p><strong>Elimination of Class Imbalances :</strong> There are no more class A, B and C networks, so
        there is no problem with some portions of the address space being widely used while
        others are neglected.</p></li>
     <li><p><strong>Efficient Routing Entries :</strong> CIDR's multiple-level hierarchical structure allows a small
        number of routing entries to represent a large number of networks. Network descriptions
        can be “aggregated” and represented by a single entry. Since CIDR is
        hierarchical, the detail of lower-level, smaller networks can be hidden from routers that
        move traffic between large groups of networks. This is discussed more completely in
        the section on IP routing issues.</p></li>
     <li><p><strong>No Separate Subnetting Method :</strong> CIDR implements the concepts of subnetting
        within the internet itself. An organization can use the same method used on the
        Internet to subdivide its internal network into subnets of arbitrary complexity without
        needing a separate subnetting mechanism.</p></li>
     </ul>
     <p class="style2">The Main Disadvantage of CIDR: Complexity</p>
     <p class="style1">
        Since the main benefit of “classful” addressing was its simplicity, it's no surprise that the
        main drawback of CIDR is its greater complexity. One issue is that it is no longer possible to
        determine by looking at the first octet to determine how many bits of an IP address
        represent the network ID and how many the host ID. A bit more care needs to be used in
        setting up routers as well, to make sure that routing is accomplished correctly.
     </p>
     <p class="style4">IP Datagram Encapsulation and Formatting</p>
     <p class="style1">
        The primary job of the Internet Protocol is the delivery of data between devices over an
        internetwork. On its journey between two hosts in an internet, this data may travel across
        many physical networks. To help ensure that the data is sent and received properly, it is
        encapsulated within a message called an IP datagram. This datagram includes several
        fields that help manage the operation of IP and ensure that data gets where it needs to go.
        <br /><br />
        In this section I take a look at how the Internet Protocol takes data passed to it from higher
        layers and packages it for transmission. I begin with a general discussion of IP datagrams
        and encapsulation. I then describe the general format of IP datagrams, including the fields
        used in the IP header and how they are interpreted. I also include a brief discussion of IP
        datagram options and their use.
        <br /><br />
        <strong>Note </strong>: IP datagrams are sometimes called IP packets. Whether “datagram” or
        “packet” is the preferred term seems to depend on whom you ask; even the
        standards don’t use one term exclusively. On the other hand, I have seen IP
        datagrams called IP frames, and that’s definitely not correct! The topic on messages and
        names in the fundamentals chapter describes these terms more completely.
     </p>
     <p class="style4">IP Datagram Encapsulation</p>
     <p class="style1">
        In the chapter describing the OSI Reference Model, I looked at several ways that protocols
        at various layers in a networking protocol stack interact with each other. One of the most
        important concepts in inter-protocol operation is that of encapsulation. Most data originates
        within the higher layers of the OSI model. The protocols at these layers pass the data down
        to lower layers for transmission, usually in the form of discrete messages. Upon receipt,
        each lower-level protocol takes the entire contents of the message received and encapsulates
        it into its own message format, adding a header and possibly a footer that contain
        important control information. Encapsulation is explained in general terms in a separate
        topic.
        <br /><br />
        A good analogy for how encapsulation works is a comparison to sending a letter enclosed
        in an envelope. You might write a letter and put it in a white envelope with a name and
        address, but if you gave it to a courier for overnight delivery, they would take that envelope
        and put it in a larger delivery envelope. (I actually have written a complete description of this
        sort of analogy, if you are interested.)
        <br /><br />
        Due to the prominence of TCP/IP, the Internet Protocol is one of the most important places
        where data encapsulation occurs on a modern network. Data is passed to IP typically from
        one of the two main transport layer protocols: TCP or UDP. This data is already in the form
        of a TCP or UDP message with TCP or UDP headers. This is then encapsulated into the
        body of an IP message, usually called an IP datagram or IP packet. Encapsulation and
        formatting of an IP datagram is also sometimes called packaging—again, the implied
        comparison to an envelope is obvious. The process is shown in Figure.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ip_datagram_encapsulation.png" alt="ip datagram encapsulation" />
         </p>
     <p class="style1">
        If the message to be transmitted is too large for the size of the underlying network, it may
        first be fragmented. This is analogous to splitting up a large delivery into multiple smaller
        envelopes or boxes. In this case, each IP datagram carries only part of the higher-layer
        message. The receiving device must reassemble the message from the IP datagrams. So,
        a datagram doesn't always carry a full higher-layer message; it may hold only part of one.
        <br /><br />
        The IP datagram is somewhat similar in concept to a frame used in Ethernet or another data
        link layer. The important difference, of course, is that IP datagrams are designed to facilitate
        transmission across an internetwork, while data link layer frames are used only for direct
        delivery within a physical network. The fields included in the IP header are used to manage
        internetwork datagram delivery. This includes key information for delivery such as the
        address of the destination device, identification of the type of frame, and control bits. The
        header follows a specific format described in the following topic.
        <br /><br />
        After data is encapsulated into an IP datagram, it is passed down to the data link layer for
        transmission across the current “hop” of the internetwork. There, it is of course further
        encapsulated, IP header and all, into a data link layer frame such as an Ethernet frame. An
        IP datagram may be encapsulated into many such data link layer frames as it is routed
        across the internetwork; on each hop the IP datagram is removed from the data link layer
        frame and then repackaged into a new one for the next hop. The IP datagram, however, is
        not changed (except for some control fields) until it reaches its final destination.
     </p>
     <p class="style4">IP Datagram General Format</p>
     <p class="style1">
        Data transmitted over an internet using IP is carried in messages called IP datagrams. Like
        all network protocol messages, IP uses a specific format for its datagrams. We are of
        course looking here at IP version 4 and so we will examine the IPv4 datagram format, which
        was defined in RFC 791 along with the rest of IPv4.
        <br /><br />
        The IPv4 datagram is conceptually divided into two pieces: the header and the payload.
        The header contains addressing and control fields, while the payload carries the actual data
        to be sent over the internetwork. Unlike some message formats, IP datagrams do not have
        a footer following the payload.
        <br /><br />
        Even though IP is a relatively simple, connectionless, “unreliable” protocol, the IPv4 header
        carries a fair bit of information, which makes it rather large. At a minimum, it is 20 bytes
        long, and with options can be significantly longer. The IP datagram format is described in
        Table and illustrated in Figure.
     </p>
     <p style="text-align:center">
         <img src="../Images/ip/ipv4_datagram_format01.png" alt="ipv4 datagram format01" />
         <img src="../Images/ip/ipv4_datagram_format02.png" alt="ipv4 datagram format02"/>
         <img src="../Images/ip/ipv4_datagram_format03.png" alt="ipv4 datagram format03"/>
         <img src="../Images/ip/ipv4_datagram_format.png" alt="ipv4 datagram format" />
         </p>
    <p class="style1">
        That’s a pretty big table, because the IP datagram format is pretty important and has a lot of
        fields that need explaining. To keep it from being even longer, I decided to move a couple of
        the more complex descriptions out of the table.
    </p>
    <p class="style2">Time To Live (TTL) Field</p>
    <p class="style1">
        Since IP datagrams are sent from router to router as they travel across an internetwork, it is
        possible that a situation could result where a datagram gets passed from router A to router
        B to router C and then back to router A. Router loops are not supposed to happen, and
        rarely do, but are possible.
        <br /><br />
        To ensure that datagrams don't circle around endlessly, the TTL field was intended to be
        filled in with a time value (in seconds) when a datagram was originally sent. Routers would
        decrease the time value periodically, and if it ever hit zero, the datagram would be
        destroyed. This was also intended to be used to ensure that time-critical datagrams
        wouldn’t linger past the point where they would be “stale”.
        <br /><br />
        In practice, this field is not used in exactly this manner. Routers today are fast and usually
        take far less than a second to forward a datagram; measuring the time that a datagram
        “lives” would be impractical. Instead, this field is used as a “maximum hop count” for the
        datagram. Each time a router processes a datagram, it reduces the value of the TTL field by
        one. If doing this results in the field being zero, the datagram is said to have expired. It is
        dropped, and usually an ICMP Time Exceeded message is sent to inform the originator of
        the message that this happened.
        <br /><br />
        The TTL field is one of the primary mechanisms by which networks are protected from
        router loops (see the description of ICMP Time Exceeded messages for more on how TTL
        helps IP handle router loops.)
    </p>
    <p class="style2">Type Of Service (TOS) Field</p>
    <p class="style1">
        This one-byte field was originally intended to provide certain quality of service features for
        IP datagram delivery. It allowed IP datagrams to be tagged with information indicating not
        only their precedence, but the preferred manner in which they should be delivered. It was
        divided into a number of subfields, as shown in Table (and above figure).
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/ipv4_tos.png" alt="ipv4 tos" />
        </p>
    <p class="style1">
        The lack of quality of service features has been considered a weakness of IP for a long
        time. But as we can see in above table, these features were built into IP from the start. What's
        going on here? The answer is that even though this field was defined in the standard back
        in the early 1980s, it was not widely used by hardware and software. For years, it was just
        passed around with all zeroes in the bits and mostly ignored.
        <br /><br />
        The IETF, seeing the field unused, attempted to revive its use. In 1998, RFC 2474 redefines
        the first six bits of the TOS field to support a technique called Differentiated Services (DS).
        Under DS, the values in the TOS field are called codepoints and are associated with
        different service levels. This starts to get rather complicated, so refer to RFC 2474 if you
        want all the details.
        <br /><br />
        Understanding the IP datagram format is an important part of troubleshooting IP networks.
        Be sure to see the following topic on options for more information on how IP options are
        used in datagrams, and the topic on fragmenting for some more context on the use of
        fragmentation-related fields such as Identification, Fragment Offset, and More Fragments.
    </p>
    <p class="style4">IP Datagram Options and Option Format</p>
    <p class="style1">
        All IP datagrams must include the standard 20-byte header, which contains key information
        such as the source and destination address of the datagram, fragmentation control parameters,
        length information and more. In addition to these invariable fields, the creators of
        IPv4 included the ability to add options that provide additional flexibility in how IP handles
        datagrams. Use of these options is, of course, optional. ☺ However, all devices that handle
        IP datagrams must be capable of properly reading and handling them.
        <br /><br />
        The IP datagram may contain zero, one or more options, which makes the total length of
        the Options field in the IP header variable. Each of the options can be either a single byte
        long, or multiple bytes in length, depending on how much information the option needs to
        convey. When more than one option is included they are just concatenated together and put
        into the Options field as a whole. Since the IP header must be a multiple of 32 bits, a
        Padding field is included if the number of bits in all options together is not a multiple of 32
        bits.
    </p>
    <p class="style2">IP Option Format</p>
    <p class="style1">
        Each IP option has its own subfield format, generally structured as shown in Table and
        Figure. For most options, all three subfields are used: Option Type, Option Length and
        Option Data. For a few simple options, however, this complex substructure is not needed. In
        those cases, the option type itself communicates all the information required, so the Option
        Type field appears alone, while the Option Length and Option Data subfields are omitted.
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/ipv4_option_format.png" alt="ipv4 option format" />
        <img src="../Images/ip/ipv4_option_format01.png" alt="ipv4 option format01" />
        </p>
    <p class="style2">IP Options</p>
    <p style="text-align:center">
        <img src="../Images/ip/ipv4_options.png" alt="ipv4 options" />
        </p>
    <p class="style1">
        Table lists the most common IPv4 options, showing the option class, option number and
        length for each (a length of 1 indicating an option that consists of only an Option Type field),
        and providing a brief description of how each is used.
        <br /><br />
        <strong>Key Concept</strong>: Each IPv4 datagram has a 20-byte mandatory header, and may also
        include one or more options. Each option has its own field format, and most are
        variable in size.
    </p>
    <p class="style2">IP Options and Source Routing</p>
    <p class="style1">
        Normally, IP datagrams are routed without any specific instructions from devices regarding
        the path a datagram should take from the source to the destination. It's the job of routers,
        using routing protocols, to figure out those details. In some cases, however, it may be
        advantageous to have the source of a datagram specify the route a datagram takes through
        the network. This is called source routing.
        <br /><br />
        There are two IP options that support source routing. In each, the option includes a list of IP
        addresses specifying the routers that must be used, to reach the destination. When strict
        source routing is used, this means that the path specified in the option must be used
        exactly, in sequence, with no other routers permitted to handle the datagram at all. In
        contrast, loose source routing specifies a list of IP addresses that must be followed in
        sequence, but having intervening hops in between the devices on the list is allowed.
        <br /><br />
        For full details on the exact structure used by each option type, please refer to RFC 791.
    </p>
    <p class="style4">IP Datagram Size, Maximum Transmission Unit (MTU), Fragmentation
        and Reassembly</p>
    <p class="style1">
        IP's main responsibility is to deliver data between internetworked devices. As we saw in the
        preceding section, this requires that data received from higher layers be encapsulated into
        IP datagrams for transmission. These datagrams are then passed down to the data link
        layer where they are sent over physical network links.
        <br /><br />
        In order for this to work properly, each datagram must be small enough to fit within the
        frame format of the underlying technology. If the message is bigger than the maximum
        frame size of the underlying network, it may be necessary to break up an IP message into
        several datagrams, a process called fragmentation. The datagrams are then sent individually
        and reassembled into the original message.
        <br /><br />
        The Internet Protocol is designed to manage datagram size, and to allow fragmentation and
        reassembly in a seamless manner. In this section I explore issues related to managing the
        size of IP datagrams. I start with an overview of datagram size issues and the important
        concept of a network's maximum transmission unit (MTU), discussing why fragmentation is
        necessary. I then describe the process by which IP messages to be transmitted are
        fragmented by the source device and possibly routers along the path to the destination, and
        then outline how they are reassembled by the recipient.
    </p> 
    <p class="style4">IP Datagram Size, the Maximum Transmission Unit (MTU), and Fragmentation
        Overview</p>
    <p class="style1">
        As the core network layer protocol of the TCP/IP protocol suite, IP is designed to implement
        potentially large internetworks of devices. When we work with IP we get used to the concept
        of hosts being able to send information back and forth even though they may be quite far
        away and the data may need to travel across many devices between them. Even though we
        can usually consider the TCP/IP internet to be like a large, abstract “virtual network” of
        devices, we must always remember that underneath the network layer, data always travels
        across one or more physical networks. The implementation of the Internet Protocol must
        take this reality into account as well.
        <br /><br />
        In order to send messages using IP we encapsulate the higher-layer data into IP
        datagrams. These datagrams must then be sent down to the data link layer, where they are
        further encapsulated into the frames of whatever technology is going to be used to physically
        convey them, either directly to their destination, or indirectly to the next intermediate
        step in their journey to their intended recipient. The data link layer implementation puts the
        entire IP datagram into the data portion (the payload) of its frame format, just as IP puts
        transport layer messages, transport headers and all, into its IP Data field. This immediately
        presents us with a potential issue: matching the size of the IP datagram to the size of the
        underlying data link layer frame size.
    </p>
    <p class="style2">Matching IP Datagram Size to Underlying Network Frame Size</p>
    <p class="style1">
        The underlying network that a device uses to connect to other devices could be LAN
        connection like Ethernet or Token Ring, a wireless LAN link such as 802.11, or a dialup,
        DSL, T-1 or other WAN connection. Each physical network will generally use its own frame
        format, and each format has a limit on how much data can be sent in a single frame. If the
        IP datagram is too large for the data link layer frame format's payload section, we have a
        problem!
        <br /><br />
        For example, consider an FDDI. The maximum size of the data field in FDDI is around
        4,470, depending on whether or not SNAP is used. This means FDDI can handle an IP
        datagram of up to 4,470 bytes. In contrast, a regular Ethernet frame uses a frame format
        that limits the size of the payload it sends to 1,500 bytes. This means Ethernet can't deal
        with IP datagrams greater than 1,500 bytes in size.
        <br /><br />
        Now, remember that in sending a datagram across an internetwork, it may pass across
        more than one physical network. To access a site on the Internet, for example, we typically
        send a request through our local router, which then connects to other routers that eventually
        relay the request to the Internet site. Each hop as the datagram is forwarded may use a
        different physical network, with a different maximum underlying frame size.
        <br /><br />
        The whole idea behind a network layer protocol is to implement this concept of a “virtual
        network” where devices talk even though they are far away. This means that higher layers
        shouldn't need to worry about details like the size limits of underlying data link layer technologies.
        However, someone has to worry about it. This task falls to the Internet Protocol.
    </p>
    <p class="style2">Maximum Transmission Unit (MTU) and Datagram Fragmentation</p>
    <p class="style1">
        The IP implementation of all devices on an IP internet needs to be aware of the capacity of
        the technology used by that implementation for its immediate data link layer connection to
        other devices. This limit is called the maximum transmission unit (MTU) of the network. This
        term is also sometimes seen as the maximum transfer unit.
        <br /><br />
        If an IP layer receives a message to be sent across the internetwork, it looks at the size of
        the message and then computes how large the IP datagram would be after the addition of
        the 20 or more bytes needed for the IP header. If the total length is greater than the MTU of
        the underlying network, the IP layer will fragment the message into multiple IP fragments.
        So, if a host is connected using an Ethernet LAN to its local network, it may use an MTU of
        1,500 for IP datagrams, and will fragment anything larger. Figure shows an example of
        differing MTUs and fragmentation.
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/mtu_and_fragmentation.png" alt="mtu_and_fragmentation" />
        </p>
    <p class="style1">
        <strong>Key Concept</strong>: The size of the largest IP datagram that can be transmitted over a
        physical network is called that network’s maximum transmission unit (MTU). If a
        datagram is passed from a network with a high MTU to one with a low MTU, it must
        be fragmented to fit the network with the smaller MTU.
        <br /><br />
        Since some physical networks on the path between devices may have a smaller MTU than
        others, it may be necessary to fragment more than once. For example, suppose the source
        device wants to send an IP message 12,000 bytes long. Its local connection has an MTU of
        3,300 bytes. It will have to divide this message into four fragments for transmission: three
        that are about 3,300 bytes long and a fourth remnant about 2,100 bytes long. (I'm oversimplifying
        by ignoring the extra headers required; the next topic includes the full details of the
        fragmentation process.)
    </p>
    <p class="style2">Multiple-Stage Fragmentation</p>
    <p class="style1">
        While the fragments above are in transit, they may need to pass over a hop between two
        routers where the physical network's MTU is only 1,300 bytes. In this case, each of the
        fragments will again need to be fragmented. The 3,300 byte fragments will end up in three
        pieces each (two of about 1,300 bytes and one of around 700 bytes) and the final 2,100-
        byte fragment will become a 1300-byte and 800-byte fragment. So instead of having four
        fragments, we will end up with eleven (3*3+1*2)! This is illustrated in Figure.
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/ipv4_datagram_fragmetation.png" alt="ipv4 datagram fragmetation" />
        </p>
    <p class="style2">Internet Minimum MTU: 576 Bytes</p>
    <p class="style1">
        Each router must be able to fragment as needed to handle IP datagrams up to the size of
        the largest MTU used by networks to which they attach. Routers are also required, as a
        minimum, to handle an MTU of at least 576 bytes. This value is specified in RFC 791, and
        was chosen to allow a “reasonable sized” data block of at least 512 bytes, plus room for the
        standard IP header and options. Since it is the minimum size specified in the IP standard,
        576 bytes has become a common default MTU value used for IP datagrams. Even if a host
        is connected over a local network with an MTU larger than 576, it may choose to use an
        MTU value of 576 anyway, to ensure that no further fragmentation will be required by intermediate
        routers.
        <br /><br />
        Note that while intermediate routers may further fragment an already-fragmented IP
        message, intermediate devices do not reassemble fragments. Reassembly is done only by
        the recipient device. This has some advantages and some disadvantages, as we will see
        when we examine the reassembly process.
    </p>
    <p class="style2">MTU Path Discovery</p>
    <p class="style1">
        When trying to send a great deal of data, efficiency in message transmissions becomes
        important. The larger each IP datagram we send, the smaller the percentage of bytes
        wasted for overhead such as header fields. This means that ideally, we want to use as large
        an MTU as possible without fragmentation occurring.
        <br /><br />
        Determining the optimal MTU to use for a route between two devices requires knowing the
        MTU of every link on that route—information that the end-points of the connection simply
        don’t have. They can determine the MTU of the overall route, however, using a clever
        technique called path MTU discovery. I call this technique “clever” because it does not use
        any special feature designed for the particular purpose of determining a route’s MTU, but
        rather an error reporting mechanism built into TCP/IP Internet Control Message Protocol
        (ICMP).
        <br /><br />
        One of the message types defined in ICMPv4 is the Destination Unreachable message,
        which is returned under various conditions where an IP datagram cannot be delivered. One
        of these situations is when a datagram is sent that is too large to be forwarded by a router
        over a physical link but which has its Don’t Fragment (DF) flag set to prevent fragmentation.
        In this case, the datagram must be discarded and a Destination Unreachable message sent
        back to the source. A device can exploit this capability by testing the path with datagrams of
        different sizes, to see how large they must be before they are rejected.
        <br /><br />
        The source node typically sends a datagram that has the MTU of its local physical link,
        since that represents an upper bound on the MTU of any path to or from that device. If this
        goes through without any errors, it knows it can use that value for future datagrams to that
        destination. If it gets back any Destination Unreachable - Fragmentation Needed and DF
        Set messages, this means some other link between it and the destination has a smaller
        MTU. It tries again using a smaller datagram size, and continues until it finds the largest
        MTU that can be used on the path.
    </p>
    <p class="style4">IP Message Fragmentation Process</p>
    <p class="style1">
        When an IP datagram is too large for the maximum transmission unit (MTU) of the underlying
        data link layer technology used for the next leg of its journey, it must be fragmented
        before it can be sent across the network. The higher-layer message to be transmitted is not
        sent in a single IP datagram but rather broken down into pieces called fragments that are
        sent separately. In some cases, the fragments themselves may need to be fragmented
        further.
    </p>
    <p class="style2">Fragmentation Issues and Concerns</p>
    <p class="style1">
        Fragmentation is necessary to implement a network-layer internet that is independent of
        lower layer details, but introduces significant complexity to IP. Remember that IP is an
        unreliable, connectionless protocol. IP datagrams can take any of several routes on their
        way from the source to the destination, and some may not even make it to the destination at
        all. When we fragment a message we make a single datagram into many, which introduces
        several new issues to be concerned with:
    </p>
    <ul class="style1">
    <li><p><strong>Sequencing and Placement :</strong> The fragments will typically be sent in sequential order
        from the beginning of the message to the end, but they won't necessarily show up in
        the order in which they were sent. The receiving device must be able to determine the
        sequence of the fragments to reassemble them in the correct order. In fact, some
        implementations send the last fragment first, so the receiving device will immediately
        know the full size of the original complete datagram. This makes keeping track of the
        order of segments even more essential.</p></li>
    <li><p><strong>Separation of Fragmented Messages :</strong> A source device may need to send more than
        one fragmented message at a time; or, it may send multiple datagrams that are
        fragmented en route. This means the destination may be receiving multiple sets of
        fragments that must be put back together. Imagine a box into which the pieces from
        two, three or more jigsaw puzzles have been mixed and you understand this issue.</p></li>
    <li><p><strong>Completion :</strong> The destination device has to be able to tell when it has received all of
        the fragments so it knows when to start reassembly (or when to give up if it didn't get
        all the pieces).</p></li>
    </ul>
    <p class="style1">
        To address these concerns and allow the proper reassembly of the fragmented message,
        IP includes several fields in the IP format header that convey information from the source to
        the destination about the fragments. Some of these contain a common value for all the
        fragments of the message, while others are different for each fragment.
    </p>
    <p class="style2">The IP Fragmentation Process: An Example</p>
    <p class="style1">
        The device performing the fragmentation follows a specific algorithm to divide the message
        into fragments for transmission. The exact implementation of the fragmentation process
        depends on the device. Let's take the same example from the previous topic, an IP
        message 12,000 bytes wide (including the 20-byte IP header) that needs to be sent over a
        link with an MTU of 3,300. Here's a typical method by which this fragmentation might be
        performed (you may find the illustration in Figure helpful):
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/ipv4_datagram_fragmentation_process.png"
         alt="ipv4 datagram fragmentation process" />
        </p>
    <ol class="style1">
    <li><strong>Create First Fragment</strong> :The first fragment is created by taking the first 3,300 bytes of
        the 12,000-byte IP datagram. This includes the original header, which becomes the IP
        header of the first fragment (with certain fields changed as described below). So,
        3,280 bytes of data are in the first fragment. This leaves 8,700 bytes to encapsulate
        (11,980 minus 3,280).</li>
    <li><strong>Create Second Fragment :</strong> The next 3,280 bytes of data are taken from the 8,700
        bytes that remain after the first fragment was built, and paired with a new header to
        create fragment #2. This leaves 5,420 bytes.</li>
    <li><strong>Create Third Fragment :</strong> The third fragment is created from the next 3,280 bytes of
        data, with a 20-byte header. This leaves 2,140 bytes of data.</li>
    <li><strong>Create Fourth Fragment :</strong> The remaining 2,140 bytes are placed into the fourth
        fragment, with a 20-byte header of course.</li>
    </ol>
    <p class="style1">
        I want to emphasize two important points here. First, IP fragmentation does not work by
        fully encapsulating the original IP message into the Data fields of the fragments. If this were
        done, the first 20 bytes of the Data field of the first fragment would contain the original IP
        header. This technique is used by some other protocols, such as the PPP Multilink Protocol,
        but not by IP. The original IP header is “transformed” into the IP header of the first fragment.
        <br /><br />
        Second, note that the total number of bytes transmitted increases: we are sending 12,060
        bytes (3,300 times three plus 2,160) instead of 12,000. The extra 60 bytes are from the
        additional headers in the second, third and fourth fragments. (The increase in size could
        theoretically be even larger if the headers contain options.)
    </p>
    <p class="style2">Fragmentation-Related IP Datagram Header Fields</p>
    <p class="style1">
        When a sending device or router fragments a datagram, it must provide information that will
        allow the receiving device to be able to identify the fragments and reassemble them into the
        datagram that was originally sent. This information is recorded by the fragmenting device in
        a number of fields in the IP datagram header.
    </p>
    <p class="style2">Total Length</p>
    <p class="style1">
        After fragmenting, this field indicates the length of each fragment, not the length of the
        overall message. Normally, the fragment size is selected to match the MTU value in bytes.
        However, fragments must have a length that is a multiple of 8, to allow proper offset specification
        (see below). The last fragment will usually be shorter than the others because it will
        contain a “leftover” piece, unless the message length happens to be an exact multiple of the
        fragment size.
    </p>
    <p class="style2">Identification</p>
    <p class="style1">
        To solve the “many jigsaw puzzles in a box” problem, a unique identifier is assigned to each
        message being fragmented. Consider this like writing a different number on the bottom of
        each piece of a jigsaw puzzle before tossing it into the box. This value is placed in the
        Identification field in the IP header of each fragment sent. The Identification field is 16 bits
        wide, so a total of 65,536 different identifiers can be used.
        <br /><br />
        Obviously, we want to make sure that each message sent between the same source and
        destination that is being fragmented has a different identifier. The source can decide how it
        generates unique identifiers. This may be done through something as simple as a counter
        that is incremented each time a new set of fragments is created.
    </p>
    <p class="style2">More Fragments</p>
    <p class="style1">
        This flag is set to a 1 for all fragments except the last one, which has it set to 0. When the
        fragment with a value of 0 in the More Fragments flag is seen, the destination knows it has
        received the last fragment of the message.
    </p>
    <p class="style2">Fragment Offset</p>
    <p class="style1">
        This field solves the problem of sequencing fragments by indicating to the recipient device
        where in the overall message each particular fragment should be placed. The field is 13 bits
        wide, so the offset can be from 0 to 8191. Fragments are specified in units of 8 bytes, which
        is why fragment length must be a multiple of 8. Uncoincidentally, 8191 * 8 is 65,528, just
        about the maximum size allowed for an IP datagram.
        <br /><br />
        Let's take the same example from above. The first fragment would have a Fragment Offset
        of 0. The second would have an offset of 410 (3,280 divided by 8). The third would have an
        offset of 820 (6,560 divided by 8). The fourth would have an offset of 1230.
        <br /><br />
        <strong>Key Concept : </strong>When an MTU requirement forces a datagram to be fragmented, it is
        split into several smaller IP datagrams, each containing part of the original. The
        header of the original datagram is changed into the header of the first fragment, and
        new headers are created for the other fragments. Each is set to the same Identification
        value to mark them as part of the same original datagram. The Fragment Offset of each is
        set to the location where the fragment belongs in the original. The More Fragments field is
        set to 1 for all fragments but the last, to let the recipient know when it has received all the
        fragments.
    </p>
    <p class="style2">IP Header Flags Related to Fragmentation</p>
    <p class="style1">
    In addition to the fields above, there are a couple of flags in the IP header related to
    fragmentation.
    </p>
    <p class="style2">The Copied Flag</p>
    <p class="style1">
        If a datagram containing options must be fragmented, some of the options may be copied to
        each of the fragments. This is controlled by the Copied flag in each option field.
    </p>
    <p class="style2">The Don’t Fragment Flag</p>
    <p class="style1">
        This flag can be set to 1 by a transmitting device to specify that a datagram not be
        fragmented in transit. This may be used in certain circumstances where the entire message
        must be delivered intact as pieces may not make sense. It may also be used if the destination
        device has a limited IP implementation and can't reassemble fragments, and is also
        used for testing the maximum transmission unit (MTU) of a link. Normally, however, devices
        don't care about fragmentation and this field is left at zero.
        <br /><br />
        What happens if a router encounters a datagram too large to pass over the next physical
        network but with the Don't Fragment bit set to 1? It can't fragment the datagram and it can't
        pass it along either, so it is “stuck”. It will generally drop the datagram, and then send back
        a special ICMP Destination Unreachable error message: “Fragmentation Needed and Don't
        Fragment Bit Set”. This is used in MTU Path Discovery as described in the preceding
        section.
    </p>
    <p class="style4">IP Message Reassembly Process</p>
    <p class="style1">
        When a datagram is fragmented, either by the originating device or by one or more routers
        transmitting the datagram, it becomes multiple fragment datagrams. The destination of the
        overall message must collect these fragments and then reassemble them into the original
        message. Reassembly is accomplished by using the special information in the fields we
        saw in the preceding topic to help us “put the jigsaw puzzle back together again”.
    </p>
    <p class="style2">Asymmetry of Fragmentation and Reassembly</p>
    <p class="style1">
        It's important to understand that while reassembly is the complement to fragmentation, the
        two processes are not symmetric. A primary differentiation between the two is that while
        intermediate routers can fragment a single datagram or further fragment a datagram that is
        already a fragment, intermediate devices do not perform reassembly. This is done only by
        the ultimate destination of the IP message. So, if a datagram at an intermediate router on
        one side of a physical network with an MTU of 1,300 causes fragmentation of a 3,300 byte
        datagram, the router on the other end of this 1,300 MTU link will not restore the 3,000 byte
        datagram to its original state. It will send all the 1,300 byte fragments on down the internet,
        as shown in Figure IPv4 Datagram Fragmentation.
        <br /><br />
        There are a number of reasons why the decision was made to implement IP reassembly
        this way. Perhaps the most important one is that fragments can take different routes to get
        from the source to destination, so any given router may not see all the fragments in a
        message. Another reason is that having routers need to worry about reassembling
        fragments would increase their complexity. Finally, as we will see, reassembly of a message
        requires that we wait for all fragments before sending on the reassembled message. Having
        routers do this would slow routing down. Since routers don't reassemble they can immediately
        forward all fragments on to the ultimate recipient.
        <br /><br />
        However, there are drawbacks to this design as well. One is that it results in more smaller
        fragments traveling over longer routes than if intermediate reassembly occurred. This
        increases the chances of a fragment going missing and the entire message being
        discarded. Another is a potential inefficiency in the utilization of data link layer frame
        capacity. In the example above, the 1,300-byte fragments would not be reassembled back
        into a 3,300 byte datagram at the end of the 1,000-MTU link. If the next link after that one
        also had an MTU of 3,300, we would have to send three frames, each encapsulating a
        1,300-byte fragment, instead of a single larger frame, which is slightly slower.
        <br /><br />
        <strong>Key Concept :</strong> In IPv4, fragmentation can be performed by a router between the
        source and destination of an IP datagram, but reassembly is only done by the destination
        device.
    </p>
    <p class="style2">The Reassembly Process</p>
    <p class="style1">
        As we saw in looking at how fragmentation works, it involves a fair bit of complexity. Several
        IP header fields are filled in when a message is fragmented to give the receiving device the
        information it requires to properly reassemble the fragments. The receiving device follows a
        procedure to keep track of the fragments as they are received and build up its copy of the
        total received message from the source device. Most of its efforts are geared around
        dealing with the potential difficulties associated with IP being an unreliable protocol.
        <br /><br />
        The details of implementation of the reassembly process are specific to each device, but
        generally include the following functions:
    </p>
    <ul class="style1">
    <li><p><strong>Fragment Recognition and Fragmented Message Identification :</strong> The recipient
        knows it has received a message fragment the first time it sees a datagram with the
        More Fragments bit set to one or the Fragment Offset a value other than zero. It
        identifies the message based on: the source and destination IP addresses; the
        protocol specified in the header; and the Identification field generated by the sender.</p></li>
    <li><p><strong>Buffer Initialization :</strong> The receiving device initializes a buffer where it can store the
        fragments of the message as they are received. It keeps track of which portions of this
        buffer have been filled with received fragments, perhaps using a special table. By
        doing this, it knows when the buffer is partially filled with received fragments and when
        it is completely full.</p></li>
    <li><p><strong>Timer Initialization :</strong> The receiving device sets up a timer for reassembly of the
        message. Since it is possible that some fragments may never show up, this timer
        ensures that the device will not wait “forever” trying to reassemble the message.</p></li>
    <li><p><strong>Fragment Receipt and Processing :</strong> Whenever a fragment of this message arrives
        (as indicated by it having the same source and destination addresses, protocol and
        Identification as the first fragment), the fragment is processed. It is inserted into the
        message buffer in the location indicated by its Fragment Offset field. The device also
        makes note of the fact that this portion of the message has been received.</p></li>
    </ul>
    <p class="style1">
        Reassembly is finished when the entire buffer has been filled and the fragment with the
        More Fragments bit set to zero is received, indicating that it is the last fragment of the
        datagram. The reassembled datagram is then processed like a normal, unfragmented
        datagram would be. On the other hand, if the timer for the reassembly expires with any of
        the fragments missing, the message cannot be reconstructed. The fragments are
        discarded, and an ICMP Time Exceeded message generated. Since IP is unreliable, it
        relies on higher layer protocols such as TCP to determine that the message was not
        properly received and then retransmit it.
    </p>
    <p class="style4">IP Datagram Delivery and Routing</p>
    <p class="style1">
        The essential functions of IP datagram encapsulation and addressing are sometimes
        compared to putting a letter in an envelope and then writing the address of the recipient on
        it. Once our IP datagram “envelope” is filled and labelled, it is ready to go, but it's still sitting
        on our desk. The last of the main functions of IP is to get the envelope from us to our
        intended recipient. This is the process of datagram delivery. When the recipient is not on
        our local network, this delivery requires that the datagram be routed from our network to the
        one where the destination resides.
        <br /><br />
        In this section I discuss some of the particulars of how IP routes datagrams over an internetwork.
        I begin with an overview of the process and contrast direct and indirect delivery of
        data between devices. I discuss the main method used to route datagrams over the
        internet, and also explain briefly how IP routing tables are built and maintained. I discuss
        how the move from “classful” to classless addressing using CIDR impacted routing.
    </p>
    <p class="style4">IP Datagram Direct Delivery and Indirect Delivery (Routing)</p>
    <p class="style1">
        The overall job of the Internet Protocol is to transmit messages from higher layer protocols
        over an internetwork of devices. These messages must be packaged and addressed, and if
        necessary fragmented, and then they must be delivered. The process of delivery can be
        either simple or complex, depending on the proximity of the source and destination devices.
    </p>
    <p class="style2">Datagram Delivery Types</p>
    <p class="style1">
        Conceptually, we can divide all IP datagram deliveries into two general types, shown graphically
        in Figure 91:
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/routed_delivery_of_datagram.png" alt="routed delivery of ip datagram" />
        </p>
    <ul class="style1">
    <li><p><strong>Direct Datagram Deliveries :</strong></p> 
        When datagrams are sent between two devices on the
        same physical network, it is possible for datagrams to be delivered directly from the
        source to the destination. Imagine that you want to deliver a letter to a neighbor on
        your street. You probably wouldn't bother mailing it through the post office; you'd just
        put the neighbor’s name on the envelope and stick it right into his or her mailbox.</li>
    <li><p><strong>Indirect Datagram Deliveries :</strong> When two devices are not on the same physical
        network, the delivery of datagrams from one to the other is indirect. Since the source
        device can't see the destination on its local network, it must send the datagram
        through one or more intermediate devices to deliver it. Indirect delivery is analogous to
        mailing a letter to a friend in a different city. You don't deliver it yourself—you put it into
        the postal system. The letter journeys through postal system, possibly taking several
        intermediate steps, and ends up in your friend's neighborhood, where a postal carrier
        puts it into his or her mailbox.</p></li>
    </ul>
    <p class="style2">Comparing Direct and Indirect Delivery</p>
    <p class="style1">
        Direct delivery is obviously the simpler of these. The source just sends the IP datagram
        down to its data link layer implementation. The data link layer encapsulates the datagram in
        a frame that is sent over the physical network directly to the recipient's data link layer, which
        passes it up to the IP layer.
        <br /><br />
        Indirect delivery is much more complicated, because we can't send the data straight to the
        recipient. In fact, we usually will not even know where the recipient is, exactly. Sure, we
        have its address, but we may not know what network it is on, or where that network is
        relative to our own. (If I told you my address you'd know it's somewhere in Bennington,
        Vermont, but could you find it?) Like relying on the postal system in the envelope analogy,
        we must rely on the internetwork itself to indirectly deliver datagrams. And like the postal
        system, the power of IP is that you don't need to know how to get the letter to its recipient;
        you just put it into the system.
        <br /><br />
        The devices that accomplish this “magic” of indirect delivery are generally known as
        routers, and indirect delivery is more commonly called routing. Like entrusting a letter to
        your local mail carrier or mailbox, a host that needs to send to a distant device generally
        sends datagrams to its local router. The router connects to one or more other routers, and
        they each maintain information about where to send datagrams so that they reach their final
        destination.
        <br /><br />
        Indirect delivery is almost always required when communicating with distant devices, such
        as those on the Internet or across a WAN link. However, it may also be needed even to
        send to a device in the next room of your office, if that device is not connected directly to
        yours at layer two.
        <br /><br />
        <strong>Note :</strong> In the past, routers were often called gateways. Today, this term more
        generally can refer to a device that connects networks in a variety of ways. You will
        still sometimes hear routers called gateways—especially in the context of terms
        like “default gateway”—but since it is ambiguous, the term router is preferred.
    </p>
    <p class="style2">The Relationship Between Datagram Routing and Addressing</p>
    <p class="style1">
        Obviously, each time a datagram must be sent, it is necessary that we determine first of all
        whether we can deliver it directly or if routing is required. Remember all those pages and
        pages of details about IP addressing? Well, this is where the payoff is. The same thing that
        makes IP addressing sometimes hard to understand—the division into network ID and host
        ID bits, as well as the subnet mask—is what allows a device to quickly determine whether
        or not it is on the same network as its intended recipient:
    </p>
    <ul class="style1">
    <li><p><strong>Conventional “Classful” Addressing :</strong> We know the class of each address by
        looking at the first few bits. This tells us which bits of an address are the network ID. If
        the network ID of the destination is the same as our own, the recipient is on the same
        network; otherwise, it is not.</p></li>
    <li><p><strong>Subnetted “Classful” Addressing :</strong> We use our subnet mask to determine our
        network ID and subnet ID and that of the destination address. If the network ID and
        subnet are the same, the recipient is on the same subnet. If only the network ID is the
        same, the recipient is on a different subnet of the same network. If the network ID is
        different, the destination is on a different network entirely.</p></li>
    <li><p><strong>Classless Addressing :</strong> The same basic technique is used as for subnetted “classful”
        addressing, except that there are no subnets. We use the “slash number” to determine
        what part of the address is the network ID and compare the source and destination as
        before. There are complications here, however, that I discuss more in the topic on
        routing in a classless environment.</p></li>
    </ul>
    <p class="style1">
        The determination of what type of delivery is required is the first step in the source deciding
        where to send a datagram. If it realizes the destination is on the same local network it will
        address the datagram to the recipient directly at the data link layer. Otherwise, it will send
        the datagram to the data link layer address of one of the routers to which it is connected.
        The IP address of the datagram will still be that of the ultimate destination. Mapping
        between IP addresses and data link layer addresses is accomplished using the TCP/IP
        Address Resolution Protocol (ARP).
        <br /><br />
        I should also clarify one thing regarding the differentiation between direct and indirect
        delivery. Routing is done in the latter case to get the datagram to the local network of the
        recipient. After the datagram has been routed to the recipient's physical network, it is sent to
        the recipient by the recipient's local router. So, you could say that indirect delivery includes
        direct delivery as its final step.
        <br /><br />
        The next topic discusses IP routing processes and concepts in more detail.
    </p>
    <p class="style4">IP Routing Concepts and the Process of Next-Hop Routing</p>
    <p class="style1">
        When a datagram is sent between source and destination devices that are not on the same
        physical network, the datagram must be delivered indirectly between the devices, a process
        called routing. It is this ability to route information between devices that may be far away
        that allows IP to create the equivalent of a virtual internetwork that spans potentially
        thousands of physical networks, and lets devices even on opposite ends of the globe
        communicate. The process of routing in general terms is too complex to get into in complete
        detail here, but I do want to take a brief look at key IP routing concepts.
    </p>
    <p class="style2">Overview of IP Routing and Hops</p>
    <p class="style1">
        To continue with our postal system analogy, I can send a letter from my home in the United
        States to someone in, say, India, and the postal systems of both countries will work to
        deliver the letter to its destination. However, when I drop a letter in the mailbox, it's not like
        someone shows up, grabs the letter, and hand-delivers it to the right address in India. The
        letter travels from the mailbox to my local post office. From there, it probably goes to a
        regional distribution center, and then from there, to a hub for international traffic. It goes to
        India, perhaps (likely) via an intermediate country. When it gets to India, the Indian postal
        system uses its own network of offices and facilities to route the letter to its destination. The
        envelope “hops” from one location to the next until it reaches its destination.
        <br /><br />
        IP routing works in very much the same manner. Even though IP lets devices “connect”
        over the internetwork using indirect delivery, all of the actual communication of datagrams
        occurs over physical networks using routers. We don't know where exactly the destination
        device's network is, and we certainly don't have any way to connect directly to each of the
        thousands of networks out there. Instead, we rely on intermediate devices that are each
        physically connected to each other in a variety of ways to form a mesh containing millions of
        paths between networks. To get the datagram where it needs to go, it needs to be handed
        off from one router to the next, until it gets to the physical network of the destination device.
        The general term for this is next-hop routing. The process is illustrated in Figure
    </p>
    <p style="text-align:center">
        <img src="../Images/ip/ip_datagram_next_hop_routing.png" alt="ip datagram next hop routing" />
        </p>
    <p class="style2">The Benefits of Next-Hop Routing</p>
    <p class="style1">
        This is a critical concept in how IP works: routing is done on a step-by-step basis, one hop
        at a time. When we decide to send a datagram to a device on a distant network, we don't
        know the exact path that the datagram will take; we only have enough information to send it
        to the correct router to which we are attached. That router, in turn, looks at the IP address of
        the destination and decides where the datagram should next “hop” to. This process
        continues until the datagram reaches the destination host's network, when it is delivered.
        <br /><br />
        Next-hop routing may seem at first like a strange way of communicating datagrams over an
        internetwork. In fact, it is part of what makes IP so powerful. On each step of the journey to
        any other host, a router only needs to know where the next step for the datagram is.
        Without this concept, each device and router would need to know what path to take to every
        other host on the internet, which would be quite impractical.
        <br /><br />
        <strong>Key Concept</strong>: Indirect delivery of IP datagrams is accomplished using a process
        called next-hop routing, where each message is handed from one router to the next
        until it reaches the network of the destination. The main advantage of this is that
        each router needs only to know which neighboring router should be the next recipient of a
        given datagram, rather than needing to know the exact route to every destination network.
    </p>
    <p class="style2">Datagram Processing At Each Hop</p>
    <p class="style1">
        As mentioned above, each “hop” in routing consists of traversal of a physical network. After
        a source sends a datagram to its local router, the data link layer on the router passes it up to
        the router's IP layer. There, the datagram's header is examined, and the router decides
        what the next device is to send the datagram to. It then passes it back down to the data link
        layer to be sent over one of the router's physical network links, typically to another router.
        The router will either have a record of the physical addresses of the routers to which it is
        connected, or it will use ARP to determine these addresses.
    </p>
    <p class="style2">The Essential Role of Routers in IP Datagram Delivery</p>
    <p class="style1">
        Another key concept related to the principle of next-hop routing is that routers are designed
        to accomplish routing, not hosts. Most hosts are connected using only one router to the rest
        of the internet (or Internet). It would be a maintenance nightmare to have to give each host
        the smarts to know how to route to every other host. Instead, hosts only decide if they are
        sending locally to their own network, or if they are sending to a non-local network. If the
        latter, they just send the datagram to their router and say “here, you take care of this”. If a
        host has a connection to more than one router, it only needs to know which router to use for
        certain sets of distant networks. How routers decide what to do with the datagrams when
        they receive them from hosts is the subject of the next topic.
    </p>
    <p class="style4">IP Routes and Routing Tables</p>
    <p class="style1">
        Routers are responsible for forwarding traffic on an IP internetwork. Each router accepts
        datagrams from a variety of sources, examines the IP address of the destination and
        decides what the next hop is that the datagram needs to take to get it that much closer to its
        final destination. A question then naturally arises: how does a router know where to send
        different datagrams?
        <br /><br />
        Each router maintains a set of information that provides a mapping between different
        network IDs and the other routers to which it is connected. This information is contained in a
        data structure normally called a routing table. Each entry in the table, unsurprisingly called a
        routing entry, provides information about one network (or subnetwork, or host). It basically
        says “if the destination of this datagram is in the following network, the next hop you should
        take is to the following device”. Each time a datagram is received the router checks its destination
        IP address against the routing entries in its table to decide where to send the
        datagram, and then sends it on its next hop.
        <br /><br />
        Obviously, the fewer the entries in this table, the faster the router can decide what to do with
        datagrams. (This was a big part of the motivation for classless addressing, which aggregates
        routes into “supernets” to reduce router table size, as we will see in the next topic.)
        Some routers only have connections to two other devices, so they don't have much of a
        decision to make. Typically, the router will simply take datagrams coming from one of its
        interfaces and if necessary, send them out on the other one. For example, consider a small
        company's router acting as the interface between a network of three hosts and the Internet.
        Any datagrams sent to the router from a host on this network will need to go over the
        router's connection to the router at the ISP.
        <br /><br />
        When a router has connections to more than two devices, things become considerably
        more complex. Some distant networks may be more easily reachable if datagrams are sent
        using one of the routers than the other. The routing table contains information not only
        about the networks directly connected to the router, but also information that the router has
        “learned” about more distant networks.
        <br /><br />
        <strong>Key Concept</strong> : A router make decisions about how to route datagrams using its
        internal routing table. The table contains entries specifying to which router datagrams
        should be sent to reach a particular network.
    </p>
    <p class="style2">Routing Tables in an Example Internetwork</p>
    <p style="text-align:center">
        <img src="../Images/ip/ip_routing_and_routing_tables.png" alt="ip routing and routing tables"  />
        </p>
    <p class="style1">
        Let’s consider an example (see Figure) with routers R1, R2 and R3 connected in a
        “triangle”, so that each router can send directly to the others, as well as to its own local
        network. Suppose R1's local network is 11.0.0.0/8, R2's is 12.0.0.0/8 and R3's is 13.0.0.0/8.
        (I'm just trying to keep this simple. ☺) R1 knows that any datagram it sees with 11 as the
        first octet is on its local network. It will also have a routing entry that says that any IP
        address starting with “12” should go to R2, and any starting with “13” should go to R3.
        <br /><br />
        Let's suppose that R1 also connects to another router, R4, which has 14.0.0.0/8 as its local
        network. R1 will have an entry for this local network. However, R2 and R3 also need to
        know how to reach 14.0.0.0/8, even though they don't connect to it its router directly. Most
        likely, they will have an entry that says that any datagrams intended for 14.0.0.0/8 should be
        sent to R1. R1 will then forward them to R4. Similarly, R4 will send any traffic intended for
        12.0.0.0/8 or 13.0.0.0/8 through R1.
    </p>
    <p class="style2">Route Determination</p>
    <p class="style1">
        Now, imagine that this process is expanded to handle thousands of networks and routers.
        Not only do routers need to know which of their local connections to use for each network,
        they want to know, if possible, what is the best connection to use for each network. Since
        routers are interconnected in a mesh there are usually multiple routes between any two
        devices, but we want to take the best route whenever we can. This may be the shortest
        route, the least congested, or the route considered optimal based on other criteria.
        <br /><br />
        Determining what routes we should use for different networks turns out to be an important
        but very complex job. Routers must plan routes and exchange information about routes and
        networks, which can be done in a variety of ways. This is accomplished in IP using special
        IP routing protocols. It is through these protocols that R2 and R3 would find out that
        14.0.0.0/8 exists and that it is connected to them via R1. I discuss these important “support
        protocols” in their own section.
        <br /><br />
        <strong>Note</strong> : There is a difference between a routable protocol and a routing protocol.
        IP is a routable protocol, which means its messages (datagrams) can be routed.
        Examples of routing protocols are RIP or BGP, which are used to exchange
        routing information between routers.
    </p>
    <p class="style4">IP Routing In A Subnet Or Classless Addressing (CIDR) Environment</p>
    <p class="style1">
        There are three main categories of IP addressing: “classful”, subnetted “classful”, and
        classless. As we have already seen, the method used for determining whether direct or
        indirect delivery of a datagram is required is different for each type of addressing. The type
        of addressing used in the network also impacts how routers decide to forward traffic in an
        internet.
        <br /><br />
        One of the main reasons why the traditional class-based addressing scheme was created
        was that it made both addressing and routing relatively simple. We must remember that
        IPv4 was developed in the late 1970s, when the cheap and powerful computer hardware
        we take for granted today was still in the realm of science fiction. For the internetwork to
        function properly, routers had to be able to look at an IP address and quickly decide what to
        do with it.
        <br /><br />
        “Classful” addressing was intended to made this possible. There was only a two-level
        hierarchy for the entire internet: network ID and host ID. Routers could tell by looking at the
        first four bits which of the bits in any IP address were the network ID and which the host ID.
        Then they needed only consult their routing tables to find the network ID and see which
        router was the best route to that network.
        <br /><br />
        The addition of subnetting to conventional addressing didn't really change this for the main
        routers on the internet, because subnetting is internal to the organization. The main routers
        handling large volumes of traffic on the Internet didn't look at subnets at all; the additional
        level of hierarchy that subnets represent existed only for the routers within each organization
        that chose to use subnetting. These routers, when deciding what to do with
        datagrams within the organization's network, had to extract not only the network ID of IP
        addresses, but also the subnet ID. This told them which internal physical network to send
        the datagram to.
    </p>
    <p class="style2">Aggregated Routes and their Impact on Routing</p>
    <p class="style1">
        Classless addressing is formally called Classless Inter-Domain Routing or CIDR. The name
        mentions routing and not addressing, and this is evidence that CIDR was introduced in
        large part to improve the efficiency of routing. This improvement occurs because classless
        networks use a multiple-level hierarchy. Each network can be broken down into subnetworks,
        sub-subnetworks, and so on. This means that when we are deciding how to route in
        a CIDR environment, we can also describe routes in a hierarchical manner. Many smaller
        networks can be described using a single, higher-level network description that represents
        them all to routers in the rest of the internet. This technique, sometimes called route aggregation,
        reduces routing table size.
        <br /><br />
        Let's refer back to the detailed example I gave in the addressing section on CIDR. An ISP
        started with the block 71.94.0.0/15 and subdivided it multiple times to create smaller blocks
        for itself and its customers. To the customers and users of this block, these smaller blocks
        must be differentiated; the ISP obviously needs to know how to route traffic to the correct
        customer. To everyone else on the Internet, however, these details are unimportant in
        deciding how to route datagrams to anyone in that ISP's block. For example, suppose I am
        using a host with IP address 211.42.113.5 and I need to send to 71.94.1.43. My local router,
        and the main routers on the Internet, don't know where in the 71.94.0.0/15 block that
        address is, and they don't need to know either. They just know that anything with the first 15
        bits containing the binary equivalent of 71.94 goes to the router(s) that handle(s) 71.94.0.0/
        15, which is the aggregated address of the entire block. They let the ISP's routers figure out
        which of its constituent subnetworks contains 71.94.1.43.
        <br /><br />
        Contrast this to the way it would be in a “classful” environment. Each of the customers of
        this ISP would probably have one or more Class C address blocks. Each of these would
        require a separate router entry, and these blocks would have to be known by all routers on
        the Internet. Thus, instead of just one 71.94.0.0/15 entry, there would be dozens or even
        hundreds of entries for each customer network. In the classless scheme, only one entry
        exists, for the “parent” ISP.
    </p>
    <p class="style2">Potential Ambiguities in Classless Routes</p>
    <p class="style1">
        CIDR provides benefits to routing but also increases complexity. Under CIDR, we cannot
        determine which bits are the network ID and which the host ID just from the IP address. To
        make matters worse, we can have networks, subnetworks, sub-subnetworks and so on that
        all have the same base address!
        <br /><br />
        In our example above, 71.94.0.0/15 is the complete network, and subnetwork #0 is
        71.94.0.0/16. They have a different prefix length (the number of network ID bits) but the
        same base address. If a router has more than one match for a network ID in this manner, it
        must use the match with the longest network identifier first, since it represents a more
        specific network description.
    </p>
    <p class="style4">IP Multicasting</p>
    <p class="style1">
        The great bulk of TCP/IP communications uses the Internet Protocol to send messages
        from one source device to one recipient device; this is called unicast communications. This
        is the type of messaging we normally use TCP/IP for; when you use the Internet you are
        using unicast for pretty much everything. For this reason, most of my discussion of IP has
        been oriented around describing unicast messaging.
        <br /><br />
        IP does, however, also support the ability to have one device send a message to a set of
        recipients. This is called multicasting. IP multicasting has been “officially” supported since
        IPv4 was first defined, but has not seen widespread use over the years, due largely to lack
        of support for multicasting in many hardware devices. Interest in multicasting has increased
        in recent years, and support for multicasting was made a standard part of the next generation
        IP version 6 protocol. Therefore, I felt it worthwhile to provide a brief overview of IP
        multicasting. It's a large and very complex subject, so I will not be getting into it in detail—
        you'll have to look elsewhere for a full description of IP multicasting. (Sorry, it was either a
        brief summary or nothing; maybe I'll write more on multicasting in the future.)
        <br /><br />
        The idea behind IP multicasting is to allow a device on an IP internetwork to send
        datagrams not to just one recipient but to an arbitrary collection of other devices. IP multicasting
        is modeled after the similar function used in the data link layer to allow a single
        hardware device to send to various members of a group. Multicasting is relatively easy at
        the data link layer, however, because all the devices can communicate directly. In contrast,
        at the network layer, we are connecting together devices that may be quite far away from
        each other, and must route datagrams between these different networks. This necessarily
        complicates multicasting when done using IP (except in the special case where we use IP
        multicasting only between devices on the same data link layer network.)
        <br /><br />
        There are three primary functions that must be performed to implement IP multicasting:
        addressing, group management, and datagram processing / routing.
    </p>
    <p class="style2">Multicast Addressing</p>
    <p class="style1">
        Special addressing must be used for multicasting. These multicast addresses identify not
        single devices but rather multicast groups of devices that listen for certain datagrams sent
        to them. In IPv4, 1/16th of the entire address space was set aside for multicast addresses:
        the Class D block of the original “classful” addressing scheme.
        <br /><br />
        Special techniques are used to define the meaning of addresses within this block, and to
        define a mapping between IP multicast and data link layer multicast addresses. This is all
        described in the topic on IP multicast addressing; mapping of IP multicast addresses to
        hardware layer multicast addresses is discussed in the section on address resolution.
    </p>
    <p class="style2">Multicast Group Management</p>
    <p class="style1">
        Group management encompasses all of the activities required to set up groups of devices.
        They must be able to dynamically join groups and leave groups, and information about
        groups must be propagated around the IP internetwork. To support these activities,
        additional techniques are required. The Internet Group Management Protocol (IGMP) is the
        chief tool used for this purpose. It defines a message format to allow information about
        groups and group membership to be sent between devices and routers on the internet.
    </p>
    <p class="style2">Multicast Datagram Processing and Routing</p>
    <p class="style1">
        This is probably the most complicated: handling and routing datagrams in a multicast
        environment. There are several issues here:
    </p>
    <ul class="style1">
    <li>Since we are sending from one device to many devices, we need to actually create
        multiple copies of the datagram for delivery, in contrast to the single datagram used in
        the unicast case. Routers must be able to tell when they need to create these copies.</li>
    <li>Routers must use special algorithms to determine how to forward multicast datagrams.
        Since each one can lead to many copies being sent various places, efficiency is
        important to avoid creating unnecessary volumes of traffic.</li>
    <li>Routers must be able to handle datagrams sent to a multicast group even if the source
        is not a group member.</li>
    </ul>
    <p class="style1">
        Routing in a multicast environment requires significantly more intelligence on the part of
        router hardware. Several special protocols, such as the Distance Vector Multicast Routing
        Protocol (DVMRP), and the multicast version of OSPF, are used to enable routers to
        forward multicast traffic effectively. These algorithms must balance the need to ensure that
        every device in a group receives a copy of all datagrams intended for that group, with the
        need to prevent unnecessary traffic from moving across the internetwork.
        <br /><br />
        <strong>Key Concept</strong> : IP multicasting allows special applications to be developed where one
        device sends information to more than one other, across a private internet or the
        global Internet. It is more complex than conventional unicast IP and requires special
        attention particularly in the areas of addressing and routing.
        <br /><br />
        This overview has only scratched the surface of IP multicasting. The complexity involved in
        handling groups and forwarding messages to multicast groups is one reason why support
        for the feature has been quite uneven and as a consequence, it is not used widely. Another
        issue is the demanding nature of multicasting; it uses a great deal of network bandwidth for
        copies of messages, and also requires more work of already-busy routers.
    </p>
    
    
    
     
     
            
    </div>
    <a href="../TcpipStructure.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" width="50" />
    </a>
    </form>
</body>
</html>
