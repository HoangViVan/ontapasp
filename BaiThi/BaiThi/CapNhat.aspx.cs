using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiThi
{
    public partial class CapNhat : System.Web.UI.Page
    {
        public static string chuoiKN = "Data Source=.;Initial Catalog=QL_SANPHAM;Integrated Security=True;Encrypt=False";
        public static SqlConnection conn = new SqlConnection(chuoiKN);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }
        void HienThi()
        {
            string query = "select * from tbl_SanPham";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query,conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            grvsp.DataSource = dataTable;
            grvsp.DataBind();
        }
        void ThucThi(string query)
        {
            SqlCommand cmd = new SqlCommand(query,conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void grvsp_SelectedIndexChanged(object sender, EventArgs e)
        {
            string query = "select * from tbl_SanPham";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query,conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            int dong = grvsp.SelectedIndex;
            int trang = grvsp.PageIndex;
            txtmasp.Text = dataTable.Rows[trang*3 + dong][0].ToString();
            txttensp.Text = dataTable.Rows[trang * 3 + dong][1].ToString();
        }

        protected void grvsp_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvsp.PageIndex = e.NewPageIndex;
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            txtmasp.Text = "";
            txttensp.Text = "";
        }

        Boolean KiemTra(string query) { 
            SqlDataAdapter sqlDataAdapter= new SqlDataAdapter(query,conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            if(dataTable.Rows.Count > 0)
            {
                return true;
            }else { return false; }
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            string kt = "select * from tbl_SanPham where MaSP='"+txtmasp.Text+"' or TenSP=N'"+txttensp.Text+"'";
            if(KiemTra(kt))
            {
                lblthongbao.Text = "Mã sản phẩm hoặc tên sản phẩm đã tồn tại";
            }
            else
            {
                string them = "insert into tbl_SanPham values ('"+txtmasp.Text+"',N'"+txttensp.Text+"')";
                ThucThi(them);
                HienThi();
            }
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {
            string sua = "update tbl_SanPham set TenSP=N'" + txttensp.Text + "' where MaSP='" + txtmasp.Text + "'";
            ThucThi(sua); HienThi();
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            string xoa = "delete tbl_SanPham where MaSP='" + txtmasp.Text + "'";
            ThucThi(xoa); HienThi();
            txtmasp.Text = "";
            txttensp.Text = "";
        }
    }
}