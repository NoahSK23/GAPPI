<%@  Title="GAPPI Home" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GAPPI.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/home.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container landing d-flex justify-content-center flex-column align-items-center" id="projects">
        <div class="row mx-auto">
            <h4 class="boldfont mx-auto text-left">WELCOME TO GAPPI (GLOBAL ARCHITECTURAL PROJECT PRECEDENTS INITIATIVE)</h4>
        </div>
        <div class="row w-100 mb-4">
            <p class="text-justify">
                This is a database that can be used for warious purposes, but the primary intended to 
                help you expand your projects from a geographical, cultural, and historical standpoint 
                to come up with ideas that are out of this world.
                So let's get started and broaded your horizon.
            </p>
        </div>
        <div class="row">
            <h5 class="boldfont text-left mb-4">Search precedents, projects, designers, and more......</h5>
        </div>
        <div class="search row w-100 mb-4">
            <asp:TextBox ID="txtSearch" CssClass="search form-control w-100" type="search" placeholder="  Search" aria-label="Search" runat="server"></asp:TextBox>
            <asp:ImageButton CssClass="btnsearch rounded-end p-0" ID="btnSearch" runat="server" ImageUrl="~/Images/SearchArrow.png" Style="height: 47.5px; width: auto; position: absolute; right: 0;"
                PostBackUrl="~/ResultsWUC.aspx" />
        </div>
    </div>
</asp:Content>
