using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Globalization;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class entermark : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=School;Integrated Security=True");
    private SqlCommand com = new SqlCommand();
    private DateTime dt = DateTime.Now;
    private PersianCalendar pc = new PersianCalendar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (DropDownList1.SelectedValue != "")
        {
            DropDownList2.Enabled = true;
            com.Connection = con;
            con.Open();
            com.CommandText = "SELECT  Lesson.name FROM tblteach INNER JOIN Lesson ON tblteach.id_l =Lesson.code where tblteach.id_t=" + Session["id_t"].ToString() + " and tblteach.name=" + DropDownList1.SelectedValue + " and id_s=" + Session["id_s"].ToString();
            SqlDataSource2.SelectCommand = com.CommandText;
            SqlDataSource2.DataBind();
        }
        else
        {
           
            DropDownList2.Enabled = false;
            DropDownList3.Enabled = false; 

        }
        

    }
    protected void DropDownList1_PreRender(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items .Add ("") ;
            DropDownList1.SelectedIndex = DropDownList1.Items.Count - 1;
            Session["fff"] = DropDownList1.SelectedValue;  

        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        
        if (DropDownList2.SelectedValue != "")
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("");
            DropDownList3.Enabled = true; 
            con.Open();
            com.Connection = con;
            com.CommandText = "select id_l from tblteach where id_s=" + Session["id_s"].ToString() + " and name='" + DropDownList1.SelectedValue + "' and id_l=(select code from lesson where id_school=" + Session["id_s"].ToString() + " and name='" + DropDownList2.SelectedValue + "')";
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            Session.Add("id_l", dr["id_l"].ToString());
            dr.Close();
            if (pc.GetMonth(dt) < 6)
            {
                dt = pc.AddYears(dt, -1);
            }
            com.CommandText = "select * from lesson where date1<>'-' and id_school=" + Session["id_s"] + " and code=" + Session["id_l"].ToString();
            dr = com.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                dr.Close();
                com.CommandText = "select * from tblmark where mark1<>'' and id_school=" + Session["id_s"] + " and id_lesson=" + Session["id_l"].ToString();
                dr = com.ExecuteReader();
                dr.Read();
                if (!dr.HasRows)
                    DropDownList3.Items.Add("Çæá");

            }
            dr.Close();
            com.CommandText = "select * from lesson where date2<>'-' and id_school=" + Session["id_s"] + " and code=" + Session["id_l"].ToString();
            dr = com.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                dr.Close();
                com.CommandText = "select * from tblmark where mark2<>'' and id_school=" + Session["id_s"] + " and id_lesson=" + Session["id_l"].ToString();
                dr = com.ExecuteReader();
                dr.Read();
                if (!dr.HasRows)
                    DropDownList3.Items.Add("Ïæã");

            }
        }
        else
        {
            
            DropDownList3.Enabled = false; 
        }
        
     
    }
    protected void DropDownList2_PreRender(object sender, EventArgs e)
    {
        if (!IsPostBack || Session["fff"].ToString()!=DropDownList1.SelectedValue )
        {
            DropDownList2.Items.Add("");
            DropDownList2.SelectedIndex = DropDownList2.Items.Count - 1;
            Session["fff"] = DropDownList1.SelectedValue; 

        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (pc.GetMonth(dt) < 6)
        {
            dt = pc.AddYears(dt, -1);
        }

        com.Connection = con;
        con.Open();
        com.CommandText ="select id_l from tblteach where id_s=" + Session["id_s"].ToString() + " and name='" + DropDownList1.SelectedValue + "' and id_l=(select code from lesson where id_school=" + Session["id_s"].ToString() + " and name='" + DropDownList2.SelectedValue + "')";
        SqlDataReader dr=com.ExecuteReader ();
        dr.Read ();
        int id_lesson = int.Parse(dr["id_l"].ToString());
        Panel2.Visible = false; 
        dr.Close();
        com.CommandText = "select mark"+DropDownList3.SelectedIndex +" from tblmark where id_school="+Session["id_s"].ToString ()+" and id_lesson="+id_lesson;
        dr=com.ExecuteReader();
        dr.Read ();
        bool b1=dr.HasRows;
        dr.Close();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            TextBox t1 = (TextBox)GridView1.Rows[i].FindControl("TextBox1");
            if (DropDownList3.SelectedValue  == "Çæá")
            {
                com.CommandText = "insert into tblmark (id_su,id_school,id_lesson,mark1,yer) values("+GridView1.Rows[i].Cells[3].Text+","+Session["id_s"].ToString ()+","+id_lesson+","+t1.Text+","+pc.GetYear(dt) +")";
                com.ExecuteNonQuery();
            }
            if (DropDownList3.SelectedValue == "Ïæã" && b1==false )
            {
                com.CommandText = "insert into tblmark (id_su,id_school,id_lesson,mark2,yer) values(" + GridView1.Rows[i].Cells[3].Text + "," + Session["id_s"].ToString() + "," + id_lesson + "," + t1.Text + "," + pc.GetYear(dt) + ")";
                com.ExecuteNonQuery();
            }
            if (DropDownList3.SelectedValue == "Ïæã" && b1==true )
            {
                com.CommandText = "update tblmark set mark2=" + t1.Text + " where id_school=" + Session["id_s"].ToString() + " and id_su=" + GridView1.Rows[i].Cells[3].Text;
                com.ExecuteNonQuery();
            }

        }
      
        Button1.Enabled = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false; 
        if (pc.GetMonth(dt) < 6)
        {
            dt = pc.AddYears(dt, -1);
        }
        if (DropDownList3.SelectedValue != "")
        {
            lblerr.Visible = false;
            com.Connection = con;
            con.Open();
            com.CommandText = "select id,name from tblsudent where id_school=" + Session["id_s"].ToString() + " and nameclass='" + DropDownList1.SelectedValue + "' and yer=" + pc.GetYear(dt);
            SqlDataAdapter da = new SqlDataAdapter(com.CommandText, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            Panel2.Visible = true;
                
        }
            

        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Button1.Enabled = true;
        DropDownList2.SelectedIndex = DropDownList2.Items.Count - 1;
        DropDownList1.SelectedIndex = DropDownList1.Items.Count - 1;
        DropDownList3.Items.Clear();
        DropDownList3.Items.Add("");
        DropDownList2.Enabled = false;
        DropDownList3.Enabled = false; 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("fff");
        Session.Remove("id_l");
        Response.Redirect("PageSchool.aspx");
    }
}
