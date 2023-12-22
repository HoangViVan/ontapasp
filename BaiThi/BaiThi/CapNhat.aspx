<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CapNhat.aspx.cs" Inherits="BaiThi.CapNhat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Mã sản phẩm:"></asp:Label>
        <asp:TextBox ID="txtmasp" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Tên sản phẩm:"></asp:Label>
        <asp:TextBox ID="txttensp" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:GridView ID="grvsp" Width="600" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="3" OnPageIndexChanging="grvsp_PageIndexChanging" OnSelectedIndexChanged="grvsp_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
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
    <div>
        <asp:Label ID="lblthongbao" runat="server" ForeColor="Red" Text=""></asp:Label>
    </div>
    <div>
        <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
        <asp:Button ID="btnluu" runat="server" Text="Lưu" OnClick="btnluu_Click" />
        <asp:Button ID="btnsua" runat="server" Text="Sửa" OnClick="btnsua_Click" />
        <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />
    </div>
</asp:Content>
