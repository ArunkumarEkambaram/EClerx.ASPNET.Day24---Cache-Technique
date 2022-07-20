using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace EClerx.ASPNET.Day24
{
    public partial class DataCacheExample2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGetData_Click(object sender, EventArgs e)
        {
            var data = File.ReadAllText(Server.MapPath("~/MyData.txt"));
            //Cache Dependency
            CacheDependency objDep = new CacheDependency(Server.MapPath("~/MyData.txt"));
            Cache.Insert("MyData", data, objDep, Cache.NoAbsoluteExpiration, new TimeSpan(1, 0, 0));
            Response.Redirect("HomePage.aspx");
        }
    }
}