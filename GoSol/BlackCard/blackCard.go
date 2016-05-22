package main
import (
	"log"
	"os"
	"bufio"
	"strings"
	"strconv"
	"fmt"
)

func procErr(err error) {
	if err != nil {
		log.Fatal(err)
	}
}

func main() {
	//	read file location from args
	file, err := os.Open(os.Args[1])
	procErr(err)
	defer file.Close()
	testCase := bufio.NewScanner(file)
	//	read each testCase line and apply logic
	for testCase.Scan() {
		raw := strings.TrimSpace(testCase.Text())
		rawArray := strings.Split(raw, " | ")
		names := strings.Split(rawArray[0], " ")
		n, err := strconv.Atoi(rawArray[1])
		procErr(err)
		for len(names) > 1 {
			i := (n-1) % len(names)
			names = append(names[:i], names[i+1:]...)
		}
		fmt.Println(names[0])
	}
}
