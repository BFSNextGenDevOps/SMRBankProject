<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="NewSMRBankProjectFinal.Errors._404" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>404 Not Found</title>
    <link id="Link1" rel="Shortcut Icon" href="~/images/favicon.ico" type="image/x-icon" runat="server" />
    <style type="text/css">
        body{ color: #333; background: #fff; font-size: 14px; margin: 0; padding: 0; }
        a:link, a:visited{ color: #23a7d8; text-decoration: none; }
        a:hover{ text-decoration: underline; }
        #Wrap{ width: 100%; margin: 0 auto; padding: 0 auto; }
        #main{ width: 62%; min-width: 550px; margin: 4% auto; padding: 0 auto; overflow: hidden; }
        #main h1{ color: #444; }
        #main ul{ float: left; }
        #main ul li{ margin: ; padding: 2% 0; }
        #main img{ float: left; width: 21%; margin-left: 5%; }
        #main p{ clear: both; font-size: 1.1em; }
        #main .left{ float: left; width: 50%; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Wrap">
        <div id="main">
            <h1>404 Not Found</h1>
            <p>The page you have tried to access was not found. This could have been for many reason.</p>
            <div class="left">
                <ul>
                    <li>The file has been moved or renamed.</li>
                    <li>The file has been renamed or deleted.</li>
                    <li>You may have entered an invalid address.</li>
                </ul>
                <p>Please make sure you have entered a valid URL address and try again.
                If you see this error again, then please contact us on our contact page.
                </p>
                <div class="contact"><a id="A1" href="~/contact_us.aspx" runat="server">Click here</a> to go to our contact page.</div>
            </div>
            <img alt="404 Not Pound" src="../images/robot.png" />
        </div>
    </div>
    </form>
</body>
</html>
