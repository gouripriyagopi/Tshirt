using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Designer_PaintPlatform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            litMessage.Visible = true;

            System.Diagnostics.Process oProcess = null;

            try
            {
                string strRootRelativePathName = "paint clone.exe";
                litMessage.Text = "Application Started";
                string strPathName =
                    Server.MapPath(strRootRelativePathName);

                if (System.IO.File.Exists(strPathName) == false)
                {
                    litMessage.Text = "Error: File Not Found!";
                }
                else
                {
                    oProcess =
                        new System.Diagnostics.Process();

                    oProcess.StartInfo.Arguments = "args";

                    oProcess.StartInfo.FileName = strPathName;

                    oProcess.Start();

                    oProcess.WaitForExit();

                    System.Threading.Thread.Sleep(2000);

                    litMessage.Text = "T-Trends Executed Successfully...";
                }
            }
            catch (System.Exception ex)
            {
                litMessage.Text =
                    string.Format("Error: {0}", ex.Message);
            }
            finally
            {
                if (oProcess != null)
                {
                    oProcess.Close();
                    oProcess.Dispose();
                    oProcess = null;
                }
            }
        }

    }
}