using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem.manager
{
    public partial class Edit : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.fillgrid("select * from productdetails inner join catagory on catagory.ctid=productdetails.category where productdetails.lid=" + Session["l_id"], GridView1);
        
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridViewRow item = (GridViewRow)(((LinkButton)sender).NamingContainer);

            LinkButton lbt = (LinkButton)item.FindControl("LinkButton1");

            string pid = lbt.CommandArgument;
            Response.Redirect("~/manager/editproduct.aspx?pid=" + pid);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string ss = "delete from productdetails where pid =" + id;
            db.exenonquery(ss);
            db.fillgrid("select * from productdetails inner join catagory on catagory.ctid=productdetails.category where productdetails.lid=" + Session["l_id"], GridView1);
        }
    }
}