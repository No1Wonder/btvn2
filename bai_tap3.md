BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.




thêm các dữ liệu mới trong 2 bảng DKMH:
# id_dk → Kiểu dữ liệu: INT → Chọn Primary Key. sau khi chọn PK thì tự động các key khác sẽ chuyển cho id_dk
![image](https://github.com/user-attachments/assets/9cb6039f-a102-4963-a954-6008f6dae03c)

# tạo bảng mới Diem với các trường dữ liệu: id; id_dk; diem. với id là khóa chính 
![image](https://github.com/user-attachments/assets/ce9793d9-a1e9-47e9-af50-f7fef81c071b)
![image](https://github.com/user-attachments/assets/007d3c39-3734-4b6d-8fd8-e242fbe10384)

# Tạo FK cho id_dk: Relationships → Add. Chọn id_dk tham chiếu DKMH(id_dk) trong table and columns specìfication 
![image](https://github.com/user-attachments/assets/2e53ca52-06ba-4bb0-939e-57eab0fb63c5)

# nhập các dữ liệu cho bảng: Nhấp chuột phải vào bảng cần nhập → Chọn Edit Top 200 Rows.
và thực hiện như v với tất cả các bảng: lưu ý các bảng có các dữ liệu mẹ ghi trước đến các bảng dùng dữ liệu con hoặc setting chỉnh sửa khi thay đổi tránh sảy ra lỗi

# hoặc sử dụng code bằng script data trong data QLSV

![image](https://github.com/user-attachments/assets/4e8f4a79-f9b5-46fa-9df2-1221e29d02a3)


# lệnh truy vấn 1 học sinh 
![image](https://github.com/user-attachments/assets/c47f15f4-606f-4172-94cd-8ac3c21a8876)







