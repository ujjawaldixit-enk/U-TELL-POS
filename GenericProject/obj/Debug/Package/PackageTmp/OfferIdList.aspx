<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="OfferIdList.aspx.cs" Inherits="GenericProject.OfferIdList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12 card-datatable table-responsive">
                                    <asp:Repeater ID="RepeaterOfferIdList" runat="server" OnItemCommand="RepeaterOfferIdList_ItemCommand">
                                        <HeaderTemplate>
                                            <table class="table table-bordered" style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th>S.NO.</th>
                                                        <th>Country Name</th>
                                                        <th>Plan Name</th>
                                                        <th>Offer ID</th>
                                                        <th>Offer Code</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="lblIndex" Text='<%# Container.ItemIndex + 1 %>' />
                                                    <asp:Label runat="server" ID="lblPlanID" Text='<%# Eval("PlanID") %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblCountryID" Text='<%# Eval("CountryID") %>' Visible="false" />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblCountryName" Text='<%# Eval("CountryName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblPlanname" Text='<%# Eval("PlanName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblOfferID" Text='<%# Eval("OfferID") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblofferCode" Text='<%# Eval("OfferCode") %>' />
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="EditItem" CommandArgument='<%# String.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}", Eval("CountryID"), Eval("CountryName"), Eval("PlanName"), Eval("OfferID"), Eval("OfferCode"), Eval("CountryID"), Eval("PlanID")) %>'><i class="ri-edit-fill"></i></asp:LinkButton>
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
    <div class="modalStripe modal fade bs-example-modal-lg show" id="UpdateOfferID" role="dialog" runat="server">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12">
                            <label runat="server" style="font-weight: bold; font-size: 20px;">Cancel Order</label>
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 20px;">
                            <asp:HiddenField runat="server" ID="hdplanid" />
                            <asp:HiddenField runat="server" ID="hdcountryid" />
                            <label class="control-label">Country Name<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtcountryname" runat="server" ReadOnly="true" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <label class="control-label">Plane Name<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtplanename" runat="server" ReadOnly="true" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <label class="control-label">Offer ID<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtofferid" runat="server" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <label class="control-label">Offer Code<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtoffercode" runat="server" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 39px; text-align: right;">
                            <asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="btnSave_Click" />
                            <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Cancel" OnClientClick="closeEditPopup(); return false;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
