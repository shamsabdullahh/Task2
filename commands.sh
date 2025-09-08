
mkdir -p ~/projects/datasci-hello
cd ~/projects/datasci-hello


uv init
uv venv
source .venv/bin/activate
git init


mkdir -p src data plots
cat > src/main.py << 'PY'
import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

csv_path = Path("data/sample.csv")
out_dir = Path("plots")
out_dir.mkdir(parents=True, exist_ok=True)

df = pd.read_csv(csv_path)
print(df.head())

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
PY

cat > data/sample.csv << 'CSV'
Date,Category,Value
2025-09-01,A,10
2025-09-01,B,7
2025-09-02,A,13
2025-09-02,C,5
2025-09-03,B,12
2025-09-03,A,9
CSV


uv add pandas matplotlib
uv export --format requirements-txt > requirements.txt


git add .
mkdir -p ~/projects/datasci-hello
cd ~/projects/datasci-hello
uv init
uv venv
source .venv/bin/activate
git init
mkdir -p src data plots
cat > src/main.py << 'PY'
import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

csv_path = Path("data/sample.csv")
out_dir = Path("plots")
out_dir.mkdir(parents=True, exist_ok=True)

df = pd.read_csv(csv_path)
print(df.head())

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
PY
cat > data/sample.csv << 'CSV'
Date,Category,Value
2025-09-01,A,10
2025-09-01,B,7
2025-09-02,A,13
2025-09-02,C,5
2025-09-03,B,12
2025-09-03,A,9
CSV
uv add pandas matplotlib
uv export --format requirements-txt > requirements.txt
git add .
git commit -m "Initial commit: project setup with CSV and visualization"
ssh-keygen -t ed25519 -C "your_email@example.com"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git remote set-url origin git@github.com:shamsabdullahh/Task2.git
git branch -M main
git push -u origin main
git add src/main.py requirements.txt
git commit -m "Update main.py to save plots + update requirements"
git push
uv run python src/main.py
ls -l plots/
