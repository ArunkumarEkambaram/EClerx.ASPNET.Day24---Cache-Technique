using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClerx.ASPNET.Day24
{
    public partial class CacheExample1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblServer.Text = DateTime.Now.ToString();
        }
        protected void BtnEx1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CacheExample1.aspx");
        }

        protected void BtnEx2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CacheExample2.aspx");
        }

        protected void BtnEx3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CacheExample3.aspx");
        }
    }
}