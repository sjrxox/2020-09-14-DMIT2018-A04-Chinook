﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="P02_DDLofAlbums.aspx.cs" Inherits="WebApp.SamplePages.P02_DDLofAlbums" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Drop-Down-List of Albums</h1>
    <asp:Label ID="Label1" runat="server" Text="Select Album"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="AlbumTitle" DataValueField="AlbumId" AppendDataBoundItems="True">
        <asp:ListItem Value="0">Select...</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br /><br />
    <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Albums_List" TypeName="ChinookSystem.BLL.AlbumController"></asp:ObjectDataSource>
</asp:Content>
