<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchResult.ascx.cs" Inherits="GAPPI.SearchResult" %>
<section class="search-result-item">
    <div class="search-result-item-body">
        <div class="row">
            <asp:HiddenField ID="hfPrecedentID" runat="server" />
            <div class="col-sm-9">
                <h4 class="search-result-item-heading" style="color: #A41E35;">
                    <asp:Label ID="lblTitle" CssClass="fw-bolder" runat="server" Text=""></asp:Label></h4>
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
                <div class="">
                    <asp:Button CssClass="d-inline-block py-2 px-3" ID="btnVisitSite" runat="server" Text="Visit the site" BorderStyle="NotSet" BackColor="#222222" ForeColor="White" Font-Size="Medium" />
                    <asp:HyperLink ID="hypPrecedent" runat="server" CssClass="text-center d-inline-block py-2 px-3 bg-secondary border border-2 border-dark text-decoration-none" BorderStyle="NotSet" BackColor="#222222" ForeColor="White" Font-Size="Medium">
                    See More?
                    </asp:HyperLink>
                </div>
            </div>
            <div class="col-sm-3 text-align-center">
                <p class="value3 mt-sm">Bookmark</p>
                <a class="image-link" href="#">
                    <img class="image" src="sp.png">
                </a>
            </div>
        </div>
    </div>
    <hr />
</section>
