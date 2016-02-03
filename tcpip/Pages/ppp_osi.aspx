<%@ Page Language="C#" %>

<%@ Register src="../Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PPP and OSI</title>
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
            Point-to-Point Protocol (PPP) and OSI layer
            </h1>
        <center>
        <asp:Image ID="PPP1" runat="server"  Height="550px" Width="664px" 
            ImageUrl="~/images/pppNosi1.PNG" usemap="PPPnOSI" />
        </center>
            <map id="PPP01" name="PPPnOSI">
                <area shape="rect" coords="280,300,380,320" href="#" visible="true" title="PPP" alt="ppp"/>
                
                <!---- Co-ordinate x1,y1,x2,y2 ----->  
                   
                <area shape="rect" coords="18,230,113,255" href="#" visible="true" title="PAP" alt="pap"/>
                <area shape="rect" coords="18,265,113,291" href="#" visible="true" title="LEX" alt="lex"/>
                <area shape="rect" coords="18,301,113,326" href="#" visible="true" title="SDTP" alt="sdtp"/>
                <area shape="rect" coords="18,334,113,361" href="#" visible="true" title="BAP" alt="bap"/>
                <area shape="rect" coords="126,229,220,257" href="#" visible="true" title="LQR" alt="lqr"/>
                <area shape="rect" coords="126,263,220,292" href="#" visible="true" title="LCP" alt="lcp"/>
                <area shape="rect" coords="126,298,220,325" href="#" visible="true" title="EAP" alt="eap"/>
                <area shape="rect" coords="126,334,220,360" href="#" visible="true" title="CHAP" alt="chap"/>
                
                
                <area shape="rect" coords="267,415,359,438" href="#" visible="true" title="MLP" alt="mlp"/>  
                <area shape="rect" coords="216,462,310,477" href="#" visible="true" title="MPPC" alt="mppc"/>
                <area shape="rect" coords="322,451,414,477" href="#" visible="true" title="LZS" alt="lzs"/>   
                
                
                <area shape="rect" coords="333,218,437,245" href="#" visible="true" title="PPP-BPDU" alt="ppp-bpdu"/>
                
                <!----- Control Protocols started ----->
                
                <area shape="rect" coords="455,222,546,253" href="#" visible="true" title="IPXCP" alt="ipxcp"/>
                <area shape="rect" coords="455,258,546,287" href="#" visible="true" title="ECP" alt="ecp"/>
                <area shape="rect" coords="455,293,546,322" href="#" visible="true" title="NBFCP" alt="nbfcp"/>
                <area shape="rect" coords="455,328,546,357" href="#" visible="true" title="ATCP" alt="atcp"/>
                <area shape="rect" coords="455,361,546,391" href="#" visible="true" title="BACP" alt="bacp"/>
                <area shape="rect" coords="455,398,546,425" href="#" visible="true" title="XNSCP" alt="xnscp"/>
                <area shape="rect" coords="455,435,546,461" href="#" visible="true" title="SDCP" alt="sdcp"/>
                
                <area shape="rect" coords="552,225,645,250" href="#" visible="true" title="SNACP" alt="snacp"/>
                <area shape="rect" coords="552,260,645,286" href="#" visible="true" title="CSCP" alt="cscp"/>
                <area shape="rect" coords="552,294,645,320" href="#" visible="true" title="LEXCP" alt="lexcp"/>
                <area shape="rect" coords="552,329,645,356" href="#" visible="true" title="CCP" alt="ccp"/>
                <area shape="rect" coords="552,362,645,388" href="#" visible="true" title="BCP" alt="bcp"/>
                <area shape="rect" coords="552,398,645,424" href="#" visible="true" title="SPCP" alt="spcp"/>
                <area shape="rect" coords="552,435,645,460" href="#" visible="true" title="IPCP" alt="ipcp"/>
                
                <area shape="rect" coords="503,466,596,492" href="#" visible="true" title="OSINLCP" alt="osinlcp"/>
                
                
            </map>


    </div>
    <a href="ppp.aspx" style="text-decoration:none">
        <img src="../Images/Left Arrow.png" align="right" alt="Back" height="50" width="50" />
    </a>
    </form>
</body>
</html>
