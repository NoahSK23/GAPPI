<%@ Page Title="GAPPI Add Precedent" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddPrecedent.aspx.cs" Inherits="GAPPI.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="h1 pt-3" style="font-weight: 900;">
            Adding Precedents
        </div>
        <div class="mb-3">
            <label class="form-label" for="inputTitle">Precedent Title</label>
            <input type="text" class="form-control" id="inputTitle" placeholder="Title">
        </div>
        <div class="row">
            <div class="mb-3 col-md-6">
                <label class="form-label" for="inputLoc">Location</label>
                <input type="text" class="form-control" id="inputLoc" placeholder="City/State">
            </div>
            <div class="mb-3 col">
                <label class="form-label" for="inputRegion">Country/Region</label>
                <select id="inputRegion" class="form-select mb-3">
                    <option selected>Choose...</option>
                    <option>...</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="mb-3 col-md-6">
                <label class="form-label" for="inputDate">Date</label>
                <input type="text" class="form-control" id="inputDate" placeholder="Date">
            </div>
            <div class="mb-3 col-md-6">
                <label class="form-label" for="inputArchitects">Architects</label>
                <input type="text" class="form-control" id="inputArchitects" placeholder="Architects">
            </div>
        </div>
        <div class="mb-3">
            <label class="form-label" for="inputDescription">Descritpion</label>
            <textarea class="form-control" style="resize: none;" id="inputDescription" rows="4"></textarea>
        </div>
        <div class="row">
            <div class="mb-3 col-md-6">
                <label class="form-label" for="inputSuggestedBy">Suggested By</label>
                <input type="text" class="form-control" id="inputSuggestedBy">
            </div>

            <div class="mb-3 col-md-6">
                <label class="form-label" for="inputKeyWords">Keywords</label>
                <input type="text" class="form-control" id="inputKeyWords">
            </div>
        </div>
        <div class="row">
            <div class="mb-3 col-md-6">
                <label class="form-label" for="uploadImage">Upload Image</label>
                <input type="text" class="form-control" id="uploadImage">
            </div>

            <div class="mb-3 col-md-6">
                <label class="form-label" for="inputURLs">Links to Further Info</label>
                <input type="text" class="form-control" id="inputURLs">
            </div>
        </div>
        <div class="mb-3">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">*Copyright Disclaimer</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</asp:Content>
