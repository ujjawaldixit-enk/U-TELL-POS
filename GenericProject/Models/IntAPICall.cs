using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace GenericProject.Models
{
    public class IntAPICall
    {
        public List<MethodResponse<dynamic>> Methodresponse;
        public IntAPICall()
        {
            Methodresponse = new List<MethodResponse<dynamic>>()
            {
                new MethodResponse<dynamic> {ErrorCode= 0, Data = null, ErrorMsg = "Success", Status = true },
                new MethodResponse<dynamic> {ErrorCode= 1, Data = null, ErrorMsg = "Error-", Status = false }
            };
        }
        public class MethodResponse<T>
        {
            public T Data { get; set; }
            public Int16 ErrorCode { get; set; }
            public string ErrorMsg { get; set; }
            public bool Status { get; set; }
        }
        public async Task<MethodResponse<dynamic>> GetApiAsyncMethods<T>(T jsonRequest, string endpoint, string tokenid)
        {
            try
            {
                string Result = "";
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                var httpWebRequest = (HttpWebRequest)WebRequest.Create(cGeneral.BaseURL + endpoint + jsonRequest);
                httpWebRequest.ContentType = "application/json";
                httpWebRequest.Method = "GET";
                httpWebRequest.Headers.Add("Authorization", "Bearer " + tokenid);
                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                if (Convert.ToString(httpResponse.StatusCode) == "OK")
                {
                    using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                    {
                        Result = streamReader.ReadToEnd();
                    }
                    if (Result != null)
                    {
                        Methodresponse[0].Data = Result;
                        return Methodresponse[0];
                    }
                    else
                    {
                        Methodresponse[1].ErrorMsg = Methodresponse[1].ErrorMsg + " || " + Convert.ToString(httpResponse.StatusCode) + " || " + Convert.ToString(httpResponse.StatusDescription);
                        return Methodresponse[1];
                    }
                }
                else
                {
                    Methodresponse[1].ErrorMsg = Methodresponse[1].ErrorMsg + " || " + Convert.ToString(httpResponse.StatusCode) + " || " + Convert.ToString(httpResponse.StatusDescription);
                    return Methodresponse[1];
                }
            }
            catch (WebException ex)
            {
                Methodresponse[1].ErrorMsg = "*2 " + endpoint + " " + Methodresponse[0].ErrorMsg + ex.Message;
                return Methodresponse[1];
            }
            catch (Exception ex)
            {
                Methodresponse[1].ErrorMsg = "*2 " + endpoint + " " + Methodresponse[0].ErrorMsg + ex.Message;
                return Methodresponse[1];
            }
        }
        public  async Task<MethodResponse<dynamic>> PostApiAsyncMethods<T>(T jsonRequest, string endpoint, string tokenid)
        {
            try
            {
                string Result = "";
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;
                var httpWebRequest = (HttpWebRequest)WebRequest.Create(cGeneral.BaseURL + endpoint);
                httpWebRequest.Headers.Add("Authorization", "Bearer " + tokenid);
                httpWebRequest.ContentType = "application/json";
                httpWebRequest.Method = "POST";
                using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {
                    streamWriter.Write(jsonRequest);
                    streamWriter.Flush();
                    streamWriter.Close();
                }
                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                if (Convert.ToString(httpResponse.StatusCode) == "OK")
                {
                    using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                    {
                        Result = streamReader.ReadToEnd();
                    }
                    if (Result != null)
                    {
                        Methodresponse[0].Data = Result;
                        return Methodresponse[0];
                    }
                    else
                    {
                        Methodresponse[1].ErrorMsg = Methodresponse[1].ErrorMsg + " || " + Convert.ToString(httpResponse.StatusCode) + " || " + Convert.ToString(httpResponse.StatusDescription);
                        return Methodresponse[1];
                    }
                }
                else
                {
                    Methodresponse[1].ErrorMsg = Methodresponse[1].ErrorMsg + " || " + Convert.ToString(httpResponse.StatusCode) + " || " + Convert.ToString(httpResponse.StatusDescription);
                    return Methodresponse[1];
                }
            }
            catch (WebException ex)
            {
                Methodresponse[1].ErrorMsg = "*2 " + endpoint + " " + Methodresponse[0].ErrorMsg + ex.Message;
                return Methodresponse[1];
            }
            catch (Exception ex)
            {
                Methodresponse[1].ErrorMsg = "*2 " + endpoint + " " + Methodresponse[0].ErrorMsg + ex.Message;
                return Methodresponse[1];
            }
        }
    }
}