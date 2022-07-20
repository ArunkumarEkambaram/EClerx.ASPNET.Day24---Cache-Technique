using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClerx.ASPNET.Day24
{
    public partial class CacheExample3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGoto_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentForm.aspx?DepartName=" + TxtDepartmentName.Text);
        }
    }
}