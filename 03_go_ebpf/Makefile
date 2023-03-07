
all:
	CC=clang \
	CGO_CFLAGS="-I. -I$(abspath ../libbpfgo/output)" \
	CGO_LDFLAGS="-lelf -lz $(abspath ../libbpfgo/output/libbpf.a)" \
	go build \
        -tags netgo -ldflags '-w -extldflags "-static"' \
        .
