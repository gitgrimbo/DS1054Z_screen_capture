FROM python:2.7

RUN apt-get update && apt-get install -y \
    libjpeg-dev \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -I pillow

RUN git clone -b docker https://github.com/gitgrimbo/DS1054Z_screen_capture.git

ENTRYPOINT ["python", "DS1054Z_screen_capture/OscScreenGrabLAN.py"]
