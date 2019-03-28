use master
go

create database TheVoice
go

use TheVoice
go

create table Nguoi(
	ID varchar(12),
	CMND varchar(12),
	Ten varchar(50),
	GioiTinh bit,
	NgaySinh date,
	NoiSinh varchar(200),
	CONSTRAINT PK_Nguoi PRIMARY KEY (ID)
)
go

create table ThiSinh(
	MaTS varchar(12),
	DiaChi varchar(200),
	DienThoai varchar(11),
	GioiThieu varchar(4000)
	CONSTRAINT PK_ThiSinh PRIMARY KEY (MaTS)
)
go

create table NgheSy(
	MaNS varchar(12),
	NgheDanh varchar(50),
	ThanhTich varchar(4000),
	MCFlag bit,
	CSFlag bit,
	NSFlag bit,
	CONSTRAINT PK_NgheSy PRIMARY KEY (MaNS)
)
go

create table ChuongTrinh_MC(
	MaMC varchar(12),
	ChuongTrinh varchar(200),
	CONSTRAINT PK_ChuongTrinh_MC PRIMARY KEY (MaMC, ChuongTrinh)
)
go

create table Album_Casy(
	MaCS varchar(12),
	Album varchar(200),
	CONSTRAINT PK_Album_Casy PRIMARY KEY (MaCS, Album)
)
go

create table BaiHat(
	MaBH char(8),
	TuaBaiHat varchar(200),
	CONSTRAINT PK_BaiHat PRIMARY KEY (MaBH)
)
go

create table TheLoai(
	MaTL char(5),
	TenTL varchar(200),
	CONSTRAINT PK_TheLoai PRIMARY KEY (MaTL)
)
go

create table BaiHat_TheLoai(
	MaBH char(8),
	MaTL char(5),
	CONSTRAINT PK_BaiHat_TheLoai PRIMARY KEY (MaBH, MaTL)
)
go

create table NS_SangTac(
	MaNS varchar(12),
	MaBH char(8),
	TT_ST varchar(200),
	CONSTRAINT PK_NS_SangTac PRIMARY KEY (MaNS, MaBH)
)
go

create table TinhThanh(
	MaTT char(4),
	TenTT varchar(200),
	CONSTRAINT PK_TinhThanh PRIMARY KEY (MaTT)
)
go

create table NhaSanXuat(
	MaNSX char(6),
	TenNSX varchar(200),
	CONSTRAINT PK_NhaSanXuat PRIMARY KEY (MaNSX)
)
go

create table KenhTruyenHinh(
	MaK char(5),
	TenK varchar(200),
	CONSTRAINT PK_KenhTruyenHinh PRIMARY KEY (MaK)
)
go

create table MuaThi(
	MaMT varchar(20),
	NgayBD date,
	NgayKT date,
	GiaiThuong varchar(4000),
	DD_NhaHat varchar(200),
	DD_BanKet varchar(200),
	DD_Gala varchar(200),
	MaGDAN varchar(200),
	MaGK1 varchar(12),
	MaGK2 varchar(12),
	MaGK3 varchar(12),
	MaMC varchar(12),
	CONSTRAINT PK_MuaThi PRIMARY KEY (MaMT)
)
go

create table BQ_MuaThi(
	MaMT varchar(20),
	MaNSX char(6),
	CONSTRAINT PK_BQ_MuaThi PRIMARY KEY (MaMT, MaNSX)
)
go

create table PhatSong(
	MaMT varchar(20),
	MaK char(5),
	TT_PhatSong varchar(200),
	CONSTRAINT PK_PhatSong PRIMARY KEY (MaMT, MaK)
)
go

create table VongThi(
	SttVT varchar(200),
	MaMT varchar(20),
	TenVT varchar(200),
	TG_BatDau date,
	TG_KetThuc date,
	LoaiVT varchar(200),
	CONSTRAINT PK_VongThi PRIMARY KEY (SttVT, MaMT)
)
go

create table ThiSinh_VongThi(
	SttVT varchar(200),
	MaMT varchar(20),
	MaTS varchar(12),
	KetQua varchar(200),
	CONSTRAINT PK_ThiSinh_VongThi PRIMARY KEY (SttVT, MaMT, MaTS)
)
go

create table Vong_ThuGiong(
	SttVT varchar(200),
	MaMT varchar(20),
	MaTT char(4),
	DiaDiem varchar(200),
	CONSTRAINT PK_Vong_ThuGiong PRIMARY KEY (SttVT, MaMT)
)
go

