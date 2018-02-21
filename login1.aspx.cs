using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace craftshore1
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-M2M2U8F;Initial Catalog=Craftshore;Integrated Security=True";
            
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        if (RadioButtonList1.SelectedItem.Text == "Admin")
            {


                String sel = "select * from login1 where Username='" + txtuname.Text + "' and Password='" + txtpass.Text + "'";
                SqlCommand cmd = new SqlCommand(sel, con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Session["Password"] = dt.Rows[0][0].ToString();
                    Session["Username"] = dt.Rows[0][1].ToString();

                    Response.Write("Login Sucessfull");
                    Response.Redirect("register.aspx");

                }
                else
                {
                    Response.Write("Login Unsucessfull");
                }
            }
            else if (RadioButtonList1.SelectedItem.Text == "Customer")
            {
                String sel = "select username,password from tbl_cus reg where UserName='" + txtuname.Text + "' and Password='" + txtpass.Text + "'";
                SqlCommand cmd = new SqlCommand(sel, con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["password"] = dt.Rows[0][0].ToString();
                    Session["username"] = dt.Rows[0][1].ToString();

                    Response.Redirect("customerhome.aspx");
                }
                else
                {
                    Response.Write("Login Unsucessfull");
                }
            }
        }

        protected void txtuname_TextChanged(object sender, EventArgs e)
        {

        }


        }

        }
    