docker build -t tofe-server:1.0 .

# 自测
# docker run -d -p 8080:8080 tofe-server

docker login 

docker tag <image-id> felixorb/tofe-server:1.0

docker push felixorb/tofe-server:1.0