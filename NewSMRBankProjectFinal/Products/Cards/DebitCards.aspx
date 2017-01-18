<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DebitCards.aspx.cs" Inherits="NewSMRBankProjectFinal.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Debit Cards</h1>
    <div class="MainCardsHolder">
        <div class="CardHolder">
            <div class="CardName"><h4>Priority Platinum Debit Card</h4></div>
            <div class="CardImg"><img alt="Infinite Credit Card" src="imgs/platinum_mastercard.jpg" /></div>
            <div class="CardInfo"><p>The Priority Platinum Debit Card is on Visa - Platinum platform meant exclusively for SMR Bank Priority customers.</p></div>
            <div class="CardApply"><p><a id="A1" href="~/Products/Cards/card_eligibility_page.aspx" runat="server">Apply Online</a></p></div>
        </div>
        <div class="CardHolder">
            <div class="CardName"><h4>Gold Debit Card</h4></div>
            <div class="CardImg"><img alt="Infinite Credit Card" src="imgs/gold_card.jpg" /></div>
            <div class="CardInfo"><p>Attractive savings on spends, unlimited free domestic ATM transactions and enhanced personal insurance cover among a host of other benefits.</p></div>
            <div class="CardApply"><p><a id="A2" href="~/Products/Cards/card_eligibility_page.aspx" runat="server">Apply Online</a></p></div>
        </div>
        <div class="CardHolder">
            <div class="CardName"><h4>Classic Debit Card</h4></div>
            <div class="CardImg"><img alt="Infinite Credit Card" src="imgs/signature_card.jpg" /></div>
            <div class="CardInfo"><p>Modern times necessitate that you need to have access to your money anytime and anywhere. The SMR Bank International Debit Card addresses this need.</p></div>
            <div class="CardApply"><p><a id="A3" href="~/Products/Cards/card_eligibility_page.aspx" runat="server">Apply Online</a></p></div>
        </div>
        <div class="CardHolder">
            <div class="CardName"><h4>Titanium Rewards Debit Card</h4></div>
            <div class="CardImg"><img alt="Infinite Credit Card" src="imgs/titanium-card.jpg" /></div>
            <div class="CardInfo"><p>Our Titanium Rewards Debit Card is exclusively designed for people like you who want more from life.</p></div>
            <div class="CardApply"><p><a id="A4" href="~/Products/Cards/card_eligibility_page.aspx" runat="server">Apply Online</a></p></div>
        </div>
        <div class="CardHolder">
            <div class="CardName"><h4>Mastercard Business Debit Card</h4></div>
            <div class="CardImg"><img alt="Infinite Credit Card" src="imgs/mastercard.jpg" /></div>
            <div class="CardInfo"><p>Debit Card designed for the self-employed customers who need instant access to their money. The card comes loaded with benefits and features to help business manage their expenses efficiently.</p></div>
            <div class="CardApply"><p><a id="A5" href="~/Products/Cards/card_eligibility_page.aspx" runat="server">Apply Online</a></p></div>
        </div>
    </div>
</asp:Content>
