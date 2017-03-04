<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="HRonline._Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 179px;
            height: 163px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" 
        style="background-image: url('Styles/040.gif'); height: 776px;">
    
        <br />
        <br />
        <br />
        <br />
        <img alt="" class="style1" src="Styles/gif-logo-b.gif" /><br />
        <br />
        <asp:TextBox ID="txtID" runat="server" BackColor="#99CCFF" TabIndex="1" 
            TextMode="Number" ToolTip="الرقم الادارى" Width="94px" MaxLength="4">الرقم الادارى</asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtPD" runat="server" BackColor="#99CCFF" TabIndex="2" 
            TextMode="Password" ToolTip="كلمة السر" Width="89px" Wrap="False">Password</asp:TextBox>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
            ImageUrl="~/Styles/lg3.gif" TabIndex="3" Width="64px" />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDS1" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Vac.accdb;Persist Security Info=True" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT * FROM [Two] WHERE (([كود] = ?) AND ([PW] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtID" Name="كود" PropertyName="Text" 
                    Type="Double" />
                <asp:ControlParameter ControlID="txtPD" Name="PW" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GVie" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDS1" Enabled="False" EnableViewState="False" 
            Font-Size="XX-Small" ForeColor="White" GridLines="None" Height="15px" 
            ShowHeader="False" UseAccessibleHeader="False" Visible="False">
            <Columns>
                <asp:BoundField DataField="كود" HeaderText="كود" SortExpression="كود" />
                <asp:BoundField DataField="PW" HeaderText="PW" SortExpression="PW" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
