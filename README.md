# btvn2
# BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

# YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
#
#

#
# tạo bảng CSDL bằng tay, trong data base đã tạo chuột phải Tables -> New -> Table...
![Screenshot (232)](https://github.com/user-attachments/assets/ab150baa-efd1-45bb-ac81-c4f7dde39d11)
# sau khi tạo bảng thành công tiến hành nhập các dữ liệu yêu cầu của bảng SinhVien gồm masv, hoten, ngaysinh (column name) và kiểu dữ liệu (data type)
# với masv để không Null bỏ tích cột Allow Nulls
![image](https://github.com/user-attachments/assets/96f5371a-27a2-405d-9d52-3f3ccf996bae)
# tiếp đến ta tạo quá chính ở đây là masv chuột phải vào ô masv -> Set primary key
![image](https://github.com/user-attachments/assets/ac9999bf-1661-4f1c-a9bf-983f7ba9a690)
# với cách thức trên ta áp dụng tương tự để tạo bảng và khóa chính (#) cho bảng với các bảng còn lại.
# tiếp đến để các bảng được liên kết với nhau ta tạo ra các khóa ngoại (Relationship) 
trên bài ta có các khóa quan hệ FK(@) như: malop, masv, magv, maBM, maKhoa, maMon, maLopHP.
# ví dụ với bảng GVCN 
 chuột phải vào malop ->Relationships với bảng mới hiện lên như sau
 ![image](https://github.com/user-attachments/assets/aa577b32-eb4a-4463-9afc-b72bf3e74402)
 nhấn Add. nhìn xuống phần Tables and Columns Specification nhấn vào nút [...] sẽ hiện bảng mới
 bạn đổi tên. Primary Key Table: Chọn Lop. Foreign Key Table: Chọn GVCN.
 dưới 2 tên đã chọn có 2 cột tương ứng chọn malop
 ![image](https://github.com/user-attachments/assets/f91f2daa-ba24-42f0-a15d-ea2f9aa20b9e)
 tiếp đến là cấu hình rằng buộc tại phần  INSERT and UPDATE Specification. mở rộng ra với các phần DELETE RULE và UPDATE RULE tùy chọn ở đây mình chọn UPDATE RULE là CASCADE (Cập nhật maLop cũng cập nhật maLop trong các bảng sử dụng dữ liệu maLop)
# với cách làm trên ta sẽ áp dũng tương ứng với các FK(@) khác trong các bảng của yêu cầu đề bài:
VD cho bảng GiaoVien
![image](https://github.com/user-attachments/assets/e9574a79-dd6d-4baf-9e5d-bd25e03b66f6)
(nhiều ảnh quá ko cho vào được hết)

# với các dữ liệu là DiemThi và DiemTP tại bảng DKMH sẽ giới hạn lại >0 và <10 ta sử dụng CK khóa điều kiện
 chuột phải vào ô DiemTP -> Check Constraints nhấn ADD
 ![image](https://github.com/user-attachments/assets/74af3b2b-0cf1-4868-96ef-473f45a2514d)
 đổi tên để phân biệt. nhìn đến Expression nhập điều kiện: DiemTP >= 0 and DiemTP <= 10 với DiemTP và DiemThi >= 0 and DiemThi <= 10 tại diemthi
 ![image](https://github.com/user-attachments/assets/f6f124ca-eb9c-4a61-a1b7-6843e14510bd)

 # với các bước làm như trên ta sẽ có 1 cơ sở dững liệu mang các bảng và thuộc tính như bài yêu cầu thôi ('v')
 (code đc viết theo để tạo bảng bên cạnh)








