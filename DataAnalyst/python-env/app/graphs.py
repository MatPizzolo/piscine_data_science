import matplotlib.pyplot as plt
plt.switch_backend('agg')
import numpy as np

from connection import create_cursor

cur = create_cursor()


queryTypes = "SELECT DISTINCT event_type FROM data_2022_nov;"
cur.execute(queryTypes)
data = cur.fetchall()
event_types = data

queryAll = "SELECT * FROM combined_data LIMIT 5000000;"
cur.execute(queryAll)
data = cur.fetchall()

category_types = [row[1] for row in data]

event_counts = {}

for event_type in category_types:
    event_type_str = event_type

    if event_type_str in event_counts:
        event_counts[event_type_str] += 1
    else:
        event_counts[event_type_str] = 1

print(event_counts)

# carts = category_types.count('cart')
# print(f"Number of 'cart' occurrences: {carts}")

# print(category_types)



# total_value = sum(values)
# percentages = [value / total_value * 100 for value in values]

# plt.pie(percentages, labels=category_names, autopct="%1.1f%%")
# plt.title("Percentage of Items per Category")

# plt.savefig("my_pie_chart.png")

cur.close()

