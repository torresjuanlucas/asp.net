using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NorthwirdProject
{
    public partial class AdvancedSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.SelectRow(-1);

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)"
            CustomersSqlDS.SelectCommand = "SELECT * FROM [Customers] WHERE(["+ ddlFeilds.SelectedValue + "] = @CustomerID)";
        }
    }
}