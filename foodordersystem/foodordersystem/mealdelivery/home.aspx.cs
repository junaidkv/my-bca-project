﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem.mealdelivery
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Page_Init(object sender, EventArgs e)
        {
            if (Session["l_id"] == null)
            {
                Response.Redirect("~/login.aspx");
            }

            Response.Cache.SetNoStore();
            Response.Cache.SetCacheability(HttpCacheability.NoCache);


        }
    }
}