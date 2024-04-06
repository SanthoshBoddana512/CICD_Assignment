# Using python base image
FROM python:3.11

# Setting working directory
WORKDIR /ci_cd_assignment

# Copying the entire project directory into the container
COPY . .

# Installing dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Train the model during the building phase
RUN python train.py

# Specify the command to run when the container starts
CMD ["python", "test.py"]