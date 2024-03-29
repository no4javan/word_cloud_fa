# Set base image
FROM hub.hamdocker.ir/library/python:3.8

# Set working directory in container
WORKDIR /app

# Install required packages
COPY .requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && python setup.py install

# Copy project files to container
COPY wordcloud_fa /app

# Expose required ports
EXPOSE 8000

# Set default command to run the app
CMD ["python", "wordcloud_fa.py"]


