FROM public.ecr.aws/docker/library/golang:1.18

RUN mkdir /app

COPY go-binary /app/go-go-beego/go-binary

WORKDIR /app/go-go-beego

EXPOSE 8080

RUN chmod u+x /app/go-go-beego

ENTRYPOINT ["/app/go-go-beego/go-binary"]
