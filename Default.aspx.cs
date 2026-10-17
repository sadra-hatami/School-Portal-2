using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;  
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    
    private SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=School;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label2.Text = Session["i9"].ToString();  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        con.Open();
        string str = "";
        if (RadioButtonList1.SelectedValue == "0")
        {
            com.CommandText = str = "select id_school from tbl_login_man where id_school=1 and username='" + txtusername.Text + "' and password='" + TextBox1.Text + "'";
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                
                Response.Redirect("page manage.aspx");
            }
            else
                lblerror.Visible = true;
            

        }
        else if (RadioButtonList1.SelectedValue == "1")
        {
            com.CommandText = str = "select id_school from tbl_login_man where username='" + txtusername.Text + "' and password='" + TextBox1.Text + "'";
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Session.Add("m", 1);
                Session.Add("id_s", dr["id_school"].ToString());
                Response.Redirect("PageSchool.aspx");
            }
            else
                lblerror.Visible = true; 
                
            
        }
        else if (RadioButtonList1.SelectedValue == "2")
        {
            com.CommandText =  "select id_school from tbl_login_tec where username='" + txtusername.Text + "' and password='" + TextBox1.Text + "'";
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Session.Add("m", 0);
                Session.Add("id_t", txtusername.Text);
                Session.Add("id_s", dr["id_school"].ToString());
                Response.Redirect("PageSchool.aspx");
            }
            else
                lblerror.Visible = true;

        }
        else if (RadioButtonList1.SelectedValue == "3")
        {
            com.CommandText = "select id_s,username from tbl_login_s where username='" + txtusername.Text + "' and password='" + TextBox1.Text + "'";
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                
                Session.Add("id_s", dr["id_s"].ToString());
                Session.Add("id_su", dr["username"].ToString());
                Response.Redirect("page Student.aspx");
            }
            else
                lblerror.Visible = true;
        }
    }
}
