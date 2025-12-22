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
    public partial class Login : System.Web.UI.Page
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
        public static async Task<AjaxResponseReturn> loginuser(string username, string password)
        {
            string tokenid = "";
            IntAPICall objIntapicall = new IntAPICall();
            AjaxResponseReturn res = new AjaxResponseReturn();
            try
            {
                logindto obj = new logindto();
                obj.UserName = username;
                obj.Password = password;
                string jsonRequest = JsonConvert.SerializeObject(obj);
                MethodResponse<dynamic> _loginResponse = await objIntapicall.PostApiAsyncMethods(jsonRequest, "Auth/Login", tokenid);

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
                        res.ResponseMsg = "Distributor login successfully.";
                    }
                    else
                    {
                        res.ResponseData = null;
                        res.ResponseCode = statusCode;
                        res.ResponseMsg = "Distributor login failed : " + message;
                    }
                }
                else
                {
                    res.ResponseData = _loginResponse.Data;
                    res.ResponseCode = Convert.ToString(_loginResponse.ErrorCode);
                    res.ResponseMsg = "Distributor login failed : " + _loginResponse.ErrorMsg;
                }
            }
            catch (Exception ex)
            {
                res.ResponseData = null;
                res.ResponseCode = "500";
                res.ResponseMsg = "Error: " + ex.Message;

            }
            return res;
        }
    }
}