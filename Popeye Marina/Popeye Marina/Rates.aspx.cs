using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Popeye_Marina
{
    public partial class Rates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addRatePlan(object sender, EventArgs e)
        {
            SqlDataSrcForm.Insert();
            GridView1.DataBind();
        }
    }
}