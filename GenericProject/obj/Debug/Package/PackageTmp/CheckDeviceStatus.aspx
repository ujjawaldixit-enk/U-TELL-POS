<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CheckDeviceStatus.aspx.cs" Inherits="GenericProject.CheckDeviceStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row" style="padding: 10px 15px 5px!important;">
                                <div class="col-md-3 form-group">
                                    <asp:TextBox ID="txtDevice" placeholder="Serial Number" runat="server" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3 form-group" style="margin-left: -15px;">
                                    <asp:Button ID="btnCheckStatus" runat="server" Text="Check Status" OnClick="btnGetDetails_Click" CssClass="btn btn-primary" />
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="btn btn-danger" />
                                </div>
                            </div>
                            <div class="row" style="padding: 10px 15px 5px!important;" visible="false" runat="server" id="DeviceDetailsDiv">
                                <div class="col-md-12">
                                    <ul class="nav nav-tabs nav-tabs-custom nav-justified" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#DEVICEINFO" role="tab">
                                                <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                                <span class="d-none d-sm-block">DEVICE INFO</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#PLANHISTORY" role="tab">
                                                <span class="d-block d-sm-none"><i class="far fa-table"></i></span>
                                                <span class="d-none d-sm-block">PLAN HISTORY</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content p-3 text-muted">
                                        <div class="tab-pane active" id="DEVICEINFO" role="tabpanel">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Device Number</th>
                                                    <td><span runat="server" id="spnDeviceNumber"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Dealer Name</th>
                                                    <td><span runat="server" id="spnDealerName"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Customer Name</th>
                                                    <td><span runat="server" id="spnCustomerName"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Customer Email ID</th>
                                                    <td><span runat="server" id="spnCustomerEmailID"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Current Active Plan</th>
                                                    <td><span runat="server" id="spnCurrentActivePlan"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Plan Start Date</th>
                                                    <td><span runat="server" id="spnPlanStartDate"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Plan End Date</th>
                                                    <td><span runat="server" id="spnPlanEndDate"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Total Data</th>
                                                    <td><span runat="server" id="spnTotalData"></span></td>
                                                </tr>
                                                <tr>
                                                    <th style="width: 25%; background-color:#252B3B; color:white; font-weight:bold;">Used Data</th>
                                                    <td><span runat="server" id="spnUsedData"></span></td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="tab-pane" id="PLANHISTORY" role="tabpanel">
                                            <asp:Repeater ID="RepeaterOfferList" runat="server">
                                                <HeaderTemplate>
                                                    <table class="table table-striped table-bordered table-hover" width="100%">
                                                        <thead>
                                                            <tr>
                                                                <th>S.No</th>
                                                                <th>Plan Name</th>
                                                                <th>Start Date</th>
                                                                <th>End Date</th>
                                                                <th>Order Date</th>
                                                                <th>Total Data</th>
                                                                <th>Used Data</th>
                                                                <th>Plan Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="tblSearch">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblDeviceNumber" Text='<%# Eval("PackageName") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("pBeginDate") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("pEndDate") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAutoRenewal" Text='<%# Eval("pOrderTime") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblPlanName" Text='<%# Eval("Data") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="Label1" Text='<%# Eval("DataUsed") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("pStatus") %>' />
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </tbody>
                                                </table>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                            <asp:Label runat="server" ID="lblDataFound" Style="font-size: 20px; font-weight: bold;"></asp:Label>
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



