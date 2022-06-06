<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchResult.ascx.cs" Inherits="GAPPI.SearchResult" %>
<section class="search-result-item">
    <div class="search-result-item-body">
        <div class="row">
            <asp:HiddenField ID="hfPrecedentID" runat="server" />
            <div class="col-sm-9">
                <h4 class="search-result-item-heading text-danger">
                    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></h4>
            </div>

            <div class="col-sm-9">
                <dl class="row">
                    <dt class="col-sm-2 text-secondary">Location: </dt>
                    <dd class="col-sm-9">
                        <asp:Label ID="lblLocation" runat="server" Text=""></asp:Label></dd>
                    <dt class="col-sm-2 text-secondary">Date: </dt>
                    <dd class="col-sm-9">
                        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></dd>
                    <dt class="col-sm-2 text-secondary">Designer: </dt>
                    <dd class="col-sm-9">
                        <asp:Label ID="lblDesigner" runat="server" Text=""></asp:Label></dd>
                    <dt class="col-sm-2 text-secondary">Suggested By: </dt>
                    <dd class="col-sm-9">
                        <asp:Label ID="lblSuggestedBy" runat="server" Text=""></asp:Label></dd>

                </dl>
                <a class="btn btn-primary btn-info btn-sm" href="#">Visit the Site</a>
                <asp:HyperLink ID="hypPrecedent" runat="server" CssClass="btn btn-primary btn-info btn-sm">See More?</asp:HyperLink>
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
