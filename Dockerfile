FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-devel

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get update && \
    apt-get install -y zip unzip sox git mediainfo curl

COPY . $PROJECT_ROOT
RUN pip install --no-cache-dir -r requirements.txt