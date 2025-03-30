USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'CNTT', N'Cong nghe Thong tin')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'KT', N'Ke Toan')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'NN', N'Ngoai Ngu')
GO
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'HTTT', N'He thong Thong tin', N'CNTT')
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'KTTC', N'Ke toan Tai chinh', N'KT')
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'MMT', N'Mang May tinh', N'CNTT')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV001', N'Nguyen Van A', CAST(N'1980-05-15' AS Date), N'HTTT')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV002', N'Tran Thi B', CAST(N'1982-08-20' AS Date), N'MMT')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV003', N'Le Van C', CAST(N'1975-11-10' AS Date), N'KTTC')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'CTK44', N'Cong nghe Thong tin K44')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'KTK44', N'Ke toan K44')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'CSDL', N'Co so du lieu', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'KTTC', N'Ke toan tai chinh', 4)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MMT', N'Mang may tinh', 3)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'CSDL2023', N'CSDL Hoc ky 1 2023', 1, N'CSDL', N'GV001')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'KTTC2023', N'KTTC Hoc ky 1 2023', 1, N'KTTC', N'GV003')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'MMT2023', N'MMT Hoc ky 1 2023', 1, N'MMT', N'GV002')
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV001', N'Pham Thi D', CAST(N'2000-01-20' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV002', N'Hoang Van E', CAST(N'2000-05-15' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV003', N'Nguyen Thi F', CAST(N'2000-07-30' AS Date))
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'CTK44', N'SV001', N'Lop truong')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'CTK44', N'SV002', NULL)
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'KTK44', N'SV003', N'Bi thu')
GO
SET IDENTITY_INSERT [dbo].[DKMH] ON 

INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (1, N'CSDL2023', N'SV001', CAST(8.00 AS Decimal(4, 2)), 50)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (2, N'CSDL2023', N'SV002', CAST(7.50 AS Decimal(4, 2)), 50)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (3, N'MMT2023', N'SV001', CAST(8.50 AS Decimal(4, 2)), 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (4, N'KTTC2023', N'SV003', CAST(9.00 AS Decimal(4, 2)), 40)
SET IDENTITY_INSERT [dbo].[DKMH] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, CAST(8.50 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 1, CAST(7.50 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 1, CAST(9.00 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, 2, CAST(6.50 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (5, 2, CAST(7.00 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (6, 3, CAST(8.00 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (7, 3, CAST(7.50 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (8, 3, CAST(8.50 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (9, 4, CAST(7.00 AS Decimal(4, 2)))
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (10, 4, CAST(8.00 AS Decimal(4, 2)))
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO
