using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem.admin
{
    public partial class edit : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager'and login.status='1'", GridView1);
            }
            if (!IsPostBack)
            {
                db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='1'", GridView2);
            }
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
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridViewRow item = (GridViewRow)(((LinkButton)sender).NamingContainer);

            LinkButton lbt = (LinkButton)item.FindControl("LinkButton1");

            string mid = lbt.CommandArgument;
            Response.Redirect("~/admin/editmanager.aspx?mid=" + mid);

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string ss = "update login set status='2' where loginid=" +id;
            db.exenonquery(ss);
            db.fillgrid("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager'and login.status='1'", GridView1);

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();
            string ss = "update login set status='2' where loginid=" + id;
            db.exenonquery(ss);
            db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='1'", GridView2);

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            GridViewRow item = (GridViewRow)(((LinkButton)sender).NamingContainer);

            LinkButton lbt = (LinkButton)item.FindControl("LinkButton2");

            string mid = lbt.CommandArgument;
            Response.Redirect("~/admin/edituser.aspx?cid=" + mid );

        }
    }
}