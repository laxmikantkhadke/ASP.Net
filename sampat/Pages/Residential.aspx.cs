using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Pages_Residential : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\Laxmikant\temp\vwd\project\sampat\1\App_Data\DatabaseResidential.mdf;Integrated Security=True;User Instance=True");
    public SqlCommand cmd = new SqlCommand();
    public DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
       
        try
        {
            SqlDataAdapter da =new SqlDataAdapter("select * from residential", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message;
           // Button1.Text = ex.Message;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       try
        {

            string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/dbImages/" + filename));
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\Laxmikant\temp\vwd\project\sampat\1\App_Data\DatabaseResidential.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            cmd = new SqlCommand("insert into residential (Location,Type,Sqft,Rent,Mobile,Description,Image) values(@Location,@Type,@Sqft,@Rent,@Mobile,@Description,@Image)", con);
            cmd.Parameters.AddWithValue("@Location", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.AddWithValue("@Type", SqlDbType.VarChar).Value = TextBox2.Text;
            cmd.Parameters.AddWithValue("@Sqft", SqlDbType.VarChar).Value = TextBox3.Text;
            cmd.Parameters.AddWithValue("@Rent", SqlDbType.VarChar).Value = TextBox4.Text;
            cmd.Parameters.AddWithValue("@Mobile", SqlDbType.VarChar).Value = TextBox5.Text;
            cmd.Parameters.AddWithValue("@Description", SqlDbType.VarChar).Value = TextBox6.Text;
            cmd.Parameters.AddWithValue("@Image", "~/dbImages/" + filename);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

           //panel
            Panel2.Visible=false;

            Response.Redirect("Residential.aspx");

            /*da = new SqlDataAdapter("select * from residential", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();*/

        }
        catch (Exception ex)
        {
           // Button1.Text = ex.Message;
            Label2.Visible = true;
            Label2.Text = ex.Message;
        } 
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
    }
}
