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
	file, err := os.Open(os.Args[1])
	procErr(err)
	defer file.Close()
	testCase := bufio.NewScanner(file)
	for testCase.Scan() {
		raw := strings.TrimSpace(testCase.Text())
		output := 0;
		for _, val := range strings.Split(raw, "") {
			tmp, _ := strconv.Atoi(val)
			output += tmp
		}
		fmt.Println(output)
	}
}
