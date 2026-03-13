<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="AjaxDemoDisplayQuotes.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 221px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Label ID="lblname" runat="server" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblaboutme" runat="server" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblqualification" runat="server" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblhobbies" runat="server" Font-Size="Large"></asp:Label>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblquotes" runat="server" Font-Size="X-Large" ForeColor="#FF3300" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="15000" OnTick="Timer1_Tick">
                    </asp:Timer>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
