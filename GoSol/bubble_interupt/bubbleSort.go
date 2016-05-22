package main
import (
	"log"
	"os"
	"bufio"
	"strings"
	"strconv"
	"fmt"
)

func sort(slice []int, interrupt int) []int {
	if len(slice) < interrupt {
		interrupt = len(slice)
	}
	for i := 0; i < interrupt; i++ {
		for j := 1; j < len(slice) - i; j++ {
			if slice[j - 1] > slice[j] {
				slice[j - 1], slice[j] = slice[j], slice[j - 1]
			}
		}
	}
	return slice
}

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
		rawSplit := strings.Split(raw, " | ")
		// parse max iterations from string input
		interrupt, err := strconv.Atoi(rawSplit[1])
		procErr(err)
		input := make([]int, 0)
		//	parse array to be sorted from string input
		for _, val := range strings.Split(rawSplit[0], " ") {
			n, err := strconv.Atoi(val)
			procErr(err)
			input = append(input, n)
		}
		output := ""
		for i, val := range sort(input, interrupt) {
			output += strconv.Itoa(val)
			if i != len(input) - 1 {
				output += " "
			}
		}
		fmt.Println(output)
	}
}
