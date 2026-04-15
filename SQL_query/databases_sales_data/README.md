#  Sales Database Management & Analysis (MySQL)

##  Overview

Project ini berfokus pada pengolahan database penjualan menggunakan MySQL, meliputi **data cleaning, penghapusan duplikasi, pembuatan relasi antar tabel, dan query analisis menggunakan JOIN**.

Dataset terdiri dari 3 tabel utama:

* `customer`
* `product`
* `transaction_`

---

### ERD
![ERD](ERD.png)
---

##  Objectives

* Membersihkan data dari duplikasi
* Menentukan primary key pada setiap tabel
* Membangun relasi antar tabel (foreign key)
* Menggabungkan data untuk analisis penjualan

---


##  Workflow

1. Eksplorasi dataset
2. Identifikasi dan hapus data duplikat
3. Menentukan primary key
4. Membangun relasi antar tabel
5. Menggabungkan data menggunakan JOIN untuk analisis

---

##  Database Design Concept

Database dirancang dengan prinsip:

* **Relational Database**
* **Data Integrity (Primary Key & Foreign Key)**
* **Eliminasi duplikasi data**
* **Efisiensi query dengan JOIN**

---

##  Key Insights

* Data berhasil dibersihkan dari duplikasi
* Relasi antar tabel memungkinkan analisis multi-dimensi
* JOIN digunakan untuk menghubungkan transaksi dengan informasi produk

---

##  Notes

* `customer_type` digunakan sebagai primary key (perlu dipastikan unik)
* Pastikan tidak ada missing value pada kolom relasi
* Gunakan indexing untuk meningkatkan performa query

---

##  Future Improvements

* Menambahkan kolom numerik (price, quantity, revenue)
* Analisis lanjutan (top product, customer behavior)
* Integrasi ke dashboard (Power BI / Looker Studio)
* Implementasi query advanced (CTE, window function)

---

##  Conclusion

Project ini menunjukkan kemampuan dalam:

* Data cleaning menggunakan SQL
* Relational database design
* Data integration menggunakan JOIN
* Persiapan data untuk analisis bisnis
