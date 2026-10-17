using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data.SqlClient; 
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class page_Student : System.Web.UI.Page
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
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
         
        Panel2.Visible = true;
        Panel3.Visible = true;
        Panel1.Visible = false;
        com.Connection = con;
        con.Open();
        com.CommandText = "SELECT tblmark.mark1,Lesson.zarib FROM Lesson INNER JOIN tblmark ON dbo.Lesson.id_school = tblmark.id_school AND Lesson.code =tblmark.Id_lesson" +
            " where mark1 is not null and tblmark.id_su=" + Session["id_su"].ToString();
        SqlDataReader dr = com.ExecuteReader();
        
        float mark1 = 0;
        int sumz = 0;

        while (dr.Read())
        {

            mark1 += float.Parse(dr["mark1"].ToString()) * float.Parse(dr["zarib"].ToString());
            sumz += int.Parse(dr["zarib"].ToString());
            

        }
        mark1 = mark1 / sumz;
        term1.Text =" "+mark1.ToString ()+" "+term1.Text ;
        dr.Close();
        com.CommandText = "SELECT tblmark.mark2,Lesson.zarib FROM Lesson INNER JOIN tblmark ON dbo.Lesson.id_school = tblmark.id_school AND Lesson.code =tblmark.Id_lesson" +
            " where mark2 is not null and tblmark.id_su=" + Session["id_su"].ToString();

        dr = com.ExecuteReader();
        
        float mark2 = 0;
        while (dr.Read())
        {

            mark2 += float.Parse(dr["mark2"].ToString()) * float.Parse(dr["zarib"].ToString());
            sumz += int.Parse(dr["zarib"].ToString());
           
        }
        mark2 = mark2 / sumz;
        term2.Text = " " + mark2.ToString() + " " + term2.Text;
        termsum.Text = " " + ((mark1 + mark2) / 2) + " " + termsum.Text;
 
       

    }
    
}
