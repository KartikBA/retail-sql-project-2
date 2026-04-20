import streamlit as st
import mysql.connector

st.title("Retail Store Dashboard")

conn = mysql.connector.connect(
    host="roundhouse.proxy.rlwy.net",
    port=36501,
    user="root",
    password="zbkuAyymuAfMDBsXuyHoyjAxklNmoLaZ",
    database="railway"
)

cursor = conn.cursor()

cursor.execute("""
SELECT category, SUM(price) 
FROM products 
GROUP BY category
""")

data = cursor.fetchall()

st.subheader("Revenue by Category")

for row in data:
    st.write(f"{row[0]} : ₹{row[1]}")
