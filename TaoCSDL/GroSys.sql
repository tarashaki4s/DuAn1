USE [GroSys]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHopDong](
	[MaNPP] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[MaNSX] [nvarchar](50) NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[GiaNhap] [float] NOT NULL,
 CONSTRAINT [PK_HD_NPP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[NgayLHD] [date] NULL,
	[SoTien] [float] NOT NULL,
	[MaNV] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[MaHDCT] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [nvarchar](50) NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiVien](
	[MaHV] [nvarchar](50) NOT NULL,
	[TenHV] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLSP] [nvarchar](50) NOT NULL,
	[TenLSP] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Anh] [nvarchar](50) NULL,
	[VaiTro] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaPhanPhoi](
	[MaNPP] [nvarchar](50) NOT NULL,
	[TenNPP] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[NamHopTac] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNPP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [nvarchar](50) NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[MaNPP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiamGia](
	[MaHV] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[HanSD] [date] NULL,
	[MaNV] [nvarchar](50) NULL,
	[GiaTri] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHV] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[MaLSP] [nvarchar](50) NOT NULL,
	[GiaBan] [float] NOT NULL,
	[HanSuDung] [date] NOT NULL,
	[DonViTinh] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Anh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP01', N'SP01', N'NSS04', N'Bột giặt Omo', CAST(N'2021-01-01' AS Date), 40)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP02', N'SP014', N'NSS03', N'Dầu ăn không trơn', CAST(N'2021-10-01' AS Date), 10000)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP01', N'SP02', N'NSS07', N'Dầu gội đầu Clear', CAST(N'2021-08-01' AS Date), 30)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP02', N'SP03', N'NSS03', N'Dầu ăn Mezan', CAST(N'2021-04-17' AS Date), 15)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP02', N'SP04', N'NSS03', N'Dầu ăn Cái Lân', CAST(N'2021-12-11' AS Date), 20)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP03', N'SP05', N'NSS06', N'Coca cola', CAST(N'2022-03-19' AS Date), 8)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP03', N'SP06', N'NSS05', N'Fanta', CAST(N'2022-04-02' AS Date), 8)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP04', N'SP07', N'NSS02', N'Nam ngư', CAST(N'2021-05-20' AS Date), 20)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP06', N'SP08', N'NSS10', N'TH True milk', CAST(N'2021-09-02' AS Date), 5)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP05', N'SP09', N'NSS04', N'Bánh kẹo Cosy', CAST(N'2021-07-17' AS Date), 3)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP05', N'SP10', N'NSS04', N'Bánh kẹo Solite', CAST(N'2021-06-30' AS Date), 6)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP01', N'SP11', N'NSS04', N'Thuốc Lú', CAST(N'2021-02-01' AS Date), 5000)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP01', N'SP12', N'NSS01', N'VIM nước rửa bồn cầu', CAST(N'2021-11-16' AS Date), 9)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP01', N'SP13', N'NSS01', N'San Pham 12', CAST(N'2021-11-16' AS Date), 12)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP04', N'SP14', N'NSS02', N'Máy Tính', CAST(N'2021-01-01' AS Date), 80000)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP04', N'SP15', N'NSS02', N'Ipron', CAST(N'2021-02-01' AS Date), 100000)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP04', N'SP16', N'NSS02', N'Oppa', CAST(N'2021-10-01' AS Date), 60000)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP04', N'SP17', N'NSS02', N'SamSeng', CAST(N'2021-11-01' AS Date), 70000)
