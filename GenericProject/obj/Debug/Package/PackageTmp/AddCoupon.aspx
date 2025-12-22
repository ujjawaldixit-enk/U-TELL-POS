<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddCoupon.aspx.cs" Inherits="GenericProject.AddCoupon" %>

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
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label>Coupon Code</label>
                                    <asp:HiddenField runat="server" ID="hddnCID" />
                                    <asp:TextBox runat="server" ID="txtCouponCode" placeholder="UNI*****" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px; display:none;">
                                    <label>Discount Type</label>
                                    <asp:DropDownList runat="server" ID="ddlDiscountType" CssClass="dropdown DropContent">
                                        <asp:ListItem Value="48">Fixed Value</asp:ListItem>
                                        <asp:ListItem Value="47">Percent</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label>Discount Value($)</label>
                                    <asp:TextBox runat="server" ID="txtDiscountValue" placeholder="0.00" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label>Expire Date</label>
                                    <input type="text" name="mydate" placeholder="Select a date" autocomplete="off" data-provide="datepicker" runat="server" id="txtExpireDate" onkeydown="return false" class="form-control picker flatpickr-input active" data-date-format="mm-dd-yyyy">
                                </div>
                                <div class="col-md-3" style="margin-top: 20px; display:none;">
                                    <label>Use Type</label>
                                    <asp:DropDownList runat="server" ID="ddlUseType" CssClass="dropdown DropContent">
                                        <asp:ListItem Value="44">Multiple Time</asp:ListItem>
                                        <asp:ListItem Value="43">One time</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px; display:none;">
                                    <label>Coupon For</label>
                                    <asp:DropDownList runat="server" ID="ddlCouponFor" CssClass="dropdown DropContent" AutoPostBack="true" OnSelectedIndexChanged="ddlCouponFor_SelectedIndexChanged">
                                        <asp:ListItem Value="45">All User</asp:ListItem>
                                        <asp:ListItem Value="46">Single User</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px; display:none;">
                                    <label>Dealer</label>
                                    <asp:DropDownList runat="server" ID="ddlDealer" CssClass="dropdown DropContent">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12">
                                    <asp:Button runat="server" ID="btnReset" ClientIDMode="Static" CssClass="btn btn-danger" Text="Reset" OnClick="btnReset_Click" />
                                    <asp:Button runat="server" ID="btnUpdate" ClientIDMode="Static" CssClass="btn btn-primary" Text="Update Coupon" OnClick="btnUpdate_Click" />
                                    <asp:Button runat="server" ID="btnSubmit" ClientIDMode="Static" CssClass="btn btn-primary" Text="Save Coupon" OnClick="btnSubmit_Click" />
                                    <asp:Button runat="server" ID="btnBack" ClientIDMode="Static" CssClass="btn btn-primary" Text="Coupon list" OnClick="btnBack_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