create table TS_ThuGiong_ThamGia(
	SttVT varchar(200),
	MaMT varchar(20),
	MaTS varchar(12),
	GK1 bit,
	GK2 bit,
	GK3 bit,
	CONSTRAINT PK_TS_ThuGiong_ThamGia PRIMARY KEY (SttVT, MaMT, MaTS)
)
go

create table TS_ThuGiong_Hat(
	SttVT varchar(200),
	MaMT varchar(20),
	MaTS varchar(12),
	MaBH char(8)
	CONSTRAINT PK_TS_ThuGiong_Hat PRIMARY KEY (SttVT, MaMT, MaTS, MaBH)
)
go

create table Vong_NhaHat(
	SttVT varchar(200),
	MaMT varchar(20),
	HatNhomFlag bit,
	CONSTRAINT PK_Vong_NhaHat PRIMARY KEY (SttVT, MaMT)
)
go

create table TS_NhaHat_Hat(
	SttVT varchar(200),
	MaMT varchar(20),
	MaTS varchar(12),
	MaBH char(8),
	CONSTRAINT PK_TS_NhaHat_Hat PRIMARY KEY (SttVT, MaMT, MaTS, MaBH)
)
go

create table NhomCa(
	MaNhom char(8),
	TenNhom varchar(200),
	MaTS1 varchar(12),
	MaTS2 varchar(12),
	MaTS3 varchar(12),
	MaTS4 varchar(12),
	CONSTRAINT PK_NhomCa PRIMARY KEY (MaNhom)
)
go

create table NhomCa_BaiHat(
	MaNhom char(8),
	MaBH char(8),
	SttVT varchar(200),
	MaMT varchar(20),
	CONSTRAINT PK_NhomCa_BaiHat PRIMARY KEY (MaNhom, MaBH)
)
go

create table Vong_BanKet(
	SttVT varchar(200),
	MaMT varchar(20),
	Nam_Nu char(2),
	CONSTRAINT PK_Vong_BanKet PRIMARY KEY (SttVT, MaMT)
)
go

create table TS_BanKet_ThamGia(
	SttVT varchar(200),
	MaMT varchar(20),
	MaTS varchar(12),
	MSBC varchar(200),
	Tong_TinNhan varchar(200),
	CONSTRAINT PK_TS_BanKet_ThamGia PRIMARY KEY (SttVT, MaMT, MaTS)
)
go

create table TS_BanKet_Hat(
	MaTS varchar(12),
	MaBH char(8),
	SttVT varchar(200),
	MaMT varchar(20),
	CONSTRAINT PK_TS_BanKet_Hat PRIMARY KEY (MaTS, MaBH)
)
go

create table Vong_Gala(
	SttVT varchar(200),
	MaMT varchar(20),
	ChuDe varchar(200),
	MaNHD varchar(12),
	HatDoiFlag bit,
	CONSTRAINT PK_Vong_Gala PRIMARY KEY (SttVT, MaMT)
)
go

create table TS_Gala_ThamGia(
	SttVT varchar(200),
	MaMT varchar(20),
	MaTS varchar(12),
	MSBC varchar(50),
	Tong_TinNhan varchar(50),
	CONSTRAINT PK_TS_Gala_ThamGia PRIMARY KEY (SttVT, MaMT, MaTS)
)
go

create table TS_Gala_Hat(
	MaTS varchar(12),
	MaBH char(8),
	SttVT varchar(200),
	MaMT varchar(20),
	CONSTRAINT PK_TS_Gala_Hat PRIMARY KEY (MaTS, MaBH)
)
go

