using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Popeye_Marina
{
    public partial class Docks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addDock(object sender, EventArgs e)
        {
            SqlDataSrcForm.Insert();
            GridView1.DataBind();
        }
    }
}