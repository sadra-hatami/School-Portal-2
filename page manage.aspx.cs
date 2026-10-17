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

public partial class page_manage : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=School;Integrated Security=True");
    private SqlCommand com = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Step1.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        com.Connection = con;
        con.Open();
        com.CommandText = "select * from tbl_login_man where id_school=1 and password='" + TextBox3.Text + "'";
        SqlDataReader dr = com.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            dr.Close();
            com.CommandText = "update tbl_login_man set password='" + TextBox4.Text + "' where  id_school=1";
            com.ExecuteNonQuery();
            lblerr.Visible = false;
            Panel2.Visible = false;
            

        }
       
    }
   
protected void  LinkButton3_Click(object sender, EventArgs e)
{
    Panel1.Visible = false;
    Panel2.Visible =true ; 
}
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        com.Connection = con;
        con.Open();
        com.CommandText = "delete from tbl_login_man where id_school=" + GridView1.Rows[e.RowIndex].Cells[1].Text;
        com.ExecuteNonQuery();
        com.CommandText = "delete from tbl_login_s where id_s=" + GridView1.Rows[e.RowIndex].Cells[1].Text;
        com.ExecuteNonQuery();
        com.CommandText = "delete from tbl_login_tec where id_school=" + GridView1.Rows[e.RowIndex].Cells[1].Text;
        com.ExecuteNonQuery();

    }
}
