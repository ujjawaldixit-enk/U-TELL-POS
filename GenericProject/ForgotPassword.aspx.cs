using System;
using System.IO;
using System.Net;
using System.Web;
using System.Linq;
using System.Text;
using System.Web.UI;
using GenericProject;
using Newtonsoft.Json;
using System.Text.Json;
using System.Web.Services;
using System.Configuration;
using GenericProject.Models;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Collections.Generic;

using static GenericProject.Models.IntAPICall;

namespace GenericProject
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (cGeneral.Maintenance == "1")
                {
                    Response.Redirect("WebSiteUnderConstruction.html", false);
                }
            }
            catch (Exception Ex)
            {
                //ShowPopUpMsg(Ex.Message.ToString());
            }
        }
        [WebMethod(EnableSession = true)]
        public static async Task<AjaxResponseReturn> forgotpassword(string username)
        {
            string tokenid = "";
            IntAPICall objIntapicall = new IntAPICall();
            AjaxResponseReturn res = new AjaxResponseReturn();
            try
            {
                string strRequest = "{\"Username\":\"" + username + "\"}";
                MethodResponse<dynamic> _loginResponse = await objIntapicall.GetApiAsyncMethods(strRequest, "Auth/ForgetPassword", tokenid);
                if (_loginResponse.ErrorCode == 0)
                {
                    var jsonDoc = JsonDocument.Parse(_loginResponse.Data);
                    string message = Convert.ToString(jsonDoc.RootElement.GetProperty("message"));
                    string statusCode = Convert.ToString(jsonDoc.RootElement.GetProperty("statusCode"));
                    if (statusCode == "1200")
                    {
                        HttpContext.Current.Session["tokenid"] = Convert.ToString(jsonDoc.RootElement.GetProperty("data").GetProperty("token"));
                        res.ResponseCode = "0";
                        res.ResponseData = null;
                        res.ResponseMsg = "Success";
                    }
                    else
                    {
                        res.ResponseData = null;
                        res.ResponseCode = statusCode;
                        res.ResponseMsg = "Distributor forgot process failed : " + message;
                    }
                }
                else
                {
                    res.ResponseData = _loginResponse.Data;
                    res.ResponseCode = Convert.ToString(_loginResponse.ErrorCode);
                    res.ResponseMsg = "Distributor forgot process failed : " + _loginResponse.ErrorMsg;
                }
            }
            catch (Exception ex)
            {
                res.ResponseData = null;
                res.ResponseCode = "500";
                res.ResponseMsg = "Distributor forgot process failed : Error: " + ex.Message;

            }
            return res;
        }
    }
}