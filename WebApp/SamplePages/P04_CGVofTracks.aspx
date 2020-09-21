<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="P04_CGVofTracks.aspx.cs" Inherits="WebApp.SamplePages.P04_CGVofTracks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Custom GridView of Tracks</h1>
    <div class="row">
        <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    </div>
    <div class="row">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Track_List" TypeName="ChinookSystem.BLL.TrackController"></asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" AllowPaging="True" CssClass="table table-striped" PageSize="5" PagerSettings-Mode="NumericFirstLast" GridLines="Horizontal" BorderStyle="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:BoundField DataField="TrackName" HeaderText="TrackName" SortExpression="TrackName"></asp:BoundField>
                <asp:BoundField DataField="TrackComposer" HeaderText="TrackComposer" SortExpression="TrackComposer"></asp:BoundField>
                <asp:BoundField DataField="TrackMilliseconds" HeaderText="TrackMilliseconds" SortExpression="TrackMilliseconds"></asp:BoundField>
                <asp:BoundField DataField="TrackBytes" HeaderText="TrackBytes" SortExpression="TrackBytes"></asp:BoundField>
                <asp:BoundField DataField="TrackUnitPrice" HeaderText="TrackUnitPrice" SortExpression="TrackUnitPrice"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <div class="row">

    </div>
    
    
</asp:Content>
