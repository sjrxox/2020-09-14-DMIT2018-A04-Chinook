<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="P06_AlbumCRUD.aspx.cs" Inherits="WebApp.SamplePages.P06_AlbumCRUD" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h2>Album CRUD</h2>
    </div>
    <br />
    <div class="row">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ChinookSystem.VIEWMODELS.AlbumViewModel" DeleteMethod="Albums_Delete" InsertMethod="Albums_Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="Albums_List" TypeName="ChinookSystem.BLL.AlbumController" UpdateMethod="Albums_Update"></asp:ObjectDataSource>
        <asp:ListView ID="ListView1" runat="server"></asp:ListView>
    </div>
    <br />
    <div class="row">
        <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    </div>
    <br />
</asp:Content>
