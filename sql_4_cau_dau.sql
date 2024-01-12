--1 
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB)
VALUES ('1','Lan',23/03/2003,'019385730','F','Cau Giay, HN',20/03/2022,'1');

INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB)
VALUES ('2','Jon',2/06/2004,'068495867','M','Hoan Kiem, HN',30/06/2022,'2');

INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB)
VALUES ('3','Thang',12/09/2002,'038456712','M','Nam Tu Liem, HN',20/02/2022,'4');

INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB)
VALUES ('4','Trinh',28/03/2003,'458368791','M','Cau Giay, HN',20/03/2022,'1');

INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB)
VALUES ('5','Huyen',6/10/2001,'059687945','F','Hoang Mai, HN',20/03/2021,'3');
---------------------------------------------------------------------------------
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES ('001','1',1/1/2024,'500000');
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES ('002','2',1/1/2024,'200000');
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES ('003','3',1/1/2024,'700000');
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES ('004','4',1/1/2024,'200000');
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES ('005','5',1/1/2024,'700000');


---------------------------------------------------------------------------------
-- 2
SELECT * FROM NhanVien
SELECT * FROM LuongDA
SELECT * FROM PhongBan
---------------------------------------------------------------------------------

--3 
SELECT * FROM NhanVien WHERE GioiTinh IN ('F');
--4
SELECT MaDA,MaNV FROM LuongDA 
--5
SELECT MaNV ,SUM(SoTien) AS LUONG
FROM LuongDA  WHERE NgayNhan BETWEEN  '2022';