docker build -t blur-image-final .
docker run -e IMAGE_PATH="pikachu.jpg" blur-image-final