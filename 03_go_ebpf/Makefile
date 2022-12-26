

all:
	CC=clang \
	CGO_CFLAGS="-I. -I/usr/include/" \
	CGO_LDFLAGS="-lelf -lz -lbpf" \
	go build .
