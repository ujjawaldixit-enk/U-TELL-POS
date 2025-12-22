<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="GenericProject.AddUser" %>

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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row">
                                <div class="col-md-12">
                                </div>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="txtSelectedLoginID" runat="server" Visible="false"></asp:TextBox>
                                <div class="col-md-4" style="margin-top: 20px;">
                                    <label class="control-label">Dealer Name<small class="txt-color-red">*</small></label>
                                    <asp:DropDownList ID="ddlFromDealer" runat="server" CssClass="dropdown DropContent" ClientIDMode="Static">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-4" style="margin-top: 20px; display:none;">
                                    <label class="control-label">Role<small class="txt-color-red">*</small></label>
                                    <asp:DropDownList ID="ddlRole" runat="server" CssClass="dropdown DropContent" ClientIDMode="Static">
                                        <asp:ListItem Value="6">User</asp:ListItem>
                                        <asp:ListItem Value="35">Representative</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-4" style="margin-top: 20px;">
                                    <label class="control-label">Name<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                </div>
                                <div class="col-md-4" style="margin-top: 20px;">
                                    <span class="Emsg hiddenErr">Please Enter a Valid Email</span>
                                    <label class="control-label">Email ID<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtUserEmailID" runat="server" CssClass="form-control" autocomplete="off" ClientIDMode="Static"></asp:TextBox>
                                </div>
                                <div class="col-md-4" style="margin-top: 20px;">
                                    <label class="control-label">Username<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" autocomplete="off" ClientIDMode="Static"></asp:TextBox>
                                </div>
                                <div class="col-md-4" style="margin-top: 20px;" runat="server" id="passwordDiv">
                                    <label class="control-label">Password<small class="txt-color-red">*</small></label>
                                    <asp:TextBox ID="txtUserPassword" runat="server" CssClass="form-control" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                </div>
                                <div class="col-md-4" style="margin-top: 50px;">
                                    <asp:CheckBox ID="chkActive" runat="server" CssClass="checkbox style-0" />
                                    <span style="margin-left: 10px;">Is Active</span>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px; text-align:right;">
                                <div class="col-md-12">
                                    <a href="UserList.aspx" id="A1" runat="server" class="dt-button create-new btn btn-primary"><i class="fa fa-backward"></i> User List</a>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="btnReset_Click" UseSubmitBehavior="false" />
                                    <asp:Button ID="btnAdd" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnAdd_Click" OnClientClick="if (!ValidateSubmitControls()) { return false;};" />
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-primary" OnClick="btnBack_Click" />
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
            if (document.getElementById('<%=ddlFromDealer.ClientID%>').selectedIndex == 0) {
                document.getElementById("<%=ddlFromDealer.ClientID%>").focus();
                alert('Please Select any dealer.');
                return false;
            }
            if (document.getElementById('<%=txtName.ClientID%>').value == "") {
                document.getElementById('txtName').focus();
                alert('Please enter name.');
                return false;
            }
            if (document.getElementById('<%=txtUserEmailID.ClientID%>').value == "") {
                document.getElementById('txtUserEmailID').focus();
                alert('Please enter email id.');
                return false;
            }
            var email = document.getElementById("<%=txtUserEmailID.ClientID%>");
            var filter = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
            if (!filter.test(email.value)) {
                alert('Please enter a valid contact email id');
                email.focus;
                return false;
            }
            if (document.getElementById('<%=txtUserName.ClientID%>').value == "") {
                document.getElementById('txtUserName').focus();
                alert('Please enter username.');
                return false;
            }
            if (document.getElementById('<%=txtUserPassword.ClientID%>').value == "") {
                document.getElementById('txtUserPassword').focus();
                alert('Please enter password.');
                return false;
            }
            return true;
        }
    </script>
</asp:Content>

