using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Popeye_Marina
{
    public partial class Lease : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.Identity.IsAuthenticated == false)
                Response.Redirect("/Account/Login"); 
        }

        protected void AddLease(object sender, EventArgs e)
        {
            SqlDataSourceLease.Insert(); 
            GridViewLease.DataBind();
        }

       

        protected void refreshDaysAndCost(object sender, EventArgs e)
        {
            TimeSpan duration = endcal.SelectedDate - startcal.SelectedDate; 
            int leaseDays = duration.Days;
            int rate = Int32.Parse(ratedropdown.SelectedValue);
            int totalCost = leaseDays * rate;

            if (leaseDays <= 0 || rate <=0 )
            {
                days.Text = "";
                amount.Text = "";
            }
            else
            {
                days.Text = leaseDays.ToString();
                amount.Text = totalCost.ToString();
            }

        }
    }
}



  

       