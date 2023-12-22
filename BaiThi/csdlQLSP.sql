create database QL_SANPHAM;
use Ql_SANPHAM;
go
create table tbl_SanPham(
	MaSP nvarchar(5) NOT NULL primary key,
	TenSP nvarchar(20) NOT NULL
)
go
insert into tbl_SanPham values ('SP001',N'Máy lạnh')
insert into tbl_SanPham values ('SP002',N'Máy giặt')
insert into tbl_SanPham values ('SP003',N'Máy nước nóng')