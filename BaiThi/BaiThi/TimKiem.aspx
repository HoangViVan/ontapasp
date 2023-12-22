<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="BaiThi.TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Mã sản phẩm:"></asp:Label>
        <asp:TextBox ID="txtmasanpham" runat="server"></asp:TextBox>
        <asp:Button ID="btnmasanpham" runat="server" Text="Tìm theo mã" OnClick="btnmasanpham_Click" />
    </div>
    <div>
    <asp:Label ID="Label2" runat="server" Text="Tên sản phẩm:"></asp:Label>
    <asp:TextBox ID="txttensanpham" runat="server"></asp:TextBox>
    <asp:Button ID="btntensanpham" runat="server" Text="Tìm theo tên" OnClick="btntensanpham_Click" />
</div>
    <div>
        <asp:GridView ID="grvsanpham" Width="700" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
</asp:Content>
