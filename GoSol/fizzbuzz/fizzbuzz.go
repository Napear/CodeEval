package main
import (
	"os"
	"log"
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
		//	read inputs
		raw := testCase.Text()
		raw = strings.TrimSpace(raw)
		inputs := strings.Split(raw, " ")
		//	convert inputs to ints
		x, err := strconv.Atoi(inputs[0])
		procErr(err)
		y, err := strconv.Atoi(inputs[1])
		procErr(err)
		n, err := strconv.Atoi(inputs[2])
		procErr(err)
		// fizzbuzz logic
		for i := 1; i <= n; i++ {
			output := ""
			if i % x == 0 {
				output += "F"
			}
			if i % y == 0 {
				output += "B"
			}
			if output == "" {
				output = strconv.Itoa(i)
			}
			// add spaces between outputs
			if i != n {
				output += " "
			}
			fmt.Print(output)
		}
		fmt.Printf("\n")
	}
}
