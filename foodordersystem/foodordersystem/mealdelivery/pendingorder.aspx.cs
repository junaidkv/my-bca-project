using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.mealdelivery
{
    public partial class pendingorder : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string todaydate = DateTime.Now.ToString("yyyy/MM/dd");

                DataTable dt3 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where mealdeliverydetails.lid=" + Session["l_id"] + " and orderdetails.status='task assigned' and orderdetails.deliverydate>=CAST('" + todaydate + "' AS DATETIME)");
                if (dt3.Rows.Count > 0)
                {
                    db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid INNER JOIN deliverydetails on  deliverydetails.deliveryid=orderdetails.deliveryid INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where mealdeliverydetails.lid=" + Session["l_id"] + " and orderdetails.status='task assigned' and orderdetails.deliverydate>=CAST('" + todaydate + "' AS DATETIME)", GridView3);
                }
                else
                {
                    Literal3.Text = "<h3>No Item Found</h3>";
                }



                DataTable dt1 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where mealdeliverydetails.lid=" + Session["l_id"] + " and orderdetails.status!='order delivered' and orderdetails.deliverydate<CAST('" + todaydate + "' AS DATETIME)");
                if (dt1.Rows.Count > 0)
                {
                    db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where mealdeliverydetails.lid=" + Session["l_id"] + " and orderdetails.status!='order delivered' and orderdetails.deliverydate<CAST('" + todaydate + "' AS DATETIME)", GridView1);
                }
                else
                {
                    Literal4.Text = "<h3>No Item Found</h3>";

                }
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

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            string id = GridView3.DataKeys[e.RowIndex].Value.ToString();
            string ss = "update orderdetails set status='order delivered' where oid=" + id;
            db.exenonquery(ss);
            DataTable dt3 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where mealdeliverydetails.lid=" + Session["l_id"] + " and orderdetails.status='task assigned' and orderdetails.deliverydate>CAST('2018-04-17' AS DATETIME)");
            if (dt3.Rows.Count > 0)
            {
                db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where mealdeliverydetails.lid=" + Session["l_id"] + " and orderdetails.status='task assigned' and orderdetails.deliverydate>CAST('2018-04-17' AS DATETIME)", GridView3);
            }
            else
            {
                Literal3.Text = "<h3>No Item Found</h3>";
                db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where mealdeliverydetails.lid=" + Session["l_id"] + " and orderdetails.status='task assigned' and orderdetails.deliverydate>CAST('2018-04-17' AS DATETIME)", GridView3);

            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}