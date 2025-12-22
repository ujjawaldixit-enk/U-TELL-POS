<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RechargeReports.aspx.cs" Inherits="GenericProject.RechargeReports" %>

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
                                <div class="col-md-3" id="divFromDate" runat="server" visible="true">
                                    <label class="control-label">From Date</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="ddlNetwork" AutoPostBack="true" runat="server" class="dropdown DropContent" Style="width: 100%; display: none;">
                                        </asp:DropDownList>
                                        <input type="text" name="mydate" placeholder="Select a date" runat="server" data-provide="datepicker"  autocomplete="off" id="txtFromDate" onkeydown="return false" class="form-control picker flatpickr-input active" data-date-format="mm-dd-yyyy">
                                    </div>
                                </div>
                                <div class="col-md-3" id="divToDate" runat="server" visible="true">
                                    <label class="control-label">To Date</label>
                                    <div class="input-group">
                                        <input type="text" name="mydate" placeholder="Select a date" autocomplete="off" data-provide="datepicker"  runat="server" id="txtToDate" onkeydown="return false" class="form-control picker flatpickr-input active" data-date-format="mm-dd-yyyy">
                                    </div>
                                </div>
                                <div class="col-md-4" runat="server" style="margin: 29px;">
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" Style="top: 35px" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
                                    <asp:Button ID="btnDownloadExcel" runat="server" Text="Download Excel" Visible="false" Style="top: 35px; margin-left: 10px;" OnClick="btnDownloadExcel_Click" CssClass="btn btn-primary" />
                                </div>
                            </div>
                            <div id="DivMain" runat="server" style="margin-top: 20px;">
                                <asp:GridView ID="grdOrderReport" runat="server" ShowHeaderWhenEmpty="True" AllowSorting="True" GridLines="Both" HeaderStyle-Font-Bold="true" CellPadding="0" CellSpacing="0" EnableViewState="True" AutoGenerateColumns="false" ClientIDMode="Static" class="table table-striped table-bordered table-hover">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Device No.">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblDevice" Text='<%# Eval("DeviceNo") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dealer">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblDealer" Text='<%# Eval("Dealer") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Recharge Date">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblRechargeDate" Text='<%# Eval("ActivationDate") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Network">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblNetwork" Text='<%# Eval("NetworkName") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Plan">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblPlan" Text='<%# Eval("PlanName") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Number Of Days">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblPlan" Text='<%# Eval("NODS") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Country">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblCountryName" Text='<%# Eval("CountryName") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblAmount" Text='<%# Eval("Amount") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <asp:Label runat="server" ID="lblDataFound" Style="font-size: 20px; margin-top: 20px; font-weight: bold;"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

