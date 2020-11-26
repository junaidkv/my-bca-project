using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem.user
{
    public partial class home : System.Web.UI.Page

    {
        dboperation db = new dboperation();
        private void Page_Init(object sender, EventArgs e)
        {
            if (Session["l_id"] == null)
            {
                Response.Redirect("~/login.aspx");
            }

            Response.Cache.SetNoStore();
            Response.Cache.SetCacheability(HttpCacheability.NoCache);



        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.filldlist("select * from productdetails INNER JOIN managerdetails on productdetails.lid=managerdetails.lid ", DataList1);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataListItem item = (DataListItem)(((Button)sender).NamingContainer);

            Button btn = (Button)item.FindControl("addtocart");

            Session["pid"] = btn.CommandArgument;

            Response.Redirect("~/user/cartadd.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}