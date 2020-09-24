﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="P05_DDLofArtistsToCGVofAlbumsbyArtistId.aspx.cs" Inherits="WebApp.SamplePages.P05_DDLofArtistToCGVofAlbumsbyArtistId" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h2>DDL of Artists to CGV of Albums by ArtistId</h2>
    </div>
    <br />
    <div class="row">
        <asp:Label ID="Label1" runat="server" Text="Select and Artist"></asp:Label>&nbsp;&nbsp;
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Artist_List" TypeName="ChinookSystem.BLL.ArtistController"></asp:ObjectDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="ArtistName" DataValueField="ArtistId" AppendDataBoundItems="true">
            <asp:ListItem Value="0">Select....</asp:ListItem>
        </asp:DropDownList>&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    <br />
    <div class="row">
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="AlbumsByArtist" TypeName="ChinookSystem.BLL.AlbumController">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" DefaultValue="0" Name="artistid" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" AllowPaging="True" CssClass="table table-striped" BorderStyle="None" GridLines="Horizontal" PagerSettings-Mode="NumericFirstLast" PageSize="5" EmptyDataText="No Data Available">
            <Columns>
                <asp:BoundField DataField="AlbumId" HeaderText="AlbumId" SortExpression="AlbumId"></asp:BoundField>
                <asp:BoundField DataField="AlbumTitle" HeaderText="AlbumTitle" SortExpression="AlbumTitle"></asp:BoundField>
                <asp:BoundField DataField="ArtistId" HeaderText="ArtistId" SortExpression="ArtistId"></asp:BoundField>
                <asp:BoundField DataField="AlbumReleaseYear" HeaderText="AlbumReleaseYear" SortExpression="AlbumReleaseYear"></asp:BoundField>
                <asp:BoundField DataField="AlbumReleaseLabel" HeaderText="AlbumReleaseLabel" SortExpression="AlbumReleaseLabel"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <div class="row">
        <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    </div>
    <br />
</asp:Content>
