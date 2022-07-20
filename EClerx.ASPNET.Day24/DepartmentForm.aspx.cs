using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace EClerx.ASPNET.Day24
{
    public partial class DepartmentForm : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        private DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            LblServer.Text = DateTime.Now.ToString();

            if (!IsPostBack)
            {
                //Get Department Name from Query String
                string departmentName = null;
                if (Request.QueryString["DepartName"] != null)
                {
                    departmentName = Request.QueryString["DepartName"].ToString();
                }
                using (con = new SqlConnection("Server=arun-pc\\sqlexpress; Database=HR; Integrated Security=true"))
                {
                    using (adapter = new SqlDataAdapter("Select * from Department Where vDepartmentName=@DepartName", con))
                    {
                        adapter.SelectCommand.Parameters.AddWithValue("@DepartName", departmentName);
                        dt = new DataTable();
                        adapter.Fill(dt);
                        GridDepartment.DataSource = dt;
                        GridDepartment.DataBind();
                    }
                }
            }
        }
    }
}