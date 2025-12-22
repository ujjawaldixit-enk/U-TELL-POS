<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddDealer.aspx.cs" Inherits="GenericProject.AddDealer" %>

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
        .itembtn {
            padding: 0.2rem 0.5rem;
        }
    </style>
    <script>
        $(document)
            .on('keydown', '.alphabet', function (e) {
                var a = e.key;
                if (a.length == 1) return /[a-z]/i.test(a);
                return true;
            })
            .on('keydown', '.alphabetWithSomeSpeChar', function (e) {
                var a = e.key;
                if (a.length == 1) return /[a-z]|[0-9]|[.]|[-]|[_]|[#]|[ ]/i.test(a);
                return true;
            })
            .on('keydown', '.alphanumeric', function (e) {
                var a = e.key;
                if (a.length == 1) return /[a-z]|[0-9]/i.test(a);
                return true;
            })
            .on('keydown', '.numeric', function (e) {
                var a = e.key;
                if (a.length == 1) return /[0-9]/i.test(a);
                return true;
            })
            .on('keydown', '.decimal', function (e) {
                var a = e.key;
                if (a.length == 1) return /[0-9]|[.]/i.test(a);
                return true;
            })
    </script>
    <style>
        .txt-color-red{
            color:red;
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
                                <asp:HiddenField ID="hdnLevel" runat="server" />
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Dealer Name<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtDealerName" runat="server" ClientIDMode="Static" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Contact Person<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtContactPerson" runat="server" ClientIDMode="Static" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Contact Number<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtContactNumber" runat="server" ClientIDMode="Static" CssClass="form-control numeric" MaxLength="10"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Email ID<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtEmailID" runat="server" ClientIDMode="Static" CssClass="form-control" Type="email"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Address<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtAddress" runat="server" ClientIDMode="Static" MaxLength="500" CssClass="form-control required"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">City<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtCity" runat="server" ClientIDMode="Static" CssClass="form-control required"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">State<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtState" runat="server" ClientIDMode="Static" CssClass="form-control required"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Zip<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtZip" runat="server" ClientIDMode="Static" CssClass="form-control numeric" MaxLength="6" pattern="^(0|[1-9][0-9]*)$"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Country<small class="txt-color-red">*</small></label>
                                    <asp:DropDownList ID="ddlCountry" runat="server" ClientIDMode="Static" class="dropdown DropContent">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3" id="userdatadiv" runat="server" style="margin-top: 20px;">
                                    <label class="control-label">User ID<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtUserID" runat="server" ClientIDMode="Static" CssClass="form-control Vname required"></asp:TextBox>
                                </div>
                                <div class="col-md-3" id="userpassworddiv" runat="server" style="margin-top: 20px;">
                                    <label class="control-label">Password<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ClientIDMode="Static" CssClass="form-control Vname required"></asp:TextBox>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Tax ID<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtTaxID" runat="server" ClientIDMode="Static" CssClass="form-control Vname required"></asp:TextBox>
                                </div>
                                
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Min PayPal Top Up Amount(USD)<small class="txt-color-red">*</small></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtMinTopUp" runat="server" ClientIDMode="Static" CssClass="form-control decimal"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Max PayPal Top Up Amount(USD)<small class="txt-color-red">*</small></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtMaxTopUp" runat="server" ClientIDMode="Static" CssClass="form-control decimal"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Transaction Fee (%)<small class="txt-color-red">*</small></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtTransactionFee" runat="server" ClientIDMode="Static" CssClass="form-control decimal"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3" runat="server" style="margin-top: 20px;">
                                    <label class="control-label">Device Transfer Cost (USD)<small class="txt-color-red">*</small></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtDeviceTransferCost" runat="server" ClientIDMode="Static" CssClass="form-control decimal"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3" style="margin-top: 20px;">
                                    <label class="control-label">Tariff Group<small class="txt-color-red">*</small></label>
                                    <asp:DropDownList ID="ddTariffGroupID" runat="server" ClientIDMode="Static" class="dropdown DropContent" >
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-2" runat="server" style="margin-top: 20px;">
                                    <label class="control-label">Is Customer Portal Dealer?</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="ddlIsCustomerPortalDealer" runat="server" ClientIDMode="Static" class="dropdown DropContent" AutoPostBack="true" OnSelectedIndexChanged="ddlAPIHolder_SelectedIndexChanged">
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-2" style="margin-top: 20px;">
                                    <label class="control-label">Is API Holder ?</label>
                                    <asp:DropDownList ID="ddlAPIHolder" runat="server" ClientIDMode="Static" class="dropdown DropContent" AutoPostBack="true" OnSelectedIndexChanged="ddlAPIHolder_SelectedIndexChanged">
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-2" runat="server" style="margin-top: 20px;" id="IsApiHolderDiv">
                                    <label class="control-label">Client Code<small class="txt-color-red">*</small></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtClientCode" runat="server" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3" style="margin-top: 55px;">
                                    <label class="checkbox-inline">
                                        <asp:CheckBox ID="chkActive" runat="server" CssClass="checkbox style-0" />
                                        <span>Active </span>
                                    </label>
                                    <label class="checkbox-inline" id="lblDealerCreation" runat="server" style="margin-left: 20px;">
                                        <asp:CheckBox ID="chkSubDealerCreationRights" runat="server" ClientIDMode="Static" CssClass="checkbox style-0" />
                                        <span>Create Dealer?</span>
                                    </label>
                                </div>
                                <div class="col-md-12" style="margin-top: 39px; text-align: right;">
                                    <a href="DealerList.aspx" id="A1" runat="server" class="dt-button create-new btn btn-primary"><i class="fa fa-backward"></i> Back</a>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="btnReset_Click" UseSubmitBehavior="false" />
                                    <asp:Button ID="btnAdd" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnAdd_Click" OnClientClick="if (!ValidateSubmitControls()) { return false;};" />
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click" OnClientClick="if (!ValidateSubmitControls()) { return false;};" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function ValidateSubmitControls() {
            if (document.getElementById('<%=txtDealerName.ClientID%>').value == "") {
                document.getElementById('txtDealerName').focus();
                alert('Please enter name.');
                return false;
            }
            if (document.getElementById('<%=txtContactPerson.ClientID%>').value == "") {
                document.getElementById('txtContactPerson').focus();
                alert('Please enter contact person name.');
                return false;
            }
            if (document.getElementById('<%=txtContactNumber.ClientID%>').value == "") {
                document.getElementById('txtContactNumber').focus();
                alert('Please enter contact number.');
                return false;
            }
            if (document.getElementById('<%=txtEmailID.ClientID%>').value == "") {
                document.getElementById('txtEmailID').focus();
                alert('Please enter contact email id.');
                return false;
            }
            var email = document.getElementById("<%=txtEmailID.ClientID%>");
            var filter = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
            if (!filter.test(email.value)) {
                alert('Please enter a valid contact email id');
                email.focus;
                return false;
            }
            if (document.getElementById('<%=txtAddress.ClientID%>').value == "") {
                document.getElementById('txtAddress').focus();
                alert('Please enter address');
                return false;
            }
            if (document.getElementById('<%=txtCity.ClientID%>').value == "") {
                document.getElementById('txtCity').focus();
                alert('Please enter city.');
                return false;
            }
            if (document.getElementById('<%=txtState.ClientID%>').value == "") {
                document.getElementById('txtState').focus();
                alert('Please enter state.');
                return false;
            }
            if (document.getElementById('<%=txtZip.ClientID%>').value == "") {
                document.getElementById('txtZip').focus();
                alert('Please enter zip code.');
                return false;
            }
            if (document.getElementById('<%=ddlCountry.ClientID%>').selectedIndex == 0) {
                document.getElementById("<%=ddlCountry.ClientID%>").focus();
                alert('Please Select any country.');
                return false;
            }
            if (document.getElementById('<%=txtUserID.ClientID%>').value == "") {
                document.getElementById('txtUserID').focus();
                alert('Please enter username.');
                return false;
            }
            if (document.getElementById('<%=txtPassword.ClientID%>').value == "") {
                document.getElementById('txtPassword').focus();
                alert('Please enter password.');
                return false;
            }
            if (document.getElementById('<%=txtTaxID.ClientID%>').value == "") {
                document.getElementById('txtTaxID').focus();
                alert('Please enter tax id.');
                return false;
            }
            if (document.getElementById('<%=txtMinTopUp.ClientID%>').value < 10 || document.getElementById('<%=txtMinTopUp.ClientID%>').value > 2000) {
                document.getElementById('txtMinTopUp').focus();
                alert('Minimum topup amount should be greater then or equal to 10 and less then or equal to 2000.');
                return false;
            }
            if (document.getElementById('<%=txtMaxTopUp.ClientID%>').value < 10 || document.getElementById('<%=txtMaxTopUp.ClientID%>').value > 2000) {
                document.getElementById('txtMaxTopUp').focus();
                alert('Maximum topup amount should be greater then or equal to 10 and less then or equal to 2000.');
                return false;
            }
            if (document.getElementById('<%=txtMaxTopUp.ClientID%>').value < document.getElementById('<%=txtMinTopUp.ClientID%>').value) {
                document.getElementById('txtMaxTopUp').focus();
                alert('Maximum topup amount should not be greater then maximum topup amount.');
                return false;
            }
            if (document.getElementById('<%=txtTransactionFee.ClientID%>').value == 0) {
                document.getElementById('txtTransactionFee').focus();
                alert('Please enter transaction fees.');
                return false;
            }
            if (document.getElementById('<%=txtDeviceTransferCost.ClientID%>').value == "") {
                document.getElementById('txtDeviceTransferCost').focus();
                alert('Please enter device cost.');
                return false;
            }
            if ($("#ddlAPIHolder").val() == "1") {
                if (document.getElementById('<%=txtClientCode.ClientID%>').value == "") {
                    document.getElementById('txtClientCode').focus();
                    alert('Please enter client code.');
                    return false;
                }
            }
            return true;
        }
    </script>
    <script>
        function alphaOnly(event) {
            var key = event.keyCode;
            return ((key >= 65 && key <= 90) || key == 8);
        };
    </script>
</asp:Content>

