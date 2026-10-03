
# pull based image
FROM python:3.11-slim

# Create working directory
WORKDIR app/

# copy requrements.txt file

COPY requirements.txt .

# install requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# copy application code
COPY . . 

# Run application

CMD ["uvicorn", "main1:app", "--host", "0.0.0.0", "--port", "8080"]
