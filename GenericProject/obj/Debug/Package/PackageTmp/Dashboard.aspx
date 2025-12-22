<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GenericProject.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="row">
                    <div class="col-xl-8">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body overflow-hidden">
                                                <p class="text-truncate font-size-14 mb-2">Total Devices</p>
                                                <h4 class="mb-0" runat="server" id="aTotalDevices"></h4>
                                            </div>
                                            <div class="text-primary">
                                                <i class="ri-stack-line font-size-24"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body border-top py-3">
                                        <div class="text-truncate">
                                            <a href="DeviceList.aspx" class="badge badge-soft-success" style="border: none; width: 100%; font-weight: bold; padding-top: 5px; padding-bottom: 5px;">View Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body overflow-hidden">
                                                <p class="text-truncate font-size-14 mb-2">Active Devices</p>
                                                <h4 class="mb-0" runat="server" id="aActiveDevices"></h4>
                                            </div>
                                            <div class="text-primary">
                                                <i class="ri-stack-line font-size-24"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body border-top py-3">
                                        <div class="text-truncate">
                                            <a href="DeviceList.aspx?Status=Gc5z6qrJmAnYynWiHXYOnA==" class="badge badge-soft-success" style="border: none; width: 100%; font-weight: bold; padding-top: 5px; padding-bottom: 5px;">View Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body overflow-hidden">
                                                <p class="text-truncate font-size-14 mb-2">Free Devices</p>
                                                <h4 class="mb-0" runat="server" id="aFreeDevices"></h4>
                                            </div>
                                            <div class="text-primary">
                                                <i class="ri-stack-line font-size-24"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body border-top py-3">
                                        <div class="text-truncate">
                                            <a href="DeviceList.aspx?Status=NG3OLDtv274ECMHO/pBUpA==" class="badge badge-soft-success" style="border: none; width: 100%; font-weight: bold; padding-top: 5px; padding-bottom: 5px;">View Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body overflow-hidden">
                                                <p class="text-truncate font-size-14 mb-2">Lost Devices</p>
                                                <h4 class="mb-0" runat="server" id="aLostDevices"></h4>
                                            </div>
                                            <div class="text-primary">
                                                <i class="ri-stack-line font-size-24"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body border-top py-3">
                                        <div class="text-truncate">
                                            <a href="DeviceList.aspx?Status=B9+j2I1v54/wfRYayGdj+w==" class="badge badge-soft-success" style="border: none; width: 100%; font-weight: bold; padding-top: 5px; padding-bottom: 5px;">View Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Activation & Recharge Analytics</h4>
                                <div>
                                    <div id="ActivationrechargeChart" class="apex-charts" dir="ltr"></div>
                                </div>
                            </div>
                            <div class="card-body border-top text-center">
                                <div class="row">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-4">
                                        <div class="mt-4 mt-sm-0">
                                            <p class="mb-2 text-muted text-truncate"><i class="mdi mdi-circle text-primary font-size-10 mr-1"></i>Total Activation : <span class="mb-0 mr-2" id="spnTotalActivation"></span></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="mt-4 mt-sm-0">
                                            <p class="mb-2 text-muted text-truncate"><i class="mdi mdi-circle text-success font-size-10 mr-1"></i>Total Recharge : <span class="mb-0 mr-2" id="spnTotalRecharge"></span></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Stock Analytics</h4>
                                <div id="DeviceDonutChart" class="apex-charts"></div>
                                <div class="row">
                                    <div class="col-4">
                                        <div class="text-center mt-4">
                                            <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-primary font-size-10 mr-1"></i>Active</p>
                                            <h5 runat="server" id="spandonutActive"></h5>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="text-center mt-4">
                                            <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-success font-size-10 mr-1"></i>Free</p>
                                            <h5 runat="server" id="spandonutFree"></h5>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="text-center mt-4">
                                            <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-warning font-size-10 mr-1"></i>Lost</p>
                                            <h5 runat="server" id="spandonutLost"></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Activation & Recharge Reports</h4>
                                <div class="text-center">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div>
                                                <div class="mb-3">
                                                    <div id="ActivationMiniPieChart" class="apex-charts"></div>
                                                </div>
                                                <p class="text-muted text-truncate mb-2">Activation : <span id="spnActivation" class="mb-0"></span></p>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="mt-5 mt-sm-0">
                                                <div class="mb-3">
                                                    <div id="RechargeMiniPieChart" class="apex-charts"></div>
                                                </div>
                                                <p class="text-muted text-truncate mb-2">Recharge : <span id="spnRecharge" class="mb-0"></span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="design/assets/libs/apexcharts/apexcharts.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $.ajax({
                type: 'POST',
                dataType: 'json',
                contentType: 'application/json',
                url: 'Dashboard.aspx/GetDashboardActRechData',
                data: '{}',
                success:
                    function (response) {
                        var options = {
                            series: [{
                                name: "Activation",
                                type: "column",
                                data: [response.d.ACT_One, response.d.ACT_Two, response.d.ACT_Three, response.d.ACT_Four, response.d.ACT_Five, response.d.ACT_Six, response.d.ACT_Seven, response.d.ACT_Eight, response.d.ACT_Nine, response.d.ACT_Ten, response.d.ACT_Ele, response.d.ACT_Tve]
                            },
                            {
                                name: "Recharge",
                                type: "line",
                                data: [response.d.REC_One, response.d.REC_Two, response.d.REC_Three, response.d.REC_Four, response.d.REC_Five, response.d.REC_Six, response.d.REC_Seven, response.d.REC_Eight, response.d.REC_Nine, response.d.REC_Ten, response.d.REC_Ele, response.d.REC_Tve]
                            }],
                            chart: {
                                height: 280,
                                type: "line",
                                toolbar: { show: !1 }
                                //,events: {
                                //    dataPointSelection: function (event, chartContext, config) {
                                //        let SearchData = config.w.config.xaxis.categories[config.dataPointIndex];
                                //        window.location.href = 'ActAndRechMetrics.aspx?Date=' + SearchData;
                                //    }
                                //}
                            },
                            stroke: {
                                width: [0, 3],
                                curve: "smooth"
                            }, plotOptions:
                            {
                                bar: {
                                    horizontal: !1,
                                    columnWidth: "20%"
                                }
                            },
                            dataLabels: {
                                enabled: !1
                            },
                            legend: {
                                show: !1
                            },
                            colors: ["#5664d2", "#1cbb8c"],
                            labels: [response.d.MONTHOne, response.d.MONTHTwo, response.d.MONTHThree, response.d.MONTHFour, response.d.MONTHFive, response.d.MONTHSix, response.d.MONTHSeven, response.d.MONTHEight, response.d.MONTHNine, response.d.MONTHTen, response.d.MONTHEle, response.d.MONTHTve]
                        }, chart = new ApexCharts(document.querySelector("#ActivationrechargeChart"), options); chart.render();
                    },
                error: function () {
                    alert("Error loading data! Please try again.");
                }
            });
        });
        $(document).ready(function () {
            $.ajax({
                type: 'POST',
                dataType: 'json',
                contentType: 'application/json',
                url: 'Dashboard.aspx/PieChartData',
                data: '{}',
                success:
                    function (response) {
                        var options = { series: [response.d.ActiveDevice, response.d.FreeDevice, response.d.LostDevice], chart: { height: 230, type: "donut" }, labels: ["Active Device", "Free Device", "Lost Device"], plotOptions: { pie: { donut: { size: "75%" } } }, dataLabels: { enabled: !1 }, legend: { show: !1 }, colors: ["#5664d2", "#1cbb8c", "#eeb902"] }; (chart = new ApexCharts(document.querySelector("#DeviceDonutChart"), options)).render();
                    },
                error: function () {
                    alert("Error loading data! Please try again.");
                }
            });
        });
        $(document).ready(function () {
            $.ajax({
                type: 'POST',
                dataType: 'json',
                contentType: 'application/json',
                url: 'Dashboard.aspx/PieChartData',
                data: '{}',
                success:
                    function (response) {
                        $("#spnRecharge").text(response.d.RechargeData);
                        $("#spnActivation").text(response.d.ActivationData);
                        $("#spnTotalRecharge").text(response.d.RechargeData);
                        $("#spnTotalActivation").text(response.d.ActivationData);
                        var radialoptions = { series: [response.d.ActivationData], chart: { type: "radialBar", wight: 60, height: 60, sparkline: { enabled: !0 } }, dataLabels: { enabled: !1 }, colors: ["#5664d2"], stroke: { lineCap: "round" }, plotOptions: { radialBar: { hollow: { margin: 0, size: "70%" }, track: { margin: 0 }, dataLabels: { show: !1 } } } }, radialchart = new ApexCharts(document.querySelector("#ActivationMiniPieChart"), radialoptions);
                        radialchart.render(); radialoptions = { series: [response.d.RechargeData], chart: { type: "radialBar", wight: 60, height: 60, sparkline: { enabled: !0 } }, dataLabels: { enabled: !1 }, colors: ["#1cbb8c"], stroke: { lineCap: "round" }, plotOptions: { radialBar: { hollow: { margin: 0, size: "70%" }, track: { margin: 0 }, dataLabels: { show: !1 } } } }; (radialchart = new ApexCharts(document.querySelector("#RechargeMiniPieChart"), radialoptions)).render();
                    },
                error: function () {
                    alert("Error loading data! Please try again.");
                }
            });
        });
    </script>
    <script type="text/javascript"> 

</script>
</asp:Content>
