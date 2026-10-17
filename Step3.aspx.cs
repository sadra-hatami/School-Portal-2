using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data .SqlClient ;

public partial class Step3 : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=School;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
              
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        SqlCommand com = new SqlCommand("insert into  tbl_Login_Man values(" + Session["Id"].ToString() + ",'" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
        con.Open();
        com.ExecuteNonQuery();
        Response.Redirect("Default.aspx");  
    }
}
