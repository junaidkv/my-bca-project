using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace foodordersystem.manager
{
    public partial class report : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt2 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid where orderdetails2.mid= " + Session["l_id"].ToString());
            if (dt2.Rows.Count > 0)
            {
                db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  where orderdetails2.mid= " + Session["l_id"].ToString()+"and orderdetails.status='orderplaced'", GridView2);
            }
            else
            {
                Literal2.Text = "<h2>No Item Found</h2>";

            }
            DataTable dt3 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid where orderdetails2.mid= " + Session["l_id"].ToString());
            if (dt3.Rows.Count > 0)
            {
                db.fillgrid("select orderdetails.oid,productdetails.name as prdname,productdetails.photo,orderdetails2.quantity,productdetails.price,orderdetails.status,mealdeliverydetails.name from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  INNER JOIN assign on assign.oid=orderdetails.oid INNER JOIN mealdeliverydetails on mealdeliverydetails.mdid=assign.mdid  where orderdetails2.mid= " + Session["l_id"].ToString() + "and orderdetails.status='task assigned'", GridView3);
            }
            else
            {
                Literal3.Text = "<h3>No Item Found</h3>";

            }

        }
    }
}