using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem.admin
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
                DataTable dt1 = db.exetable("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager' and login.status='0'");
                if (dt1.Rows.Count > 0)
                {
                    Label1.Text = "Manager Confirmation list";
                    db.fillgrid("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager' and login.status='0'", GridView1);
                }
                else
                {
                    Label1.Text = "No Confirmation list Found";
                }


                DataTable dt2 = db.exetable("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user' and login.status='0'");
                if (dt2.Rows.Count > 0)
                {
                    Label2.Text = "User Confirmation list";
                    db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='0'", GridView2);
                }
                else
                {
                    Label2.Text = "No Confirmation list Found";
                }

               // db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='0'", GridView2);
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int a = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string ss = "update login set status='1' where loginid=" + a;
            db.exenonquery(ss);


            DataTable dt1 = db.exetable("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager' and login.status='0'");
            if (dt1.Rows.Count > 0)
            {
                Label1.Text = "Manager Confirmation list";
                db.fillgrid("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager' and login.status='0'", GridView1);
            }
            else
            {
                Label1.Text = "No Manager Confirmation list Found";
                db.fillgrid("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager' and login.status='0'", GridView1);
            }


            DataTable dt2 = db.exetable("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user' and login.status='0'");
            if (dt2.Rows.Count > 0)
            {
                Label2.Text = "User Confirmation list";
                db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='0'", GridView2);
            }
            else
            {
                Label2.Text = "No User Confirmation list Found";
                db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='0'", GridView2);
            }

            //db.fillgrid("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager'and login.status='0'", GridView1);
        }
        //protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs i)
        //{
           
        //}

        protected void GridView2_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int a = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            string ss = "update login set status='1' where loginid=" + a;
            db.exenonquery(ss);
            //db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='0'", GridView2);


            DataTable dt1 = db.exetable("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager' and login.status='0'");
            if (dt1.Rows.Count > 0)
            {
                Label1.Text = "Manager Confirmation list";
                db.fillgrid("select * from managerdetails INNER JOIN login on managerdetails.lid=login.loginid where login.role='manager' and login.status='0'", GridView1);
            }
            else
            {
                Label1.Text = "No Confirmation list Found";
            }


            DataTable dt2 = db.exetable("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user' and login.status='0'");
            if (dt2.Rows.Count > 0)
            {
                Label2.Text = "User Confirmation list";
                db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='0'", GridView2);
            }
            else
            {
                Label2.Text = "No Confirmation list Found";
                db.fillgrid("select * from customerdetails INNER JOIN login on customerdetails.lid=login.loginid where login.role='user'and login.status='0'", GridView2);
            }

        }
    }
}