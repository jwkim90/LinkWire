package main
import (
        "fmt"
        "os"
        bpf "github.com/aquasecurity/libbpfgo"
)

func main() {

        bpfModule, err := bpf.NewModuleFromFile("main.bpf.o")
        if err != nil {
                fmt.Fprintln(os.Stderr, err)
                os.Exit(-1)
        }
        defer bpfModule.Close()
}
