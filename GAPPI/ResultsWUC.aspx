<%@ Page Title="GAPPI Search Results UC" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResultsWUC.aspx.cs" Inherits="GAPPI.ResultsWUC" ClientIDMode="Static" %>

<%@ Register Src="~/SearchResult.ascx" TagPrefix="uc1" TagName="SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/results.css" rel="stylesheet" />
    <link href="css/precedent.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center align-middle mt-2 p-3">
            <div class="col-md">
                <label id="lblSearch" class="h1 fw-bolder">Search</label>
            </div>
            <div class="col-md-3 p-0">
                <asp:DropDownList CssClass="form-select search rounded-start me-0" ID="ddlSeachField" runat="server">
                    <asp:ListItem class="ps-1">All fields</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-4 search p-0">
                <div class="input-group">
                    <asp:TextBox ID="txtSearch" CssClass="search form-control rounded-0" type="search" placeholder="Search" aria-label="Search" runat="server"></asp:TextBox>
                    <asp:ImageButton CssClass="input-group-text w-auto p-0" ID="btnSearch" runat="server" ImageUrl="~/Images/SearchArrow.png" PostBackUrl="~/Results.aspx" Style="height: 47.5px;" />
                </div>
            </div>
            <div class="col-lg-1 text-center">
                <a class="nav-link" id="advancedSearch" href="#" style="color: #A41E35;">Advanced Search</a>
            </div>
            <div class="col-lg-1 text-center">
                <a class="nav-link" id="bookmark" href="#" style="color: #A41E35;">Bookmarks (0)</a>
            </div>
        </div>
    </div>
    <div class="solid"></div>

    <div class="container p-3">
        <div class="row">
            <div class="col-md-2 col-md-push-7">
                <h5>Fields</h5>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Location
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">
                            <input type="checkbox" class="form-check-input">United States</a>
                        <a class="dropdown-item" href="#">
                            <input type="checkbox" class="form-check-input">
                            Ireland</a>
                        <a class="dropdown-item" href="#">
                            <input type="checkbox" class="form-check-input">South Korea</a>
                    </div>
                </div>
                <hr />
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Date
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">
                            <input type="checkbox" class="form-check-input">1900</a>
                        <a class="dropdown-item" href="#">
                            <input type="checkbox" class="form-check-input">
                            1800</a>
                        <a class="dropdown-item" href="#">
                            <input type="checkbox" class="form-check-input">1850</a>
                    </div>
                </div>
            </div>

            <div class="col-md-9 col-md-pull-3">
                <h2>Results</h2>
                <hr />
                <asp:PlaceHolder ID="phResults" runat="server"></asp:PlaceHolder>
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</asp:Content>
