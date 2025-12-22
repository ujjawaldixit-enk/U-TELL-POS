<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Recharge.aspx.cs" Inherits="GenericProject.Recharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="DDD/dist/css/dd.css" />
    <link rel="stylesheet" type="text/css" href="DDD/dist/css/flags.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="col-xl-12">

                    <div class="row">
                        <div class="col-md-3" id="DeviceIDDiv" runat="server" style="margin-top: 10px;">
                            <label class="control-label">Device Number<small class="txt-color-red"> * </small></label>
                            <asp:TextBox ID="txtDevice" placeholder="Device Number" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-3" id="CountryDiv" runat="server" style="margin-top: 10px; display: none;">
                            <label class="control-label">Country<small class="txt-color-red">*</small></label>
                            <select id="countries" is="ms-dropdown" onchange="SelectCountry();" runat="server">
                                <option value="0">--Select Country--</option>
                                <option value="435" data-image-css="flag us" data-title="United States">United States of America</option>
                                <option style="font-weight: bold" disabled="disabled">---Other Countries---</option>
                                <option value="493" data-image-css="flag ax" data-title="Aland Islands">Aland Islands</option>
                                <option value="225" data-image-css="flag al" data-title="Albania">Albania</option>
                                <option value="226" data-image-css="flag dz" data-title="Algeria">Algeria</option>
                                <option value="228" data-image-css="flag ad" data-title="Andorra">Andorra</option>
                                <option value="229" data-image-css="flag ao" data-title="Angola">Angola</option>
                                <option value="230" data-image-css="flag ai" data-title="Anguilla">Anguilla</option>
                                <option value="231" data-image-css="flag ag" data-title="Antigua and Barbuda">Antigua and Barbuda</option>
                                <option value="477" data-image-css="flag ar" data-title="Argentina">Argentina</option>
                                <option value="233" data-image-css="flag am" data-title="Armenia">Armenia</option>
                                <option value="488" data-image-css="flag aw" data-title="Aruba">Aruba</option>
                                <option value="235" data-image-css="flag au" data-title="Australia">Australia</option>
                                <option value="236" data-image-css="flag at" data-title="Austria">Austria</option>
                                <option value="467" data-image-css="flag az" data-title="Azerbaijan">Azerbaijan</option>
                                <option value="239" data-image-css="flag bh" data-title="Bahrain">Bahrain</option>
                                <option value="240" data-image-css="flag bd" data-title="Bangladesh">Bangladesh</option>
                                <option value="243" data-image-css="flag be" data-title="Belgium">Belgium</option>
                                <option value="248" data-image-css="flag bo" data-title="Bolivia">Bolivia</option>
                                <option value="249" data-image-css="flag ba" data-title="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                <option value="251" data-image-css="flag br" data-title="Brazil">Brazil</option>
                                <option value="492" data-image-css="flag vg" data-title="British Virgin Islands">British Virgin Islands</option>
                                <option value="466" data-image-css="flag bn" data-title="Brunei Darussalam">Brunei Darussalam</option>
                                <option value="254" data-image-css="flag bg" data-title="Bulgaria">Bulgaria</option>
                                <option value="257" data-image-css="flag kh" data-title="Cambodia">Cambodia</option>
                                <option value="259" data-image-css="flag ca" data-title="Canada">Canada</option>
                                <option value="489" data-image-css="flag ky" data-title="Cayman Islands">Cayman Islands</option>
                                <option value="264" data-image-css="flag cl" data-title="Chile">Chile</option>
                                <option value="265" data-image-css="flag cn" data-title="China">China</option>
                                <option value="266" data-image-css="flag co" data-title="Colombia">Colombia</option>
                                <option value="270" data-image-css="flag cr" data-title="Costa Rica">Costa Rica</option>
                                <option value="272" data-image-css="flag hr" data-title="Croatia (Hrvatska)">Croatia (Hrvatska)</option>
                                <option value="490" data-image-css="" data-title="Curacao">Curacao</option>
                                <option value="476" data-image-css="" data-title="Guernsey">Guernsey</option>
                                <option value="275" data-image-css="flag cy" data-title="Cyprus">Cyprus</option>
                                <option value="276" data-image-css="flag cz" data-title="Czech Republic">Czech Republic</option>
                                <option value="278" data-image-css="flag dk" data-title="Denmark">Denmark</option>
                                <option value="283" data-image-css="flag ec" data-title="Ecuador">Ecuador</option>
                                <option value="284" data-image-css="flag eg" data-title="Egypt">Egypt</option>
                                <option value="285" data-image-css="flag sv" data-title="El Salvador">El Salvador</option>
                                <option value="288" data-image-css="flag ee" data-title="Estonia">Estonia</option>
                                <option value="292" data-image-css="flag fj" data-title="Fiji">Fiji</option>
                                <option value="293" data-image-css="flag fi" data-title="Finland">Finland</option>
                                <option value="294" data-image-css="flag fr" data-title="France">France</option>
                                <option value="299" data-image-css="flag ge" data-title="Georgia">Georgia</option>
                                <option value="300" data-image-css="flag de" data-title="Germany">Germany</option>
                                <option value="301" data-image-css="flag gh" data-title="Ghana">Ghana</option>
                                <option value="474" data-image-css="flag gi" data-title="Gibraltar">Gibraltar</option>
                                <option value="303" data-image-css="flag gr" data-title="Greece">Greece</option>
                                <option value="305" data-image-css="flag gd" data-title="Grenada">Grenada</option>
                                <option value="486" data-image-css="flag gp" data-title="Guadeloupe">Guadeloupe</option>
                                <option value="481" data-image-css="flag gu" data-title="Guam">Guam</option>
                                <option value="308" data-image-css="flag gt" data-title="Guatemala">Guatemala</option>
                                <option value="311" data-image-css="flag gy" data-title="Guyana">Guyana</option>
                                <option value="312" data-image-css="flag ht" data-title="Haiti">Haiti</option>
                                <option value="464" data-image-css="flag hk" data-title="Hong Kong">Hong Kong</option>
                                <option value="315" data-image-css="flag hu" data-title="Hungary">Hungary</option>
                                <option value="316" data-image-css="flag is" data-title="Iceland">Iceland</option>
                                <option value="317" data-image-css="flag in" data-title="India">India</option>
                                <option value="318" data-image-css="flag id" data-title="Indonesia">Indonesia</option>
                                <option value="321" data-image-css="flag ie" data-title="Ireland">Ireland</option>
                                <option value="473" data-image-css="" data-title=" Isle of man">Isle of man</option>
                                <option value="322" data-image-css="flag il" data-title="Israel">Israel</option>
                                <option value="323" data-image-css="flag it" data-title="Italy">Italy</option>
                                <option value="324" data-image-css="flag jm" data-title="Jamaica">Jamaica</option>
                                <option value="325" data-image-css="flag jp" data-title="Japan">Japan</option>
                                <option value="472" data-image-css="" data-title="Jersey">Jersey</option>
                                <option value="326" data-image-css="flag jo" data-title="Jordan">Jordan</option>
                                <option value="327" data-image-css="flag kz" data-title="Kazakhstan">Kazakhstan</option>
                                <option value="328" data-image-css="flag ke" data-title="Kenya">Kenya</option>
                                <option value="494" data-image-css="flag kp" data-title="Korea">Korea</option>
                                <option value="332" data-image-css="flag kw" data-title="Kuwait">Kuwait</option>
                                <option value="334" data-image-css="flag la" data-title="Laos">Laos</option>
                                <option value="335" data-image-css="flag lv" data-title="Latvia">Latvia</option>
                                <option value="340" data-image-css="flag li" data-title="Liechtenstein">Liechtenstein</option>
                                <option value="341" data-image-css="flag lt" data-title="Lithuania">Lithuania</option>
                                <option value="342" data-image-css="flag lu" data-title="Luxembourg">Luxembourg</option>
                                <option value="465" data-image-css="flag mo" data-title="Macao">Macao</option>
                                <option value="475" data-image-css="flag mk" data-title="Macedonia">Macedonia</option>
                                <option value="345" data-image-css="flag mg" data-title="Madagascar">Madagascar</option>
                                <option value="347" data-image-css="flag my" data-title="Malaysia">Malaysia</option>
                                <option value="348" data-image-css="flag mv" data-title="Maldives">Maldives</option>
                                <option value="350" data-image-css="flag mt" data-title="Malta">Malta</option>
                                <option value="487" data-image-css="flag mq" data-title="Martinique">Martinique</option>
                                <option value="354" data-image-css="flag mu" data-title="Mauritius">Mauritius</option>
                                <option value="355" data-image-css="flag mx" data-title="Mexico">Mexico</option>
                                <option value="358" data-image-css="flag mc" data-title="Monaco">Monaco</option>
                                <option value="359" data-image-css="flag mn" data-title="Mongolia">Mongolia</option>
                                <option value="471" data-image-css="flag cs" data-title="Serbia and Montenegro">Serbia and Montenegro</option>
                                <option value="362" data-image-css="flag ma" data-title="Morocco">Morocco</option>
                                <option value="367" data-image-css="flag np" data-title="Nepal">Nepal</option>
                                <option value="368" data-image-css="flag an" data-title="Netherlands Antilles">Netherlands Antilles</option>
                                <option value="370" data-image-css="flag nz" data-title="New Zealand (Aotearoa)">New Zealand (Aotearoa)</option>
                                <option value="371" data-image-css="flag ni" data-title="Nicaragua">Nicaragua</option>
                                <option value="373" data-image-css="flag ng" data-title="Nigeria">Nigeria</option>
                                <option value="376" data-image-css="flag no" data-title="Norway">Norway</option>
                                <option value="377" data-image-css="flag om" data-title="Oman">Oman</option>
                                <option value="378" data-image-css="flag pk" data-title="Pakistan">Pakistan</option>
                                <option value="381" data-image-css="flag pa" data-title="Panama">Panama</option>
                                <option value="383" data-image-css="flag py" data-title="Paraguay">Paraguay</option>
                                <option value="478" data-image-css="flag pe" data-title="Peru">Peru</option>
                                <option value="385" data-image-css="flag ph" data-title="Philippines">Philippines</option>
                                <option value="386" data-image-css="flag pl" data-title="Poland">Poland</option>
                                <option value="387" data-image-css="flag pt" data-title="Portugal">Portugal</option>
                                <option value="484" data-image-css="flag pr" data-title="Puerto Rico">Puerto Rico</option>
                                <option value="389" data-image-css="flag qa" data-title="Qatar">Qatar</option>
                                <option value="480" data-image-css="" data-title="Reunion island">Reunion island</option>
                                <option value="391" data-image-css="flag ro" data-title="Romania">Romania</option>
                                <option value="469" data-image-css="flag ru" data-title="Russian Federation">Russia</option>
                                <option value="485" data-image-css="" data-title="Saint Martin">Saint Martin</option>
                                <option value="397" data-image-css="flag vc" data-title="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                                <option value="482" data-image-css="" data-title="Saipan">Saipan</option>
                                <option value="399" data-image-css="flag sm" data-title="San Marino">San Marino</option>
                                <option value="401" data-image-css="flag sa" data-title="Saudi Arabia">Saudi Arabia</option>
                                <option value="470" data-image-css="flag cs" data-title="Serbia">Serbia</option>
                                <option value="404" data-image-css="flag sc" data-title="Seychelles">Seychelles</option>
                                <option value="406" data-image-css="flag sg" data-title="Singapore">Singapore</option>
                                <option value="407" data-image-css="flag sk" data-title="Slovakia">Slovakia</option>
                                <option value="408" data-image-css="flag si" data-title="Slovenia">Slovenia</option>
                                <option value="411" data-image-css="flag za" data-title="South Africa">South Africa</option>
                                <option value="412" data-image-css="flag es" data-title="Spain">Spain</option>
                                <option value="413" data-image-css="flag lk" data-title="Sri Lanka">Sri Lanka</option>
                                <option value="415" data-image-css="flag sr" data-title="Suriname">Suriname</option>
                                <option value="417" data-image-css="flag se" data-title="Sweden">Sweden</option>
                                <option value="418" data-image-css="flag ch" data-title="Switzerland">Switzerland</option>
                                <%--<option value="483" data-image-css="" data-title="Tahiti">Tahiti</option>--%>
                                <option value="498" data-image-css="flag tw" data-title="Taiwan">Taiwan</option>
                                <option value="421" data-image-css="flag tj" data-title="Tajikistan">Tajikistan</option>
                                <option value="422" data-image-css="flag tz" data-title="Tanzania">Tanzania</option>
                                <option value="423" data-image-css="flag th" data-title="Thailand">Thailand</option>
                                <option value="479" data-image-css="flag do" data-title="Dominican Republic">The Dominican Republic</option>
                                <option value="426" data-image-css="flag tt" data-title="Trinidad and Tobago">Trinidad and Tobago</option>
                                <option value="427" data-image-css="flag tn" data-title="Tunisia">Tunisia</option>
                                <option value="428" data-image-css="flag tr" data-title="Turkey">Turkey</option>
                                <option value="491" data-image-css="flag tc" data-title="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                <option value="432" data-image-css="flag ua" data-title="Ukraine">Ukraine</option>
                                <option value="468" data-image-css="flag ae" data-title="United Arab Emirates">United Arab Emirates</option>
                                <option value="507" data-image-css="flag us" data-title="United States">USA_Canada_Mexico</option>
                                <option value="434" data-image-css="flag uk" data-title="United Kingdom">United Kingdom</option>
                                <option value="437" data-image-css="flag uy" data-title="Uruguay">Uruguay</option>
                                <option value="499" data-image-css="flag va" data-title="Vatican">Vatican</option>
                                <option value="441" data-image-css="flag ve" data-title="Venezuela">Venezuela</option>
                                <option value="463" data-image-css="flag vn" data-title="Viet Nam">Vietnam</option>
                                <option value="500" data-image-css="flag eh" data-title="Western Sahara">Western Sahara</option>
                                <option value="445" data-image-css="flag zm" data-title="Zambia">Zambia</option>
                            </select>
                        </div>
                        <div class="col-md-3" runat="server" id="PlanDiv" style="margin-top: 10px; display: none;">
                            <label class="control-label">Plan<small class="txt-color-red">*</small></label>
                            <select class="form-control" runat="server" id="ddlPlanList" style="height: 37px; border-radius: 0px;" onchange="SelectPlan();">
                            </select>
                        </div>
                        <div class="col-md-3" runat="server" id="NumberOfDaysDiv" style="margin-top: 10px; display: none;">
                            <label class="control-label">Number Of Days<small class="txt-color-red">*</small></label>
                            <select class="form-control" runat="server" id="ddlDays" style="height: 40px; border-radius: 0px;" onchange="SelectNumberOfDays();">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option></option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3" runat="server" id="PaybleAMountDiv" style="margin-top: 10px; display: none;">
                            <label class="control-label">Total Payable Amount<small class="txt-color-red">*</small></label>
                            <asp:HiddenField runat="server" ClientIDMode="Static" ID="hddnPaybleAmount" />
                            <asp:TextBox ID="txtPaybleAmount" runat="server" Style="height: 40px;" ClientIDMode="Static" autocomplete="off" class="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                         <div class="col-md-3" style="margin-top: 10px; display: none;"   runat="server"  id="StartDateDiv">
                         <label class="control-label">Start Date<small class="txt-color-red">*</small></label>
                         <input type="date" class="form-control" runat="server" id="txtStartDate" Style="height: 40px;" />
                         </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <asp:Button ID="btnValidate" runat="server" OnClick="btnValidate_Click" OnClientClick="javascript:return CheckValidation();" Style="height: 40px;" Text="Validate" CssClass="btn btn-success" />
                            <asp:Button ID="btnSave" runat="server" Text="Recharge Now" Style="height: 40px; display: none" OnClick="btnSubmit_Click" CssClass="btn btn-success" OnClientClick="if (!validateControlsAct()) { return false;};" />
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger" Style="margin-left: 5px; height: 40px;" OnClick="btnReset_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="DDD/dist/js/dd.min.js"></script>
    <script type="text/javascript">
        function CheckValidation() {
            if ($("#txtDevice").val() == "") {
                alert("Please enter device number.");
                $("#txtDevice").focus();
                return false;
            }
        }
    </script>
    <script type="text/javascript">
        function SelectCountry() {
            var CountryID = $("#ContentPlaceHolder1_countries").val();
            debugger;
            $("#ContentPlaceHolder1_NumberOfDaysDiv").hide();
            $("#ContentPlaceHolder1_PaybleAMountDiv").hide();
            $("#ContentPlaceHolder1_CustomerfNameDiv").hide();

            $("#ContentPlaceHolder1_EmailDiv").hide();
            $("#ddlNumberOfDays").val("1");
            $("#txtPaybleAmount").val("");
            $("#txtCustomerName").val("");
            $("#txtEmail").val("");
            $("#hddnPaybleAmount").val("");
            $("#txtPaybleAmount").val("");
            $("#ContentPlaceHolder1_btnValidate").hide();
            $("#ContentPlaceHolder1_btnSave").hide();
            if (CountryID != "0") {
                $.ajax({
                    url: 'Activation.aspx/GetPlanUsingCountryID',
                    data: '{CountryID: "' + CountryID + '" }',
                    contentType: 'application/json',
                    dataType: 'json',
                    type: 'POST',
                    success: function (result) {
                        $("#ContentPlaceHolder1_ddlPlanList").empty();
                        var OptionData = "<option value='0'>--Select Plan--</option>";
                        $.each(result.d, function (key, value) {
                            OptionData = OptionData + "<option value='" + value.PlanId + "'>" + value.PlanName + "</option>"
                        });
                        $("#ContentPlaceHolder1_ddlPlanList").append(OptionData);
                        $("#ContentPlaceHolder1_PlanDiv").show();
                    },
                    failure: function (result) {
                        alert('Something Went Wrong, Please Try Again...');
                        $("#ContentPlaceHolder1_ddlPlanList").empty();
                        var OptionData = "<option value='0'>--Select Plan--</option>";
                        $("#ContentPlaceHolder1_ddlPlanList").append(OptionData);
                        return false;
                    }
                });
            }
            else {
                $("#ContentPlaceHolder1_ddlPlanList").empty();
                var OptionData = "<option value='0'>--Select Plan--</option>";
                $("#ContentPlaceHolder1_ddlPlanList").append(OptionData);
                return false;
            }

        }
    </script>
    <script type="text/javascript">
        function SelectPlan() {
            var PlanID = $("#ContentPlaceHolder1_ddlPlanList").val();
            debugger;
            if (PlanID != "0") {
                $.ajax({
                    url: 'Activation.aspx/GetPlanDetailsByID',
                    data: '{PlanID: "' + PlanID + '" }',
                    contentType: 'application/json',
                    dataType: 'json',
                    type: 'POST',
                    success: function (result) {
                        $("#hddnPaybleAmount").val(result.d.Amount);
                        $("#txtPaybleAmount").val(result.d.Amount);
                        $("#ContentPlaceHolder1_NumberOfDaysDiv").show();
                        $("#ContentPlaceHolder1_CustomerfNameDiv").show();

                        $("#ContentPlaceHolder1_EmailDiv").show();
                        $("#ContentPlaceHolder1_PaybleAMountDiv").show();
                        $("#ContentPlaceHolder1_btnValidate").hide();
                        $("#ContentPlaceHolder1_btnSave").show();
                        if ($("#ContentPlaceHolder1_countries").val() == "435") {
                            if (Number(result.d.PlanValidity) == 30) {
                                $("#ContentPlaceHolder1_ddlDays").val("30");
                                $("#ContentPlaceHolder1_ddlDays").attr("disabled", true);
                                $("#ContentPlaceHolder1_StartDateDiv").hide();
                            }
                            else {
                                $("#ContentPlaceHolder1_ddlDays").val();
                                $("#ContentPlaceHolder1_ddlDays").removeAttr("disabled", false);
                                $("#ContentPlaceHolder1_StartDateDiv").show();
                            }
                        }
                        else {
                            if (Number(result.d.PlanValidity) == 30) {
                                $("#ContentPlaceHolder1_ddlDays").val("30");
                                $("#ContentPlaceHolder1_ddlDays").attr("disabled", true);
                                $("#ContentPlaceHolder1_StartDateDiv").hide();
                            }
                            else {
                                $("#ContentPlaceHolder1_ddlDays").val();
                                $("#ContentPlaceHolder1_ddlDays").removeAttr("disabled", false);
                                $("#ContentPlaceHolder1_StartDateDiv").show();
                            }
                        }
                        return true;
                    },
                    failure: function (result) {
                        alert('Something Went Wrong, Please Try Again...');
                        $("#ContentPlaceHolder1_NumberOfDaysDiv").hide();
                        $("#ContentPlaceHolder1_CustomerfNameDiv").hide();

                        $("#ContentPlaceHolder1_EmailDiv").hide();
                        $("#ContentPlaceHolder1_PaybleAMountDiv").hide();
                        $("#ContentPlaceHolder1_btnValidate").hide();
                        $("#ContentPlaceHolder1_btnSave").hide();
                        $("#txtPaybleAmount").val("");
                        $("#ContentPlaceHolder1_txtEmail").val("");
                        $("#ContentPlaceHolder1_txtCustomerName").val("");
                        $("#hddnPaybleAmount").val(0);
                        return false;
                    }
                });
            }
            else {
                $("#ContentPlaceHolder1_NumberOfDaysDiv").hide();
                $("#ContentPlaceHolder1_CustomerfNameDiv").hide();

                $("#ContentPlaceHolder1_EmailDiv").hide();
                $("#ContentPlaceHolder1_PaybleAMountDiv").hide();
                $("#ContentPlaceHolder1_btnValidate").hide();
                $("#ContentPlaceHolder1_btnSave").hide();
                $("#txtPaybleAmount").val("");
                $("#ContentPlaceHolder1_txtEmail").val("");
                $("#ContentPlaceHolder1_txtCustomerName").val("");
                $("#hddnPaybleAmount").val(0);
            }
        }
    </script>
    <script type="text/javascript">
        function SelectNumberOfDays() {
            var NumberOfDays = $("#ContentPlaceHolder1_ddlDays").val();
            $.ajax({
                url: 'Activation.aspx/CalPaybleAmountByDays',
                data: '{NumberOfDays: "' + NumberOfDays + '" }',
                contentType: 'application/json',
                dataType: 'json',
                type: 'POST',
                success: function (result) {
                    $("#hddnPaybleAmount").val(result.d.Amount);
                    $("#txtPaybleAmount").val(result.d.Amount);
                    $("#ContentPlaceHolder1_NumberOfDaysDiv").show();
                    $("#ContentPlaceHolder1_CustomerfNameDiv").show();

                    $("#ContentPlaceHolder1_EmailDiv").show();
                    $("#ContentPlaceHolder1_PaybleAMountDiv").show();
                    $("#ContentPlaceHolder1_btnValidate").hide();
                    $("#ContentPlaceHolder1_btnSave").show();
                    if ($("#ContentPlaceHolder1_countries").val() == "435") {
                        if (Number(result.d.PlanValidity) == 30) {
                            $("#ContentPlaceHolder1_ddlDays").val("30");
                            $("#ContentPlaceHolder1_ddlDays").attr("disabled", true);
                        }
                        else {
                            $("#ContentPlaceHolder1_ddlDays").val();
                            $("#ContentPlaceHolder1_ddlDays").removeAttr("disabled", false);
                        }
                    }
                    else {
                        if (Number(result.d.PlanValidity) == 30) {
                            $("#ContentPlaceHolder1_ddlDays").val("30");
                            $("#ContentPlaceHolder1_ddlDays").attr("disabled", true);
                        }
                        else {
                            $("#ContentPlaceHolder1_ddlDays").val();
                            $("#ContentPlaceHolder1_ddlDays").removeAttr("disabled", false);
                        }
                    }
                    return true;
                },
                failure: function (result) {
                    alert('Something Went Wrong, Please Try Again...');
                    $("#ContentPlaceHolder1_NumberOfDaysDiv").hide();
                    $("#ContentPlaceHolder1_CustomerfNameDiv").hide();

                    $("#ContentPlaceHolder1_EmailDiv").hide();
                    $("#ContentPlaceHolder1_PaybleAMountDiv").hide();
                    $("#ContentPlaceHolder1_btnValidate").hide();
                    $("#ContentPlaceHolder1_btnSave").hide();
                    $("#txtPaybleAmount").val("");
                    $("#ContentPlaceHolder1_txtEmail").val("");
                    $("#ContentPlaceHolder1_txtCustomerName").val("");
                    $("#hddnPaybleAmount").val(0);
                    return false;
                }
            });
        }
    </script>
    <script type="text/javascript">
        function validateControlsAct() {
            debugger;
            if ($("#ContentPlaceHolder1_ddlPlanList").val() == "0") {
                alert("Please select any plan.");
                $("#ContentPlaceHolder1_ddlPlanList").focus();
                return false;
            }
            if ($("#ContentPlaceHolder1_ddlDays").val() == "0") {
                alert("Please select number of days.");
                $("#ContentPlaceHolder1_ddlDays").focus();
                return false;
            }
            if ($("#txtPaybleAmount").val() == "") {
                alert("Plan amount can't be zero, please try again.");
                return false;
            }
            if ($("#txtCustomerName").val() == "") {
                alert("Please enter customer name.");
                $("#txtCustomerName").focus();
                return false;
            }

            if ($("#txtEmail").val() == "") {
                alert("Please enter customer email id.");
                $("#txtEmail").focus();
                return false;
            }
            return true;
        }
    </script>
</asp:Content>

