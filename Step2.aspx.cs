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

public partial class sss : System.Web.UI.Page
{
    private SqlCommand com = new SqlCommand();
    protected void query(string sql)
    {
        com.Connection = con;
        com.CommandText = sql;
        con.Open();
        com.ExecuteNonQuery();
        con.Close() ; 
    }
    private SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=School;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (int.Parse(Session["base"].ToString()) == 2)
                MultiView1.ActiveViewIndex = 0;
            else if (int.Parse(Session["base"].ToString())==3)   
                MultiView1.ActiveViewIndex = 1;
            else if (int.Parse(Session["base"].ToString()) == 1)
                MultiView1.ActiveViewIndex=2;  

        }
      
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Session["id"].ToString());
        string s1 = "";
        if (int.Parse(Session["base"].ToString()) == 3)
        {
            
            if (int.Parse (TextBox2.Text) > 0)
            {
                s1 = "insert into tblcapacity values(" + id + ",1," + TextBox2.Text+ ",0,0,0,0)";
                query(s1); 
            }
            if ((int.Parse(txttwomath.Text) > 0) || (int.Parse(txttremath.Text) > 0) || (int.Parse(txtfourmath.Text) > 0))
            {
                s1 = "insert into tblcapacity values(" + id + ",2,0," + txttwomath.Text + "," + txttremath.Text + "," + txtfourmath.Text + ",0)";
                query(s1);
            }
            if ((int.Parse(txttwoolom.Text) > 0) || (int.Parse(txttreoolom.Text) > 0) || (int.Parse(txtfourolom.Text) > 0))
            {
                s1 = "insert into tblcapacity values(" + id + ",3,0,"+ txttwoolom.Text+ "," +txttreoolom.Text+ ","+txtfourolom.Text+",0)";
                query(s1);
            }
            if ((int.Parse(txttwoen.Text) > 0) || (int.Parse(TextBox5.Text) > 0) || (int.Parse(txtfouren.Text) > 0))
            {
                s1 = "insert into tblcapacity values(" + id + ",4,0," + txttwoen.Text + "," + TextBox5.Text+","+txtfouren.Text+",0)";
                query(s1);
            }
            
            
        }
        else if (int.Parse(Session["base"].ToString()) == 2)
        {
            s1 = "insert into tblcapacity values("+id+",0,"+txtone.Text+","+txttwo.Text+","+txtthree.Text+",0,0)";
            query(s1);
        }
        else if (int.Parse(Session["base"].ToString()) == 1)
        {
            s1 = "insert into tblcapacity values("+id+",0,"+txt1.Text+","+txt2.Text+","+txt3.Text+","+txt4.Text+","+txt5.Text+")";
            query(s1);
        }
        Response.Redirect("Step3.aspx");  

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}
