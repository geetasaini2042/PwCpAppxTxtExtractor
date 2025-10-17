# ✅ Use Python 3.11 (Stable for Pyrogram)
FROM python:3.11.13

# ✅ Upgrade pip
RUN pip install --upgrade pip

# ✅ Copy requirements
COPY requirements.txt /app/requirements.txt
WORKDIR /app

# ✅ Install dependencies
RUN pip install -r requirements.txt

# ✅ Copy all project files
COPY . .

# ✅ Run bot
CMD ["python3", "main.py"]