alter table ThiSinh add constraint FK_ThiSinh_MaTS foreign key (MaTS) references Nguoi(ID)
alter table NgheSy add constraint FK_NgheSy_MaNS foreign key (MaNS) references Nguoi(ID)
alter table ChuongTrinh_MC add constraint FK_CTMC_MaMC foreign key (MaMC) references NgheSy(MaNS)
alter table Album_Casy add constraint FK_ABCS_MaCS foreign key (MaCS) references NgheSy(MaNS)
alter table BaiHat_TheLoai add constraint FK_BHTL_MaBH foreign key (MaBH) references BaiHat(MaBH)
alter table BaiHat_TheLoai add constraint FK_BHTL_MaTL foreign key (MaTL) references TheLoai(MaTL)
alter table NS_SangTac add constraint FK_NSST_MaNS foreign key (MaNS) references NgheSy(MaNS)
alter table NS_SangTac add constraint FK_NSST_MaBH foreign key (MaBH) references BaiHat(MaBH)
alter table MuaThi add constraint FK_MuaThi_MaMC foreign key (MaMC) references NgheSy(MaNS)
alter table BQ_MuaThi add constraint FK_BQMT_MaMT foreign key (MaMT) references MuaThi(MaMT)
alter table BQ_MuaThi add constraint FK_BQMT_MaNSX foreign key (MaNSX) references NhaSanXuat(MaNSX)
alter table PhatSong add constraint FK_PS_MaMT foreign key (MaMT) references MuaThi(MaMT)
alter table PhatSong add constraint FK_PS_MaK foreign key (MaK) references KenhTruyenHinh(MaK)
alter table VongThi add constraint FK_VongThi_MaMT foreign key (MaMT) references MuaThi(MaMT)
alter table ThiSinh_VongThi add constraint FK_TSVT_VT foreign key (SttVT, MaMT) references VongThi(SttVT, MaMT)
alter table ThiSinh_VongThi add constraint FK_TSVT_TS foreign key (MaTS) references ThiSinh(MaTS)
alter table Vong_ThuGiong add constraint FK_VTG_VT foreign key (SttVT, MaMT) references VongThi(SttVT, MaMT)
alter table Vong_ThuGiong add constraint FK_VTG_TT foreign key (MaTT) references TinhThanh(MaTT)
alter table TS_ThuGiong_ThamGia add constraint FK_TSTGTG_VT foreign key (SttVT, MaMT) references Vong_ThuGiong(SttVT, MaMT)
alter table TS_ThuGiong_ThamGia add constraint FK_TSTGTG_TS foreign key (MaTS) references ThiSinh(MaTS)
alter table TS_ThuGiong_Hat add constraint FK_TSHTG_TG foreign key (SttVT, MaMT, MaTS) references TS_ThuGiong_ThamGia(SttVT, MaMT, MaTS)
alter table TS_ThuGiong_Hat add constraint FK_TSHTG_BH foreign key (MaBH) references BaiHat(MaBH)
alter table Vong_NhaHat add constraint FK_TSNH_VT foreign key (SttVT, MaMT) references VongThi(SttVT, MaMT)
alter table TS_NhaHat_Hat add constraint FK_TSNHH_VT foreign key (SttVT, MaMT) references Vong_NhaHat(SttVT, MaMT)
alter table TS_NhaHat_Hat add constraint FK_TSNHH_TS foreign key (MaTS) references ThiSinh(MaTS)
alter table TS_NhaHat_Hat add constraint FK_TSNHH_BH foreign key (MaBH) references BaiHat(MaBH)
alter table NhomCa_BaiHat add constraint FK_NCBH_Nhom foreign key (MaNhom) references NhomCa(MaNhom)
alter table NhomCa_BaiHat add constraint FK_NCBH_BH foreign key (MaBH) references BaiHat(MaBH)
alter table Vong_BanKet add constraint FK_VBK_VT foreign key (SttVT, MaMT) references VongThi(SttVT, MaMT)
alter table TS_BanKet_ThamGia add constraint FK_TSTGBK_VT foreign key (SttVT, MaMT) references Vong_BanKet(SttVT, MaMT)
alter table TS_BanKet_ThamGia add constraint FK_TSTGBK_TS foreign key (MaTS) references ThiSinh(MaTS)
alter table TS_BanKet_Hat add constraint FK_TSHBK_VT foreign key (SttVT, MaMT) references Vong_BanKet(SttVT, MaMT)
alter table TS_BanKet_Hat add constraint FK_TSHBK_TS foreign key (MaTS) references ThiSinh(MaTS)
alter table TS_BanKet_Hat add constraint FK_TSHBK_BH foreign key (MaBH) references BaiHat(MaBH)
alter table Vong_Gala add constraint FK_VGL_VT foreign key (SttVT, MaMT) references VongThi(SttVT, MaMT)
alter table Vong_Gala add constraint FK_VGL_NS foreign key (MaNHD) references NgheSy(MaNS)
alter table TS_Gala_ThamGia add constraint FK_TSTGGL_VT foreign key (SttVT, MaMT) references Vong_Gala(SttVT, MaMT)
alter table TS_Gala_ThamGia add constraint FK_TSTGGL_TS foreign key (MaTS) references ThiSinh(MaTS)
alter table TS_Gala_Hat add constraint FK_TSHGL_VT foreign key (SttVT, MaMT) references Vong_Gala(SttVT, MaMT)
alter table TS_Gala_Hat add constraint FK_TSHGL_TS foreign key (MaTS) references ThiSinh(MaTS)
alter table TS_Gala_Hat add constraint FK_TSHGL_BH foreign key (MaBH) references BaiHat(MaBH)