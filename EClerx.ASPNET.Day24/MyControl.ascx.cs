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
    public partial class MyControl : System.Web.UI.UserControl
    {

        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        private DataTable dt = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Server Date and Time
            LblServer.Text = DateTime.Now.ToString();

            if (!IsPostBack)
            {
                using (con = new SqlConnection("Server=arun-pc\\sqlexpress; Database=HR; Integrated Security=true"))
                {
                    using (adapter = new SqlDataAdapter("Select distinct cCity from Employee", con))
                    {
                        dt = new DataTable();
                        adapter.Fill(dt);
                        DdlCity.DataSource = dt;
                        DdlCity.DataTextField = "cCity";
                        DdlCity.DataValueField = "cCity";
                        DdlCity.DataBind();
                    }
                }
            }
        }

        protected void DdlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (con = new SqlConnection("Server=arun-pc\\sqlexpress; Database=HR; Integrated Security=true"))
            {
                using (adapter = new SqlDataAdapter("Select cEmployeeCode, vFirstName, cCity from Employee Where cCity = @City", con))
                {
                    adapter.SelectCommand.Parameters.AddWithValue("@City", DdlCity.SelectedItem.ToString());
                    dt = new DataTable();
                    adapter.Fill(dt);
                    GridEmployee.DataSource = dt;
                    GridEmployee.DataBind();
                }
            }
        }
    }
}