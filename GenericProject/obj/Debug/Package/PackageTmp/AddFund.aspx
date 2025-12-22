<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddFund.aspx.cs" Inherits="GenericProject.AddFund" %>

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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="col-sm-12 col-md-12 form-group" id="divDealer" runat="server">
                                    <label class="control-label" style="font-weight: bold; font-size: 15px;">Dealer Name : <span runat="server" id="spnDealerName"></span></label>
                                </div>
                                <div class="col-sm-12 col-md-12 form-group" id="divCompany" runat="server">
                                    <label class="control-label">Dealer Name<small class="txt-color-red">*</small></label>
                                    <asp:DropDownList class="dropdown DropContent" ID="ddlDealer" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDealer_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-12 col-md-12 form-group" runat="server" id="lblAccountBalanceDiv">
                                    <label class="control-label">
                                        Account Balance (USD) :
                                                <asp:Label ID="lblBalanceAmount" runat="server" Style="font-weight: bold;"></asp:Label></label>
                                </div>
                                <div class="col-sm-12 col-md-12 form-group">
                                    <label class="control-label">Topup Amount (USD)<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtTopupAmount" ClientIDMode="Static" runat="server" class="form-control" placeholder="0.00"></asp:TextBox>
                                    <div style="display: none;">
                                        <asp:TextBox ID="txtPayPalTopupAmount" runat="server" ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-12 form-group" runat="server" id="lblPaypalfeesDiv" style="font-weight: bold;">
                                </div>
                                <div class="col-sm-12 col-md-12 form-group">
                                    <label class="control-label">Reason (Optional)</label>
                                    <input class="form-control" runat="server" id="inpReason" placeholder="Reason" type="text">
                                </div>
                                <br />
                                <div class="col-md-12">
                                    <asp:Button ID="btndeduct" runat="server" Text="Deduct Amount" class="btn btn-primary" OnClientClick="return confirm('Do you want to deduct Amount ?')" OnClick="btndeduct_Click" />
                                    <asp:Button ID="btnCheckAmount" runat="server" Text="TOPUP" Visible="false" class="btn btn-primary" OnClick="btnCheckAmount_Click" />
                                    <asp:Button ID="btnCompanyTopup" runat="server" Text="TOPUP" Visible="false" class="btn btn-primary" OnClick="btnCompanyTopup_Click" />
                                    <asp:ImageButton ID="btnPaypal" runat="server" src="design/assets/images/expresscheckout_buttons.png" class="btn btn-primary" ClientIDMode="Static" border='0' align='top' alt='Check out with PayPal' Visible="false" OnClientClick="javascript:return validateTopup();" OnClick="btnPaypal_Click" Style="padding: 0px!important; background-color: white!important; border-color: white!important; width: 50%;" />
                                </div>
                                <br />
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <strong>Note :- If in case, after PayPal transaction you are not redirect to the Main account and see the updated amount, then contact to our customer care.</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

