FROM ubuntu
RUN apt-get clean && apt-get update && apt-get install -y libexpat-dev libglib2.0-dev curl 
COPY ./puts-exec/ /home/
#COPY ./do/ /home/do/
#COPY ./dtmp/ /home/dtmp/
#COPY ./backend /home/backend/
#RUN chmod +x /home/do/do
RUN chmod +x /home/puts-exec/puts-exec
ENTRYPOINT ["/home/puts-exec/puts-exec", "-ui", "--port=8080","--versi=9.a, --jobs=10"]