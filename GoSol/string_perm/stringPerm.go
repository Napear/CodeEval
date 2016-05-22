package main
import (
	"fmt"
	"log"
)

func permute(prefix, body []string) {
	n := len(body)
	if n == 0 {
		fmt.Println(prefix)
	}else {
		for i := 0; i < n; i++ {
			nPrefix := append(prefix, body[i])
			nBody := append(body[:i], body[i+1:n]...)
			log.Println(nPrefix, nBody)
			permute(nPrefix, nBody)
		}
	}
}

func main() {
	test := []string{"T","E","S"}
	permute(make([]string, 0), test)
}
