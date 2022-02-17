﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_6_IT114L_MP
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FirstPage.aspx");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Movies.aspx");
        }
    }
}