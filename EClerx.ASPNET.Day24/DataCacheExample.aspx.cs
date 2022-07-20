using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClerx.ASPNET.Day24
{
    public partial class DataCacheExample : System.Web.UI.Page
    {

        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        private DataTable dt = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void GetData()
        {
            using (con = new SqlConnection("Server=arun-pc\\sqlexpress; Database=HR; Integrated Security=true"))
            {
                using (adapter = new SqlDataAdapter("Select * from Position", con))
                {
                    dt = new DataTable();
                    adapter.Fill(dt);
                }
            }

            Cache.Insert("PositionCache", dt, null, DateTime.Now.AddSeconds(60), TimeSpan.Zero);
        }

        protected void BtnGetData_Click(object sender, EventArgs e)
        {
            this.GetData();
            Response.Redirect("HomePage.aspx");
        }
    }
}