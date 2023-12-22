using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiThi
{
    public partial class TimKiem : System.Web.UI.Page
    {
        public static string kn = "Data Source=.;Initial Catalog=QL_SANPHAM;Integrated Security=True;Encrypt=False";
        public static SqlConnection con = new SqlConnection(kn);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }
        void HienThi()
        {
            string query = "select * from tbl_SanPham ";
            SqlDataAdapter adapter = new SqlDataAdapter(query,con);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            grvsanpham.DataSource = dataTable;
            grvsanpham.DataBind();
        }

        protected void btnmasanpham_Click(object sender, EventArgs e)
        {
            string query = "select * from tbl_SanPham where MaSP like '%" + txtmasanpham.Text + "%'";
            SqlDataAdapter adapter = new SqlDataAdapter( query,con);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            grvsanpham.DataSource= dataTable;
            grvsanpham.DataBind();
        }

        protected void btntensanpham_Click(object sender, EventArgs e)
        {
            string query = "select * from tbl_SanPham where TenSP like N'%" + txttensanpham.Text + "%'";
            SqlDataAdapter adapter = new SqlDataAdapter(query, con);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            grvsanpham.DataSource = dataTable;
            grvsanpham.DataBind();
        }
    }
}