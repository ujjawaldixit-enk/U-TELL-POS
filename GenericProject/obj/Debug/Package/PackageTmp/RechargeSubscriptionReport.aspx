<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RechargeSubscriptionReport.aspx.cs" Inherits="GenericProject.RechargeSubscriptionReport" %>

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
     <style>
        .modalStripe {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            left: 1px;
            z-index: 1550;
            min-height: 100%;
            width: 100%;
            overflow: auto;
            outline: 0;
            margin: 0 auto;
            margin-left: 0px;
            border: 0px solid gray;
        }

        .modal-dialog {
            margin-top: 5%;
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
                                    <label class="control-label">Subscription Start Date From</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="ddlNetwork" AutoPostBack="true" runat="server" class="dropdown DropContent" Style="width: 100%; display: none;">
                                        </asp:DropDownList>
                                        <input type="text" name="mydate" placeholder="Select a date" data-provide="datepicker" runat="server" autocomplete="off" id="txtFromDate" onkeydown="return false" class="form-control picker flatpickr-input active" data-date-format="mm-dd-yyyy">
                                    </div>
                                </div>
                                <div class="col-md-3" id="divToDate" runat="server" visible="true">
                                    <label class="control-label">Subscription Start Date To</label>
                                    <div class="input-group">
                                        <input type="text" name="mydate" placeholder="Select a date" data-provide="datepicker" autocomplete="off" runat="server" id="txtToDate" onkeydown="return false" class="form-control picker flatpickr-input active" data-date-format="mm-dd-yyyy">
                                    </div>
                                </div>
                                <div class="col-md-3" id="dvStaus" runat="server">
                                    <label class="control-label">Subscription Status</label>
                                    <asp:DropDownList class="dropdown DropContent" ID="ddlStatus" runat="server" >
                                        <asp:ListItem Text="Subscribed" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Un-Subscribed" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="-- ALL --" Value="2"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3" id="divCompany" runat="server">
                                    <label class="control-label">Dealer Name</label>
                                    <asp:DropDownList class="dropdown DropContent" ID="ddlDealer" runat="server" >
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-2" id="div1" runat="server">
                                    <label class="control-label">Decice Number</label>
                                    <asp:TextBox ID="txtDeviceNo" runat="server" placeholder="Enter Device No."  class="form-control"></asp:TextBox>
                                </div>

                                <div class="col-md-4" runat="server" style="margin: 29px;">
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" Style="top: 35px" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
                                    <asp:Button ID="btnDownloadExcel" runat="server" Text="Download Excel" Visible="false" Style="top: 35px; margin-left: 10px;" OnClick="btnDownloadExcel_Click" CssClass="btn btn-primary" />
                                </div>
                            </div>
                            <div id="DivMain" runat="server">
                                <asp:GridView ID="grdSubscription" runat="server" ShowHeaderWhenEmpty="True" OnRowCommand="grdSubscription_RowCommand" AllowSorting="True" GridLines="Both" 
                                    HeaderStyle-Font-Bold="true" CellPadding="0" CellSpacing="0" EnableViewState="True" AutoGenerateColumns="false" 
                                    ClientIDMode="Static" class="table table-striped table-bordered table-hover">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Device No.">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblDevice" Text='<%# Eval("DeviceNumber") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Subscription ID">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblSubscriptionId" Text='<%# Eval("SubscriptionId") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Start Date">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblActivationDate" Text='<%# Eval("StartDate") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Next PaymentDate">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblNextPaymentDate" Text='<%# Eval("NextPaymentDate") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Plan">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblPlan" Text='<%# Eval("PlanName") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Number Of Days" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblNODS" Text='<%# Eval("NumberOfDays") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Customer Name">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblCustomerName" Text='<%# Eval("CustomerName") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Dealer Name">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblDealer" Text='<%# Eval("DealerName") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                 <asp:LinkButton runat="server" Text="View Recharge Details" HeaderText="Recharge Details"  CommandName="RechargeDetails" 
                                                     CommandArgument='<%#Eval("SubscriptionId")%>'  ></asp:LinkButton>

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

    
<div class="modalStripe modal fade bs-example-modal-lg show" id="dvRechargeDetails" role="dialog" runat="server">
        <div class="modal-dialog  modal-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="money-transfer-content" style="padding: 20px;">
                        
                    <div class="row" runat="server">
                        <div class="col-md-12 table-responsive">
                                                    <asp:Repeater ID="RepeaterSubscription" runat="server">
                                                        <HeaderTemplate>
                                                            <table id="tbSubscription" class="table table-striped table-bordered table-hover" width="100%">
                                                                <thead>
                                                                    <tr>
                                                                        <th>S.No</th>
                                                                        <th>Recharge Request Date</th>
                                                                        <th>Plan Begin Date</th>
                                                                        <th>Payment TXN ID</th>
                                                                        <th>Payment Date</th>
                                                                        <th>Payment Status</th>

                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td style="text-align: center;">
                                                                    <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' />
                                                                                                                                    </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblRechargeDate" Text='<%# Eval("RechargeDate")%> ' />
                                                                </td>
                                                                <td>
                                                                    
                                                                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("BeginDate")%> ' />
                                                                </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblInvoiceID" Text='<%# Eval("InvoiceId")%> ' />
                                                                </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblInvoiceDate" Text='<%# Eval("InvoiceDate")%> ' />
                                                                </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblPaymentStatus" Text='<%# Eval("PaymentStatus")%> ' />
                                                                </td>
                                                                
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </tbody>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                    <asp:Label runat="server" ID="lblSubscriptionDataNotFound" Style="font-size: 25px; font-weight: bold;"></asp:Label>
                                                </div>
                    </div>
                    <div class="row" runat="server">
                         <div class="col-md-6">
                                                <asp:Button runat="server" ID="btnClose" CssClass="default-btn" Text="CLOSE" 
                                                    class="btn btn-primary" OnClick="btnClose_Click" />
                                            </div>
                                        
                    </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
