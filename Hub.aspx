<%@ Page Title="Hub" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Hub.aspx.cs" Inherits="Hub" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>:</h2>
    <p>This is where the meat of the Forum Replacement Pages will be!</p>
    <asp:Panel ID="Panel1" runat="server" Height="381px" style="margin-bottom: 0px">
        <asp:TextBox ID="HubSearchBox" runat="server" OnTextChanged="HubSearchBox_TextChanged"></asp:TextBox>
        <asp:XmlDataSource ID="NewsPostsXML" runat="server" DataFile="~/App_Data/NewsPosts.xml" XPath="/NewsPosts/NewsPost[@Date<=20730214]"></asp:XmlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="NewsPostsXML" Height="249px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" >
                </asp:BoundField>
                <asp:TemplateField HeaderText="Date" SortExpression="Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# String.Format("{0:####-##-##}",Convert.ToInt32(DataBinder.Eval(Container.DataItem, "Date")))%>' Width="75"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
