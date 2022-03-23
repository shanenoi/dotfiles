# Data encryption standard (DES)
Tiêu chuẩn xáo trộn dữ liệu (DES) là được ngành tài chánh sử dụng để bảo toàn thông tin giao dịch nhạy cảm, bao gồm số dư tài khoản, mã nhận dạng ngân hàng (cũng được gọi là từ khóa yêu cầu của bên phát hành) và mã truy cập tài khoản của khách hàng. DES là tiêu chuẩn chung được Viện Tiêu chuẩn và Công nghệ Quốc gia công bố, và cũng được biết đến như Thuật toán xáo trộn dữ liệu (DEA) và đã được ngành tài chánh chấp nhận.

Nói một cách dễ hiểu, DES lấy văn bản thuần túy 64 bit và biến nó thành văn bản mã 64 bit. Và vì chúng ta đang nói về các thuật toán không đối xứng, cùng một khóa được sử dụng khi đến lúc giải mã văn bản.

## **Quy trình thuật toán được chia thành các bước sau:**

Quá trình bắt đầu với khối văn bản thuần túy 64 bit được chuyển giao cho một hàm hoán vị (IP) ban đầu.
1. Hoán vị ban đầu (IP) sau đó được thực hiện trên văn bản thuần túy.
2. Tiếp theo, hoán vị ban đầu (IP) tạo ra hai nửa của khối được hoán vị, được gọi là Văn bản thuần túy bên trái (LPT) và văn bản thuần túy bên phải (RPT).
3. Mỗi LPT và RPT trải qua 16 vòng của quá trình mã hóa.
4. Cuối cùng, LPT và RPT được kết hợp lại và Hoán vị cuối cùng (FP) được thực hiện trên khối mới được kết hợp.
Kết quả của quá trình này tạo ra bản mã 64 bit mong muốn.
![image](https://user-images.githubusercontent.com/49734716/159734821-020bac94-874e-4844-bfcc-2273d2d0d14f.png)
