<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchResult.ascx.cs" Inherits="GAPPI.SearchResult" %>
<section class="search-result-item">
    <div class="search-result-item-body">
        <div class="row">
            <asp:HiddenField ID="hfPrecedentID" runat="server" />
            <div class="col-sm-9">
                <h4 class="search-result-item-heading" style="color: #A41E35;">
                    <asp:Label ID="lblTitle" CssClass="" Style="font-weight: 900;" runat="server" Text=""></asp:Label></h4>
            </div>
            <div class="col-sm-9">
                <dl class="row">
                    <dt class="col-lg-2 text-secondary text-lg-end">Location: </dt>
                    <dd class="col-lg-9">
                        <asp:Label ID="lblLocation" runat="server" Text=""></asp:Label></dd>
                    <dt class="col-lg-2 text-secondary text-lg-end">Date: </dt>
                    <dd class="col-lg-9">
                        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></dd>
                    <dt class="col-lg-2 text-secondary text-lg-end">Designer: </dt>
                    <dd class="col-lg-9">
                        <asp:Label ID="lblDesigner" runat="server" Text=""></asp:Label></dd>
                    <dt class="col-lg-2 text-secondary text-lg-end">Suggested By: </dt>
                    <dd class="col-lg-9">
                        <asp:Label ID="lblSuggestedBy" runat="server" Text=""></asp:Label></dd>
                </dl>
                <div class="">
                    <asp:Button CssClass="d-inline-block py-2 px-3" ID="btnVisitSite" runat="server" Text="Visit the site" BorderStyle="NotSet" BackColor="#222222" ForeColor="White" Font-Size="Medium" />
                    <asp:HyperLink ID="hypPrecedent" runat="server" CssClass="text-center d-inline-block py-2 px-3 bg-secondary border border-2 border-dark text-decoration-none" BorderStyle="NotSet" BackColor="#222222" ForeColor="White" Font-Size="Medium">
                    See More?
                    </asp:HyperLink>
                </div>
            </div>
            <div class="col-sm-3 text-align-center text-xl-end mt-sm-1">
                <div class="m-sm medium">
                    <asp:Image ID="imgBookmark" runat="server" ImageUrl="~/Images/Bookmark.png" CssClass="img-fluid" AlternateText="Bookmark img" Height="20" />
                    Bookmark
                </div>
                <a class="image-link" href="#">
                    <img class="image" src="sp.png">
                </a>
            </div>
        </div>
    </div>
    <hr />
</section>
