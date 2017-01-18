<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PersonalLoanCalc.aspx.cs" Inherits="NewSMRBankProjectFinal.Products.Loans.PersonalLoanCalc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
        .style2
        {
            font-size: large;
            color: #FF9900;
            text-decoration: underline;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1"><strong>PERSONAL LOAN ELIGIBILITY CALCULATOR</strong><br />
        </span><b>
        <br />
        <br />
           
            Type of Company&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList runat="server" ID="DropDownList4" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="Sales">Sales</asp:ListItem>
            <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
            <asp:ListItem Value="Insurance">Insurance</asp:ListItem>
            <asp:ListItem Value="Broker">Broker</asp:ListItem>
            <asp:ListItem>Proprietorship Firm</asp:ListItem>
            <asp:ListItem>Partnership Firm</asp:ListItem>
            <asp:ListItem>BPO</asp:ListItem>
            <asp:ListItem Value="5">others</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ForeColor="#CC3300" 
            ControlToValidate="DropDownList4" ErrorMessage="** Select Your Company Type" 
            ID="RequiredFieldValidator9"></asp:RequiredFieldValidator>
        <br />
        <br />Company Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList runat="server" AutoPostBack="True" ID="DropDownList3" Height="16px" 
                    Width="168px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>	3i Infotech Ltd.	</asp:ListItem>
            <asp:ListItem>	3M India Ltd.	</asp:ListItem>
            <asp:ListItem>	Aarti Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Aban Offshore Ltd.	</asp:ListItem>
            <asp:ListItem>	ABB India Ltd.	</asp:ListItem>
            <asp:ListItem>	Abbott India Ltd.	</asp:ListItem>
            <asp:ListItem>	ABG Shipyard Ltd.	</asp:ListItem>
            <asp:ListItem>	ACC Ltd.	</asp:ListItem>
            <asp:ListItem>	Adani Enterprises Ltd.	</asp:ListItem>
            <asp:ListItem>	Adani Ports &amp; Special Economic Zone Ltd.	</asp:ListItem>
            <asp:ListItem>	Adani Power Ltd.	</asp:ListItem>
            <asp:ListItem>	Adhunik Metaliks Ltd.	</asp:ListItem>
            <asp:ListItem>	Aditya Birla Nuvo Ltd.	</asp:ListItem>
            <asp:ListItem>	Ahluwalia Contracts (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	AIA Engineering Ltd.	</asp:ListItem>
            <asp:ListItem>	Akzo Nobel India Ltd.	</asp:ListItem>
            <asp:ListItem>	Alembic Ltd.	</asp:ListItem>
            <asp:ListItem>	Allahabad Bank	</asp:ListItem>
            <asp:ListItem>	Allcargo Logistics Ltd.	</asp:ListItem>
            <asp:ListItem>	Alok Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Alstom India Ltd.	</asp:ListItem>
            <asp:ListItem>	Alstom T&amp;D India Ltd.	</asp:ListItem>
            <asp:ListItem>	Amara Raja Batteries Ltd.	</asp:ListItem>
            <asp:ListItem>	Ambuja Cements Ltd.	</asp:ListItem>
            <asp:ListItem>	Amtek Auto Ltd.	</asp:ListItem>
            <asp:ListItem>	Amtek India Ltd.	</asp:ListItem>
            <asp:ListItem>	Andhra Bank	</asp:ListItem>
            <asp:ListItem>	Apar Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Apollo Hospitals Enterprise Ltd.	</asp:ListItem>
            <asp:ListItem>	Apollo Tyres Ltd.	</asp:ListItem>
            <asp:ListItem>	Arvind Ltd.	</asp:ListItem>
            <asp:ListItem>	Asahi India Glass Ltd.	</asp:ListItem>
            <asp:ListItem>	Ashok Leyland Ltd.	</asp:ListItem>
            <asp:ListItem>	Ashoka Buildcon Ltd.	</asp:ListItem>
            <asp:ListItem>	Asian Paints Ltd.	</asp:ListItem>
            <asp:ListItem>	Asian Star Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Atul Ltd.	</asp:ListItem>
            <asp:ListItem>	Aurobindo Pharma Ltd.	</asp:ListItem>
            <asp:ListItem>	Axis Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	B L Kashyap &amp; Sons Ltd.	</asp:ListItem>
            <asp:ListItem>	Bajaj Auto Ltd.	</asp:ListItem>
            <asp:ListItem>	Bajaj Electricals Ltd.	</asp:ListItem>
            <asp:ListItem>	Bajaj Finance Ltd.	</asp:ListItem>
            <asp:ListItem>	Bajaj Finserv Ltd.	</asp:ListItem>
            <asp:ListItem>	Bajaj Hindustan Ltd.	</asp:ListItem>
            <asp:ListItem>	Balkrishna Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Ballarpur Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Balmer Lawrie &amp; Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Balrampur Chini Mills Ltd.	</asp:ListItem>
            <asp:ListItem>	Bank of Baroda	</asp:ListItem>
            <asp:ListItem>	Bank of India	</asp:ListItem>
            <asp:ListItem>	Bank of Maharashtra	</asp:ListItem>
            <asp:ListItem>	BASF India Ltd.	</asp:ListItem>
            <asp:ListItem>	Bata India Ltd.	</asp:ListItem>
            <asp:ListItem>	Bayer Cropscience Ltd.	</asp:ListItem>
            <asp:ListItem>	BEML Ltd.	</asp:ListItem>
            <asp:ListItem>	Berger Paints (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	BGR Energy Systems Ltd.	</asp:ListItem>
            <asp:ListItem>	Bharat Electronics Ltd.	</asp:ListItem>
            <asp:ListItem>	Bharat Forge Ltd.	</asp:ListItem>
            <asp:ListItem>	Bharat Heavy Electricals Ltd.	</asp:ListItem>
            <asp:ListItem>	Bharat Petroleum Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Bharati Shipyard Ltd.	</asp:ListItem>
            <asp:ListItem>	Bharti Airtel Ltd.	</asp:ListItem>
            <asp:ListItem>	Bhushan Steel Ltd.	</asp:ListItem>
            <asp:ListItem>	Bilcare Ltd.	</asp:ListItem>
            <asp:ListItem>	Binani Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Biocon Ltd.	</asp:ListItem>
            <asp:ListItem>	Birla Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Blue Dart Express Ltd.	</asp:ListItem>
            <asp:ListItem>	Blue Star Ltd.	</asp:ListItem>
            <asp:ListItem>	Bombay Burmah Trading Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Bombay Dyeing &amp; Manufacturing Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Bombay Rayon Fashions Ltd.	</asp:ListItem>
            <asp:ListItem>	Bosch Ltd.	</asp:ListItem>
            <asp:ListItem>	Britannia Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	C Mahendra Exports Ltd.	</asp:ListItem>
            <asp:ListItem>	Cadila Healthcare Ltd.	</asp:ListItem>
            <asp:ListItem>	Cairn India Ltd.	</asp:ListItem>
            <asp:ListItem>	Canara Bank	</asp:ListItem>
            <asp:ListItem>	Carborundum Universal Ltd.	</asp:ListItem>
            <asp:ListItem>	Castrol India Ltd.	</asp:ListItem>
            <asp:ListItem>	Ceat Ltd.	</asp:ListItem>
            <asp:ListItem>	Central Bank of India	</asp:ListItem>
            <asp:ListItem>	Century Enka Ltd.	</asp:ListItem>
            <asp:ListItem>	Century Plyboards (I) Ltd.	</asp:ListItem>
            <asp:ListItem>	Century Textiles &amp; Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	CESC Ltd.	</asp:ListItem>
            <asp:ListItem>	Chambal Fertilisers &amp; Chemicals Ltd.	</asp:ListItem>
            <asp:ListItem>	Chennai Petroleum Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Chettinad Cement Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Cholamandalam Investment &amp; Finance Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Cipla Ltd.	</asp:ListItem>
            <asp:ListItem>	City Union Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	CMC Ltd.	</asp:ListItem>
            <asp:ListItem>	Coal India Ltd.	</asp:ListItem>
            <asp:ListItem>	Colgate-Palmolive (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	Consolidated Construction Consortium Ltd.	</asp:ListItem>
            <asp:ListItem>	Container Corporation of India Ltd.	</asp:ListItem>
            <asp:ListItem>	CORE Education &amp; Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	Coromandel International Ltd.	</asp:ListItem>
            <asp:ListItem>	Corporation Bank	</asp:ListItem>
            <asp:ListItem>	Crompton Greaves Ltd.	</asp:ListItem>
            <asp:ListItem>	Cummins India Ltd.	</asp:ListItem>
            <asp:ListItem>	Dabur India Ltd.	</asp:ListItem>
            <asp:ListItem>	Dalmia Bharat Ltd.	</asp:ListItem>
            <asp:ListItem>	DB Corp Ltd.	</asp:ListItem>
            <asp:ListItem>	DCM Shriram Ltd.	</asp:ListItem>
            <asp:ListItem>	Deepak Fertilisers &amp; Petrochemicals Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Dena Bank	</asp:ListItem>
            <asp:ListItem>	Dewan Housing Finance Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Dhampur Sugar Mills Ltd.	</asp:ListItem>
            <asp:ListItem>	Dhanlaxmi Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Dhunseri Petrochem &amp; Tea Ltd.	</asp:ListItem>
            <asp:ListItem>	Diamond Power Infrastructure Ltd.	</asp:ListItem>
            <asp:ListItem>	Dish TV India Ltd.	</asp:ListItem>
            <asp:ListItem>	Divi_27_s Laboratories Ltd.	</asp:ListItem>
            <asp:ListItem>	DLF Ltd.	</asp:ListItem>
            <asp:ListItem>	Dr. Reddy_27_s Laboratories Ltd.	</asp:ListItem>
            <asp:ListItem>	Dynamatic Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	Edelweiss Financial Services Ltd.	</asp:ListItem>
            <asp:ListItem>	Educomp Solutions Ltd.	</asp:ListItem>
            <asp:ListItem>	Eicher Motors Ltd.	</asp:ListItem>
            <asp:ListItem>	EID Parry (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	EIH Ltd.	</asp:ListItem>
            <asp:ListItem>	Elecon Engineering Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Electrosteel Castings Ltd.	</asp:ListItem>
            <asp:ListItem>	Electrotherm (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	Emami Ltd.	</asp:ListItem>
            <asp:ListItem>	Engineers India Ltd.	</asp:ListItem>
            <asp:ListItem>	Era Infra Engineering Ltd.	</asp:ListItem>
            <asp:ListItem>	Escorts Ltd.	</asp:ListItem>
            <asp:ListItem>	Essar Oil Ltd.	</asp:ListItem>
            <asp:ListItem>	Essar Shipping Ltd.	</asp:ListItem>
            <asp:ListItem>	Essel Propack Ltd.	</asp:ListItem>
            <asp:ListItem>	Exide Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Federal Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Fertilisers and Chemicals Travancore Ltd.	</asp:ListItem>
            <asp:ListItem>	Finolex Cables Ltd.	</asp:ListItem>
            <asp:ListItem>	Finolex Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Firstsource Solutions Ltd.	</asp:ListItem>
            <asp:ListItem>	Forbes &amp; Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Force Motors Ltd.	</asp:ListItem>
            <asp:ListItem>	Fortis Healthcare Ltd.	</asp:ListItem>
            <asp:ListItem>	Future Retail Ltd.	</asp:ListItem>
            <asp:ListItem>	GAIL (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	Gammon India Ltd.	</asp:ListItem>
            <asp:ListItem>	Garden Silk Mills Ltd.	</asp:ListItem>
            <asp:ListItem>	Gayatri Projects Ltd.	</asp:ListItem>
            <asp:ListItem>	GHCL Ltd.	</asp:ListItem>
            <asp:ListItem>	Gitanjali Gems Ltd.	</asp:ListItem>
            <asp:ListItem>	GlaxoSmithKline Consumer Healthcare Ltd.	</asp:ListItem>
            <asp:ListItem>	GlaxoSmithKline Pharmaceuticals Ltd.	</asp:ListItem>
            <asp:ListItem>	Glenmark Pharmaceuticals Ltd.	</asp:ListItem>
            <asp:ListItem>	Glodyne Technoserve Ltd.	</asp:ListItem>
            <asp:ListItem>	GMR Infrastructure Ltd.	</asp:ListItem>
            <asp:ListItem>	Godawari Power &amp; Ispat Ltd.	</asp:ListItem>
            <asp:ListItem>	Godfrey Philips India Ltd.	</asp:ListItem>
            <asp:ListItem>	Godrej Consumer Products Ltd.	</asp:ListItem>
            <asp:ListItem>	Godrej Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Gokul Refoils &amp; Solvent Ltd.	</asp:ListItem>
            <asp:ListItem>	Goodyear India Ltd.	</asp:ListItem>
            <asp:ListItem>	Graphite India Ltd.	</asp:ListItem>
            <asp:ListItem>	Grasim Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Great Eastern Shipping Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Greaves Cotton Ltd.	</asp:ListItem>
            <asp:ListItem>	Greenply Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	GTL Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat Alkalies &amp; Chemicals Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat Ambuja Exports Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat Fluorochemicals Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat Gas Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat Mineral Development Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat Narmada Valley Fertilizers &amp; Chemicals Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat NRE Coke Ltd.	</asp:ListItem>
            <asp:ListItem>	Gujarat State Fertilizer &amp; Chemicals Ltd.	</asp:ListItem>
            <asp:ListItem>	GVK Power &amp; Infrastructure Ltd.	</asp:ListItem>
            <asp:ListItem>	Hanung Toys &amp; Textiles Ltd.	</asp:ListItem>
            <asp:ListItem>	Hatsun Agro Products Ltd.	</asp:ListItem>
            <asp:ListItem>	Havells India Ltd.	</asp:ListItem>
            <asp:ListItem>	HCL Infosystems Ltd.	</asp:ListItem>
            <asp:ListItem>	HCL Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	HDFC Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	HEG Ltd.	</asp:ListItem>
            <asp:ListItem>	Hero MotoCorp Ltd.	</asp:ListItem>
            <asp:ListItem>	Hexaware Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	Himatsingka Seide Ltd.	</asp:ListItem>
            <asp:ListItem>	Hindalco Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Hinduja Global Solutions Ltd.	</asp:ListItem>
            <asp:ListItem>	Hindustan Construction Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Hindustan Copper Ltd.	</asp:ListItem>
            <asp:ListItem>	Hindustan Petroleum Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Hindustan Unilever Ltd.	</asp:ListItem>
            <asp:ListItem>	Hindustan Zinc Ltd.	</asp:ListItem>
            <asp:ListItem>	Hindusthan National Glass &amp; Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Honeywell Automation India Ltd.	</asp:ListItem>
            <asp:ListItem>	Housing Development &amp; Infrastructure Ltd.	</asp:ListItem>
            <asp:ListItem>	Housing Development Finance Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	HSIL Ltd.	</asp:ListItem>
            <asp:ListItem>	HT Media Ltd.	</asp:ListItem>
            <asp:ListItem>	ICICI Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	IDBI Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Idea Cellular Ltd.	</asp:ListItem>
            <asp:ListItem>	IDFC Ltd.	</asp:ListItem>
            <asp:ListItem>	IFCI Ltd.	</asp:ListItem>
            <asp:ListItem>	IIFL Holdings Ltd.	</asp:ListItem>
            <asp:ListItem>	IL&amp;FS Engineering &amp; Construction Company Ltd.	</asp:ListItem>
            <asp:ListItem>	IL&amp;FS Transportation Networks Ltd.	</asp:ListItem>
            <asp:ListItem>	Ind-Swift Laboratories Ltd.	</asp:ListItem>
            <asp:ListItem>	India Cements Ltd.	</asp:ListItem>
            <asp:ListItem>	India Glycols Ltd.	</asp:ListItem>
            <asp:ListItem>	Indiabulls Financial Services Ltd.[Amalgamated]	</asp:ListItem>
            <asp:ListItem>	Indiabulls Real Estate Ltd.	</asp:ListItem>
            <asp:ListItem>	Indian Bank	</asp:ListItem>
            <asp:ListItem>	Indian Hotels Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Indian Oil Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Indian Overseas Bank	</asp:ListItem>
            <asp:ListItem>	Indo Rama Synthetics (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	Indraprastha Gas Ltd.	</asp:ListItem>
            <asp:ListItem>	IndusInd Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Infosys Ltd.	</asp:ListItem>
            <asp:ListItem>	Infotech Enterprises Ltd.	</asp:ListItem>
            <asp:ListItem>	ING Vysya Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Ipca Laboratories Ltd.	</asp:ListItem>
            <asp:ListItem>	IRB Infrastructure Developers Ltd.	</asp:ListItem>
            <asp:ListItem>	ISGEC Heavy Engineering Ltd.	</asp:ListItem>
            <asp:ListItem>	ISMT Ltd.	</asp:ListItem>
            <asp:ListItem>	ITC Ltd.	</asp:ListItem>
            <asp:ListItem>	ITD Cementation India Ltd.	</asp:ListItem>
            <asp:ListItem>	IVRCL Ltd.	</asp:ListItem>
            <asp:ListItem>	J B Chemicals &amp; Pharmaceuticals Ltd.	</asp:ListItem>
            <asp:ListItem>	Jai Balaji Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Jain Irrigation Systems Ltd.	</asp:ListItem>
            <asp:ListItem>	Jaiprakash Associates Ltd.	</asp:ListItem>
            <asp:ListItem>	Jaiprakash Power Ventures Ltd.	</asp:ListItem>
            <asp:ListItem>	Jammu &amp; Kashmir Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Jayant Agro Organics Ltd.	</asp:ListItem>
            <asp:ListItem>	Jayaswal Neco Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Jaypee Infratech Ltd.	</asp:ListItem>
            <asp:ListItem>	JBF Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Jet Airways (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	Jindal Poly Films Ltd.	</asp:ListItem>
            <asp:ListItem>	Jindal Saw Ltd.	</asp:ListItem>
            <asp:ListItem>	Jindal Stainless Ltd.	</asp:ListItem>
            <asp:ListItem>	Jindal Steel &amp; Power Ltd.	</asp:ListItem>
            <asp:ListItem>	JK Cement Ltd.	</asp:ListItem>
            <asp:ListItem>	JK Lakshmi Cement Ltd.	</asp:ListItem>
            <asp:ListItem>	JK Tyre &amp; Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	JMC Projects (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	JSW Energy Ltd.	</asp:ListItem>
            <asp:ListItem>	JSW Ispat Steel Ltd.	</asp:ListItem>
            <asp:ListItem>	JSW Steel Ltd.	</asp:ListItem>
            <asp:ListItem>	Jubilant Life Sciences Ltd.	</asp:ListItem>
            <asp:ListItem>	JVL Agro Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Jyoti Structures Ltd.	</asp:ListItem>
            <asp:ListItem>	K S Oils Ltd.	</asp:ListItem>
            <asp:ListItem>	Kalpataru Power Transmissions Ltd.	</asp:ListItem>
            <asp:ListItem>	Kansai Nerolac Paints Ltd.	</asp:ListItem>
            <asp:ListItem>	Karnataka Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Karur Vysya Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	KEC International Ltd.	</asp:ListItem>
            <asp:ListItem>	KEI Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Kesoram Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Kingfisher Airlines Ltd.	</asp:ListItem>
            <asp:ListItem>	Kirloskar Brothers Investments Ltd.	</asp:ListItem>
            <asp:ListItem>	Kirloskar Brothers Ltd.	</asp:ListItem>
            <asp:ListItem>	Kirloskar Oil Engines Ltd.	</asp:ListItem>
            <asp:ListItem>	Kohinoor Foods Ltd.	</asp:ListItem>
            <asp:ListItem>	Kotak Mahindra Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	KPIT Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	KRBL Ltd.	</asp:ListItem>
            <asp:ListItem>	KSK Energy Ventures Ltd.	</asp:ListItem>
            <asp:ListItem>	KSL and Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Kwality Ltd.	</asp:ListItem>
            <asp:ListItem>	L&amp;T Finance Holdings Ltd.	</asp:ListItem>
            <asp:ListItem>	Lakshmi Machine Works Ltd.	</asp:ListItem>
            <asp:ListItem>	Lakshmi Vilas Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Lanco Infratech Ltd.	</asp:ListItem>
            <asp:ListItem>	Larsen &amp; Toubro Ltd.	</asp:ListItem>
            <asp:ListItem>	LIC Housing Finance Ltd.	</asp:ListItem>
            <asp:ListItem>	LT Foods Ltd.	</asp:ListItem>
            <asp:ListItem>	Lupin Ltd.	</asp:ListItem>
            <asp:ListItem>	Madhucon Projects Ltd.	</asp:ListItem>
            <asp:ListItem>	Madras Fertilizers Ltd.	</asp:ListItem>
            <asp:ListItem>	Mahanagar Telephone Nigam Ltd.	</asp:ListItem>
            <asp:ListItem>	Maharashtra Seamless Ltd.	</asp:ListItem>
            <asp:ListItem>	Mahindra &amp; Mahindra Financial Services Ltd.	</asp:ListItem>
            <asp:ListItem>	Mahindra &amp; Mahindra Ltd.	</asp:ListItem>
            <asp:ListItem>	Mahindra CIE Automotive Ltd.	</asp:ListItem>
            <asp:ListItem>	Mahindra Ugine Steel Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Man Industries (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	Manaksia Ltd.	</asp:ListItem>
            <asp:ListItem>	Manappuram Finance Ltd.	</asp:ListItem>
            <asp:ListItem>	Mangalore Chemicals &amp; Fertilizers Ltd.	</asp:ListItem>
            <asp:ListItem>	Mangalore Refinery And Petrochemicals Ltd.	</asp:ListItem>
            <asp:ListItem>	Marico Ltd.	</asp:ListItem>
            <asp:ListItem>	Maruti Suzuki India Ltd.	</asp:ListItem>
            <asp:ListItem>	Max India Ltd.	</asp:ListItem>
            <asp:ListItem>	McLeod Russel (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	McNally Bharat Engineering Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Mercator Ltd.	</asp:ListItem>
            <asp:ListItem>	MindTree Ltd.	</asp:ListItem>
            <asp:ListItem>	MIRC Electronics Ltd.	</asp:ListItem>
            <asp:ListItem>	MMTC Ltd.	</asp:ListItem>
            <asp:ListItem>	Monnet Ispat &amp; Energy Ltd.	</asp:ListItem>
            <asp:ListItem>	Moser Baer India Ltd.	</asp:ListItem>
            <asp:ListItem>	Motherson Sumi Systems Ltd.	</asp:ListItem>
            <asp:ListItem>	MphasiS Ltd.	</asp:ListItem>
            <asp:ListItem>	MRF Ltd.	</asp:ListItem>
            <asp:ListItem>	Mukand Ltd.	</asp:ListItem>
            <asp:ListItem>	Munjal Showa Ltd.	</asp:ListItem>
            <asp:ListItem>	Muthoot Finance Ltd.	</asp:ListItem>
            <asp:ListItem>	Nahar Industrial Enterprises Ltd.	</asp:ListItem>
            <asp:ListItem>	Nahar Spinning Mills Ltd.	</asp:ListItem>
            <asp:ListItem>	Nakoda Ltd.	</asp:ListItem>
            <asp:ListItem>	National Aluminium Company Ltd.	</asp:ListItem>
            <asp:ListItem>	National Buildings Construction Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	National Fertilizers Ltd.	</asp:ListItem>
            <asp:ListItem>	National Steel and Agro Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	NCC Ltd.	</asp:ListItem>
            <asp:ListItem>	Nestle India Ltd.	</asp:ListItem>
            <asp:ListItem>	Network 18 Media &amp; Investments Ltd.	</asp:ListItem>
            <asp:ListItem>	Neyveli Lignite Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	NHPC Ltd.	</asp:ListItem>
            <asp:ListItem>	NIIT Ltd.	</asp:ListItem>
            <asp:ListItem>	NIIT Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	Nilkamal Ltd.	</asp:ListItem>
            <asp:ListItem>	NMDC Ltd.	</asp:ListItem>
            <asp:ListItem>	NTPC Ltd.	</asp:ListItem>
            <asp:ListItem>	OCL India Ltd.	</asp:ListItem>
            <asp:ListItem>	Oil And Natural Gas Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Oil India Ltd.	</asp:ListItem>
            <asp:ListItem>	Omaxe Ltd.	</asp:ListItem>
            <asp:ListItem>	Opto Circuits India Ltd.	</asp:ListItem>
            <asp:ListItem>	Oracle Financial Services Software Ltd.	</asp:ListItem>
            <asp:ListItem>	Orchid Chemicals &amp; Pharmaceuticals Ltd.	</asp:ListItem>
            <asp:ListItem>	Orient Paper &amp; Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Oriental Bank of Commerce	</asp:ListItem>
            <asp:ListItem>	Patel Engineering Ltd.	</asp:ListItem>
            <asp:ListItem>	Pearl Global Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Petronet LNG Ltd.	</asp:ListItem>
            <asp:ListItem>	Phillips Carbon Black Ltd.	</asp:ListItem>
            <asp:ListItem>	Pidilite Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Pipavav Defence &amp; Offshore Engineering Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Piramal Enterprises Ltd.	</asp:ListItem>
            <asp:ListItem>	Plethico Pharmaceuticals Ltd.	</asp:ListItem>
            <asp:ListItem>	Polaris Financial Technology Ltd.	</asp:ListItem>
            <asp:ListItem>	Polyplex Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Power Finance Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Power Grid Corporation of India Ltd.	</asp:ListItem>
            <asp:ListItem>	Pradip Overseas Ltd.	</asp:ListItem>
            <asp:ListItem>	Prakash Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Pratibha Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Prism Cement Ltd.	</asp:ListItem>
            <asp:ListItem>	PSL Ltd.	</asp:ListItem>
            <asp:ListItem>	Punj Lloyd Ltd.	</asp:ListItem>
            <asp:ListItem>	Punjab &amp; Sind Bank	</asp:ListItem>
            <asp:ListItem>	Punjab National Bank	</asp:ListItem>
            <asp:ListItem>	Rain Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Ramky Infrastructure Ltd.	</asp:ListItem>
            <asp:ListItem>	Ranbaxy Laboratories Ltd.	</asp:ListItem>
            <asp:ListItem>	Rane Holdings Ltd.	</asp:ListItem>
            <asp:ListItem>	Rashtriya Chemicals &amp; Fertilizers Ltd.	</asp:ListItem>
            <asp:ListItem>	Raymond Ltd.	</asp:ListItem>
            <asp:ListItem>	REI Agro Ltd.	</asp:ListItem>
            <asp:ListItem>	Reliance Capital Ltd.	</asp:ListItem>
            <asp:ListItem>	Reliance Communications Ltd.	</asp:ListItem>
            <asp:ListItem>	Reliance Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Reliance Infrastructure Ltd.	</asp:ListItem>
            <asp:ListItem>	Reliance Power Ltd.	</asp:ListItem>
            <asp:ListItem>	Religare Enterprises Ltd.	</asp:ListItem>
            <asp:ListItem>	Responsive Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Rico Auto Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Rohit Ferro-Tech Ltd.	</asp:ListItem>
            <asp:ListItem>	Rolta India Ltd.	</asp:ListItem>
            <asp:ListItem>	RSWM Ltd.	</asp:ListItem>
            <asp:ListItem>	Ruchi Infrastructure Ltd.	</asp:ListItem>
            <asp:ListItem>	Ruchi Soya Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Rural Electrification Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	S Kumars Nationwide Ltd.	</asp:ListItem>
            <asp:ListItem>	S Mobility Ltd.	</asp:ListItem>
            <asp:ListItem>	Sadbhav Engineering Ltd.	</asp:ListItem>
            <asp:ListItem>	Sakthi Sugars Ltd.	</asp:ListItem>
            <asp:ListItem>	Sangam (India) Ltd.	</asp:ListItem>
            <asp:ListItem>	Sanofi India Ltd.	</asp:ListItem>
            <asp:ListItem>	Sanwaria Agro Oils Ltd.	</asp:ListItem>
            <asp:ListItem>	Satyam Computer Services Ltd.(Merged)	</asp:ListItem>
            <asp:ListItem>	Savita Oil Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	SEL Manufacturing Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Sesa Sterlite Ltd.	</asp:ListItem>
            <asp:ListItem>	Shipping Corporation of India Ltd.	</asp:ListItem>
            <asp:ListItem>	Shirpur Gold Refinery Ltd.	</asp:ListItem>
            <asp:ListItem>	Shiv-Vani Oil &amp; Gas Exploration Services Ltd.	</asp:ListItem>
            <asp:ListItem>	Shoppers Stop Ltd.	</asp:ListItem>
            <asp:ListItem>	Shree Cements Ltd.	</asp:ListItem>
            <asp:ListItem>	Shree Ganesh Jewellery House (I) Ltd.	</asp:ListItem>
            <asp:ListItem>	Shree Renuka Sugars Ltd.	</asp:ListItem>
            <asp:ListItem>	Shrenuj &amp; Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Shri Lakshmi Cotsyn Ltd.	</asp:ListItem>
            <asp:ListItem>	Shriram City Union Finance Ltd.	</asp:ListItem>
            <asp:ListItem>	Shriram EPC Ltd.	</asp:ListItem>
            <asp:ListItem>	Shriram Transport Finance Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Siemens Ltd.	</asp:ListItem>
            <asp:ListItem>	Simplex Infrastructures Ltd.	</asp:ListItem>
            <asp:ListItem>	Sintex Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	SJVN Ltd.	</asp:ListItem>
            <asp:ListItem>	SKF India Ltd.	</asp:ListItem>
            <asp:ListItem>	Sobha Developers Ltd.	</asp:ListItem>
            <asp:ListItem>	Sona Koyo Steering Systems Ltd.	</asp:ListItem>
            <asp:ListItem>	Sonata Software Ltd.	</asp:ListItem>
            <asp:ListItem>	South Indian Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Southern Petrochemicals Industries Corporation Ltd.	</asp:ListItem>
            <asp:ListItem>	Spicejet Ltd.	</asp:ListItem>
            <asp:ListItem>	SREI Infrastructure Finance Ltd.	</asp:ListItem>
            <asp:ListItem>	SRF Ltd.	</asp:ListItem>
            <asp:ListItem>	SRS Ltd.	</asp:ListItem>
            <asp:ListItem>	State Bank Of Bikaner and Jaipur	</asp:ListItem>
            <asp:ListItem>	State Bank of India	</asp:ListItem>
            <asp:ListItem>	State Bank Of Mysore	</asp:ListItem>
            <asp:ListItem>	State Bank of Travancore	</asp:ListItem>
            <asp:ListItem>	Steel Authority of India (SAIL) Ltd.	</asp:ListItem>
            <asp:ListItem>	Sterling Biotech Ltd.	</asp:ListItem>
            <asp:ListItem>	Sterlite Industries (India) Ltd. (Amalgamated)	</asp:ListItem>
            <asp:ListItem>	Sterlite Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	Strides Arcolab Ltd.	</asp:ListItem>
            <asp:ListItem>	Sujana Metal Products Ltd.	</asp:ListItem>
            <asp:ListItem>	Sujana Towers Ltd.	</asp:ListItem>
            <asp:ListItem>	Sun Pharmaceutical Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Sun TV Network Ltd.	</asp:ListItem>
            <asp:ListItem>	Sundaram Clayton Ltd.	</asp:ListItem>
            <asp:ListItem>	Sundaram Finance Ltd.	</asp:ListItem>
            <asp:ListItem>	Sundram Fasteners Ltd.	</asp:ListItem>
            <asp:ListItem>	Sunflag Iron &amp; Steel Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Supreme Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Supreme Infrastructure India Ltd.	</asp:ListItem>
            <asp:ListItem>	Supreme Petrochem Ltd.	</asp:ListItem>
            <asp:ListItem>	Surya Pharmaceuticals Ltd.	</asp:ListItem>
            <asp:ListItem>	Surya Roshni Ltd.	</asp:ListItem>
            <asp:ListItem>	Sutlej Textiles &amp; Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Suzlon Energy Ltd.	</asp:ListItem>
            <asp:ListItem>	Syndicate Bank	</asp:ListItem>
            <asp:ListItem>	Tamil Nadu Newsprint And Papers Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Chemicals Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Coffee Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Communications Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Consultancy Services Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Global Beverages Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Motors Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Power Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Steel Ltd.	</asp:ListItem>
            <asp:ListItem>	Tata Teleservices (Maharashtra) Ltd.	</asp:ListItem>
            <asp:ListItem>	Tech Mahindra Ltd.	</asp:ListItem>
            <asp:ListItem>	Tecpro Systems Ltd.	</asp:ListItem>
            <asp:ListItem>	The Ramco Cements Ltd.	</asp:ListItem>
            <asp:ListItem>	Thermax Ltd.	</asp:ListItem>
            <asp:ListItem>	Time Technoplast Ltd.	</asp:ListItem>
            <asp:ListItem>	Titan Company Ltd.	</asp:ListItem>
            <asp:ListItem>	Torrent Pharmaceuticals Ltd.	</asp:ListItem>
            <asp:ListItem>	Torrent Power Ltd.	</asp:ListItem>
            <asp:ListItem>	Transport Corporation of India Ltd.	</asp:ListItem>
            <asp:ListItem>	Trend Electronics Ltd.	</asp:ListItem>
            <asp:ListItem>	Trent Ltd.	</asp:ListItem>
            <asp:ListItem>	Trident Ltd.	</asp:ListItem>
            <asp:ListItem>	Triveni Engineering &amp; Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Tube Investments of India Ltd.	</asp:ListItem>
            <asp:ListItem>	Tulip Telecom Ltd.	</asp:ListItem>
            <asp:ListItem>	TV18 Broadcast Ltd.	</asp:ListItem>
            <asp:ListItem>	TVS Motor Company Ltd.	</asp:ListItem>
            <asp:ListItem>	TVS Srichakra Ltd.	</asp:ListItem>
            <asp:ListItem>	UCO Bank	</asp:ListItem>
            <asp:ListItem>	Uflex Ltd.	</asp:ListItem>
            <asp:ListItem>	UltraTech Cement Ltd.	</asp:ListItem>
            <asp:ListItem>	Union Bank of India	</asp:ListItem>
            <asp:ListItem>	Unitech Ltd.	</asp:ListItem>
            <asp:ListItem>	United Bank of India	</asp:ListItem>
            <asp:ListItem>	United Breweries (Holdings) Ltd.	</asp:ListItem>
            <asp:ListItem>	United Spirits Ltd.	</asp:ListItem>
            <asp:ListItem>	Unity Infraprojects Ltd.	</asp:ListItem>
            <asp:ListItem>	UPL Ltd.	</asp:ListItem>
            <asp:ListItem>	Usha Martin Ltd.	</asp:ListItem>
            <asp:ListItem>	Uttam Galva Steels Ltd.	</asp:ListItem>
            <asp:ListItem>	Uttam Value Steels Ltd.	</asp:ListItem>
            <asp:ListItem>	Va Tech Wabag Ltd.	</asp:ListItem>
            <asp:ListItem>	Vardhman Textiles Ltd.	</asp:ListItem>
            <asp:ListItem>	Varun Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Videocon Industries Ltd.	</asp:ListItem>
            <asp:ListItem>	Vijaya Bank	</asp:ListItem>
            <asp:ListItem>	Voltas Ltd.	</asp:ListItem>
            <asp:ListItem>	Welspun Corp Ltd.	</asp:ListItem>
            <asp:ListItem>	Welspun India Ltd.	</asp:ListItem>
            <asp:ListItem>	Wheels India Ltd.	</asp:ListItem>
            <asp:ListItem>	Whirlpool of India Ltd.	</asp:ListItem>
            <asp:ListItem>	Winsome Diamonds and Jewellery Ltd.	</asp:ListItem>
            <asp:ListItem>	Wipro Ltd.	</asp:ListItem>
            <asp:ListItem>	Wockhardt Ltd.	</asp:ListItem>
            <asp:ListItem>	YES Bank Ltd.	</asp:ListItem>
            <asp:ListItem>	Zee Entertainment Enterprises Ltd.	</asp:ListItem>
            <asp:ListItem>	Zensar Technologies Ltd.	</asp:ListItem>
            <asp:ListItem>	Zuari Global Ltd.	</asp:ListItem>
            <asp:ListItem>	Zylog Systems Ltd.	</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator runat="server" 
            ControlToValidate="DropDownList3" ErrorMessage="**Select Your Company" 
            ID="RequiredFieldValidator13" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />

                            <br />
                            Salary A/C in&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RadioButton runat="server" Text="SMR Bank" ID="RadioButton1" 
                     GroupName="SALARY" />
                  
      
        &nbsp;
                            <asp:RadioButton runat="server" Text="Other Bank" 
            ID="RadioButton2" GroupName="SALARY"></asp:RadioButton>
     
                            <br />
                            <br />
                            Monthly Net Salary&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                                      <asp:TextBox runat="server" ID="TextBox8" 
            style="margin-bottom: 0px"></asp:TextBox>

                            <asp:RequiredFieldValidator runat="server" 
            ForeColor="#CC3300" ControlToValidate="TextBox8" 
            ErrorMessage="**Enter Your Monthly Net Salary" ID="RequiredFieldValidator10"></asp:RequiredFieldValidator>

                            <br />
                            <br />&nbsp;Total Experiance in Current Company
        <asp:DropDownList runat="server" ID="DropDownList7" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="0">Less Than 6 Months </asp:ListItem>
            <asp:ListItem Value="1">6 to 11 Months</asp:ListItem>
            <asp:ListItem Value="2">1 Years</asp:ListItem>
            <asp:ListItem Value="3">2 Years</asp:ListItem>
            <asp:ListItem Value="4">3 years</asp:ListItem>
            <asp:ListItem Value="5">4 Years</asp:ListItem>
            <asp:ListItem Value="6">More than 4 Years</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp;
        <asp:RequiredFieldValidator runat="server" ForeColor="#CC3300" 
            ControlToValidate="DropDownList7" 
            ErrorMessage="** Select Experiance in Current Company" 
            ID="RequiredFieldValidator11"></asp:RequiredFieldValidator>
        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        <br />Total Experiance&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList runat="server" ID="DropDownList8" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="0">Less Than 6 Months </asp:ListItem>
            <asp:ListItem Value="1">6 to 11 Months</asp:ListItem>
            <asp:ListItem Value="2">1 Years</asp:ListItem>
            <asp:ListItem Value="3">2 Years</asp:ListItem>
            <asp:ListItem Value="4">3 years</asp:ListItem>
            <asp:ListItem Value="5">4 Years</asp:ListItem>
            <asp:ListItem Value="6">More than 4 Years</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ForeColor="#CC3300" 
            ControlToValidate="DropDownList8" 
            ErrorMessage="** Select  Total work Experiance" 
            ID="RequiredFieldValidator12"></asp:RequiredFieldValidator>
        &nbsp;&nbsp; &nbsp;
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;Residance Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList runat="server" ID="DropDownList2" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="Select Resi Type">Select Resi Type</asp:ListItem>
            <asp:ListItem Value="Parent Owned">Parent Owned</asp:ListItem>
            <asp:ListItem Value="Owned">Owned</asp:ListItem>
            <asp:ListItem Value="Rented">Rented</asp:ListItem>
            <asp:ListItem Value="PG">PG</asp:ListItem>
            <asp:ListItem Value="Hostel">Hostel</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ForeColor="#CC3300" 
            ControlToValidate="DropDownList2" ErrorMessage="** Select Residance Type" 
            ID="RequiredFieldValidator5"></asp:RequiredFieldValidator>
        <br />
        <br /> Total yrs on Current Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList runat="server" ID="DropDownList5" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="0">Less Than 6 Months </asp:ListItem>
            <asp:ListItem Value="1">6 to 11 Months</asp:ListItem>
            <asp:ListItem Value="2">1 Years</asp:ListItem>
            <asp:ListItem Value="3">2 Years</asp:ListItem>
            <asp:ListItem Value="4">3 years</asp:ListItem>
            <asp:ListItem Value="5">4 Years</asp:ListItem>
            <asp:ListItem Value="6">More than 4 Years</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp;
        <asp:RequiredFieldValidator runat="server" ForeColor="#CC3300" 
            ControlToValidate="DropDownList5" 
            ErrorMessage="** Select Years from when you are on current address" 
            ID="RequiredFieldValidator6"></asp:RequiredFieldValidator>
        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        <br />&nbsp;Total yrs in current city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:DropDownList runat="server" ID="DropDownList6" 
            onselectedindexchanged="DropDownList6_SelectedIndexChanged" 
            AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="0">Less Than 6 Months </asp:ListItem>
            <asp:ListItem Value="1">6 to 11 Months</asp:ListItem>
            <asp:ListItem Value="2">1 Years</asp:ListItem>
            <asp:ListItem Value="3">2 Years</asp:ListItem>
            <asp:ListItem Value="4">3 years</asp:ListItem>
            <asp:ListItem Value="5">4 Years</asp:ListItem>
            <asp:ListItem Value="6">More than 4 Years</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ForeColor="#CC3300" 
            ControlToValidate="DropDownList6" 
            ErrorMessage="** Select Years from when you are on current address" 
            ID="RequiredFieldValidator7"></asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;Obligation of Loans<br />
&nbsp;(If any loan is going on)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </b>
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Find Eligibility" />

   
      
    <br />
          
            
            
        
    <br />
    <br />
    &nbsp;
    <table>
    <tr>
    <td>
    <asp:Panel ID="Panel1" runat="server" BackColor="#333399" 
        style="text-align: left" Visible="False" Width="351px">
   
            <span class="style2"><strong>Maximum Eligibility Calculator</strong></span><b/><br />
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="White" 
                style="font-weight: 700" Text="Loan Amount"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Amount" runat="server" ForeColor="White" 
                style="font-weight: 700"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Tenure"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="months" runat="server" ForeColor="White"></asp:Label>
            <p>
                <asp:Label ID="Label1" runat="server" ForeColor="White" Height="25px" 
                    style="font-weight: 700" Width="120px">Rate of Interest</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Rate" runat="server" ForeColor="White" style="font-weight: 700"></asp:Label>
            </p>
            <p>
                <b/>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Show EMI AND PF" />
                
            </p>
            <asp:Label ID="Label3" runat="server" ForeColor="White" 
                style="font-weight: 700" Text="EMI(Monthly instalment)"></asp:Label>
            &nbsp;
            <asp:Label ID="EMI" runat="server" ForeColor="White" style="font-weight: 700"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" ForeColor="White" 
                style="font-weight: 700" Text="Processing Fees"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="PF" runat="server" ForeColor="White" style="font-weight: 700"></asp:Label>
            <br />
            <br />
            <b/>
           
     </asp:Panel>
     </td> 
     <td>
     &nbsp;
     <asp:Panel ID="Panel3" runat="server" BackColor="#333399" 
        style="text-align: left" Width="351px" Visible="False">
   
            <span class="style2"><strong>Personal Loan Calculator</strong></span><b/><br />
            <br />
            <asp:Label ID="Label6" runat="server" ForeColor="White" 
                style="font-weight: 700" Text="Loan Amount"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="loanamt" runat="server"></asp:TextBox>
&nbsp;
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" ForeColor="White" 
                Text="Tenure(in months)"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="tenor" runat="server" Height="19px" 
                Width="66px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>36</asp:ListItem>
                <asp:ListItem>48</asp:ListItem>
                <asp:ListItem>60</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="Show EMI AND PF" />
            <br />
            &nbsp;<br />
            <asp:Label ID="Label12" runat="server" ForeColor="White" 
                style="font-weight: 700" Text="EMI(Monthly instalment)"></asp:Label>
            &nbsp;
            <asp:Label ID="emi1" runat="server" ForeColor="White" style="font-weight: 700"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" ForeColor="White" 
                style="font-weight: 700" Text="Processing Fees"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="pf1" runat="server" ForeColor="White" style="font-weight: 700"></asp:Label>
            <br />
            <br />
            <br />
         
     </asp:Panel></td>
     </tr> </table>
    </form>
</body>
</html>

