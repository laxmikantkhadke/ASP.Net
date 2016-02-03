<%@ Page Language="C#" %>

<%@ Register src="../Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IPv6</title>
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
                font-size: x-large;
                text-align: justify;
                text-decoration: underline;
            }
           .style4
           {
               color: #CC00FF;
           }
           .style5
           {
               font-family: Arial, Helvetica, sans-serif;
               font-size: x-large;
               text-align: justify;
               font-weight: bold;
           }
        </style>
</head>
<body style="margin-left:auto; margin-right:auto; width:1024px; background-image:url('../Images/Maize.jpg') ; ">

    <form id="form1" runat="server" class="style1">
    
        <uc1:Header ID="Header1" runat="server" />
     <div style="margin-left:auto; margin-right:auto; width:1024px; float:left; ">   
     <h1>Internet Protocol Versin 6 (IPv6)</h1>
     <p class="style1">
        Since 1981, TCP/IP has been built on version 4 of the Internet Protocol. IPv4 was created
        when the giant, world-wide Internet we take for granted today was just a small experimental
        network. Considering how much the Internet has grown and changed over the course of
        two decades, IPv4 has done its job admirably. At the same time, it has been apparent for
        many years that certain limitations in this venerable protocol would hold back the future
        growth of both Internet size and services if not addressed.
        <br /><br />
        Due to the key role that IP plays, changing it is no simple feat. It means a substantial modification
        to the way that nearly everything in TCP/IP operates. However, even though we find
        change difficult, most of us know that it is necessary. For the last several years, development
        of a new version of IP has been underway, officially called Internet Protocol version
        6 (IPv6) and also sometimes referred to as IP Next Generation or IPng. IPv6 is poised to
        take over from IPv4, and will be the basis for the Internet of the future.
        <br /><br />
        In this section I provide a detailed description of IP version 6. Since IPv6 is still IP just like
        IPv4, it performs the same functions: addressing, encapsulation, fragmentation and
        reassembly, and datagram delivery and routing. For this reason, the subsections and topics
        in this discussion of IPv6 are patterned after the subsections in the section on IPv4. They
        include a discussion of IPv6 concepts and issues, coverage of IPv6 addressing and data
        packaging, and a look at how version 6 does fragmentation, reassembly and routing.
        <br /><br />
        <strong>Note</strong> : IPv6 is obviously still under development, and as such, writing a section
        such as this one is like trying to hit a moving target. This is probably why most
        TCP/IP guides don't say much about IPv6—it keeps changing! I think it is
        important, so I have described it as defined on the date of publishing. However, since
        changes are being made to both IPv6 standards and implementation every month, there is
        a higher probability of information in this particular section being out of date.
     </p>
     <p class="style3">IPv6 Overview, Changes and Transition</p>
     <p class="style1">
        IPv6 is destined to be the future of the Internet Protocol, and due to IP's critical importance,
        it will form the basis for the future of TCP/IP and the Internet as well. In fact, it's been under
        development since the middle of the last decade, and a real IPv6 internetwork has been
        used for testing for a number of years as well. Despite this, many people don't know much
        about IPv6, other than it's a newer version of IP. Some have never even heard of it at all!
        We're going to rectify that, of course—but before we delve into the important changes made
        in version 6 to how IP addressing, packaging, fragmentation and other functions, let's start
        with a “bird's eye” view of IPv6.
        <br /><br />
        In this section I provide a brief higher-level overview of IPv6, including a look at how it
        differs from IPv4 in general terms. I begin with a brief overview of IPv6 and why it was
        created. I list the major changes made in IPv6 and additions to the protocol from the current
        version. I also explain some of the difficulties associated with transitioning the enormous
        global Internet from IPv4 to IPv6.
     </p>
     <p class="style3">IPv6 Motivation and Overview</p>
     <p class="style1">
         “If it ain't broke, don't fix it.” I consider this one of my favorite pieces of folk wisdom. I
        generally like to stick with what works, as do most people. And IP version 4 works pretty
        darned well. It's been around for decades now and has survived the growth of the Internet
        from a small research network into a globe-spanning powerhouse. So, like a trusty older car
        that we've operated successfully for years, why should we replace it if it still gets the job
        done?
        <br /><br />
        Like that older car, we could continue to use IPv4 for the foreseeable future. The question
        is: at what cost? An older car can be kept in good working order if you are willing to devote
        the time and money it takes to maintain and service it. However, it will still be limited in
        some of its capabilities. Its reliability may be suspect. It won't have the latest features. With
        the exception of those who like to work on cars as a hobby, it eventually stops making
        sense to keep fixing up an older vehicle.
        <br /><br />
        In some ways, this isn't even that great of an analogy. Our highways aren’t all that much
        different than they were in the 1970s, and most other issues related to driving a car haven't
        changed all that much in the last 25 years either. The choice of updating a vehicle or not is
        based on practical considerations more than necessity.
        <br /><br />
        In contrast, look at what has happened to the computer and networking worlds in the last 25
        years! Today's handheld PCs can do more than the most powerful servers could back then.
        Networking technologies are 100 or even 1000 times as fast. The number of people
        connecting to the global Internet has increased by an even larger factor. And the ways that
        computers communicate have, in many cases, changed dramatically.
        <br /><br />
        IPv4 could be considered in some ways like an older car that has been meticulously
        maintained and repaired over time. It gets the job done, but its age is starting to show. The
        main problem with IPv4 is its relatively small address space, a legacy of the decision to use
        only 32 bits for the IP address. Under the original “classful” addressing allocation scheme,
        we would have probably already run out of IPv4 addresses by now. Moving to classless
        addressing has helped postpone this, as have technologies like IP Network Address Translation
        (NAT) that allow privately-addressed hosts to access the Internet.
        <br /><br />
        In the end, however, these represent patch jobs and imperfect repairs applied to keep the
        aging automobile that is IPv4 on the road. The core problem, the 32-bit address space that
        is too small for the current and future size of the Internet, can only be addressed by moving
        to a larger address space. This was the primary motivating factor in creating the next
        version of the Internet Protocol, IPv6.
        <br /><br />
        <strong>Note</strong> : The reason why the successor to IPv4 is version 6 and not version 5 is
        because version number 5 was used to refer to an experimental protocol called
        the Internet Stream Protocol, which was never widely deployed.
     </p>
     <p class="style2">IPv6 Standards</p>
     <p class="style1">
        IPv6 represents the first major change to the Internet Protocol since IPv4 was formalized in
        1981. For many years, its core operation was defined in a series of RFCs published in
        1998, RFCs 2460 through 2467. The most notable of these are the main IPv6 standard,
        RFC 2460 (Internet Protocol, Version 6 (IPv6) Specification), and documents describing the
        two “helper” protocols for IPv6: RFC 2461, which describes the IPv6 Neighbor Discovery
        Protocol, and RFC 2463, which describes ICMP version 6 (ICMPv6) for IPv6.
        <br /><br />
        In addition to these, two documents were also created in 1998 to discuss more about IP
        addressing: RFC 2373 (IP Version 6 Addressing Architecture) and RFC 2374 (An IPv6
        Aggregatable Global Unicast Address Format). Due to changes in how IPv6 addressing
        was to be implemented, these were updated in 2003 by RFC 3513 (Internet Protocol
        Version 6 (IPv6) Addressing Architecture) and RFC 3587 (IPv6 Global Unicast Address
        Format).
        <br /><br />
        Many other RFCs define more specifics of how IPv6 functions, and also describe IPv6-
        compatible versions of other TCP/IP protocols like DNS and DHCP. IPv6 is still very much a
        work in progress with new standards for it being proposed and adopted on a regular basis.
        Since IPv6 is the version of IP designed for the next generation of the Internet, it is also
        sometimes called IP Next Generation or IPng. Personally, I don't care for this name; it
        reminds me too much of Star Trek: The Next Generation. A great show that my wife and I
        watch regularly, but still. Regardless of its name, IPv6 or IPng was designed to take TCP/IP
        and the Internet “where none have gone before”.
     </p>
     <p class="style2">Design Goals of IPv6</p>
     <p class="style1">
        The problem of addressing was the main motivation for creating IPv6. Unfortunately, this
        has caused many people to think that the address space expansion is the only change
        made in IP, which is definitely not the case. Since making a change to IP is such a big deal,
        it's something done rarely. It made sense to correct not just the addressing issue but to
        update the protocol in a number of other respects as well, to ensure its viability. In fact, even
        the addressing changes in IPv6 go far beyond just adding more bits to IP address fields.        
        <br /><br />
        Some of the most important goals in designing IPv6 include:
     </p>
     <ul class="style1">
     <li><p><strong>Larger Address Space :</strong> This is what we discussed earlier. IPv6 had to provide more
        addresses for the growing Internet.</p></li>
     <li><p><strong>Better Management of Address Space :</strong> It was desired that IPv6 not only include
        more addresses, but a more capable way of dividing the address space and using the
        bits in each address.</p></li>
     <li><p><strong>Elimination of “Addressing Kludges” :</strong> Technologies like NAT are effectively
        “kludges” that make up for the lack of address space in IPv4. IPv6 eliminates the need
        for NAT and similar workarounds, allowing every TCP/IP device to have a public
        address.</p></li>
     <li><p><strong>Easier TCP/IP Administration :</strong> The designers of IPv6 hoped to resolve some of the
        current labor-intensive requirements of IPv4, such as the need to configure IP
        addresses. Even though tools like DHCP eliminate the need to manually configure
        many hosts, it only partially solves the problem.</p></li>
     <li><p><strong>Modern Design For Routing :</strong> In contrast to IPv4, which was designed before we all
        had any idea what the modern Internet would be like, IPv6 was created specifically for
        efficient routing in our current Internet, and with the flexibility for the future.</p></li>
     <li><p><strong>Better Support For Multicasting :</strong> Multicasting was an option under IPv4 from the
        start, but support for it has been slow in coming.</p></li>
     <li><p><strong>Better Support For Security :</strong> IPv4 was designed at a time when security wasn't
        much of an issue, because there were a relatively small number of networks on the
        internet, and their administrators often knew each other. Today, security on the public
        Internet is a big issue, and the future success of the Internet requires that security
        concerns be resolved.</p></li>
     <li><p><strong>Better Support For Mobility :</strong> When IPv4 was created, there really was no concept of
        mobile IP devices. The problems associated with computers that move between
        networks led to the need for Mobile IP. IPv6 builds on Mobile IP and provides mobility
        support within IP itself.</p></li>
     </ul>
     <p class="style2">IPv6: The Evolution of IP</p>
     <p class="style1">
        At the same time that IPv6 was intended to address the issues above and many others with
        traditional IP, we should keep in mind that its changes are evolutionary, not revolutionary.
        During the many discussions in the IETF in the 1990s, there were some who said that while
        we were updating IP, perhaps we should make a complete, radical change to a new type of
        internetworking protocol completely. The end decision was not to do this, but to define a
        more capable version of the IP we've been using all along.
        <br /><br />
        The reason for this is simple: IP, like our trusted older car, works. IPv6 represents an
        update that strives to add to the best characteristics of IPv4 rather than making everyone
        start over from scratch with something new and unproven. This design ensures that
        whatever pain may result from the change from IPv4 to IPv6 can be managed, and
        hopefully, minimized.
        <br /><br />
        <strong>Key Concept</strong>: The new version of the Internet Protocol is Internet Protocol Version 6
        (IPv6). It was created to correct some of the significant problems of IPv4, especially
        the looming exhaustion of the IPv4 address space, and to improve the operation of
        the protocol as a whole, to take TCP/IP in to the future
     </p>
     <p class="style3">Major Changes And Additions In IPv6</p>
     <p class="style1">
        In the preceding overview, I explained that the primary motivator for creating a new version
        of IP was to fix the problems with addressing under IPv4. But as we also saw there,
        numerous other design goals existed for the new protocol as well. Once the decision was
        made to take the significant step of creating a new version of a protocol as important as IP,
        it made sense to use the opportunity to make as many improvements as possible.
        <br /><br />
        Of course, there is still the problem of the pain of change to worry about, so each potential
        change or addition in IPv6 had to have benefits that would outweigh its costs. The resulting
        design does a good job of providing useful advantages while maintaining most of the core
        of the original Internet Protocol. The following list provides a summary of the most important
        changes between IPv4 and IPv6, showing some of the ways that the IPv6 team met the
        design goals for the new protocol:
     </p>
     <ul class="style1">
     <li><p><strong>Larger Address Space :</strong> IPv6 addresses are 128 bits long instead of 32 bits. This
        expands the address space from around 4 billion addresses to, well, an astronomic
        number (over 300 trillion trillion trillion addresses).</p></li>
     <li><p><strong>Hierarchical Address Space :</strong> One reason why the IPv6 address size was expanded
        so much was to allow it to be hierarchically divided to provide a large number of each
        of many classes of addresses.</p></li>
     <li><p><strong>Hierarchical Assignment of Unicast Addresses :</strong> A special global unicast address
        format was created to allow addresses to be easily allocated across the entire Internet.
        It allows for multiple levels of network and subnetwork hierarchies both at the ISP and
        organizational level. It also permits generating IP addresses based on underlying
        hardware interface device IDs such as Ethernet MAC addresses.</p></li>
     <li><p><strong>Better Support for Non-Unicast Addressing :</strong> Support for multicasting is improved,
        and support is added for a new type of addressing: anycast addressing. This new kind
        of addressing basically says “deliver this message to the easiest-to-reach member of
        this group”, and potentially enables new types of messaging functionality.</p></li>
     <li><p><strong>Autoconfiguration and Renumbering :</strong> A provision is included to allow easier
        autoconfiguration of hosts and renumbering of the IP addresses in networks and
        subnetworks as needed. A technique also exists for renumbering router addresses.</p></li>
     <li><p><strong>New Datagram Format :</strong> The IP datagram format has been redefined and given new
        capabilities. The main header of each IP datagram has been streamlined, and support
        added for easily extending the header for datagrams requiring more control
        information.</p></li>
     <li><p><strong>Support for Quality of Service :</strong> IPv6 datagrams include QoS features, allowing
        better support for multimedia and other applications requiring quality of service.</p></li>
     <li><p><strong>Security Support :</strong> Security support is designed into IPv6 using the authentication and
        encryption extension headers and other features.</p></li>
     <li><p><strong>Updated Fragmentation and Reassembly Procedures :</strong> The way that fragmentation
        and reassembly of datagrams works has been changed in IPv6, to improve efficiency
        of routing and better reflect the realities of today's networks.</p></li>
     <li><p><strong>Modernized Routing Support :</strong> The IPv6 protocol is designed to support modern
        routing systems, and to allow expansion as the Internet grows.</p></li>
     <li><p><strong>Transition Capabilities :</strong> Since it was recognized from the start that going from IPv4 to
        IPv6 is a big move, support for the IPv4/IPv6 transition has been provided in numerous
        areas. This includes a plan for interoperating IPv4 and IPv6 networks, mapping
        between IPv4 and IPv6 addresses and more.</p></li>
     </ul>
     <p class="style1">
        The rest of the sections on IPv6 provide much more detail on these changes and additions
        to IP. You'll notice that the majority of these are related to addressing, since that is where
        the greatest number of important changes have been made in IPv6. Of course, routing and
        addressing are closely related, and the changes to addressing has had a big impact on
        routing as well.
        <br /><br />
        Another change that I should mention is that with the introduction of IPv6, several other
        TCP/IP protocols that deal intimately with IP have also had to be updated. One of these is
        ICMP, the most important support protocol for IPv4, which has been revised through the
        creation of ICMPv6 for IPv6. An addition to TCP/IP is the Neighbor Discovery (ND) protocol,
        which performs several functions for IPv6 that were done by ARP and ICMP in version 4.
     </p>
     <p class="style3">Transition from IPv4 to IPv6</p>
     <p class="style1">
        The Internet Protocol is the foundation of the TCP/IP protocol suite and the Internet, and
        thus somewhat comparable to the foundation of a house in terms of its structural importance.
        Given this, changing IP is somewhat analogous to making a substantial modification
        to the foundation of your house. Since IP is used to connect together many devices, it is in
        fact, like changing not just your house, but every house in the world!
        <br /><br />
        How do you change the foundation of a house? Very carefully. The same caution is required
        with the implementation of IPv6. While to most people IPv6 is something “new”, the reality is
        that the planning and development of IPv6 has been underway for nearly a full decade, and
        if we were starting from scratch the protocol would have been ready for action years ago.
        However, there is a truly enormous installed base of IPv4 hardware and software. This
        means the folks who develop TCP/IP could not just “flip a switch” and have everyone move
        over to using IPv6. Instead, a transition from IPv4 to IPv6 had to be planned.
     </p>
     <p class="style2">IPv4-IPv6 Transition: Differences of Opinion</p>
     <p class="style1">
        The transition is already underway, though most people don't know about it. As I said,
        development of IPv6 itself is pretty much complete, though work continues on refining the
        protocol and also on development of IPv6-compatible versions of other protocols. The
        implementation of IPv6 began with the creation of development networks to test IPv6's
        operation. These were connected together to form an experimental IPv6 internetwork called
        the 6BONE (which is a contraction of the phrase “IPv6 backbone”.) This internetwork has
        been in operation for several years.
        <br /><br />
        Experimental networks are well and good, but of course the big issue is transitioning the
        “real” Internet to IPv6—and here, opinion diverges rather quickly. In one camp are the
        corporations, organizations and individuals who are quite eager to transition to IPv6 quickly,
        to gain the many benefits it promises in the areas of addressing, routing and security.
        Others are taking a much more cautious approach, noting that the dire predictions in the
        mid-1990s of IPv4's imminent doom have not come to pass, and arguing that we should
        take our time to make sure IPv6 is going to work on a large scale.
        <br /><br />
        These two groups will continue to play tug-of-war for the next few years, but it seems that
        the tide is now turning towards those who want to speed up the now-years-long transition.
        The move towards adoption of IPv6 as a production protocol is being spearheaded by a
        number of groups and organizations. IPv6 has a lot of support in areas outside the United
        States, many of which are running short of IPv4 addresses due to small allocations relative
        to their size. One such area is Asia, a region with billions of people, rapidly-growing Internet
        use and a shortage of IPv4 addresses.
        <br /><br />
        Within the United States, which has the lion's share of IPv4 addresses (due to the Internet
        having been developed in the U.S.A.), there seems to be a bit less enthusiasm for rapid
        IPv6 deployment. Even here, however, IPv6 got a major “shot in the arm” in July 2003 when
        the United States Department of Defense (DoD) announced that starting in October of that
        year, it would only purchase networking products that included compatibility with IPv6. The
        DoD—which of course was responsible for the development of the Internet in the first
        place—hopes to be fully transitioned to IPv6 by 2008. This will likely have a big impact on
        the plans of other governmental and private organizations in the United States.
        <br /><br />
        Of course, the creators of IPv6 knew from the start that transition was going to be an
        important issue with the new protocol. IPv6 is not compatible with IPv4 because the
        addressing system and datagram format are different. Yet the IPv6 designers knew that
        since the transition would take many years, it was necessary that they provide a way for
        IPv4 and IPv6 hosts to interoperate. Consider that in any transition there are always “stragglers”.
        Like the old Windows 3.11 PC in the corner that you still need to use once in a while,
        even when most of the Internet is IPv6 there will still likely be some devices that are still on
        IPv4 because they were never upgraded.
     </p>
     <p class="style2">IPv4-IPv6 Transition Methods</p>
     <p class="style1">
        Due to the time that change takes, IETF has been working on specific provisions to allow a
        smooth transition from version 4 to version 6, and hardware and software interoperability
        solutions to let newer IPv6 devices access IPv4 hosts. A technique was included in IPv6 to
        allow administrators to embed IPv4 addresses within IPv6 addresses. Special methods are
        defined to handle interoperability, including:
     </p>
     <ul class="style1">
     <li><p><strong>“Dual Stack” Devices :</strong> Routers and some other devices may be programmed with
        both IPv4 and IPv6 implementations to allow them to communicate with both types of
        hosts.</p></li>
     <li><p><strong>IPv4/IPv6 Translation :</strong> “Dual stack” devices may be designed to accept requests from
        IPv6 hosts, convert them to IPv4 datagrams, send the datagrams to the IPv4 destination
        and then process the return datagrams similarly.</p></li>
     <li><p><strong>IPv4 Tunneling of IPv6 :</strong> IPv6 devices that don't have a path between them consisting
        entirely of IPv6-capable routers may be able to communicate by encapsulating IPv6
        datagrams within IPv4. In essence, they would be using IPv6 on top of IPv4; two
        network layers. The encapsulated IPv4 datagrams would travel across conventional
        IPv4 routers.</p></li>
     </ul>
     <p class="style1">
        Bear in mind that these solutions generally only address backward compatibility, to allow
        IPv6 devices to talk to IPv4 hardware. Forward compatibility between IPv4 and IPv6 is not
        possible because IPv4 hosts cannot communicate with IPv6 hosts—they lack the
        knowledge of how IPv6 works. It is possible that certain special adaptations might be
        created to allow IPv4 hosts to access IPv6 hosts. But eventually, all IPv4 devices of any
        importance will want to migrate to IPv6.
        <br /><br />
        The IETF has done such a good job in the past with introducing new technologies, and so
        much effort has been put into the IPv6 transition, that I am quite confident that the transition
        to IPv6 will come off with few, if any, problems. One good thing about the transition is that
        IPv4 is, at the present time, still getting the job done, so there is no big hurry to make the
        move to version 6. While technologies such as CIDR and NAT are “band-aids” on IPv4, they
        have been very successful ones in extending the useful life of the aging protocol.
     </p>
     <p class="style3">IPv6 Addressing</p>
     <p class="style1">
        The primary motivation for creating IPv6 was to rectify the addressing problems in IPv4.
        More addresses were required, but more than this, the IPv6 designers desired a way of
        interpreting, assigning and using them that was more consonant with modern internetworking.
        Based on this, it's no surprise that many of the changes in IPv6 are associated
        with IP addressing. The IPv6 addressing scheme is similar in general concept to IPv4
        addressing, but has been completely overhauled to create an addressing system capable
        of supporting continued Internet expansion and new applications for the foreseeable future.
        <br /><br />
        This section describes the concepts and methods associated with addressing under IPv6. I
        begin with a look at some addressing generalities in version 6, including the addressing
        model, address types size and address space. I discuss the unique and sometimes
        confusing representations and notations used for IPv6 addresses and prefixes. Then I look
        at how addresses are arranged and allocated into types, beginning with an overall look at
        address space composition and then the global unicast address format. I describe the new
        methods used for mapping IP addresses to underlying physical network addresses. I then
        describe special IPv6 addressing issues, including reserved and private addresses, IPv4
        address embedding, anycast and multicast addresses, and autoconfiguration and renumbering
        of addresses.
        <br /><br />
        Addressing under IPv6 is outlined in the main IPv6 RFC, RFC 2460 (Internet Protocol,
        Version 6 (IPv6) Specification). However, most of the details of IPv6 addressing are
        contained in two other standards: RFC 3513 (Internet Protocol Version 6 (IPv6) Addressing
        Architecture) and RFC 3587 (IPv6 Global Unicast Address Format). These replaced the
        1998 standards RFC 2373 (IP Version 6 Addressing Architecture) and RFC 2374 (An IPv6
        Aggregatable Global Unicast Address Format).
     </p>
     <p class="style3">IPv6 Addressing Overview: Addressing Model and Address Types</p>
     <p class="style1">
        In the IPv6 overview section I explained that IPv6 represents a significant update to the
        Internet Protocol, but that its modifications and additions are made without changing the
        core nature of how IP works. Addressing is the place where most of the differences
        between IPv4 and IPv6 are seen, but the changes are mostly in how addresses are implemented
        and used. The overall model used for IP addressing in IPv6 is pretty much the
        same as it was in IPv4; some aspects have not changed at all, while others have changed
        only slightly.
     </p>
     <p class="style2">Unchanged Aspects of Addressing in IPv6</p>
     <p class="style1">
        Some of the general characteristics of the IPv6 addressing model that are basically the
        same as in IPv4:
     </p>
     <ul class="style1">
     <li><p><strong>Core Functions of Addressing :</strong> The two main functions of addressing are still
        network interface identification and routing. Routing is facilitated through the structure
        of addresses on the internetwork.</p></li>
     <li><p><strong>Network Layer Addressing :</strong> IPv6 addresses are still the ones associated with the
        network layer in TCP/IP networks, and are distinct from data link layer (also
        sometimes called physical) addresses.</p></li>
     <li><p><strong>Number of IP Addresses Per Device :</strong> Addresses are still assigned to network interfaces,
        so a regular host like a PC will usually have one (unicast) address, and routers
        will have more than one, for each of the physical networks to which it connects.</p></li>
     <li><p><strong>Address Interpretation and Prefix Representation :</strong> IPv6 addresses are like
        classless IPv4 addresses in that they are interpreted as having a network identifier
        part and a host identifier part, but that the delineation is not encoded into the address
        itself. A prefix length number, using CIDR-like notation, is used to indicate the length of
        the network ID (prefix length).</p></li>
     <li><p><strong>Private and Public Addresses :</strong> Both types of addresses exist in IPv6, though they
        are defined and used somewhat differently.</p></li>
     </ul>
     <p class="style2">IPv6 Address Types</p>
     <p class="style1">
        One important change in the addressing model of IPv6 is the address types supported.
        IPv4 supported three address types: unicast, multicast and broadcast. Of these, the vast
        majority of actual traffic was unicast. IP multicast support was not widely deployed until
        many years after the Internet was established, and continues to be hampered by various
        issues. Use of broadcast in IP had to be severely restricted for performance reasons (we
        don't want any device to be able to broadcast across the entire Internet!)
        <br /><br />
        IPv6 also supports three address types, but with some changes:
     </p>
     <ul class="style1">
     <li><p><strong>Unicast Addresses :</strong> These are standard unicast addresses as in IPv4, one per host
        interface.</p></li>
     <li><p><strong>Multicast Addresses :</strong> These are addresses that represent various groups of IP
        devices: a message sent to a multicast address goes to all devices in the group. IPv6
        includes much better multicast features and many more multicast addresses than
        IPv4. Since multicast under IPv4 was hampered in large part due to lack of support of
        the feature by many hardware devices, support for multicasting is a required, not
        optional, part of IPv6.</p></li>
     <li><p><strong>Anycast Addresses :</strong> Anycast addressing is used when a message must be sent to
        any member of a group, but does not need to be sent to them all. Usually the member
        of the group that is easiest to reach will be sent the message. One common example
        of how anycast addressing could be used is in load sharing amongst a group of routers
        in an organization.</p></li>
     </ul>
     <p class="style1">
        <strong>Key Concept</strong>: IPv6 has unicast and multicast addresses like IPv4. There is,
        however, no distinct concept of a broadcast address in IPv6. A new type of address,
        the anycast address, has been added to allow a message to be sent to any one
        member of a group of devices.
     </p>
     <p class="style2">Implications of the Changes to Address Types in IPv6</p>
     <p class="style1">
        Broadcast addressing as a distinct addressing method is gone in IPv6. Broadcast functionality
        is implemented using multicast addressing to groups of devices. A multicast group to
        which all nodes belong can be used for broadcasting in a network, for example.
        <br /><br />
        An important implication of the creation of anycast addressing is removal of the strict
        uniqueness requirement for IP addresses. Anycast is accomplished by assigning the same
        IP address to more than one device. The devices must also be specifically told that they are
        sharing an anycast address, but the addresses themselves are structurally the same as
        unicast addresses.
        <br /><br />
        The bulk of the remainder of this section focuses on unicast addressing, since it is by far the
        most important type. Multicast and anycast addressing are given special attention
        separately.
     </p>
     <p class="style3">IPv6 Address Size and Address Space</p>
     <p class="style1">
        Of all the changes introduced in IPv6, easily the most “celebrated” is the increase in the
        size of IP addresses, and as a result, the increase in the size of the address space as well.
        It's not surprising that these sizes were increased compared to IPv4—everyone has known
        for years that the IPv4 address space was too small to support the future of the Internet.
        What's remarkable is just how much the increase is, and what the implications are for how
        Internet addresses are used.
     </p>
     <p class="style2">IPv6 Address Size</p>
     <p class="style1">
        In IPv4, IP addresses are 32 bits long; these are usually grouped into four octets of eight
        bits each. The theoretical IPv4 address space is 232, or 4,294,967,296 addresses. To
        increase this address space we simply increase the size of addresses; each extra bit we
        give to the address size doubles the address space. Based on this, some folks expected
        the IPv6 address size to increase from 32 to 48 bits, or perhaps 64 bits. Either of these
        numbers would have given a rather large number of addresses.
        <br /><br />
        However, IPv6 addressing doesn't use either of these figures; instead, the IP address size
        jumps all the way to 128 bits, or sixteen 8-bit octets/bytes. This represents a truly
        remarkable increase in the address size, which surprised a lot of people.
     </p>
     <p class="style2">IPv6 Address Space</p>
     <p class="style1">
        The 128 bits of IPv6 addresses mean the size of the IPv6 address space is, quite literally,
        astronomical; like the numbers that describe the number of stars in a galaxy or the distance
        to the furthest pulsars, the number of addresses that can be supported in IPv6 is mindboggling.
        See Figure for an idea of what I mean by “astronomical”.
     </p>
     <p style="text-align:center">
         <img src="../Images/ipv6/ipv4_and_ipv6_address_space_size.png" 
         alt="ipv4 and ipv6 address space size" />
         </p>
     <p class="style1">
        Since IPv6 addresses are 128 bits long, the theoretical address space if all addresses were
        used is 2<sup>128</sup> addresses. This number, when expanded out, is
        340,282,366,920,938,463,463,374,607,431,768,211,456, which is normally expressed in
        scientific notation as about 3.4*10<sup>38</sup> addresses. That's about 340 trillion, trillion, trillion
        addresses. As I said, it's pretty hard to grasp just how large this number is. Consider:
     </p>
     <ul class="style1">
     <li><p>It's enough addresses for many trillions of addresses to be assigned to every human
        being on the planet.</p></li>
      <li><p>The earth is about 4.5 billion years old. If we had been assigning IPv6 addresses at a
        rate of 1 billion per second since the earth was formed, we would have by now used up
        less than one trillionth of the address space.</p></li>
       <li><p>The earth's surface area is about 510 trillion square meters. If a typical computer has a
        footprint of about a tenth of a square meter, we would have to stack computers 10
        billion high blanketing the entire surface of the earth to use up that same trillionth of
        the address space.</p></li>
     </ul>
     <p class="style1">
        Okay, I think you get the idea. It's clear that one goal of the decision to go to 128-bit
        addresses is to make sure that we will never run out of address space again, and it seems
        quite likely that this will be the case.
     </p>
     <p class="style2">Why Were IPv6 Addresses Made So Large?</p>
     <p class="style1">
        However, there are drawbacks to having such a huge address space too. Consider that
        even with a 64-bit address, we'd have a very large address space: 2<sup>64</sup> is
        18,446,744,073,709,551,616 or about 18 million trillion, still probably more addresses than
        we will ever need. However, by going instead to 128 bits we have made dealing with IP
        addresses unruly (as we'll see in the next topic) and we have also increased overhead,
        since every datagram header or other place where IP addresses are referenced must use
        16 bytes for each address instead of the 4 that were needed in IPv4, or the 8 that might
        have been required with a 64-bit address.
        <br /><br />
        So why the “overkill” of going to 128 bits? The main reason is flexibility. Even though we
        can have a couple zillion addresses if we allocate them one at a time, that makes
        assignment difficult. We got rid of class-oriented addressing in IPv4 due to the fact that it
        wasted address space, which is true. The reality, though, is that being able to “waste”
        address space is a useful luxury.
        <br /><br />
        Having 128 bits allows us to divide the address space and assign various purposes to
        different bit ranges while still not having to worry about running out of space. In the topic
        describing the IPv6 global unicast address format we'll see one way that those 128 bits are
        put to good use; it allows us to create a hierarchy of networks while still saving 64 bits for
        host IDs, which has its own advantages.
     </p>
     <p class="style3">IPv6 Address and Address Notation and Prefix Representation</p>
     <p class="style1">
        Increasing the size of IP addresses from 32 bits to 128 bits expands the address space to a
        gargantuan size, ensuring that we will never again run out of IP addresses, and allowing us
        flexibility in how they are assigned and used. Unfortunately, there are some drawbacks to
        this method, and one of them is that 128-bit numbers are very large, which makes them
        awkward and difficult to use.
     </p>
     <p class="style2">IPv6 Addresses: Too Long For Dotted Decimal Notation</p>
     <p class="style1">
        Computers work in binary, and they have no problem dealing with long strings of ones and
        zeroes, but humans find them confusing. Even the 32-bit addresses of IPv4 are
        cumbersome for us to deal with, which is why we use dotted decimal notation for them
        unless we need to work in binary (as with subnetting). However, IPv6 addresses are so
        much larger than IPv4 addresses that even using dotted decimal notation becomes
        problematic. To use this notation, we would split the 128 bits into 16 octets and represent
        each with a decimal number from 0 to 255. However, we would end up not with 4 of these
        numbers, but 16. A typical IPv6 address in this notation would appear as follows:
        <br /><br />
        128.91.45.157.220.40.0.0.0.0.252.87.212.200.31.255
        <br /><br />
        The binary and dotted decimal representations of this address are shown near the top of
        Figure. In either case, the word “elegant” doesn't exactly spring to mind.
     </p>
     <p style="text-align:center">
         <img src="../Images/ipv6/binari_decimal_hex_representation_ipv6.png"
         alt="binari decimal hex representation ipv6" />
         </p>
     <p class="style2">IPv6 Address Hexadecimal Notation</p>
     <p class="style1">
        To make addresses shorter, the decision was made in IPv6 to change the primary method
        of expressing addresses to use hexadecimal instead of decimal. The advantage of this is
        that it requires fewer characters to represent an address, and that converting from hex to
        binary and back again is much easier than converting from binary to decimal or vice-versa.
        <br /><br />
        The disadvantage is that many people, even computer people, find hexadecimal difficult to
        comprehend and work with, especially because the notion of 16 values in each digit is a bit
        strange. (I'm not one of them, but then I'm a geek.)
        <br /><br />
        The hexadecimal notation used for IPv6 addresses is similar to the same method used for
        IEEE 802 MAC addresses, for technologies like Ethernet. There, 48 bits are represented by
        six octets, each octet being a hexadecimal number from 0 to FF, separated by a dash or
        colon, like this:
        <br /><br />
        0A-A7-94-07-CB-D0
        <br /><br />
        Since IPv6 addresses are larger, they are instead grouped into eight 16-bit words,
        separated by colons, to create what is sometimes called colon hexadecimal notation, again
        shown in above figure. 
        <br /><br />
        So, the IPv6 address given in the example above would be expressed as:
        <br /><br />
        805B:2D9D:DC28:0000:0000:FC57:D4C8:1FFF
        <br /><br />
        To keep size down, leading zeroes can be suppressed in the notation, so we can immediately
        reduce this to:
        <br /><br />
        805B:2D9D:DC28:0:0:FC57:D4C8:1FFF
        <br /><br />
        Hmm. Well, it's definitely shorter than dotted decimal, but still not much fun to look at. When
        you are dealing with numbers this big, there's only so much you can do. This is part of why
        under IPv6, use of DNS names for hosts becomes much more important than it is in IPv4;
        who could remember a hex address that long?!
     </p>
     <p class="style2">Zero Compression in IPv6 Addresses</p>
     <p class="style1">
        Fortunately, there is a short-cut that can be applied to shorten some addresses even
        further. This technique is sometimes called zero compression. The method allows a single
        string of contiguous zeroes in an IPv6 address to be replaced by a double-colon. So, for
        example, the address above could be expressed as:
        <br /><br />
        805B:2D9D:DC28::FC57:D4C8:1FFF
        <br /><br />
        We know how many zeroes are replaced by the “::” because we can see how many fullyexpressed
        (“uncompressed”) hex words are in the address. In this case there are six, so the
        “::” represents two zero words. To prevent ambiguity, the double-colon can appear only
        once in any IP address, because if it appeared more than once we could not tell how many
        zeroes were replaced in each instance. So, if our example address were
        <br /><br />
        805B:2D9D:DC28:0:0:FC57:0:0, we could replace either the first pair of zeroes or the
        second, but not both.
        <br /><br />
        Zero compression doesn't make our example much shorter, but due to how IPv6 addresses
        are structured, long strings of zeroes are common. For example, consider this address:
        <br /><br />
        FF00:4501:0:0:0:0:0:32
        <br /><br />
        With compression, this could be expressed as just:
        <br /><br />
        FF00:4501::32
        <br /><br />
        It works even better on special addresses. The full IPv6 loopback address is:
        <br /><br />
        0:0:0:0:0:0:0:1
        <br /><br />
        With compression, this is simply:
        <br /><br />
        ::1
        <br /><br />
        For even more fun, consider the Even more odd, the IPv6 “unspecified” address:
        <br /><br />
        0:0:0:0:0:0:0:0
        <br /><br />
        Apply zero compression to an address that is all zeroes, and what do you get? That’s right:
        <br /><br />
        ::
        <br /><br />
        No numbers at all! Of course thinking of “::” as an address does take some getting used to.
        <br /><br />
        <strong>Key Concept</strong>: For brevity, IPv6 addresses are represented using eight sets of four
        hexadecimal digits, a form called colon hexadecimal notation. Additional techniques,
        called zero suppression and zero compression, are used to reduce the size of
        displayed addresses further by removing unnecessary zeroes from the presentation of the
        address.
     </p>
     <p class="style2">IPv6 Mixed Notation</p>
     <p class="style1">
        There is also an alternative notation used in some cases, especially for expressing IPv6
        addresses that embed IPv4 addresses. For these, it is useful to show the IPv4 portion of the
        address in the older dotted decimal notation, since that's what we use for IPv4. Since
        embedding uses the last 32 bits for the IPv4 address, the notation has the first 96 bits in
        colon hexadecimal notation, and the last 32 bits in dotted decimal. So to take our same
        example again from above, in mixed notation it would be shown as:
        <br /><br />
        805B:2D9D:DC28::FC57:<span class="style4">212.200.31.255</span>
        <br /><br />
        This isn't really a great example of mixed notation, because embedding usually involves
        long strings of zeroes followed by the IPv4 address. Thus, zero compression comes in very
        handy here. Instead of seeing something like this:
        <br /><br />
        0:0:0:0:0:0:212.200.31.255
        <br /><br />
        You will typically see just:
        <br /><br />
        ::212.200.31.255
        <br /><br />
        At first glance this appears to be an IPv4 address; you have to keep a close eye on those
        colons in IPv6!
        <br /><br />
        <strong>Key Concept</strong>: A special mixed notation is defined for IPv6 addresses whose last 32
        bits contain an embedded IPv4 address. In this notation, the first 96 bits are
        displayed in regular colon hexadecimal notation, and the last 32 bits in IPv4-style
        dotted decimal.
     </p>
     <p class="style2">IPv6 Address Prefix Length Representation</p>
     <p class="style1">
        Like IPv4 classless addresses, IPv6 addresses are fundamentally divided into a number of
        network ID bits followed by a number of host ID bits. The network identifier is called the
        prefix, and the number of bits used is the prefix length. This prefix is represented by
        following the address by a slash and then putting the prefix length after the slash. This is the
        same method used for classless IPv4 addressing with CIDR. For example, if the first 48 bits
        of our example address were the network ID (prefix), then we would express this as
        805B:2D9D:DC28::FC57:D4C8:1FFF/48.
        <br /><br />
        As in IPv4, specifiers for whole networks will typically end in long strings of zeroes. These
        can be replaced by “::” using zero compression. For example, the 48 bit network ID for the
        example above is 805B:2D9D:DC28:0:0:0:0:0/48, or 805B:2D9D:DC28::/48. You must
        include the “::” if replacing the trailing zeroes.
     </p>
     <p id="IPv6AddSpAllocation" class="style3">IPv6 Address Space Allocation</p>
     <p class="style1">
        After dealing for so many years with the very small IPv4 address space, the enormous
        number of addresses in IPv6 must have made the IETF engineers feel like kids in a candy
        shop. They were good kids, however, and didn't run wild grabbing all the candy they could
        find and gobbling it up. They very carefully considered how to divide the address space for
        various uses. Of course, when you have this much candy, sharing becomes pretty easy.
     </p>
     <p class="style2">The Initial IPv6 Address Space Allocation Plan and the Format Prefix (FP)</p>
     <p class="style1">
        As was the case with IPv4, the two primary concerns in deciding how to divide the IPv6
        address space were address assignment and routing. The designers of IPv6 wanted to
        structure the address space to make allocation of addresses to ISPs, organizations and
        individuals as easy as possible.
        <br /><br />
        At first, this perhaps ironically, this led the creators of IPv6 back full circle to the use of
        specific bit sequences to identify different types of addresses, just like the old “classful”
        addressing scheme. The address type was indicated by a set of bits at the start of the
        address, called the format prefix (FP). The format prefix was conceptually identical to the 1
        to 4 bits used in IPv4 “classful” addressing to denote address classes, but was variable in
        length, ranging from three to ten bits. Format prefixes were described in RFC 2373.
        <br /><br />
        In the years following the publication of RFC 2373, the gurus who run the Internet had a
        change of heart regarding how address blocks should be considered. They still wanted to
        divide up the IPv6 address space into variably-sized blocks for different purposes. However,
        they realize that many people (including myself) were starting to consider the use of format
        prefixes to be equivalent to the old class-oriented IPv4 system.
        <br /><br />
        Their main concern was that implementors might program into IPv6 hardware logic to make
        routing decisions based only on the first few bits of the address. This was specifically not
        how IPv6 is supposed to work; for one thing, the allocations are subject to change. Thus,
        one of the modifications made in RFC 3513 was to change the language regarding IPv6
        address allocations, and specifically, to remove the term “format prefix” from the standard.
     </p>
     <p class="style2">Current IPv6 Address Space Allocation Plans</p>
     <p class="style1">
        The allocation of different parts of the address space still is done based on particular
        patterns of the first three to ten bits of the address, to allow certain categories to have more
        addresses than others. The elimination of the specific term denoting this is intended to
        convey that these bits should not be given “special attention”.
        <br /><br />
        Table shows the allocations of the IPv6 address space, and what fraction of the total
        address space each represents:
     </p>
            <center>
            <asp:Image ID="IPv6" runat="server"  
            ImageUrl="~/Images/ipv6/ipv6_address_space_allocations01.png" usemap="IPv6"/>
            </center>
            <map id="IPv6AddSpace" name="IPv6">
            <area shape="rect" coords="550,174,721,207" href="ipv6.aspx#IPv6SpAddress" visible="true" 
            title="IPv6 Special Addresses" alt="IPv6 Special Addresses" /> 
            </map>

            <center>
            <asp:Image ID="IPv6B" runat="server"
             ImageUrl="~/Images/ipv6/ipv6_address_space_allocations02.png" usemap="IPv6A" />
            </center>
            <map id="IPv6AddSpaceB" name="IPv6A">
            <area shape="rect" coords="494,697,776,716" href="ipv6.aspx#IPv6SpAddress" visible="true"
             title="IPv6 Special Addresses" alt="IPv6 Special Addresses" />
             <area shape="rect" coords="494,732,776,756" href="ipv6.aspx#IPv6SpAddress" visible="true"
             title="IPv6 Special Addresses" alt="IPv6 Special Addresses" />
            </map>
    <p class="style1">
        This is more complicated than the IPv4 “classful” scheme because there are so many more
        categories and they range greatly in size, however, most of them are unassigned at the
        present time.
    </p>
    <p class="style2">Looking at the IPv6 Address Space Plan As “Eight Eighths”</p>        
    <p class="style1">
        An easier way to make sense of this table is to consider the division of the IPv6 address
        space into eighths. Of these eight groups, one (001) has been reserved for unicast
        addresses; a second (000) has been used to carve out smaller reserved blocks, and a third
        (111) has been used for sub-blocks for local and multicast addresses. Five are completely
        unassigned.
        <br /><br />
        You can see that the IPv6 designers have taken great care to allocate only the portion of
        these “eighths” of the address space they felt was needed for each type of address. For
        example, only a small portion of the part of the address space beginning “111” was used,
        with most of it left aside. In total, only 71/512ths of the address space is assigned right now,
        or about 14%. The other 86% is unassigned and kept aside for future use. (Bear in mind
        that even 1/1024th of the IPv6 address space is gargantuan—it represents trillions of
        trillions of addresses.)
        <br /><br />
        Subsequent topics in this section provide more information on several of these address
        blocks. Note that the “0000 0000” reserved block is used for several special address types,
        including the loopback address, the “unspecified” address and IPv4 address embedding.
        The “1111 1111” format prefix identifies multicast addresses; this string is “FF” in
        hexadecimal, so any address beginning with “FF” is a multicast address in IPv6.
    </p>
    <p class="style3">IPv6 Global Unicast Address Format</p>
    <p class="style1">
        It is anticipated that unicast addressing will be used for the vast majority of Internet traffic
        under IPv6, just as is the case for older one, IPv4. It is for this reason that the largest of the
        assigned blocks of the IPv6 address space is dedicated to unicast addressing. A full 1/8th
        slice of the enormous IPv6 address “pie” is assigned to unicast addresses, which are
        indicated by a “001” in the first three bits of the address. The question then is: how do we
        use the remaining 125 bits in our spacious IP addresses?
    </p>
    <p class="style2">Rationale for A Structured Unicast Address Block</p>
    <p class="style1">
        When IPv4 was first created, the Internet was rather small, and the model for allocating
        address blocks was based on a central coordinator: IANA. Everyone who wanted address
        blocks would go straight the central authority. As the Internet grew, this model became
        impractical. Today, IPv4's classless addressing scheme allows variable-length network IDs
        and hierarchical assignment of address blocks. Big ISPs get large blocks from the central
        authority and then subdivide them and allocate them to their customers, and so on. This is
        managed by today's Internet providers, but there is nothing in the address space that helps
        manage the allocation process. In turn, each organization has the ability to further subdivide
        their address allocation to suit their internal requirements.
        <br /><br />
        The designers of IPv6 had the benefit of this experience and realized there would be
        tremendous advantages to designing the unicast address structure to reflect the overall
        topology of the Internet. These include:
    </p>
    <ul class="style1">
    <li>Easier allocation of address blocks at various levels of the Internet topological
        hierarchy.</li>
    <li>IP network addresses that automatically reflect the hierarchy by which routers move
        information across the Internet, allowing routes to be easily aggregated for more
        efficient routing.</li>
    <li>Flexibility for organizations like ISPs to subdivide their address blocks for customers.</li>
    <li>Flexibility for end-user organizations to subdivide their address blocks to match
        internal networks, much as subnetting did in IPv4.</li>
    <li>Greater “meaning” to IP addresses. Instead of just being a string of 128 bits with no
        structure, it would become possible to look at an address and know certain things
        about it.</li>
    </ul>
    <p class="style2">Generic Division of the Unicast Address Space</p>
    <p class="style1">
        The most generic way of dividing up the 128 bits of the unicast address space is into three
        sections, as shown in Table
    </p>
         <img src="../Images/ipv6/generic_ipv6_global_unicast_address_format.png"
          alt="Generic ipv6 global unicast address format" />
    <p class="style2">IPv6 Implementation of the Unicast Address Space</p>          
    <p class="style1">
        In theory, any size for “n” and “m” could be used. The implementation chosen for IPv6,
        however, assigns 48 bits to the routing prefix and 16 bits to the subnet identifier. This means
        64 bits are available for interface identifiers, which are constructed based on the IEEE “EUI-
        64” format, as described in the next topic. Thus, the overall IPv6 unicast address format is
        constructed as shown in Table (illustrated in Figure.)
    </p>
         <img src="../Images/ipv6/ipv6_global_unicast_address_format01.png" 
         alt="ipv6_global_unicast_address_format01" />
         <img src="../Images/ipv6/ipv6_global_unicast_address_format02.png"
         alt="ipv6_global_unicast_address_format02" />
    <p class="style1">
        <strong>Key Concept</strong>: The part of the IPv6 address space set aside for unicast addresses is
        structured into an address format that uses the first 48 bits for the routing prefix (like
        a network ID), the next 16 bits for a subnet ID, and the final 64 bits for an interface ID
        (like a host ID).    
        <br /><br />
        Due to this structure, most end sites (regular companies and organizations, as opposed to
        Internet service providers) will be assigned IPv6 networks with a 48-bit prefix. In common
        parlance, these network identifiers have now come to be called 48s or /48s.
        The 16 bits of subnet ID allow each site considerable flexibility in creating subnets that
        reflect the site's network structure. For example:
    </p>
    <ul class="style1">
    <li>A smaller organization can just set all the bits in the Subnet ID to zero and have a “flat”
        internal structure.</li>
    <li>A medium-sized organization could use all the bits in the Subnet ID to perform the
        equivalent of “straight” subnetting under IPv4, assigning a different Subnet ID to each
        subnet. There are 16 bits here, so this allows a whopping 65,536 subnets!</li>
    <li>A larger organization can use the bits to create a multiple-level hierarchy of subnets,
        exactly like IPv4's Variable Length Subnet Masking (VLSM). For example, the
        company could use two bits to create four subnets. It could then take the next three
        bits to create eight sub-subnets in some or all of the four subnets. There would still be
        11 more bits to create sub-sub-subnets and so forth.</li>
    </ul>
    <p class="style2">Original Division of the Global Routing Prefix: Aggregators</p>
    <p class="style1">
        The global routing prefix is similarly divided into a hierarchy, but one that has been
        designed for the use of the entire Internet, a la CIDR. There are 45 bits available here (48
        bits less the first three that are fixed at “001”), which is a lot. When the unicast address
        structure was first detailed in RFC 2374, that document described a specific division of the
        45 bits based on a two-level hierarchical topology of Internet registries and providers.
        These organizations were described as:
    </p>
    <ul class="style1">
    <li><p><strong>Top-Level Aggregators (TLAs) :</strong> The largest Internet organizations, which were to be
        assigned large blocks of IPv6 addresses from registration authorities.</p></li>
    <li><p><strong>Next-Level Aggregators (NLAs) :</strong> These organizations would get blocks of addresses
        from TLAs and divide them for end-user organizations (sites).</p></li>
    </ul>
    <p class="style1">
        The 45 bits were split between these two uses, with a few bits reserved in the middle to
        allow expansion of either field if needed. Thus, the RFC 2374 structure for the 45 bits was
        as shown in Table.
    </p>
         <img src="../Images/ipv6/ipv6_unicast_routing_prefix_structure.png"
         alt="ipv6_unicast_routing_prefix_structure" />
    <p class="style1">
        You'll notice my use of the past tense in the description of the TLA/NLA structure, and that
        table heading is a pretty big giveaway too. In August 2003, RFC 3587 was published, which
        in a nutshell says “uh, never mind about all that TLA/NLA stuff”. ☺ The decision was made
        that having this structure “hard-coded” into an Internet standard was inflexible, and it made
        more sense to allow the regional Internet registries (APNIC, ARIN, LACNIC and RIPE)
        decide for themselves how to use the 45 bits.
        <br /><br />
        <strong>Note</strong>: The obsoleting of the “TLA/NLA” structure occurred after many years of
        people getting used to it, so for some time to come you will still routinely see
        mention of those terms in IPv6 descriptions. (This is why I included discussion of
        them here.)
    </p>
    <p class="style2">An Example Division of the Global Routing Prefix Into Levels</p>
    <p class="style1">
        So, there is no longer any single structure for determining how the 48-bit routing prefix is
        divided in the global unicast hierarchy. As one example, it might be possible to divide it into
        three levels, as shown in Table, and diagrammed in Figure.
    </p>
         <img src="../Images/ipv6/example_ipv6_unicast_routing_prefix_structure.png" 
         alt="example_ipv6_unicast_routing_prefix_structure" />
         <img src="../Images/ipv6/example_ipv6_unicast_routing_prefix_structure02.png"
         alt="example_ipv6_unicast_routing_prefix_structure02" />
    <p class="style1">
        This is just one possible, theoretical way that the bits in a “/48” network address could be
        assigned. As you can see, with so many bits there is a lot of flexibility. In the scheme above
        we can have over 4 million level 2 organizations, each of which can assign 8 million /48
        addresses. And each of those is equivalent in size to an IPv4 Class B address (over 65,000
        hosts)!
    </p>
    <p class="style2">Additional Notes on the Global Unicast Format</p>
    <p class="style1">
        The removal of RFC 2374's “fixed structure” for the global routing prefix is consistent with
        the IPv6 development team's efforts to emphasize that bit fields and structures are used
        only for allocating addresses, not for routing purposes. The addresses themselves, once
        created, are not interpreted by hardware on an internet based on this format. To routers, the
        only structure is the division between the network ID and host ID is given by the prefix
        length that trails the IP address, and this division can occur at any bit boundary. These
        hardware devices just see 128 bits of an IP address and use it without any knowledge of
        hierarchical address divisions or “levels”.
        <br /><br />
        It’s also worth noting that the key to obtaining the allocation benefits of the aggregatable
        unicast address format is the abundance of bits available to us under IPv6. The ability to
        have these hierarchical levels while still allowing 64 bits for the interface ID is one of the
        main reasons why IPv6 designers went all the way from 32 bits to 128 bits for address size.
        By creating this structure, we maintain flexibility while avoiding the potential chaos of trying
        to allocate many different network sizes within our 128 bits.
        <br /><br />
        Finally, note that anycast addresses are structured in the same way as unicast addresses,
        so they are allocated according to this same model. In contrast, multicast addresses are
        not; they are allocated from their own portion of the IPv6 address space.
    </p>
    <p class="style3">IPv6 Interface Identifiers and Physical Address Mapping</p>
    <p class="style1">
        In IPv4, IP addresses have no relationship to the addresses used for underlying data link
        layer network technologies. A host that connects to a TCP/IP network using an Ethernet
        network interface card (NIC) has an Ethernet MAC address and an IP address, but the two
        numbers are distinct and unrelated in any way. IP addresses are assigned manually by
        administrators without any regard for the underlying physical address.
    </p>
    <p class="style2">The Payoff of IPv6’s Very Large Address Size</p>
    <p class="style1">
        With the overhaul of addressing in IPv6, an opportunity presented itself to create a better
        way of mapping IP unicast addresses and physical network addresses. Implementing this
        superior mapping technique was one of the reasons why IPv6 addresses were made so
        large. With 128 total bits, as we saw in the previous topic, even with a full 45 bits reserved
        for network prefix and 16 bits for site subnet, we are still left with 64 bits to use for the
        interface identifier, which is analogous to the host ID under IPv4.
        <br /><br />
        Having so many bits at our disposal gives us great flexibility. Instead of using arbitrary
        “made-up” identifiers for hosts, we can base the interface ID on the underlying data link
        layer hardware address, as long as that address is no greater than 64 bits in length. Since
        virtually all devices use layer two addresses of 64 bits or fewer, there is no problem in using
        those addresses for the interface identifier in IP addresses. This provides an immediate
        benefit: it makes networks easier to administer, since we don't have to record two arbitrary
        numbers for each host. The IP address can be derived from the MAC address and the
        network identifier. It also means we can in the future tell the IP address from the MAC
        address and vice-versa.    
    </p>
    <p class="style2">The IPv6 Modified EUI-64 Format</p>
    <p class="style1">
        The actual mapping from data link layer addresses to IP interface identifiers depends on the
        particular technology. It is essential that all devices on the same network use the same
        mapping technique, of course. By far the most common type of layer 2 addresses in
        networking are IEEE 802 MAC addresses, used by Ethernet and other IEEE 802 Project
        networking technologies. As you may already know, these addresses have 48 bits,
        arranged into two blocks of 24. The upper 24 bits are arranged into a block called the
        organizationally unique identifier (OUI), with different values assigned to individual organizations;
        the lower 24 bits are then used for an identifier for each specific device.
        <br /><br />
        The IEEE has also defined a format called the 64-bit extended unique identifier, abbreviated
        EUI-64. It is similar to the 48-bit MAC format, except that while the OUI remains at 24 bits,
        the device identifier becomes 40 bits instead of 24. This provides gives each manufacturer
        65,536 times as many device addresses within its OUI.
        <br /><br />
        A form of this format, called modified EUI-64, has been adopted for IPv6 interface identifiers.
        To get the modified EUI-64 interface ID for a device, you simply take the EUI-64
        address and change the 7th bit from the left (the “universal/local” or “U/L” bit) from a zero to
        a one.
    </p>
    <p class="style2">Converting 48-Bit MAC Addresses to IPv6 Modified EUI-64 Identifiers</p>
    <p class="style1">
        Of course, most devices still use the older 48-bit MAC address format. These can be
        converted to EUI-64 and then to modified EUI-64 form for creating an IPv6 interface ID. The
        process is as follows:
    </p>
    <ol class="style1">
    <li>We take the 24-bit OUI portion, the left-most 24 bits of the Ethernet address, and put
        them into the left-most 24 bits of the interface ID. We take the 24-bit local portion (the
        right-most 24 bits of the Ethernet address) and put it into the right-most 24 bits of the
        interface ID.</li>
    <li>In the remaining 16 bits in the middle of the interface ID we put the value “11111111
        11111110” (“FFFE” in hexadecimal).</li>
    <li>The address is now in EUI-64 form. We change the “universal/local” bit (bit 7 from the
        left) from a zero to a one. This gives us the modified EUI-64 interface ID.</li>    
    </ol>
    <p class="style1">
        <strong>Key Concept</strong>: The last 64 bits of IPv6 unicast addresses are used for interface
        identifiers, which are created in a special format called modified EUI-64. A simple
        process can be used to determine the interface identifier from the 48-bit MAC
        address of a device like an Ethernet network interface card. This can then be combined with
        a network prefix (routing prefix and subnet ID) to determine a corresponding IPv6 address
        for the device.
        <br /><br />
        Let's take as an example the Ethernet address of 39-A7-94-07-CB-D0 (illustrated in Figure)
    </p>
    <p style="text-align:center">    
        <img src="../Images/ipv6/coverting_802_mac_address_to_ipv6_EUI64_identifier.png" 
        alt="coverting 802 mac address to ipv6 EUI64 identifier" />
    </p>
    <ol class="style1">
    <li>We take “39-A7-94”, the first 24 bits of the identifier, and put it into the first (leftmost) 24
        bits of the address. The local portion of “07-CB-D0” becomes the last 24 bits of the
        identifier.</li>
    <li>The middle 16 bits are given the value “FF-FE”.</li>
    <li>We change the seventh bit from zero to one, which changes the first octet from “39” to
        “3B”.</li>
    </ol>
    <p>
        The identifier thus becomes “3B-A7-94-FF-FE-07-CB-D0”, or in IPv6 colon hexadecimal
        notation, 3BA7:94FF:FE07:CBD0. The first 64 bits of the device's address are supplied
        using the global unicast address format.
        <br /><br />
        The only drawback of this technique is that if the physical hardware changes, so does the
        IPv6 address.
    </p>
    <a id="IPv6SpAddress" name="IPv6SpAddress" class="style3">IPv6 Special Addresses: Reserved, Private (Link-Local / Site-Local),
    Unspecified and Loopback</a>
    <p>
        Just as certain IPv4 address ranges are designated for reserved, private and other
        “unusual” addresses, a small part of the monstrous IPv6 address space has been set aside
        for special addresses. The purpose of these addresses and address blocks is to provide
        addresses for special requirements and private use in IPv6 networks. The nice thing about
        IPv6, of course, is that even relatively small pieces of it are still enormous, so setting aside
        0.1% of the address space for a particular use still generally yields more addresses than
        anyone will ever need.
    </p>
    <p class="style2">Special IPv6 Address Types</p>
    <p>
        There are four basic types of "special" IPv6 addresses: reserved, private, loopback and
        unspecified.
    </p>
    <p class="style2">Reserved Addresses</p>
    <p>
        A portion of the address space is set aside as reserved for various uses by the IETF, both
        present and future. Unlike IPv4, which has many small reserved blocks in various locations
        in the address space, in IPv6 the reserved block is at the “top” of the address space: the
        ones starting with “0000 0000” (or 00 for the first hexadecimal octet). This represents 1/
        256th of the total address space. Some of the special addresses below come from this
        block. IPv4 address embedding is also done within this reserved address area.
        <br /><br />
        <strong>Note </strong>: Note that reserved addresses are not the same as unassigned addresses.
        The latter term just refers to blocks whose use has not yet been determined.
    </p>
    <p class="style2">Private/Unregistered/Nonrouteable Addresses</p>
    <p>
        A block of addresses is set aside for private addresses, just as in IPv4, except that like
        everything in IPv6 the private address block in IPv6 is much larger. These private
        addresses are local only to a particular link or site and are therefore never routed outside a
        particular company's network.
        <br /><br />
        Private addresses are indicated by the address having "1111 1110 1” for the first nine bits.
        Thus, private addresses have a first octet value of “FE” in hexadecimal, with the next hex
        digit being from “8” to “F”. These addresses are further divided into two types based on their
        scope, described below.
    </p>
    <p class="style2">Loopback Address</p>
    <p>
        Like IPv4, provision has been made for a special loopback address for testing; datagrams
        sent to this address “loop back” to the sending device. However, in IPv6 there is just one
        address for this function, not a whole block (which was never needed in the first place,
        really!) The loopback address is 0:0:0:0:0:0:0:1, which is normally expressed using zero
        compression as “::1”.
    </p>
    <p class="style2">Unspecified Address</p>
    <p>
        In IPv4, an IP address of all zeroes has a special meaning; it refers to the host itself, and is
        used when a device doesn't know its own address. In IPv6 this concept has been
        formalized, and the all-zeroes address (0:0:0:0:0:0:0:0) is named the unspecified address.
        It is typically used in the source field of a datagram sent by a device seeking to have its IP
        address configured. Zero compression can be applied to this address; since it is all zeroes,
        the address becomes just “::”. (I consider this confusing, myself. I think something like “0::0”
        is a lot more clear, and short enough.)
        <br /><br />
        <strong>Key Concept</strong>: In IPv6, a special loopback address, 0:0:0:0:0:0:0:1 (“::1” in
        compressed form) is set aside for testing purposes. The unspecified address,
        0:0:0:0:0:0:0:0 (“::” in compressed form) is used to indicate an unknown address. A
        block of private or local addresses is defined, which is the set of all addresses beginning
        with “1111 1110 1” as the first nine bits.
    </p>
    <p class="style5">IPv6 Private Addresses Types/Scopes</p>
    <p>
        Now, let's take a bit more of a look at private addresses. In IPv6, these are called local-use
        addresses, the name conveying clearly what they are for. They are also sometimes called
        link-layer addresses. Recall that IPv4 private addresses were commonly used when public
        addresses could not be obtained for all devices, sometimes in combination with technologies
        like Network Address Translation (NAT). In IPv6, trickery like NAT isn't required.
        Instead, local-use addresses are intended for communication that is inherently designed
        only to be sent to local devices. For example, neighbor discovery functions using the IPv6
        Neighbor Discovery (ND) protocol employ local-use addresses.
        <br /><br />
        The scope of local addresses is obviously a local network, and not the global scope of
        public Internet addresses. Local addresses in IPv6 are divided further into two types,
        reflecting a further division of local scope.
    </p>
    <p class="style2">Site-Local Addresses</p>
    <p>
        These addresses have the scope of an entire site, or organization. They allow addressing
        within an organization without need for using a public prefix. Routers will forward datagrams
        using site-local addresses within the site, but not outside it to the public Internet.
        <br /><br />
        Site-local addresses are differentiated from link-local addresses by having a tenth bit of “1”
        following the nine starting address bits common to all private IPv6 addresses. Thus, they
        begin with “1111 1110 11”. In hexadecimal, site-local addresses begin with “FE” and then
        “C” to “F” for the third hex digit. So, these addresses start with “FEC”, “FED”, “FEE” or
        “FEF”.
    </p>
    <p class="style2">Link-Local Addresses</p>
    <p>
        These addresses have a smaller scope than site-local addresses; they refer only to a
        particular physical link (physical network). Routers will not forward datagrams using linklocal
        addresses at all, not even within the organization; they are only for local communication
        on a particular physical network segment. They can be used for address
        configuration or for the ND functions such as address resolution and neighbor discovery.
        
        Link-local addresses are differentiated from site-local addresses by having a tenth bit of “0”
        following the nine initial address bits common to all private IPv6 addresses: “1111 1110 1”.
        Thus, site-local addresses begin with “FE” and then “8” to “B” for the third hex digit. So,
        these addresses start with “FE8”, “FE9”, “FEA” or “FEB”.
        <br />
        Note that site-local IPv6 addresses are the equivalent of IPv4 private addresses, since they
        are routed throughout the organization. The concept of link-local scope is new to IPv6.
        <br /><br />
        <strong>Key Concept</strong> : IPv6 site-local addresses allow data to be sent only to the devices
        within a site or organization. They begin with “FEC”, “FED”, “FEE” or “FEF” in
        hexadecimal. IPv6 link-local addresses are used only on a particular local link
        (physical network), typically for special purposes such as address resolution or neighbor
        discover. They start with “FE8”, “FE9”, “FEA” or “FEB”.
    </p>
    <p class="style3">IPv6/IPv4 Address Embedding</p>
    <p>
        Due to the importance of the Internet Protocol and the significance of the changes made in
        IPv6, deployment of the newer version of the protocol will not occur all at once. A transition
        from IPv4 to IPv6 will be required, which requires careful planning. It is anticipated that the
        migration from IPv4 to IPv6 will take many years. I discuss this in a special topic dedicated
        to IPv4/IPv6 transition issues.
        <br /><br />
        IPv6 is backward compatible with IPv4, provided that special techniques are used. For
        example, to enable communication between "islands" of IPv6 devices connected by IPv4
        networks, tunneling may be employed. To support IPv4/IPv6 compatibility, a scheme was
        developed to allow IPv4 addresses to be embedded within the IPv6 address structure. This
        method takes regular IPv4 addresses and puts them in a special IPv6 format so they are
        recognized as being IPv4 addresses by certain IPv6 devices.
        <br /><br />
        Since the IPv6 address space is so much bigger than that of IPv4, embedding the latter
        within the former is easy; it's like tucking a compact sedan into the hold of a cargo ship. The
        embedding address space is part of the reserved address block whose addresses begin
        with eight zero bits, but only a relatively small part of it. Two different embedding formats
        are used. Both have zeroes for the first 80 bits of the address, and put the embedded IPv4
        address into the last 32 bits of the IPv6 address format. They differ on the value of the 16
        remaining bits in between (bits 81 to 96, counting from the left):
        <br /><br />
        The two embedding formats are used in order to indicate the capabilities of the device using
        the embedded address.
    </p>
    <p class="style2">IPv4-Compatible IPv6 Addresses</p>
    <p>
        These are special addresses assigned to IPv6-capable devices, such as so-called “dual
        stack” devices that speak both IPv4 and IPv6. They have all zeroes for the middle 16 bits;
        thus, they start off with a string of 96 zeroes, followed by the IPv4 address. An example of
        such an address, shown in Figure, would be 0:0:0:0:0:0:101.45.75.219 in mixed
        notation, or more succinctly, ::101.45.75.219.
        <img src="../Images/ipv6/ipv6_address_representation.png" alt="ipv6 address representation" />
    </p>
    <p class="style2">IPv4-Mapped IPv6 Addresses</p>
    <p>
        These are regular IPv4 addresses that have been mapped into the IPv6 address space,
        and are used for devices that are only IPv4-capable. They have a set of 16 ones after the
        initial string of 80 zeroes, and then the IPv4 address. So, if an IPv4 device has the address
        222.1.41.90, such as the one in Figure, it would be represented as
        0:0:0:0:0:FFFF:222.1.41.90, or ::FFFF:222.1.41.90.
        <img src="../Images/ipv6/ipv4_mapped_embedded_ipv6_address_representation.png"
        alt="ipv4 mapped embedded ipv6 address representation" />
        <br /><br />
        <strong>Key Concept</strong>: IPv4 address embedding is used to create a relationship between an
        IPv4 address and an IPv6 address to aid in the transition from IPv4 to IPv6. One
        type, the IPv4-compatible IPv6 address, is used for devices that are compatible with
        both IPv4 and IPv6; it begins with 96 zero bits. The other, the IPv4-mapped address, is
        used for mapping IPv4 devices that are not compatible with IPv6 into the IPv6 address
        space; it begins with 80 zeroes followed by 16 ones.
    </p>
    <p class="style2">Comparing IPv4-Compatible and IPv4-Mapped Embedded IPv6 Addresses</p>
    <p>
        The difference between these two kinds of addresses is subtle, but important. The first 80
        bits are always zero, so when this is seen you know it is an embedded IPv4 address of
        some sort. IPv4-compatible IPv6 addresses are only used for devices that are actually
        IPv6-aware; the IPv4-compatible address is in addition to its conventional IPv6 address. In
        contrast, if the "FFFF" is seen for the 16 bits after the initial 80, this designates a conventional
        IPv4 devices whose IPv4 address has been mapped into the IPv6 format. It is not an
        IPv6-capable device.
    </p>
    <p class="style3">IPv6 Multicast and Anycast Addressing</p>
    <p>
        One of the most significant modifications in the general addressing model in IPv6 was a
        change to the basic types of addresses and how they were used. Unicast addresses are
        still the choice for the vast majority of communications as in IPv4, but the “bulk” addressing
        methods are different in IPv6. Broadcast as a specific addressing type has been eliminated.
        Instead, support for multicast addressing has been expanded and made a required part of
        the protocol, and a new type of addressing called anycast has been implemented.
    </p>
    <p class="style2">IPv6 Multicast Addresses</p>
    <p>
        Let's start by looking at multicast under IPv6. Multicasting is used to allow a single device to
        send a datagram to a group of recipients. IPv4 supported multicast addressing using the
        Class D address block in the “classful” addressing scheme. Under IPv6, multicast
        addresses are allocated from the multicast block. This is 1/256th of the address space,
        consisting of all addresses that begin with “1111 1111”. Thus, any address starting with “FF”
        in colon hexadecimal notation is an IPv6 multicast address.
        <br /><br />
        The remaining 120 bits of address space are enough to allow the definition of, well, a
        gazillion or three multicast addresses. (Okay, it's officially about 1.3 trillion trillion trillion
        addresses.) Much the way the allocation of unicast addresses was organized by using a
        special format to divide up these many bits, the same thing was done for multicast
        addresses.
    </p>
    <p class="style2">IPv6 Multicast Address Format</p>
    <p>
        The format for multicast addresses is explained in Table and illustrated in Figure
    </p>
            <center>
            <asp:Image ID="IPv6Multicast" runat="server"
             ImageUrl="~/Images/ipv6/ipv6_multicast_address_format.png" usemap="IPv6Multicast" />
            </center>
            <map id="IPv6Multicast1" name="IPv6Multicast">
            <area shape="rect" coords="427,187,810,206" href="ipv6.aspx#IPv6AddSpAllocation" visible="true"
             title="IPv6 Addresses Space Allocation" alt="IPv6 Addresses Space Allocation" />
            </map>
    
    
         <img src="../Images/ipv6/ipv6_multicast_add_format.png" alt="ipv6 multicast add format" />
    
    
    
    
    
    
    
    

            
            
    </div>
    <a href="../TcpipStructure.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" width="50" />
    </a>
    </form>
</body>
</html>
