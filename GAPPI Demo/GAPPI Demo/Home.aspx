<%@ Title="GAPPI" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GAPPI_Demo.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>


        .container{
            font-size: 24px;
            margin: auto;
            min-height: 100%
        }


        .search{
            margin: 0;
            padding: 0;
            height: 47.5px;
            position:relative;

        }
        
        .boldfont{
            text-align: left; 
            font-family: 'Noto Sans-ExtraBold', sans-serif; 
            font-weight: 900; 
            font-size: 25px;
        }

        .btnSearch{
            height: 47.5px;
            position:absolute;
            right:0;
        }

        .landing {
            min-height: 100%;
            min-height: calc(100% - 56px);
            padding-top: 7rem;
        }

    </style>


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
            <input class="search form-control" type="search" placeholder="  Search" aria-label="Search" style="width:100%;">
            <img class="btnSearch p-0 m-0" src="/Images/SearchArrow.png">
        </div>
    </div>
</asp:Content>
