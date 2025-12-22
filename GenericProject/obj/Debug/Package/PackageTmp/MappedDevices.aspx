<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MappedDevices.aspx.cs" Inherits="GenericProject.MappedDevices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <style>
        .DropContent {
            padding: 0.5rem 1rem;
            font-size: 1rem;
            font-weight: 400;
            width: 100%;
            line-height: 1.4;
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
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row">
                                <div class="col-md-12" style="margin-top:10px; text-align:right;">
                                    <asp:Button runat="server" ID="btnExcel" CssClass="btn btn-primary" Text="Download Excel" OnClick="btnExcel_Click" />
                                    <a href="AddMappedDevice.aspx" id="A1" runat="server" class="dt-button create-new btn btn-primary">+ NEW</a>
                                </div>
                                <div class="col-md-12 table-responsive" style="margin-top:20px;">
                                    <asp:Repeater ID="RepeaterDeviceList" runat="server">
                                        <HeaderTemplate>
                                            <table id="exampleTbl" class="table table-striped table-bordered table-hover" style="padding: 0.72rem 1rem !important;">
                                                <thead>
                                                    <tr>
                                                        <th>S.No.</th>
                                                        <th>Device Number</th>
                                                        <th>Dealer Name</th>
                                                        <th>Country Name</th>
                                                        <th>Plan Name</th>
                                                        <th>Number Of Days</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="lblIndex" Text='<%# Container.ItemIndex + 1 %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblDeviceNumber" Text='<%# Eval("DeviceNumber") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("DealerName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblCountryName" Text='<%# Eval("CountryName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblPlanName" Text='<%# Eval("PlanName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblNumberOfDays" Text='<%# Eval("NumberOfDays") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status") %>' />
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