INSERT [dbo].[ChiTietHopDong] ([MaNPP], [MaSP], [MaNSX], [TenSP], [NgayNhap], [GiaNhap]) VALUES (N'NPP01', N'SP18', N'NSS04', N'IPortn', CAST(N'2021-12-06' AS Date), 500)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD01', CAST(N'2021-01-01' AS Date), 100000, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD02', CAST(N'2021-01-01' AS Date), 20000, N'NV02')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD03', CAST(N'2021-11-01' AS Date), 103000, N'NV03')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD04', CAST(N'2021-02-01' AS Date), 220000, N'NV04')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD05', CAST(N'2021-03-01' AS Date), 12000, N'NV05')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD06', CAST(N'2021-03-01' AS Date), 80000, N'NV06')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD07', CAST(N'2021-04-01' AS Date), 20000, N'NV07')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD08', CAST(N'2021-04-01' AS Date), 32000, N'NV08')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD09', CAST(N'2021-05-01' AS Date), 980000, N'NV09')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD10', CAST(N'2021-06-01' AS Date), 330000, N'NV10')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD11', CAST(N'2021-07-01' AS Date), 50, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD12', CAST(N'2021-07-01' AS Date), 157, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD13', CAST(N'2021-07-01' AS Date), 100275, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD14', CAST(N'2021-08-01' AS Date), 100228, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD15', CAST(N'2021-08-01' AS Date), 100050, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD16', CAST(N'2021-08-01' AS Date), 100215, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD17', CAST(N'2021-12-01' AS Date), 100165, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD18', CAST(N'2021-10-01' AS Date), 200320, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD19', CAST(N'2021-09-01' AS Date), 100090, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD20', CAST(N'2021-09-01' AS Date), 100090, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD21', CAST(N'2021-12-01' AS Date), 257, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD22', CAST(N'2021-12-01' AS Date), 367, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD23', CAST(N'2021-12-01' AS Date), 1042, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD24', CAST(N'2021-12-02' AS Date), 1395, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD25', CAST(N'2021-12-02' AS Date), 206, N'NV01')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLHD], [SoTien], [MaNV]) VALUES (N'HD26', CAST(N'2021-12-06' AS Date), 150, N'NV01')
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] ON 

INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1, N'HD01', N'SP01', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (2, N'HD02', N'SP02', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (3, N'HD03', N'SP03', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (4, N'HD04', N'SP04', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (5, N'HD05', N'SP05', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (6, N'HD03', N'SP01', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (7, N'HD07', N'SP07', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (8, N'HD08', N'SP08', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (9, N'HD09', N'SP09', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (10, N'HD10', N'SP10', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (11, N'HD06', N'SP06', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (13, N'HD11', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (14, N'HD12', N'SP02', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (15, N'HD12', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (16, N'HD12', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (17, N'HD13', N'SP01', 3)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (18, N'HD13', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (19, N'HD13', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (20, N'HD13', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (21, N'HD13', N'SP05', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (22, N'HD13', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (23, N'HD13', N'SP06', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (24, N'HD14', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (25, N'HD14', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (26, N'HD14', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (27, N'HD14', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (28, N'HD14', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (29, N'HD14', N'SP05', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (30, N'HD14', N'SP07', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (31, N'HD14', N'SP08', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (32, N'HD15', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (33, N'HD15', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (34, N'HD16', N'SP01', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (35, N'HD16', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (36, N'HD16', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (37, N'HD16', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (38, N'HD16', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (39, N'HD17', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (40, N'HD17', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (41, N'HD17', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (42, N'HD17', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (43, N'HD17', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (44, N'HD18', N'SP01', 4)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (45, N'HD18', N'SP014', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (46, N'HD18', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (47, N'HD18', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (48, N'HD18', N'SP07', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (49, N'HD19', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (50, N'HD19', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (51, N'HD19', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (52, N'HD20', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (53, N'HD20', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (54, N'HD20', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (55, N'HD21', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (56, N'HD21', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (57, N'HD21', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (58, N'HD21', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (59, N'HD21', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (60, N'HD22', N'SP01', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (61, N'HD22', N'SP014', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (62, N'HD22', N'SP02', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (63, N'HD22', N'SP03', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (64, N'HD22', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (65, N'HD22', N'SP05', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (66, N'HD22', N'SP06', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (67, N'HD22', N'SP08', 4)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (68, N'HD23', N'SP014', 5)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (69, N'HD23', N'SP02', 4)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (70, N'HD23', N'SP03', 4)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (71, N'HD23', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (72, N'HD23', N'SP05', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (73, N'HD23', N'SP01', 4)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1012, N'HD24', N'SP01', 10)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1013, N'HD24', N'SP014', 4)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1014, N'HD24', N'SP02', 2)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1015, N'HD24', N'SP03', 11)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1016, N'HD24', N'SP04', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1017, N'HD25', N'SP11', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1018, N'HD25', N'SP12', 10)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1019, N'HD25', N'SP13', 100)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1020, N'HD25', N'SP10', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1021, N'HD25', N'SP09', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1022, N'HD26', N'SP01', 1)
INSERT [dbo].[HoaDonChiTiet] ([MaHDCT], [MaHD], [MaSanPham], [SoLuong]) VALUES (1023, N'HD26', N'SP014', 1)
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] OFF
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV01', N'Lê Văn', N'vanle1212@gmail.com', N'0706238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV02', N'Nguyễn Văn Sơn', N'son1235@gmail.com', N'038434552')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV03', N'Phạm Thị Thư', N'thu12344@gmail.com', N'0306238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV04', N'Phạm Thành Tân', N'tanpham12@gmail.com', N'0806238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV05', N'Lê Dũng', N'dungle2000@gmail.com', N'0906238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV06', N'Võ Văn Hiếu', N'hieufuckboy2@gmail.com', N'0306238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV07', N'Lê Minh Trường', N'truongcs21@gmail.com', N'0806238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV08', N'Nguyễn Thị Hằng', N'hangdepgai12@gmail.com', N'0906238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV09', N'Siu Nắng', N'nangsiu2112@gmail.com', N'0306238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV10', N'Phạm Văn Chí', N'chipham21@gmail.com', N'0306238542')
INSERT [dbo].[HoiVien] ([MaHV], [TenHV], [Email], [SDT]) VALUES (N'HV11', N'Phan Văn Bách', N'bachjay@gmail.com', N'123456789')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP01', N'Đồ uống các loại', N'')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP02', N'Bánh, mứt, kẹo', N'')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP03', N'Gia vị, Dầu ăn', N'')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP04', N'Vệ sinh nhà cửa', N'')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP05', N'Sữa uống các loại', N'')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP06', N'Chăm sóc cá nhân', N'')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP07', N'Đồ dùng gia đình', N'')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (N'LSP08', N'Đồ Công Nghệ', N'')
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV01', N'123456', N'Nguyen Van A', N'20184714', N'sang0974907374@gmail.com', N'Hình-nền-heo-hồng.jpg', 0)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV02', N'123456', N'Lê Huy Hoàng', N'0128434552', N'sangpvps18851@fpt.edu.vn', N'Corgi_sieu_dut.jpg', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV03', N'123', N'Nguyễn Văn Tuấn', N'01206239543', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV04', N'123456', N'Phạm Thị Lệ', N'0312743898', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 0)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV05', N'123456', N'Lê Hoài Duyên', N'0812131418', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV06', N'123456', N'Phan Kiều Trinh', N'0983219921', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 0)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV07', N'123456', N'Phạm Vĩnh Sang', N'0935344497', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV08', N'123456', N'Nguyễn Thành Trung', N'0310273487', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 0)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV09', N'123456', N'Mai Anh Tài', N'0932192911', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [Ten], [SoDienThoai], [Email], [Anh], [VaiTro]) VALUES (N'NV10', N'123456', N'Lê Hoài Duyên', N'0121419876', N'sangpvps18851@fpt.edu.vn', N'No_image.jpg', 0)
INSERT [dbo].[NhaPhanPhoi] ([MaNPP], [TenNPP], [DiaChi], [NamHopTac]) VALUES (N'NPP01', N'Nhà phân phối Unilever', N'731 Tran Hung Dao, Q5, TpHCM', CAST(N'2021-04-21' AS Date))
INSERT [dbo].[NhaPhanPhoi] ([MaNPP], [TenNPP], [DiaChi], [NamHopTac]) VALUES (N'NPP02', N'Dầu ăn Cái Lân', N'45 Nguyen Canh Chan, Q1, TpHCM', CAST(N'2020-03-19' AS Date))
INSERT [dbo].[NhaPhanPhoi] ([MaNPP], [TenNPP], [DiaChi], [NamHopTac]) VALUES (N'NPP03', N'Nhà cung cấp đồ uống Coca Cola', N'23/5 Nguyen Trai, Q5, TpHCM', CAST(N'2021-11-12' AS Date))
INSERT [dbo].[NhaPhanPhoi] ([MaNPP], [TenNPP], [DiaChi], [NamHopTac]) VALUES (N'NPP04', N'Tập đoàn kinh tế Masan', N'34 Truong Dinh, Q3, TpHCM', CAST(N'2019-10-20' AS Date))
INSERT [dbo].[NhaPhanPhoi] ([MaNPP], [TenNPP], [DiaChi], [NamHopTac]) VALUES (N'NPP05', N'Nhà phân phối bánh kẹo Kinh Đô', N'45/2 An Duong Vuong, Q5, TpHCM', CAST(N'2020-06-30' AS Date))
INSERT [dbo].[NhaPhanPhoi] ([MaNPP], [TenNPP], [DiaChi], [NamHopTac]) VALUES (N'NPP06', N'Nhà phân phối sữa Vinamilk', N'873 Le Hong Phong, Q5, TpHCM', CAST(N'2018-03-14' AS Date))
INSERT [dbo].[NhaPhanPhoi] ([MaNPP], [TenNPP], [DiaChi], [NamHopTac]) VALUES (N'NPP09', N'Nhà Phối Giống', N'69, Hùng Vương, Bảo Lộc, Lâm Đồng', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS01', N'TNHH dinh dưỡng 3A', N'Nguyễn Thị Minh Khai, Phường 6, Quận 3, TP.HCM', N'NPP05')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS02', N'cổ phần tập đoàn KIDO', N' Hai Bà Trưng, Phường Đa Kao, Quận 1, TP.HCM', N'NPP04')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS03', N'TNHH Dầu thực vật Cái Lân', N'KCN Cái Lân, Bãi Cháy, TP. Hạ Long, Quảng Ninh', N'NPP02')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS04', N' NESTLE Việt Nam', N'Hai Bà Trưng,Đa Kao, Quận 1, TP.HCM', N'NPP01')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS05', N'Tập đoàn Tân Hiệp Phát', N'Châu Văn Liêm, P.11, Q.5, TP.HCM', N'NPP03')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS06', N'Nước giải khát SUNTORY PEPSICO Việt Nam', N'Đồng Khởi, Quận 1, TP.HCM', N'NPP03')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS07', N'tập đoàn INTIMEX', N'61 Nguyễn Văn Giai, Phường Đa Kao, Quận 1, TP.HCM', N'NPP01')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS08', N'Công ty cổ phần đầu tư Thành Thành Công', N' Hoàng Văn Thụ, Phường 2, Tân Bình, TP.HCM', N'NPP04')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS09', N'ACECOOK Việt Nam', N'Tân Bình, Tây Ninh, Tân Phú, TP. HCM', N'NPP04')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS10', N'sữa Việt Nam Vinamilk', N'Số 10 Tân Trào, Phường Tân Phú, Quận 7, TP. HCM', N'NPP06')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS11', N'FPT shop where ?', N'TP Hồ Chí Minh', N'NPP01')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS12', N'Vin Group', N'112 Hòa Nạc, Hà Nội', N'NPP01')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [MaNPP]) VALUES (N'NSS13', N'Điện Máy Lam', N'1600 Amphitheatre Parkway', N'NPP01')
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV01', N'SP01', CAST(N'2022-01-01' AS Date), N'NV01', 30)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV04', N'SP03', CAST(N'2021-07-03' AS Date), N'NV03', 20)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV05', N'SP01', CAST(N'2022-02-12' AS Date), N'NV01', 12)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV05', N'SP07', CAST(N'2021-12-17' AS Date), N'NV08', 20)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV06', N'SP08', CAST(N'2022-09-09' AS Date), N'NV01', 15)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV07', N'SP05', CAST(N'2022-01-01' AS Date), N'NV01', 10)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV07', N'SP09', CAST(N'2021-05-19' AS Date), N'NV04', 20)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV08', N'SP01', CAST(N'2022-01-01' AS Date), N'NV01', 5)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV08', N'SP014', CAST(N'2022-01-01' AS Date), N'NV01', 5)
INSERT [dbo].[PhieuGiamGia] ([MaHV], [MaSP], [HanSD], [MaNV], [GiaTri]) VALUES (N'HV08', N'SP09', CAST(N'2022-01-01' AS Date), N'NV01', 15)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP01', N'Bột Giặt ABA', N'LSP01', 50, CAST(N'0007-01-12' AS Date), N'bịch', 86, N'botGiat3ba.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP014', N'Dầu ăn không trơn', N'LSP01', 100, CAST(N'2021-12-08' AS Date), N'chai', 9979, N'navi-3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP02', N'Dầu gội đầu Clear', N'LSP06', 40, CAST(N'2022-01-25' AS Date), N'chai', 33, N'No_image.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP03', N'Dầu ăn Mezan', N'LSP03', 35, CAST(N'0016-06-12' AS Date), N'chai', 26, N'dauAnMezan.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP04', N'Dầu ăn Cái Lân', N'LSP03', 40, CAST(N'0007-03-15' AS Date), N'chai', 40, N'CaiLan.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP05', N'Coca cola', N'LSP01', 10, CAST(N'2022-11-10' AS Date), N'chai', 45, N'No_image.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP06', N'Fanta', N'LSP01', 10, CAST(N'2022-11-30' AS Date), N'chai', 47, N'forsaken.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP07', N'Nam ngư', N'LSP03', 45, CAST(N'2022-01-15' AS Date), N'chai', 47, N'No_image.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP08', N'TH True milk', N'LSP01', 8, CAST(N'2022-04-30' AS Date), N'hộp', 44, N'No_image.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP09', N'Bánh kẹo Cosy', N'LSP02', 5, CAST(N'0015-07-15' AS Date), N'bịch', 48, N'banhKeoCoSy.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP10', N'Bánh kẹo Solite', N'LSP02', 9, CAST(N'0031-06-13' AS Date), N'hộp', 48, N'banhKeoSolite.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP11', N'Thuốc Lú', N'LSP01', 80, CAST(N'0007-06-13' AS Date), N'bịch', 3, N'thuocLu.png')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP12', N'VIM nước rửa bồn cầu', N'LSP07', 100, CAST(N'2021-11-20' AS Date), N'Chai', 40, N'No_image.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP13', N'San Pham 12', N'LSP01', 12, CAST(N'0022-05-14' AS Date), N'bịch', 99, N'No_image.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [GiaBan], [HanSuDung], [DonViTinh], [SoLuong], [Anh]) VALUES (N'SP18', N'Cục gạch may mắn', N'LSP08', 1000, CAST(N'0014-06-18' AS Date), N'chai', 50, N'cucGach.jpg')
ALTER TABLE [dbo].[ChiTietHopDong]  WITH CHECK ADD FOREIGN KEY([MaNPP])
REFERENCES [dbo].[NhaPhanPhoi] ([MaNPP])
GO
ALTER TABLE [dbo].[ChiTietHopDong]  WITH CHECK ADD FOREIGN KEY([MaNPP])
REFERENCES [dbo].[NhaPhanPhoi] ([MaNPP])
GO
ALTER TABLE [dbo].[ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_HD_NSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[ChiTietHopDong] CHECK CONSTRAINT [FK_HD_NSX]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NhaSanXuat]  WITH CHECK ADD  CONSTRAINT [FK_NSX_NPP] FOREIGN KEY([MaNPP])
REFERENCES [dbo].[NhaPhanPhoi] ([MaNPP])
GO
ALTER TABLE [dbo].[NhaSanXuat] CHECK CONSTRAINT [FK_NSX_NPP]
GO
ALTER TABLE [dbo].[PhieuGiamGia]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[PhieuGiamGia]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HoiVien] ([MaHV])
GO
ALTER TABLE [dbo].[PhieuGiamGia]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuGiamGia]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuGiamGia]  WITH CHECK ADD  CONSTRAINT [FK_PGG_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuGiamGia] CHECK CONSTRAINT [FK_PGG_NV]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SP_HDCT] FOREIGN KEY([MaSP])
REFERENCES [dbo].[ChiTietHopDong] ([MaSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SP_HDCT]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ChiTieuTheoThang] @Thang INT
AS
BEGIN 
	SELECT SUM(GiaNhap) AS GiaNhap
	FROM ChiTietHopDong
	WHERE YEAR(NgayNhap) = YEAR(GETDATE()) AND MONTH(NgayNhap) = @Thang
	GROUP BY MONTH(NgayNhap)
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_doanhThuTheoThang] 
AS BEGIN 
	SELECT SUM(SoTien) AS SoTien, MONTH(NgayLHD) AS Thang
	FROM HoaDon 
	WHERE YEAR(NgayLHD) = YEAR(GETDATE())
	GROUP BY MONTH(NgayLHD) 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_doanhThuTheoThangNV] @thang INT 
AS 
BEGIN 
	SELECT SUM(SoTien) AS DoanhThu
	FROM HoaDon
	WHERE MONTH(NgayLHD) = @thang AND YEAR(NgayLHD) = YEAR(GETDATE())
END 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_doanhThuTheoTungSP]
AS 
BEGIN
	SELECT SUM(SanPham.GiaBan *HoaDonChiTiet.SoLuong) AS DoanhThu, SanPham.MaSP
	FROM SanPham JOIN HoaDonChiTiet ON SanPham.MaSP = HoaDonChiTiet.MaSanPham
	GROUP BY SanPham.MaSP
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GiaoDich] @MaSP NVARCHAR(50), @SoLuong INT
AS
BEGIN 
	DECLARE @SoLuongHienTai INT
	SELECT @SoLuongHienTai = SoLuong FROM SanPham WHERE MaSP = @MaSP
	UPDATE SanPham SET SoLuong = @SoLuongHienTai - @SoLuong WHERE MaSP = @MaSP
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LoadSanPham] 
AS 
BEGIN 
	SELECT sp.MaSP, sp.TenSP, sp.MaLSP, lsp.TenLSP, ct.GiaNhap, sp.GiaBan, 
			sp.HanSuDung, sp.DonViTinh, sp.SoLuong, sp.Anh, nsx.MaNSX,nsx.TenNSX, ct.MaNPP
	FROM SanPham sp JOIN ChiTietHopDong ct ON sp.MaSP = ct.MaSP
					JOIN NhaSanXuat nsx ON ct.MaNSX = nsx.MaNSX
					JOIN LoaiSanPham lsp ON sp.MaLSP = lsp.MaLSP
					
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LoadSanPhamTheoID] @MaSP NVARCHAR(50)
AS 
BEGIN 
	SELECT sp.MaSP, sp.TenSP, sp.MaLSP, lsp.TenLSP AS 'TenLSP', ct.GiaNhap, sp.GiaBan,
			sp.HanSuDung, sp.DonViTinh, sp.SoLuong, sp.Anh, nsx.MaNSX,nsx.TenNSX, ct.MaNPP
	FROM SanPham sp JOIN ChiTietHopDong ct ON sp.MaSP = ct.MaSP
					JOIN NhaSanXuat nsx ON ct.MaNSX = nsx.MaNSX
					JOIN LoaiSanPham lsp ON sp.MaLSP = lsp.MaLSP
					Where sp.MaSP=@MaSP
					
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LoadSanPhamTheoIdLSP] @MaLSP NVARCHAR(50)
AS 
BEGIN 
	SELECT sp.MaSP, sp.TenSP, sp.MaLSP, lsp.TenLSP AS 'TenLSP', ct.GiaNhap, sp.GiaBan,
			sp.HanSuDung, sp.DonViTinh, sp.SoLuong, sp.Anh, nsx.MaNSX,nsx.TenNSX, ct.MaNPP
	FROM SanPham sp JOIN ChiTietHopDong ct ON sp.MaSP = ct.MaSP
					JOIN NhaSanXuat nsx ON ct.MaNSX = nsx.MaNSX
					JOIN LoaiSanPham lsp ON sp.MaLSP = lsp.MaLSP
					Where sp.MaLSP = @MaLSP
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_LoadSanPhamTheoIdNSX] @MaNSX NVARCHAR(50)
AS 
BEGIN 
	SELECT sp.MaSP, sp.TenSP, sp.MaLSP, lsp.TenLSP AS 'TenLSP', ct.GiaNhap, sp.GiaBan,
			sp.HanSuDung, sp.DonViTinh, sp.SoLuong, sp.Anh, nsx.MaNSX,nsx.TenNSX, ct.MaNPP
	FROM SanPham sp JOIN ChiTietHopDong ct ON sp.MaSP = ct.MaSP
					JOIN NhaSanXuat nsx ON ct.MaNSX = nsx.MaNSX
					JOIN LoaiSanPham lsp ON sp.MaLSP = lsp.MaLSP
					Where ct.MaNSX=@MaNSX
					
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_soLuongHD] 
AS
BEGIN  
	SELECT COUNT(*)
	FROM HoaDon
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SoLuotMuaTheoThang] @thang INT
AS
BEGIN 
	SELECT COUNT(MaHD) AS SoLuotMua
	FROM HoaDon
	WHERE MONTH(NgayLHD) = @thang AND YEAR(NgayLHD) = YEAR(GetDATE())
	GROUP BY MONTH(NgayLHD) 
END 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Them_SanPham] @MaNPP NVARCHAR(50), @MaNSX NVARCHAR(50), @MaSP NVARCHAR(50), @TenSP NVARCHAR(50), @GiaNhap FLOAT,
							@MaLSP NVARCHAR(50), @GiaBan FLOAT, @HanSuDung DATE, @DonViTInh NVARCHAR(20), @SoLuong INT, @Anh NVARCHAR(50)
AS
BEGIN 
	BEGIN TRY
		BEGIN TRAN 
			INSERT INTO ChiTietHopDong VALUES (@MaNPP, @MaSP, @MaNSX, @TenSP, CONVERT(DATE, GETDATE()), @GiaNhap)

			INSERT INTO SanPham VALUES (@MaSP, @TenSP, @MaLSP, @GiaBan, @HanSuDung, @DonViTInh, @SoLuong, @Anh)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		RAISERROR (N'không được cập nhật được',16,1)
		ROLLBACK TRAN
	END CATCH
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_thongKeDoanhThuTheoLSP] @MaLSP NVARCHAR(50)
AS
BEGIN 
	SELECT SUM(sp.GiaBan*hdct.SoLuong) AS ThongKe, lsp.MaLSP
	FROM LoaiSanPham lsp JOIN SanPham sp ON lsp.MaLSP = sp.MaLSP
						 JOIN HoaDonChiTiet hdct ON sp.MaSP = hdct.MaSanPham 
	WHERE lsp.MaLSP = @MalSP
	GROUP BY lsp.MaLSP
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_topDoanhThu]
AS 
BEGIN
	SELECT TOP 3 SUM(SanPham.GiaBan *HoaDonChiTiet.SoLuong) AS DoanhThu, SanPham.MaSP
	FROM SanPham JOIN HoaDonChiTiet ON SanPham.MaSP = HoaDonChiTiet.MaSanPham
	GROUP BY SanPham.MaSP
	ORDER BY DoanhThu DESC
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_vonBoRaTheoThang]
AS BEGIN 
	SELECT SUM(GiaNhap) AS GiaNhap, MONTH(NgayNhap) AS Thang
	FROM ChiTietHopDong
	WHERE YEAR(NgayNhap) = YEAR(GETDATE())
	GROUP BY MONTH(NgayNhap) 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Xoa_SanPham]  @MaSP NVARCHAR(50)
							
AS
BEGIN 
	BEGIN TRY
		BEGIN TRAN 
			DELETE FROM SanPham 
			Where MaSP=@MaSP
			DELETE FROM ChiTietHopDong 
			Where MaSP=@MaSP
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		RAISERROR (N'không thể xóa được',16,1)
		ROLLBACK TRAN
	END CATCH
END
GO
