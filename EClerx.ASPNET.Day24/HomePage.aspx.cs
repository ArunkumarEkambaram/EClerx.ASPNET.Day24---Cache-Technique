using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EClerx.ASPNET.Day24
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["MyData"] != null)
            {
                LblMessage.Text = Cache["MyData"].ToString();
            }
            else
            {
                LblMessage.Text = "No Data";
            }

            //if (Cache["Name"] != null)
            //{
            //    LblMessage.Text = $"Welcome, {Cache["Name"]}";
            //}
            //else
            //{
            //    LblMessage.Text = "Welcome, Guest";
            //}

            //if (Cache["PositionCache"] != null)
            //{
            //    GridPosition.DataSource = Cache["PositionCache"] as DataTable;
            //    GridPosition.DataBind();
            //}
        }
    }
}