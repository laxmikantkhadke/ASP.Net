<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>
<style type="text/css">
    body
    {
        background-image: url('b.gif');
    }
    /*---- CROSS BROWSER DROPDOWN MENU ----*/div ul#nav
    {
        width: 1024px;
        margin: 0 0 0 0px;
    }
    div ul.drop a
    {
        display: block;
        color: #4A148C;
        font-family: Verdana;
        font-size: 14px;
        text-decoration: none;
    }
    div ul.drop, ul.drop li, ul.drop ul
    {
        list-style: none;
        margin: 0;
        padding: 0;
        border: 1px solid #fff;
        background: #EA80FC;
        color: #4A148C;
    }
    div ul.drop
    {
        position: relative;
        z-index: 597;
        float: left;
    }
    div ul.drop li
    {
        float: left;
        line-height: 1.3em;
        font-size: 12px;
        font-family: Verdana;
        vertical-align: middle; /* --- zoom: 1; ----*/
        padding: 5px 10px;
    }
    div ul.drop li.hover, ul.drop li:hover
    {
        position: relative;
        z-index: 599;
        cursor: default;
        background: #dddddd;
    }
    div ul.drop ul
    {
        visibility: hidden;
        position: absolute;
        top: 100%;
        left: 0;
        z-index: 598;
        width: 195px;
        background: #555;
        border: 1px solid #fff;
    }
    div ul.drop ul li
    {
        float: none;
    }
    div ul.drop ul ul
    {
        top: -2px;
        left: 100%;
    }
    div ul.drop li:hover > ul
    {
        visibility: visible;
    }
    html, body
    {
        margin: 0px;
        padding: 0px;
        border: 0px;
    }
</style>
<div style="width: 1024px; margin-left: auto; margin-right: auto;">
    <img src="Images/header2.jpg" alt="SchoolHeader" />
</div>
<div style="width: 1024px; margin-left: auto; margin-right: auto;">
    <ul id="nav" class="drop">
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Class12.aspx">Class 12th</a>
            <ul>
                <li><a href="Physics.aspx">Physics</a></li>
                <li><a href="Chemistry.aspx">Chemistry</a></li>
                <li><a href="Biology.aspx">Biology</a></li>
                <li><a href="Mathhematics.aspx">Mathematics</a></li>
                <li><a href="English.aspx">English</a></li>
                <li><a href="Accounting.aspx">Accounting</a></li>
                <li><a href="Business.aspx">Business</a></li>
                <li><a href="Economics.aspx">Economics</a></li>
            </ul>
        </li>
        <li><a href="EntranceExam.aspx">Entrance Exam</a>
            <ul>
                <li><a href="Medical.aspx">Medical</a></li>
                <li><a href="Engineering.aspx">Engineering</a></li>
                <li><a href="CA.aspx">CA</a></li>
                <li><a href="CS.aspx">CS</a></li>
                <li><a href="CLAT.aspx">CLAT</a></li>
                <li><a href="CAT.aspx">CAT</a></li>
            </ul>
        </li>
        <li><a href="CareerAdvice.aspx">Career Advice</a>
            <ul>
                <li><a href="#">Bus Designs</a>
                    <ul>
                        <li><a href="#">P8000BMR</a>
                            <ul>
                                <li><a href="#">BMR Design</a></li>
                                <li><a href="#">BMR+Desigm</a></li>
                                <li><a href="#">BMR Classic Plus Design</a></li>
                                <li><a href="#">BMR Classic Plus Design<br />
                                    (Round H/L)</a></li>
                                <li><a href="#">BMR '2' Design</a></li>
                                <li><a href="#">BMR 'Z-ONE' Design</a></li>
                            </ul>
                        </li>
                        <li><a href="#">P8000X1</a>
                            <ul>
                                <li><a href="#">X1 Design</a></li>
                                <li><a href="#">X1 Design (Big H/L)</a></li>
                            </ul>
                        </li>
                        <li><a href="#">P8000X2</a></li>
                    </ul>
                </li>
                <li><a href="#">Bus Models</a>
                    <ul>
                        <li><a href="#">Non Deluxe Buses</a></li>
                        <li><a href="#">Semi Deluxe Buses</a></li>
                        <li><a href="#">Deluxe Buses</a></li>
                        <li><a href="#">AC Deluxe Buses</a></li>
                        <li><a href="#">Sleeper Coaches</a></li>
                        <li><a href="#">Sp. Purpose Vehicles</a>
                            <ul>
                                <li><a href="#">Ambulance</a></li>
                                <li><a href="#">Mobile Villa</a></li>
                                <li><a href="#">Tele Communication<br />
                                    Vehicles</a></li>
                                <li><a href="#">Mobile Learning</a></li>
                                <li><a href="#">For Police, Defence &amp; Security</a></li>
                                <li><a href="#">Bank Lockers</a></li>
                                <li><a href="#">Pantry Vans</a></li>
                                <li><a href="#">Others</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="#">Bus Interiors</a>
                    <ul>
                        <li><a href="#">Seater</a>
                            <ul>
                                <li><a href="#">1 + 1 + 1</a></li>
                                <li><a href="#">1 + 2</a></li>
                                <li><a href="#">2 + 2</a></li>
                                <li><a href="#">2 + 3</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Sleeper</a>
                            <ul>
                                <li><a href="#">1 + 2</a></li>
                                <li><a href="#">2 + 2</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Others</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="TipsAndTricks.aspx">Tips and Tricks</a></li>
        <li><a href="FunZone.aspx">Fun Zone</a></li>
        <li><a href="AskAQuestion.aspx">Ask a Question</a>
            <ul>
                <li><a href="#">Sales &amp; Marketing</a></li>
                <li><a href="#">Purchase</a></li>
                <li><a href="#">Quality</a></li>
            </ul>
        </li>
        <li><a href="SamplePapers.aspx">Sample Papers</a>
            <ul>
                <li><a href="#">Sales &amp; Marketing</a></li>
                <li><a href="#">Purchase</a></li>
            </ul>
        </li>
        <li><a href="ContactUs.aspx">Contact Us</a></li>
    </ul>
</div>
