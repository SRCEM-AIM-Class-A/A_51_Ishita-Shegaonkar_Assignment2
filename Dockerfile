# Use official Python image as base
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the Django project files to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for Django
EXPOSE 8000

# Run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
