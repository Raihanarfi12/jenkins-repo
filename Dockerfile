# Use a base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy only necessary files
COPY static/ ./static/
COPY templates/ ./templates/
COPY main.py .
COPY dummy_users.yaml .
COPY requirements.txt .

# Install dependencies and then remove requirements.txt
RUN pip install --no-cache-dir -r requirements.txt && rm requirements.txt

# Command to run the app
CMD ["python", "main.py"]
