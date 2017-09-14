<%@ Page Title="Hub" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Hub.aspx.cs" Inherits="Hub" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>:</h2>
    <p>This is where the meat of the Forum Replacement Pages will be!</p>
    <asp:Panel ID="Panel1" runat="server" Height="93px" style="margin-bottom: 0px">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="NewsPostsXML" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
            </Columns>
        </asp:GridView>
        <asp:XmlDataSource ID="NewsPostsXML" runat="server" DataFile="~/App_Data/NewsPosts.xml"></asp:XmlDataSource>
    </asp:Panel>
</asp:Content>
