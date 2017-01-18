<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultError.aspx.cs" Inherits="NewSMRBankProjectFinal.Errors.DefaultError" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Default Error Page</title>
    <link id="Link1" rel="Shortcut Icon" href="~/images/favicon.ico" type="image/x-icon" runat="server" />
    <style type="text/css">
        body{ color: #333; background: #fff; font-size: 14px; margin: 0; padding: 0; }
        a:link, a:visited{ color: #23a7d8; text-decoration: none; }
        a:hover{ text-decoration: underline; }
        #Wrap{ width: 100%; margin: 0 auto; padding: 0 auto; }
        #main{ width: 62%; min-width: 550px; margin: 4% auto; padding: 0 auto; overflow: hidden; }
        #main h1{ color: #444; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Wrap">
        <div id="main">
            <h1>Error occoured</h1>
            <div class="contact"><a id="A1" href="~/Default.aspx" runat="server">Click here</a> to go to our Home page.</div>
        </div>
    </div>
    </form>
</body>
</html>
