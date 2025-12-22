<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UpdatePlanPrice.aspx.cs" Inherits="GenericProject.UpdatePlanPrice" %>

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
            <div class="container-fluid">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-md-3">
                            <label>Tariff Group</label>
                            <asp:DropDownList runat="server" ID="ddlTariffGroup" ClientIDMode="Static" CssClass="dropdown DropContent"></asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label>Country</label>
                            <asp:DropDownList runat="server" ID="ddlCountry" ClientIDMode="Static" CssClass="dropdown DropContent"></asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <asp:Button runat="server" Style="margin-top: 30px;" ID="btnGetDetails" ClientIDMode="Static" CssClass="btn btn-primary" Text="Get Details" OnClick="btnGetDetails_Click" />
                        </div>
                        <div class="col-md-12"><hr /></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 card-datatable table-responsive" style="height: 400px; overflow-y: scroll;">
                            <asp:Repeater ID="RepeaterUSAPlanList" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered" style="width: 100%;">
                                        <thead>
                                            <tr>
                                                <th>Plan Name</th>
                                                <th>Activation Price</th>
                                                <th>Recharge Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblPlanName" Text='<%# Eval("PlanName") %>' />
                                            <asp:Label runat="server" ID="lblPlanID" Text='<%# Eval("PlanID") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblIndex" Text='<%# Container.ItemIndex + 1 %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblTariffGroupMappingID" Text='<%# Eval("TariffGroupMappingID") %>' Visible="false" />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtActivationPrice" Text='<%# Eval("ActivationCharge") %>' CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtRechargeCharge" Text='<%# Eval("RechargeCharge") %>' CssClass="form-control"></asp:TextBox>
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
                        <div class="col-md-12">
                            <hr />
                            <asp:Button runat="server" ID="btnUpdate" Style="margin-top: 15px;" CssClass="btn btn-primary" Visible="false" Text="Update Price" OnClick="btnUpdate_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

