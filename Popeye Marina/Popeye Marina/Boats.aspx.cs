using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Popeye_Marina
{
    public partial class Boats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.Identity.IsAuthenticated == false)
                Response.Redirect("/Account/Login"); 
        }

        protected void addBoat(object sender, EventArgs e)
        {
            Sqldatasrcboats.Insert();
            GridViewBoats.DataBind();

        }

       
    }
}