import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("data/sample.csv")
print(df.head())

df['Category'].value_counts().plot(kind="bar")
plt.title("Counts by Category")
plt.savefig("category_counts.png")
