<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CouponList.aspx.cs" Inherits="GenericProject.CouponList" %>

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
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12">
                                    <a href="AddCoupon.aspx" id="btnAdd" runat="server" style="float: right;" class="dt-button create-new btn btn-primary">+ NEW</a>
                                </div>
                                <div class="col-md-12" style="margin-top: 20px;">
                                    <asp:Repeater ID="RepeaterCoupon" runat="server" OnItemCommand="RepeaterCoupon_ItemCommand">
                                        <HeaderTemplate>
                                            <table id="tbCoupon" class="table table-striped table-bordered table-hover" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th style="text-align: center;">S.No</th>
                                                        <th>Coupon Code</th>
                                                        <th>Create Date</th>
                                                        <th>Expiry Date</th>
                                                        <th style="display:none;">Discount Type</th>
                                                        <th style="text-align: center;">Discount ($)</th>
                                                        <th style="text-align: center;">Status</th>
                                                        <th style="display:none;">Is Used</th>
                                                        <th style="display:none;">Use Type</th>
                                                        <th style="display:none;">Coupon For</th>
                                                        <th style="display:none;">Dealer Name</th>
                                                        <th style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("Id")%> ' Visible="false" />
                                                    <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblCouponCode" Text='<%# Eval("CouponCode")%> ' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblCreateDate" Text='<%# Eval("CreateDate")%> ' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblExpiryDate" Text='<%# Eval("ExpiryDate")%> ' />
                                                </td>
                                                <td style="display:none;">
                                                    <asp:Label runat="server" ID="lblDiscountType" Text='<%# Eval("DiscountType")%> ' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblDiscountAmount" Text='<%# Eval("DiscountAmount")%> ' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status")%> ' />
                                                </td>
                                                <td style="display:none;">
                                                    <asp:Label runat="server" ID="lblIsUsed" Text='<%# Eval("IsUsed")%> ' />
                                                </td>
                                                <td style="display:none;">
                                                    <asp:Label runat="server" ID="lblUseType" Text='<%# Eval("UseType")%> ' />
                                                </td>
                                                <td style="display:none;">
                                                    <asp:Label runat="server" ID="lblCouponFor" Text='<%# Eval("CouponFor")%> ' />
                                                </td>
                                                <td style="display:none;">
                                                    <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("DealerName")%> ' />
                                                </td>
                                                <td style="text-align: center;  width:100px;">
                                                    <asp:LinkButton runat="server" CssClass="btn btn-primary itembtn" ID="lnkUpdateStatus" CommandArgument='<%# Container.ItemIndex %>' ToolTip="Update Status" CommandName="UpdateStatus"><i class="ri-settings-fill"></i></asp:LinkButton>
                                                    <asp:LinkButton runat="server" CssClass="btn btn-primary itembtn" ID="lnkEdit" CommandArgument='<%# Container.ItemIndex %>' ToolTip="Edit" CommandName="Edit"><i class="ri-pencil-fill"></i></asp:LinkButton>
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

