using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem
{
    public partial class mainhome : System.Web.UI.Page
    {
        dboperation db = new dboperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack )
            {
                db.filldlist("select * from productdetails INNER JOIN managerdetails on productdetails.lid=managerdetails.lid ", DataList1);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataListItem item=(DataListItem)(((Button)sender).NamingContainer);

            Button btn = (Button)item.FindControl("addtocart");

            Session["pid"] = btn.CommandArgument;

            Response.Redirect("~/login.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}