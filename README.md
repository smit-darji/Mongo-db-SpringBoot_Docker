sudo docker run -it -d --name democontainer --volume Spiderman:/apps <image_name>
  
sudo docker run -it -d --name demo-springh-1 --mount source=spring-con,target=/var/lib/tomcat8/webapps/ROOT/WEB-INF/doc,readonly spring-demo

 sudo docker exec -it demo-con bash