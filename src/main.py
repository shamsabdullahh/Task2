import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

csv_path = Path("data/sample.csv")
out_dir = Path("plots")
out_dir.mkdir(parents=True, exist_ok=True)

df = pd.read_csv(csv_path)
print(df.head())

# عدّ التكرارات في عمود Category ورسمها
counts = df["Category"].value_counts()

plt.figure()
counts.plot(kind="bar")
plt.title("Counts by Category")
plt.xlabel("Category")
plt.ylabel("Count")
plt.tight_layout()

out_file = out_dir / "category_counts.png"
plt.savefig(out_file)

print(f"✅ Plot saved to {out_file}")
