using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Popeye_Marina
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.Identity.IsAuthenticated == false)
                Response.Redirect("/Account/Login"); 

        }
        
        protected void addContact(object sender, EventArgs e)
        {
            Sqldatasrcform.Insert();
            GridView1.DataBind(); 

        }
       

        private void resetForm()
        {
            namefield.Text = "";
            emailfield.Text = "";
            phonefield.Text = "";
            addfield.Text = "";
            dobfield.Text = ""; 
            passwordfield.Text = ""; 
        }

        
       

      }
}