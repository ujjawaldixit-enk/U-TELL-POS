<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CheckTXNIDStatus.aspx.cs" Inherits="GenericProject.CheckTXNIDStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-md-3">
                            <label>Transaction ID</label>
                            <asp:TextBox runat="server" ID="txtTXNID" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label>Customer Email ID</label>
                            <asp:TextBox runat="server" ID="txtCustomerEmailID" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-4" style="margin-top:29px;">
                            <asp:Button runat="server" ID="btnGetDetails" CssClass="btn btn-primary" Text="Get Details" OnClick="btnGetDetails_Click" />
                            <asp:Button runat="server" ID="btnReset" CssClass="btn btn-primary" Text="Reset" OnClick="btnReset_Click" />
                            <asp:Button runat="server" ID="btnSendEmail" CssClass="btn btn-primary" Text="Send Email" OnClick="btnSendEmail_Click" Visible="false"/>
                        </div>
                    </div>
                    <div class="row" runat="server" id="detailsDiv" visible="false">
                        <div class="col-md-12" style="margin-top:30px;">
                            <div class="money-transfer-content" style="height: 100%; min-height: 500px;">
                                <asp:HiddenField runat="server" ID="hddnID" />
                                <table class="table table-bordered" runat="server" id="tblOrderDetails">
                                    <tr>
                                        <td colspan="2"><b style="font-size: 20px;">Order Details  : </b>(<span runat="server" id="spnDeviceNumber"></span>)</td>
                                    </tr>
                                    <tr>
                                        <td><b>Activation ID : </b><span runat="server" id="spnTXNID"></span></td>
                                        <td><b>Order Date & time : </b><span runat="server" id="spnOrderDtTm"></span></td>
                                    </tr>
                                    <tr>
                                        <td><b>Activation Date : </b><span runat="server" id="spnActivationDate"></span></td>
                                        <td><b>Expire Date : </b><span runat="server" id="spnExpireDate"></span></td>
                                    </tr>
                                    <tr>
                                        <td><b>Order Status : </b><span runat="server" style="padding: 5px; color: white; border-radius: 10px; font-weight: bold;" id="spnRequestStatus"></span></td>
                                        <td><b>Plan : </b><span runat="server" id="spnPlanName"></span></td>
                                    </tr>
                                    <tr>
                                        <td><b>Number Of Days : </b><span runat="server" id="spnNumberOfDays"></span></td>
                                        <td><b>Country Name : </b><span runat="server" id="spnCountryName"></span></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">
                                            <br />
                                            <b><span runat="server" id="spnSubscriptionMessage"></span></b>
                                        </td>
                                    </tr>
                                </table>
                                <div class="col-md-12 text-center text-capitalize">
                                    <asp:Label runat="server" Style="font-weight: bold; font-size: 30px; text-align: center; margin-top: 50px;" Visible="false" ID="lblErrorMessage">We are facing some unexpected issues, Please try again or please contact to our customer care.</asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

