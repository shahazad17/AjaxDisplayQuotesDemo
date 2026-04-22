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
                      <asp:Button ID="btnLoadData" runat="server" Text="Load Data" OnClick="btnLoadData_Click" />
                       <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                <br /><br />
                    <asp:Timer ID="Timer1" runat="server" Interval="15000" OnTick="Timer1_Tick">
                    </asp:Timer>
                </ContentTemplate>
              
            </asp:UpdatePanel>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
       <p>
            &nbsp;</p>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
             <ProgressTemplate>
        <div style="color: red; font-weight: bold;">
            Loading... Please wait.
            <pre style=""></pre>
            <div style="position: absolute; left: -9999px;">
                </div>
            <pre></pre>
        </div>
    </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
</body>
</html>
