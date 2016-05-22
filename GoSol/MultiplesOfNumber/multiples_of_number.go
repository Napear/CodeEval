package main
import (
	"strings"
	"bufio"
	"os"
	"log"
	"fmt"
)

func procErr(err error) {
	if err != nil {
		log.Fatal(err)
	}
}

func getNum(n, min int) int {
	if n < min {
		getNum(n*2,min)
	}
	return n
}

func main() {
	//	read file location from args
	file, err := os.Open(os.Args[1])
	procErr(err)
	defer file.Close()
	testCase := bufio.NewScanner(file)
	//	read each testCase line and apply logic
	var x, n int
	for testCase.Scan() {
		raw := strings.TrimSpace(testCase.Text())
		fmt.Sscanf(raw, "%d,%d\n", &x, &n)
		output := n;
		for output < x {
			output += n
		}
		fmt.Println(output)
	}
}