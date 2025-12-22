<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UpdateCustomerDetails.aspx.cs" Inherits="GenericProject.UpdateCustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-md-5">
                            <asp:HiddenField runat="server" ID="hddnCustomerLoginID" />
                            <asp:HiddenField runat="server" ID="hddnCustomerDealerID" />
                            <label>Device Number<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtDeviceNumber" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" runat="server" id="CustomerDetailsDiv" style="display: none;">
                        <div class="col-md-5" style="margin-top:20px;">
                            <label>Customer Name<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtName" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-5" style="margin-top:20px;">
                            <label>Customer Email ID<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtEmailID" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-5" style="margin-top:20px;">
                            <label>Customer Contact Number<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtContactNumber" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-5" style="margin-top:20px;">
                            <label>Device Usercode<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtUsercode" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-5" style="margin-top:20px;">
                            <label>Username<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtUsername" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-5" style="margin-top:20px;">
                            <label>Password<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtPassword" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 20px; display: flex;">
                            <asp:Button ID="btnValidate" runat="server" OnClick="btnValidate_Click" OnClientClick="javascript:return CheckValidation();" Style="height: 40px;" Text="Validate" CssClass="btn btn-success" />
                            <asp:Button ID="btnSave" runat="server" Text="Update Details" Style="height: 40px;" Visible="false" OnClick="btnSave_Click" CssClass="btn btn-success" OnClientClick="if (!ValidateControls()) { return false;};" />
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger" Style="margin-left: 5px; height: 40px;" OnClick="btnReset_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function CheckValidation() {
            if ($("#txtDeviceNumber").val() == "") {
                alert("Please enter device number.");
                $("#txtDeviceNumber").focus();
                return false;
            }
            return true;
        }
    </script>
    <script type="text/javascript">
        function ValidateControls() {
            if ($("#txtDeviceNumber").val() == "") {
                alert("Please enter device number.");
                $("#txtDeviceNumber").focus();
                return false;
            }
            if ($("#txtName").val() == "") {
                alert("Please enter name.");
                $("#txtName").focus();
                return false;
            }
            if ($("#txtEmailID").val() == "") {
                alert("Please enter email id.");
                $("#txtEmailID").focus();
                return false;
            }
            if ($("#txtUsercode").val() == "") {
                alert("Please enter usercode.");
                $("#txtUsercode").focus();
                return false;
            }
            if ($("#txtUsername").val() == "") {
                alert("Please enter username.");
                $("#txtUsername").focus();
                return false;
            }
            return true;
        }
    </script>
</asp:Content>

