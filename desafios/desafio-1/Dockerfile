FROM golang:1.19-alpine as builder

RUN apk add upx

WORKDIR /aplicacao
COPY main.go .

RUN go clean
RUN CGO_ENABLED=0 go build -o fullcycle -ldflags "-s -w" main.go
RUN upx fullcycle
RUN ls -la


FROM scratch
WORKDIR /aplicacao

COPY --from=builder /aplicacao/fullcycle .

EXPOSE 3000
ENTRYPOINT ["./fullcycle"]