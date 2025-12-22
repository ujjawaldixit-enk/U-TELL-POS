<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DeviceList.aspx.cs" Inherits="GenericProject.DeviceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:TextBox runat="server" ID="txtTextContext" ClientIDMode="Static" CssClass="form-control" placeholder="Enter Device Number Or Dealer Name Or Purchase Code Or Status"></asp:TextBox>
                                </div>
                                <div class="col-md-1">
                                    <asp:Button runat="server" ID="btnGetDetails" CssClass="btn btn-primary" Text="Get Details" OnClick="btnGetDetails_Click" />
                                </div>
                                <div class="col-md-5">
                                    <asp:Button runat="server" ID="btnAllData" class="btn btn-primary" Text="Excel" OnClick="btnAllData_Click" Style="float: right;" />
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12" style="height: 500px; overflow-y: scroll;">
                                    <asp:Repeater ID="RepeaterDeviceList" runat="server" OnItemCommand="RepeaterDeviceList_ItemCommand">
                                        <HeaderTemplate>
                                            <table class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Device Number</th>
                                                        <th>Status</th>
                                                        <th>Dealer Name</th>
                                                        <th>Purchase Number</th>
                                                        <th style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("ID") %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblDeviceNumber" Text='<%# Eval("DeviceNumber") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("DealerName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblPurchaseNumber" Text='<%# Eval("PurchaseNumber") %>' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:LinkButton ID="lnkUpdateStatus" runat="server" CommandName="UpdateStatus" CommandArgument='<%# Container.ItemIndex %>' ToolTip="Update As Lost"><i class="ri-delete-bin-fill"></i></asp:LinkButton>
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
</asp:Content>

