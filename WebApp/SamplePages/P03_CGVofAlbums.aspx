<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="P03_CGVofAlbums.aspx.cs" Inherits="WebApp.SamplePages.P03_CGVofAlbums" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Custom GridView of Albums</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" AllowPaging="True" PagerSettings-Mode="NumericFirstLast" CssClass="table table-striped" BorderStyle="None" GridLines="Horizontal" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="AlbumId" HeaderText="AlbumId" SortExpression="AlbumId"></asp:BoundField>
            <asp:BoundField DataField="AlbumTitle" HeaderText="AlbumTitle" SortExpression="AlbumTitle"></asp:BoundField>
            <asp:BoundField DataField="ArtistId" HeaderText="ArtistId" SortExpression="ArtistId"></asp:BoundField>
            <asp:BoundField DataField="AlbumReleaseYear" HeaderText="AlbumReleaseYear" SortExpression="AlbumReleaseYear"></asp:BoundField>
            <asp:BoundField DataField="AlbumReleaseLabel" HeaderText="AlbumReleaseLabel" SortExpression="AlbumReleaseLabel"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <br /><br />
    <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Albums_List" TypeName="ChinookSystem.BLL.AlbumController"></asp:ObjectDataSource>
</asp:Content>
