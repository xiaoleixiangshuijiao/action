FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN action create-db
RUN action populate-db
RUN action add-user -u admin -p admin
EXPOSE 5000
CMD ["action", "run"]
