using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class teachtolesson : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=School;Integrated Security=True");
    private SqlCommand com = new SqlCommand(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            com.CommandText = "select base,ns from tblschool where id=" + Session["id_s"].ToString();
            com.Connection = con;
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            lbltitr.Text = "¬„Ê“‘ê«Â" + " " + dr["ns"].ToString();
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        com.Connection = con;
        com.CommandText = "select resh,base from tblclass2 where name='"+DropDownList1.SelectedValue+"' and id_s="+Session["id_s"].ToString ();
        SqlDataReader dr = com.ExecuteReader();
        dr.Read();
        com.CommandText = "select name from lesson where id_school="+Session["id_s"].ToString ()+" and yer="+dr["base"].ToString ()+" and resh="+dr["resh"].ToString ();
        SqlDataSource2.SelectCommand = com.CommandText;
        SqlDataSource2.DataBind(); 


    }
    protected void DropDownList1_PreRender(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("");
            d1();
               
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com.Connection = con;
        com.CommandText = "select id from tblteacher where id_school=" + Session["id_s"].ToString() + " and name='" + DropDownList3.SelectedValue + "'";
        SqlDataReader dr = com.ExecuteReader();
        dr.Read();
        long id_t = int.Parse(dr["id"].ToString());
        dr.Close();
        com.CommandText = "select code from lesson where id_school=" + Session["id_s"].ToString() + " and name='" + DropDownList2.SelectedValue + "'";
        dr = com.ExecuteReader();
        dr.Read ();
        int id_l = int.Parse(dr["code"].ToString());
        dr.Close();
        com.CommandText = "select * from tblteach where id_s=" + Session["id_s"].ToString() + " and name='" + DropDownList1.SelectedValue + "' and id_l=" + id_l;
        dr = com.ExecuteReader();
        if (dr.HasRows)
        {
            Label4.Visible = true;
        }
        else
        {
            dr.Close();
            Label4.Visible = false; 
            com.CommandText = "insert into tblteach values(" + Session["id_s"].ToString() + ",'" + DropDownList1.SelectedValue + "'," + id_t + "," + id_l + ")";
            com.ExecuteNonQuery();
            d1();
            d3();
            DropDownList2.Items.Clear();
        }

    }
    protected void DropDownList3_PreRender(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList3.Items.Add("");
            d3();
        }

    }
    private void d3()
    {
        
        DropDownList3.SelectedIndex = DropDownList3.Items.Count - 1;
    }
    private void d1()
    {
        DropDownList1.SelectedIndex = DropDownList1.Items.Count - 1;

    }
}
