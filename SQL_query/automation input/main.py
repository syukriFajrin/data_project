import mysql.connector
import pandas as pd
# koneksi dengan databases 
def permit():
    return mysql.connector.connect(
                host='localhost',
                user ='app',
                password='12345',
                database= 'dataScience'
            )
# setting untuk akses query
conn=permit()
cursor_= conn.cursor()
# input data dari file csv /excel
df_=pd.read_csv('')
df1=pd.read_csv('/media/syukrifjrn/FBDD-7817/SQL_query/automation input/diabetes_prediction_dataset.csv')
print (df_.columns)
# buat query dan sesuaikan column dengan column table yang sudah dibuat di sql
for _,df in df1.iterrows():
    query="""
    INSERT INTO diabetes_ (
        gender,
        age ,
        hypertension ,
        heart_disese ,
        smoking_hist ,
        bmi ,
        Hb1  ,
        glucos_lev ,
        diabetes 
    )
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    cursor_.execute(query,(df['gender'],df['age'],df['hypertension'],df['heart_disease'],df['smoking_history'],df['bmi'],df['HbA1c_level'],df['blood_glucose_level'],df['diabetes']))
conn.commit()