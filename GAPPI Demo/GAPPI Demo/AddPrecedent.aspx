<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddPrecedent.aspx.cs" Inherits="GAPPI_Demo.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Noto Sans', sans-serif;
        }

        .navbar-custom {
            background-color: #A41E35;
        }

        footer {
            background-color: #222222;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="h1 font-weight-bold pt-3" style="font-weight: 900;">
            Adding Precedents
        </div>
        <div class="form-group">
            <label for="inputTitle">Precedent Title</label>
            <input type="text" class="form-control" id="inputTitle" placeholder="Title">
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputLoc">Location</label>
                <input type="text" class="form-control" id="inputLoc" placeholder="City/State">
            </div>
            <div class="form-group col-md-4">
                <label for="inputRegion">Country/Region</label>
                <select id="inputRegion" class="form-control">
                    <option selected>Choose...</option>
                    <option>...</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputDate">Date</label>
                <input type="text" class="form-control" id="inputDate" placeholder="Date">
            </div>
            <div class="form-group col-md-6">
                <label for="inputArchitects">Architects</label>
                <input type="text" class="form-control" id="inputArchitects" placeholder="Architects">
            </div>
        </div>
        <div class="form-group">
            <label for="inputDescription">Descritpion</label>
            <textarea class="form-control" id="inputDescription" rows="4"></textarea>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputSuggestedBy">Suggested By</label>
                <input type="text" class="form-control" id="inputSuggestedBy">
            </div>

            <div class="form-group col-md-6">
                <label for="inputKeyWords">Keywords</label>
                <input type="text" class="form-control" id="inputKeyWords">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="uploadImage">Upload Image</label>
                <input type="text" class="form-control" id="uploadImage">
            </div>

            <div class="form-group col-md-6">
                <label for="inputURLs">Links to Further Info</label>
                <input type="text" class="form-control" id="inputURLs">
            </div>
        </div>
        <div class="form-group">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                    *Copyright Disclaimer
                </label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</asp:Content>
