<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="paymon.aspx.vb" Inherits="HRonline.paymon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 74px;
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:Label ID="Label1" runat="server" Enabled="False" ForeColor="White" 
            Text="-" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <img align="middle" class="style1" src="Styles/gif-logo-b.gif" /><br />
        <br />
        Select month:
        <asp:DropDownList ID="DD1" runat="server" DataSourceID="SqlD3" 
            DataTextField="MonV" DataValueField="MonV">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Update" Width="77px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
            ImageUrl="~/Styles/log-out01.jpg" ToolTip="خروج" Width="32px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="كود" DataSourceID="SqlD4" ForeColor="#333333" 
            GridLines="None" CellSpacing="7">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" 
                BorderStyle="Solid" />
            <Columns>
                <asp:BoundField DataField="كود" HeaderText="كود" ReadOnly="True" 
                    SortExpression="كود" />
                <asp:BoundField DataField="اسم_الموظف" HeaderText="الاسم" 
                    SortExpression="اسم_الموظف" />
                <asp:BoundField DataField="الوظيفة" HeaderText="الوظيفة" 
                    SortExpression="الوظيفة" />
                <asp:BoundField DataField="القطاع" HeaderText="القطاع" 
                    SortExpression="القطاع" />
                <asp:BoundField DataField="الادارة" HeaderText="الادارة" 
                    SortExpression="الادارة" />
                <asp:BoundField DataField="اجمالى_الاجر_الشهرى" 
                    HeaderText="اجمالى الاجر الشهرى" SortExpression="اجمالى_الاجر_الشهرى" />
            </Columns>
            <EditRowStyle BackColor="#999999" BorderColor="Black" BorderStyle="Solid" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlD5" ForeColor="#333333" GridLines="None" 
            Caption="الاستحقاقات" CellSpacing="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="الاجر_الاساسى" HeaderText="الاجر الاساسى" 
                    SortExpression="الاجر_الاساسى" />
                <asp:BoundField DataField="اجمالي_مبلغ_الحافز" HeaderText="اجمالي الحافز" 
                    SortExpression="اجمالي_مبلغ_الحافز" />
                <asp:BoundField DataField="over_time_Amount" HeaderText="اضافي" 
                    SortExpression="over_time_Amount" />
                <asp:BoundField DataField="منح" HeaderText="منح" SortExpression="منح" />
                <asp:BoundField DataField="مكافاة" HeaderText="مكافاة" 
                    SortExpression="مكافاة" />
                <asp:BoundField DataField="حافز_إلتزام" HeaderText="حافز إلتزام" 
                    SortExpression="حافز_إلتزام" />
                <asp:BoundField DataField="بدل_وجبة" HeaderText="بدل وجبة" 
                    SortExpression="بدل_وجبة" />
                <asp:BoundField DataField="بدل_خزينة" HeaderText="بدل خزينة" 
                    SortExpression="بدل_خزينة" />
                <asp:BoundField DataField="بدل_12_ساعة_للمحلات" 
                    HeaderText="بدل ساعات عمل" SortExpression="بدل_12_ساعة_للمحلات" />
                <asp:BoundField DataField="بدل_سيارة" HeaderText="بدل سيارة" 
                    SortExpression="بدل_سيارة" />
                <asp:BoundField DataField="بدل_انتقال" HeaderText="بدل انتقال" 
                    SortExpression="بدل_انتقال" />
                <asp:BoundField DataField="بدل_تعديل_رخصة" HeaderText="بدل تعديل رخصة" 
                    SortExpression="بدل_تعديل_رخصة" />
                <asp:BoundField DataField="بدل_اشراف" HeaderText="بدل اشراف" 
                    SortExpression="بدل_اشراف" />
                <asp:BoundField DataField="بدل_اغتراب" HeaderText="بدل اغتراب" 
                    SortExpression="بدل_اغتراب" />
                <asp:BoundField DataField="تسوية_من_شهر_سابق1" HeaderText="تسوية مستحقة" 
                    SortExpression="تسوية_من_شهر_سابق1" />
                <asp:BoundField DataField="اجمالى_الاستحقاقات" HeaderText="اجمالى الاستحقاقات" 
                    ReadOnly="True" SortExpression="اجمالى_الاستحقاقات" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlD6" ForeColor="#333333" GridLines="None" 
            Caption="الاستقطاعات" CellSpacing="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="اجمالى_حصة_الموظف" HeaderText="تأمين اجتماعي" 
                    SortExpression="اجمالى_حصة_الموظف" />
                <asp:BoundField DataField="عجز_جرد" HeaderText="عجز جرد" 
                    SortExpression="عجز_جرد" />
                <asp:BoundField DataField="قيمة_الجزاء" HeaderText="قيمة الجزاء" 
                    SortExpression="قيمة_الجزاء" />
                <asp:BoundField DataField="قيمة_بدون_اجر" HeaderText="قيمة بدون اجر" 
                    SortExpression="قيمة_بدون_اجر" />
                <asp:BoundField DataField="قيمة_التاخير" HeaderText="قيمة التاخير" 
                    SortExpression="قيمة_التاخير" />
                <asp:BoundField DataField="قيمة_الغياب" HeaderText="قيمة الغياب" 
                    SortExpression="قيمة_الغياب" />
                <asp:BoundField DataField="قيمة_المرضي" HeaderText="قيمة المرضي" 
                    SortExpression="قيمة_المرضي" />
                <asp:BoundField DataField="سلفة_مؤقتة" HeaderText="سلفة مؤقتة" 
                    SortExpression="سلفة_مؤقتة" />
                <asp:BoundField DataField="سلفة_مستديمة" HeaderText="سلفة مستديمة" 
                    SortExpression="سلفة_مستديمة" />
                <asp:BoundField DataField="قرض_حسن" HeaderText="قرض حسن" 
                    SortExpression="قرض_حسن" />
                <asp:BoundField DataField="موبايل" HeaderText="موبايل" 
                    SortExpression="موبايل" />
                <asp:BoundField DataField="تامين_طبى" HeaderText="تامين طبى" 
                    SortExpression="تامين_طبى" />
                <asp:BoundField DataField="خصم_من_تاريخ_التعيين" 
                    HeaderText="خصم  تاريخ التعيين" SortExpression="خصم_من_تاريخ_التعيين" />
                <asp:BoundField DataField="تسوية_من_شهر_سابق" HeaderText="تسوية مخصومة" 
                    SortExpression="تسوية_من_شهر_سابق" />
                <asp:BoundField DataField="Premium_Card" HeaderText="Premium Card" 
                    SortExpression="Premium_Card" />
                <asp:BoundField DataField="Total_Deductions" HeaderText="Total Deductions" 
                    SortExpression="Total_Deductions" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="كود" DataSourceID="SqlD7" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="خزينة_صرف_الراتب" HeaderText="خزينة صرف الراتب" 
                    SortExpression="خزينة_صرف_الراتب" />
                <asp:BoundField DataField="صافى_الدخل_الشهرى" HeaderText="صافى الدخل الشهرى" 
                    SortExpression="صافى_الدخل_الشهرى" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlD3" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Vac.accdb;Jet OLEDB:Database Password=HRpassword*2020" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT [MonV] FROM [MonView] ORDER BY [ID-Mon]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlD4" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Vac.accdb;Jet OLEDB:Database Password=HRpassword*2020" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT [اسم الموظف] AS اسم_الموظف, [الوظيفة], [كود], [القطاع], [الادارة], [اجمالى الاجر الشهرى] AS اجمالى_الاجر_الشهرى FROM [Emp-Data] WHERE (([كود] = ?) AND ([Mon-Select] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblid" Name="كود" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="DD1" Name="column1" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlD5" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Vac.accdb;Jet OLEDB:Database Password=HRpassword*2020" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT [الاجر الاساسى] AS الاجر_الاساسى, [اجمالي مبلغ الحافز] AS اجمالي_مبلغ_الحافز, [over time Amount] AS over_time_Amount, [منح], [مكافاة], [حافز إلتزام] AS حافز_إلتزام, [بدل وجبة] AS بدل_وجبة, [بدل خزينة] AS بدل_خزينة, [بدل 12 ساعة للمحلات] AS بدل_12_ساعة_للمحلات, [بدل سيارة] AS بدل_سيارة, [بدل انتقال] AS بدل_انتقال, [بدل تعديل رخصة] AS بدل_تعديل_رخصة, [بدل اشراف] AS بدل_اشراف, [بدل اغتراب] AS بدل_اغتراب, [تسوية من شهر سابق1] AS تسوية_من_شهر_سابق1, [اجمالى الاستحقاقات] AS اجمالى_الاستحقاقات FROM [Emp-Pay] WHERE (([كود] = ?) AND ([Mon-Select] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblid" Name="كود" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="DD1" Name="column1" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlD6" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Vac.accdb;Jet OLEDB:Database Password=HRpassword*2020" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT [اجمالى حصة الموظف] AS اجمالى_حصة_الموظف, [عجز جرد] AS عجز_جرد, [قيمة الجزاء] AS قيمة_الجزاء, [قيمة بدون اجر] AS قيمة_بدون_اجر, [قيمة التاخير] AS قيمة_التاخير, [قيمة الغياب] AS قيمة_الغياب, [قيمة المرضي] AS قيمة_المرضي, [سلفة مؤقتة] AS سلفة_مؤقتة, [سلفة مستديمة] AS سلفة_مستديمة, [قرض حسن] AS قرض_حسن, [موبايل], [تامين طبى] AS تامين_طبى, [خصم من تاريخ التعيين] AS خصم_من_تاريخ_التعيين, [تسوية من شهر سابق] AS تسوية_من_شهر_سابق, [Premium Card] AS Premium_Card, [Total _Deductions] AS Total_Deductions FROM [Emp-Deduct] WHERE (([كود] = ?) AND ([Mon-Select] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblid" Name="كود" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="DD1" Name="column1" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlD7" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Vac.accdb;Jet OLEDB:Database Password=HRpassword*2020" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT [خزينة صرف الراتب] AS خزينة_صرف_الراتب, [صافى الدخل الشهرى] AS صافى_الدخل_الشهرى, [كود] FROM [Emp-Total] WHERE (([كود] = ?) AND ([Mon-Select] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblid" Name="كود" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="DD1" Name="column1" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    
        <asp:Label ID="lblid" runat="server" Text="-" ForeColor="White"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
