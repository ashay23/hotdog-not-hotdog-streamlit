# Use a Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project (including app.py) into the container
COPY . /app/

# Expose port 8501 for Streamlit to run
EXPOSE 8501

# Run Streamlit when the container starts
CMD ["streamlit", "run", "app.py"]