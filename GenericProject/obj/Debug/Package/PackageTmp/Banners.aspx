<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Banners.aspx.cs" Inherits="GenericProject.Banners" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .DropContent {
            padding: 0.571rem 1rem;
            font-size: 1rem;
            font-weight: 400;
            width: 100%;
            line-height: 1.45;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #d8d6de;
            border-radius: 0.357rem;
        }
    </style>
    <style>
        .itembtn {
            padding: 0.2rem 0.5rem;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row">
                                <div class="col-md-3">
                                    <label style="font-weight: bold;">Choose Banner</label>
                                    <asp:FileUpload runat="server" ID="FileUpload" CssClass="form-control" />
                                </div>
                                <div class="col-md-3" style="margin-top: 29px;">
                                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12">
                                    <asp:Repeater ID="RepeaterBanners" runat="server" OnItemCommand="RepeaterBanners_ItemCommand">
                                        <HeaderTemplate>
                                            <table id="tblBanner" class="table table-striped table-bordered table-hover" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>S.No</th>
                                                        <th>Banner</th>
                                                        <th style="text-align: center;">Status</th>
                                                        <th style="text-align: center;">Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("Id")%> ' Visible="false" />
                                                    <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' />
                                                </td>
                                                <td>
                                                    <img src='<%# Eval("BannerPath")%>' style="height: 80px; width: 120px;" />
                                                </td>
                                                <td style="width: 150px; text-align: center;">
                                                    <asp:Label runat="server" ID="lblMessage" Text='<%# Eval("BannerStatus")%> ' />
                                                </td>
                                                <td style="width: 120px; text-align: center;">
                                                    <asp:LinkButton runat="server" CssClass="btn btn-primary" ID="lnkUpdateStatus" CommandArgument='<%# Container.ItemIndex %>' ToolTip="Update Status" CommandName="UpdateStatus"><i class="ri-settings-fill"></i></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </tbody>
                                </table>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <asp:Label runat="server" ID="lblDataNotFound" Style="font-size: 25px; font-weight: bold;"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

