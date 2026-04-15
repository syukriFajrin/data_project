# Input Otomatis

Kendala dalam input databases menggunakan sql, data diinpt menggunkan manual satu persatu atau beris perbaris.

'''Insert into nama_table (column1, column2,....)
values(value1,value2,....)'''

Data akan dimasukkan satu persatu. Proses akan mudah digunakan jika tujuan input data tidak terlalu banyak dan dilakukan secara rutin. Namun kendala lain seperti kasus pembuatan databases baru atau pengimputan data yang sudah terkumpul dari souce data lain. Projek ini dibangun khusus data yang memiliki jenis file excel dan csv. 

#### Tools
1. Python (pandas, mysqlconncetor)
2. mysql 
3. Visual Studio code (VSC)

#### Alur pembuataan

1. Membuat Databases di mysql (kalau belum ada)

'''
create nama_database ;
'''

2. Membuat tabel di mysql (kalau belum ada)

'''
use  nama_databases;
create teble  nama_tabel (
    nama_column type_data ;
    nomer int ;
    .....
    .....
)
3.  membangun sitem menggunakan python

!(flowchart.png)