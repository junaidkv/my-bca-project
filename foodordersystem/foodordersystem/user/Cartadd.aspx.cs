using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.user
{
    public partial class Cartadd : System.Web.UI.Page
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

                if (Session["pid"] != null)
                {
                    //string pid = Request.QueryString["pid"].ToString();

                    DataTable dt = db.exetable("select * from productdetails where pid=" + Session["pid"].ToString());
                    price.Text = dt.Rows[0][2].ToString();
                    txtname.Text = dt.Rows[0][1].ToString();
                    description.Text = dt.Rows[0][4].ToString();
                    photo.ImageUrl = "~/manager/upload/" + dt.Rows[0][5].ToString();

                    db.fillddl("select deliveryplace.name as place,deliveryplace.dpid as dpid from deliveryplace inner join mealdeliverydetails on deliveryplace.meallid=mealdeliverydetails.lid inner join productdetails on productdetails.lid=mealdeliverydetails.mlid where productdetails.pid=" + Session["pid"].ToString(),DropDownList1,"place","dpid");
                }
                else
                {
                    Label1.Visible = false;
                    photo.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    txtname.Visible = false;
                    price.Visible = false;
                    description.Visible = false;
                    Button1.Visible = false;
                    DropDownList1.Visible = false;
                    Label5.Visible = false;

                }


                DataTable dt1 = db.exetable("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0);
                if (dt1.Rows.Count > 0)
                {
                    db.fillgrid("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0, GridView1);
                    Label4.Visible = true;
                    TextBox2.Visible = true;
                }
                else
                {
                    Literal1.Text = "<h2>No Cart Item Found</h2>";
                    Button2.Visible = false;
                }


                DataTable dt2 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid where orderdetails2.lid= " + Session["l_id"].ToString());
                if (dt2.Rows.Count > 0)
                {
                    db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid where orderdetails2.lid= " + Session["l_id"].ToString(), GridView2);
                }
                else
                {
                    Literal1.Text = "<h2>No Purchase Item Found</h2>";

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //string pid =HiddenField1.Value;
            string pid = Session["pid"].ToString();
            string ob = Session["l_id"].ToString();
            if (DropDownList1.SelectedIndex > 0)
            {
                string gg = "insert into cartdetails values('" + pid + "','0'," + ob + ","+DropDownList1.SelectedItem.Value+")";

                int ab = db.exenonquery(gg);
                if (ab > 0)
                {
                    Response.Write("insert successfull");
                    Label1.Visible = false;
                    photo.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    txtname.Visible = false;
                    price.Visible = false;
                    description.Visible = false;
                    Button1.Visible = false;
                    Session["pid"] = null;
                    DropDownList1.Visible = false;
                    Label5.Visible = false;

                }
                else
                {
                    Response.Write("insertion failed");
                }
            }
            else
            {
                Response.Write("<script>alert('you should select any delivery location');</script>");
            }





            DataTable dt1 = db.exetable("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0);
            if (dt1.Rows.Count > 0)
            {
                db.fillgrid("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0, GridView1);
                Label4.Visible = true;
                TextBox2.Visible = true;
            }
            else
            {
                Literal1.Text = "<h2>No Cart Item Found</h2>";
                Button2.Visible = false;
            }


            DataTable dt2 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid where orderdetails2.lid= " + Session["l_id"].ToString());
            if (dt2.Rows.Count > 0)
            {
                db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid where orderdetails2.lid= " + Session["l_id"].ToString(), GridView2);
            }
            else
            {
                Literal1.Text = "<h2>No Purchase Item Found</h2>";

            }




            //db.fillgrid("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0, GridView1);
                  
            
            //   DataTable dt1 = db.exetable("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0);
            //    if (dt1.Rows.Count > 0)
            //    {
            //        db.fillgrid("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0, GridView1);
            //    }
            //    else
            //    {
            //        Literal1.Text = "<h2>No Item Found</h2>";
            //        Button2.Visible = false;
            //        db.fillgrid("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0, GridView1);
            //    }
        }

        protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        CheckBoxList rbl;
        GridViewRow rowsel = (GridViewRow)(((CheckBoxList)sender).NamingContainer);
        rbl = (CheckBoxList)rowsel.FindControl("CheckBoxList2");
        if (rbl.Items[0].Selected == true)
        {
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                CheckBoxList rb = (CheckBoxList)gvr.FindControl("CheckBoxList3");
                rb.Items[0].Selected = true;
               
            }
        }
    }
        

        protected void Button2_Click(object sender, EventArgs e)
        {

            CheckBoxList chkitem;
          //  GridViewRow item = (GridViewRow)(((Button)sender).NamingContainer);
            TextBox txtqu;
            string cartid1= "";
            string cartid = "";
            Session["prid"] = "";
            string prid = "";
            Session["qu"] = "";
            string qu1 = "";
            Session["price"] = "";
            int total = 0;
            Session["mlid"]="";
            string mlid="";
            foreach (GridViewRow gg in GridView1.Rows)
            {
                chkitem = (CheckBoxList)gg.FindControl("CheckBoxList3");
                txtqu = (TextBox)gg.FindControl("TextBox1");
                if (chkitem.Items[0].Selected == true)
                {
                     cartid1 = GridView1.DataKeys[gg.RowIndex].Value.ToString(); ;
                    int qu = Convert.ToInt32(txtqu.Text);
                    string aa = "select pid from cartdetails where cartid=" + cartid1; 
                    DataTable dt = db.exetable(aa);
                    int  pid =Convert.ToInt32( dt.Rows[0][0].ToString());
                    string bb = "select price,lid  from productdetails where pid=" + pid ;
                    DataTable dp = db.exetable(bb);
                    int price = Convert.ToInt32(dp.Rows[0][0].ToString());
                    int mid = Convert.ToInt32(dp.Rows[0][1].ToString());
                    int  to = qu * price;
                    total += to;
                    //string cc = "select status from cartdetails where pid=" + pid;
                    //DataTable dc = db.exetable(cc);
                  //  string status = "orderplaced";
                    string ob = Session["l_id"].ToString();
                    string ee = "select name  from productdetails where pid=" + pid;
                    DataTable dy = db.exetable(ee);
                    string  name = dy.Rows[0][0].ToString();

                    //string qry2 = "update cartdetails set status='1' where cartid=" + cartid;
                    //db.exenonquery(qry2);

                    


                    //string dd = "insert into orderdetails values(" + pid  + ",'"+name+"'," + qu  + "," + total  + ",'" + status  + "'," + ob + ")";

                    //int ac = db.exenonquery(dd );

                    prid += pid + ",";
                    cartid += cartid1 + ",";
                    qu1 += qu+ ",";
                    mlid+=mid+",";

                    Session["price"] = total;
                    

                    //if (ac  > 0)
                    //{
                    //    Response.Write("insert successfull");

                    //}
                    //else
                    //{
                    //    Response.Write("insertion failed");
                    //}


                    //db.fillgrid("select * from cartdetails INNER JOIN productdetails on cartdetails.pid=productdetails.pid where cartdetails.lid= " + Session["l_id"].ToString() + "and  cartdetails.status=" + 0, GridView1);

                }
            }

            Session["prid"] = prid.Substring(0, prid.Length-1);
            Session["cartid"] = cartid.Substring(0, cartid.Length - 1);
            Session["qu"] = qu1.Substring(0, qu1.Length - 1);
            Session["mlid"]=mlid.Substring(0, mlid.Length - 1);
            Session["date"] = TextBox2.Text;
            Response.Redirect("~/user/adddelivery.aspx");
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}