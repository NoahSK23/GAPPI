<%@ Page Title="GAPPI Precedent" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Precedent.aspx.cs" Inherits="GAPPI.Precedent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/precedent.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="precedent" class="container-fluid w-100" style="text-align: center;">
        <ul class="nav flex-nowrap mx-auto justify-content-center align-middle mt-2 p-3">
            <li class="nav-item px-lg-4">
                <label id="lblSearch" style="text-align: left; font-weight: 900; font-size: 27px;">Search</label>
            </li>
            <li class="nav-item">
                <asp:DropDownList CssClass="form-select search rounded-start" ID="ddlSeachField" runat="server" Style="width: 200px;">
                    <asp:ListItem class="ps-1">All fields</asp:ListItem>
                </asp:DropDownList>
            </li>
            <li class="nav-item">
                <input class="search form-control rounded-0" type="search" placeholder="Search" aria-label="Search" style="width: 450px;">
            </li>
            <li class="nav-item">
                <asp:ImageButton CssClass="search rounded-end" ID="btnSearch" runat="server" ImageUrl="~/Images/SearchArrow.png" PostBackUrl="~/Results.aspx" />
            </li>
            <li class="nav-item px-3">
                <a class="nav-link" id="advancedSearch" href="#" style="color: #A41E35;">Advanced Search</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="bookmark" href="#" style="color: #A41E35;">Bookmark(0)</a>
            </li>
        </ul>
        <div class="solid mb-4"></div>

        <div class="d-flex justify-content-center flex-column align-items-center mt-1">
            <div class="d-flex justify-content-between w-75">
                <div style="text-align: left;">
                    <asp:LinkButton ID="btnBack" runat="server" ForeColor="#222222" PostBackUrl="~/Results.aspx">
                        <img class="pr-2" src="/Images/BackArrow.png" height="13">
                        Back
                    </asp:LinkButton>
                </div>
                <div style="text-align: right;">
                    <asp:LinkButton ID="btnPrevious" runat="server" ForeColor="#899197" Enabled="False">Previous</asp:LinkButton>
                    <span>|</span>
                    <asp:Label ID="Label0" runat="server" Text="Label">1 of 400</asp:Label>
                    <span>|</span>
                    <asp:LinkButton ID="btnNext" runat="server" ForeColor="#A41E35" PostBackUrl="~/Precedent_withImg.aspx">Next</asp:LinkButton>
                </div>
            </div>
            <div class="solid w-75 mt-4"></div>
            <div class="d-flex justify-content-between w-75 mt-3">
                <div style="text-align: left; font-weight: 900; font-size: 40px;">
                    <asp:Label ID="lblPrecedentName" runat="server" ForeColor="#A41E35"></asp:Label>
                </div>
                <div style="text-align: right;">
                    <label for="bookmark">
                        <img class="p-2" src="/Images/Bookmark.png" height="40">Bookmark</label>
                </div>
            </div>

            <div id="precedentInfo" class="d-flex flex-column justify-content-center w-75" style="text-align: left;">
                <div class="infolabel pt-3">
                    <asp:Label ID="Label1" runat="server" Text="Location:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblLocation" runat="server" Text=""></asp:Label>
                </div>
                <div class="infolabel pt-3">
                    <asp:Label ID="Label2" runat="server" Text="Designer:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblDesigner" runat="server" Text=""></asp:Label>
                </div>
                <div class="infolabel pt-3">
                    <asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
                </div>
                <div class="infolabel pt-3">
                    <asp:Label ID="Label4" runat="server" Text="Suggested By:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblSuggestedBy" runat="server" Text=""></asp:Label>
                </div>
                <div class="infolabel pt-3">
                    <asp:Label ID="Label5" runat="server" Text="Description:"></asp:Label>
                </div>
                <div class="pb-3">
                    <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
                </div>

                <div class="pt-3">
                    <asp:Button CssClass="padding" ID="btnVisitSite" runat="server" Text="Visit the site" BorderStyle="NotSet" BackColor="#222222" ForeColor="White" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
