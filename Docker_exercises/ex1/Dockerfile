FROM python
COPY . /app
WORKDIR /app
RUN pip install numpy
RUN pip install pillow
ENV EXEC=true
CMD ["python", "1.py", "pikachu.jpg"]