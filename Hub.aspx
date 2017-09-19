<%@ Page Title="Hub" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Hub.aspx.cs" Inherits="Hub" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>:</h2>
    <p>This is where the meat of the Forum Replacement Pages will be!</p>
    <asp:Panel ID="TablePanel" runat="server" Height="381px" style="margin-bottom: 0px">
        <asp:Label ID="CurrentDateLabel" runat="server" Text="Current Date: "></asp:Label>
        <asp:Literal ID="CurrentDateLiteral" runat="server"></asp:Literal>
        <asp:XmlDataSource ID="NewsPostsXML" runat="server" DataFile="~/App_Data/NewsPosts.xml" XPath="/NewsPosts/NewsPost[@Date&lt;=20730214]"></asp:XmlDataSource>
        <asp:HiddenField ID="StartDateHiddenField" runat="server" Value="20700102" />
        <asp:Panel ID="SearchPanel" runat="server" Width="322px">
            <asp:Label ID="SearchLabel" runat="server" Text="Search: "></asp:Label>
            <asp:TextBox ID="HubSearchBox" runat="server"></asp:TextBox>
            <asp:Panel ID="DatesPanel" runat="server" Height="50px" Width="362px" ViewStateMode="Enabled">
                <asp:Label ID="StartDateLabel" runat="server" Text="Start Date: " Width="70px"></asp:Label>
                <asp:DropDownList ID="StartYearDropDown" runat="server">
                    <asp:ListItem Value="2070">2070</asp:ListItem>
                    <asp:ListItem Value="2071">2071</asp:ListItem>
                    <asp:ListItem Value="2072">2072</asp:ListItem>
                    <asp:ListItem Value="2073"></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="StartMonthDropDown" runat="server">
                    <asp:ListItem Value="01">01 - January</asp:ListItem>
                    <asp:ListItem Value="02">02 - February</asp:ListItem>
                    <asp:ListItem Value="03">03 - March</asp:ListItem>
                    <asp:ListItem Value="04">04 - April</asp:ListItem>
                    <asp:ListItem Value="05">05 - May</asp:ListItem>
                    <asp:ListItem Value="06">06 - June</asp:ListItem>
                    <asp:ListItem Value="07">07 - July</asp:ListItem>
                    <asp:ListItem Value="08">08 - August</asp:ListItem>
                    <asp:ListItem Value="09">09 - September</asp:ListItem>
                    <asp:ListItem Value="10">10 - October</asp:ListItem>
                    <asp:ListItem Value="11">11 - November</asp:ListItem>
                    <asp:ListItem Value="12">12 - December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="StartDayDropDown" runat="server">
                    <asp:ListItem Value="01"></asp:ListItem>
                    <asp:ListItem Value="02"></asp:ListItem>
                    <asp:ListItem Value="03"></asp:ListItem>
                    <asp:ListItem Value="04"></asp:ListItem>
                    <asp:ListItem Value="05"></asp:ListItem>
                    <asp:ListItem Value="06"></asp:ListItem>
                    <asp:ListItem Value="07"></asp:ListItem>
                    <asp:ListItem Value="08"></asp:ListItem>
                    <asp:ListItem Value="09"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="11"></asp:ListItem>
                    <asp:ListItem Value="12"></asp:ListItem>
                    <asp:ListItem Value="13"></asp:ListItem>
                    <asp:ListItem Value="14"></asp:ListItem>
                    <asp:ListItem Value="15"></asp:ListItem>
                    <asp:ListItem Value="16"></asp:ListItem>
                    <asp:ListItem Value="17"></asp:ListItem>
                    <asp:ListItem Value="18"></asp:ListItem>
                    <asp:ListItem Value="19"></asp:ListItem>
                    <asp:ListItem Value="20"></asp:ListItem>
                    <asp:ListItem Value="21"></asp:ListItem>
                    <asp:ListItem Value="22"></asp:ListItem>
                    <asp:ListItem Value="23"></asp:ListItem>
                    <asp:ListItem Value="24"></asp:ListItem>
                    <asp:ListItem Value="25"></asp:ListItem>
                    <asp:ListItem Value="26"></asp:ListItem>
                    <asp:ListItem Value="27"></asp:ListItem>
                    <asp:ListItem Value="28"></asp:ListItem>
                    <asp:ListItem Value="29"></asp:ListItem>
                    <asp:ListItem Value="30"></asp:ListItem>
                    <asp:ListItem Value="31"></asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="ResetStartButton" runat="server" Height="20px" OnClick="ResetStartButton_Click" Text="Reset" UseSubmitBehavior="False" />
                <asp:Label ID="EndDateLabel" runat="server" Text="End Date: " Width="70px"></asp:Label>
                <asp:DropDownList ID="EndYearDropDown" runat="server">
                    <asp:ListItem>2070</asp:ListItem>
                    <asp:ListItem>2071</asp:ListItem>
                    <asp:ListItem Value="2072">2072</asp:ListItem>
                    <asp:ListItem Value="2073"></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="EndMonthDropDown" runat="server">
                    <asp:ListItem Value="01">01 - January</asp:ListItem>
                    <asp:ListItem Value="02">02 - February</asp:ListItem>
                    <asp:ListItem Value="03">03 - March</asp:ListItem>
                    <asp:ListItem Value="04">04 - April</asp:ListItem>
                    <asp:ListItem Value="05">05 - May</asp:ListItem>
                    <asp:ListItem Value="06">06 - June</asp:ListItem>
                    <asp:ListItem Value="07">07 - July</asp:ListItem>
                    <asp:ListItem Value="08">08 - August</asp:ListItem>
                    <asp:ListItem Value="09">09 - September</asp:ListItem>
                    <asp:ListItem Value="10">10 - October</asp:ListItem>
                    <asp:ListItem Value="11">11 - November</asp:ListItem>
                    <asp:ListItem Value="12">12 - December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="EndDayDropDown" runat="server">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem Value="03"></asp:ListItem>
                    <asp:ListItem Value="04"></asp:ListItem>
                    <asp:ListItem Value="05"></asp:ListItem>
                    <asp:ListItem Value="06"></asp:ListItem>
                    <asp:ListItem Value="07"></asp:ListItem>
                    <asp:ListItem Value="08"></asp:ListItem>
                    <asp:ListItem Value="09"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="11"></asp:ListItem>
                    <asp:ListItem Value="12"></asp:ListItem>
                    <asp:ListItem Value="13"></asp:ListItem>
                    <asp:ListItem Value="14"></asp:ListItem>
                    <asp:ListItem Value="15"></asp:ListItem>
                    <asp:ListItem Value="16"></asp:ListItem>
                    <asp:ListItem Value="17"></asp:ListItem>
                    <asp:ListItem Value="18"></asp:ListItem>
                    <asp:ListItem Value="19"></asp:ListItem>
                    <asp:ListItem Value="20"></asp:ListItem>
                    <asp:ListItem Value="21"></asp:ListItem>
                    <asp:ListItem Value="22"></asp:ListItem>
                    <asp:ListItem Value="23"></asp:ListItem>
                    <asp:ListItem Value="24"></asp:ListItem>
                    <asp:ListItem Value="25"></asp:ListItem>
                    <asp:ListItem Value="26"></asp:ListItem>
                    <asp:ListItem Value="27"></asp:ListItem>
                    <asp:ListItem Value="28"></asp:ListItem>
                    <asp:ListItem Value="29"></asp:ListItem>
                    <asp:ListItem Value="30"></asp:ListItem>
                    <asp:ListItem Value="31"></asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="ResetEndButton" runat="server" Height="20px" OnClick="ResetEndButton_Click" Text="Reset" UseSubmitBehavior="False" />
            </asp:Panel>
            <asp:Label ID="TestDateLabel" runat="server"></asp:Label>
            <asp:Button ID="ApplyFilterButton" runat="server" Text="APPLY" OnClick="ApplyFilterButton_Click" />
        </asp:Panel>
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
