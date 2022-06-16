<%@ Page Title="GAPPI Search Results" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="GAPPI.Results" %>

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

                <section class="search-result-item">

                    <div class="search-result-item-body">
                        <div class="row">
                            <div class="col-sm-9">
                                <h4 class="search-result-item-heading text-danger">Glacier Museum</h4>
                            </div>
                            <div class="col-sm-9">
                                <dl class="row">
                                    <dt class="col-sm-2 text-secondary">Location: </dt>
                                    <dd class="col-sm-9">Fjaerland, Norway</dd>
                                    <dt class="col-sm-2 text-secondary">Date: </dt>
                                    <dd class="col-sm-9">1991</dd>
                                    <dt class="col-sm-2 text-secondary">Designer: </dt>
                                    <dd class="col-sm-9">Sverre Fehn</dd>
                                    <dt class="col-sm-2 text-secondary">Suggested By: </dt>
                                    <dd class="col-sm-9">SA</dd>

                                </dl>
                                <a class="btn btn-primary btn-info btn-sm" href="#">Visit the Site</a>
                                <a class="btn btn-primary btn-info btn-sm" href="Precedent.aspx">See More?</a>
                            </div>
                            <div class="col-sm-3 text-align-center">
                                <p class="value3 mt-sm">Bookmark</p>
                                <a class="image-link" href="#">
                                    <img class="image" src="sp.png">
                                </a>
                            </div>
                        </div>
                    </div>
                </section>

                <hr />

                <section class="search-result-item">
                    <div class="search-result-item-body">
                        <div class="row">
                            <div class="col-sm-9">
                                <h4 class="search-result-item-heading text-danger">Glacier Museum</h4>
                            </div>
                            <div class="col-sm-9">
                                <dl class="row">
                                    <dt class="col-sm-2 text-secondary">Location: </dt>
                                    <dd class="col-sm-9">Fjaerland, Norway</dd>
                                    <dt class="col-sm-2 text-secondary">Date: </dt>
                                    <dd class="col-sm-9">1991</dd>
                                    <dt class="col-sm-2 text-secondary">Designer: </dt>
                                    <dd class="col-sm-9">Sverre Fehn</dd>
                                    <dt class="col-sm-2 text-secondary">Suggested By: </dt>
                                    <dd class="col-sm-9">SA</dd>

                                </dl>
                                <a class="btn btn-primary btn-info btn-sm" href="#">Visit the Site</a>
                                <a class="btn btn-primary btn-info btn-sm" href="Precedent_withImg.aspx">See More?</a>
                            </div>
                            <div class="col-sm-3 text-align-center">
                                <p class="value3 mt-sm">Bookmark</p>

                            </div>
                        </div>
                    </div>
                </section>

                <hr />

                <section class="search-result-item">
                    <div class="search-result-item-body">
                        <div class="row">
                            <div class="col-sm-9">
                                <h4 class="search-result-item-heading text-danger">Glacier Museum</h4>
                            </div>
                            <div class="col-sm-9">
                                <dl class="row">
                                    <dt class="col-sm-2 text-secondary">Location: </dt>
                                    <dd class="col-sm-9">Fjaerland, Norway</dd>
                                    <dt class="col-sm-2 text-secondary">Date: </dt>
                                    <dd class="col-sm-9">1991</dd>
                                    <dt class="col-sm-2 text-secondary">Designer: </dt>
                                    <dd class="col-sm-9">Sverre Fehn</dd>
                                    <dt class="col-sm-2 text-secondary">Suggested By: </dt>
                                    <dd class="col-sm-9">SA</dd>

                                </dl>
                                <a class="btn btn-primary btn-info btn-sm" href="#">Visit the Site</a>
                                <a class="btn btn-primary btn-info btn-sm" href="#">See More?</a>
                            </div>
                            <div class="col-sm-3 text-align-center">
                                <p class="value3 mt-sm">Bookmark</p>
                                <a class="image-link" href="#">
                                    <img class="image" src="sp.png">
                                </a>
                            </div>
                        </div>
                    </div>
                </section>

                <hr />

                <section class="search-result-item">
                    <div class="search-result-item-body">
                        <div class="row">
                            <div class="col-sm-9">
                                <h4 class="search-result-item-heading text-danger">Glacier Museum</h4>
                            </div>
                            <div class="col-sm-9">
                                <dl class="row">
                                    <dt class="col-sm-2 text-secondary">Location: </dt>
                                    <dd class="col-sm-9">Fjaerland, Norway</dd>
                                    <dt class="col-sm-2 text-secondary">Date: </dt>
                                    <dd class="col-sm-9">1991</dd>
                                    <dt class="col-sm-2 text-secondary">Designer: </dt>
                                    <dd class="col-sm-9">Sverre Fehn</dd>
                                    <dt class="col-sm-2 text-secondary">Suggested By: </dt>
                                    <dd class="col-sm-9">SA</dd>

                                </dl>
                                <a class="btn btn-primary btn-info btn-sm" href="#">Visit the Site</a>
                                <a class="btn btn-primary btn-info btn-sm" href="#">See More?</a>
                            </div>
                            <div class="col-sm-3 text-align-center">
                                <p class="value3 mt-sm">Bookmark</p>


                            </div>
                        </div>
                    </div>
                </section>

                <hr />

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
