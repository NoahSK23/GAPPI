<%@ Page Title="GAPPI Search Results UC" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResultsWUC.aspx.cs" Inherits="GAPPI.ResultsWUC" ClientIDMode="Static" %>

<%@ Register Src="~/SearchResult.ascx" TagPrefix="uc1" TagName="SearchResult" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/results.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="  text-drak p-3">
        <div class="container">
            <div class="d-md-flex justify-content-between align-items-center ">

                <h3 class="mb-2 mb-md-0 m-xl-2">Search</h3>
                <div class="input-group">
                    <input
                        type="text"
                        class="form-control"
                        placeholder="All fields">
                    <input type="text"
                        class="form-control"
                        placeholder="Search">
                    <button class="btn btn-dark"
                        type="button">
                        Search</button>
                </div>
                <a class="  m-xl-3">Advanced Search</a>
                <a class="  m-xl-2">Bookmark (0)</a>
            </div>
        </div>
    </section>
    <hr />

    <div class="container">
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
