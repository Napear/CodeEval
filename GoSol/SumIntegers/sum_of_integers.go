package main
import (
	"log"
	"os"
	"bufio"
	"strings"
	"strconv"
	"fmt"
)


func checkMax(max *int, sum int) {
	if *max < sum {
		*max = sum;
	}
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
		raw := strings.TrimSpace(testCase.Text())
		list := make([]int, 0)
		for _, val := range strings.Split(raw, ",") {
			num, _ := strconv.Atoi(val)
			list = append(list, num)
		}
		max := 0
		for i := range list {
			sum := list[i]
			checkMax(&max, sum)
			for j := i + 1; j < len(list); j++ {
				sum += list[j]
				checkMax(&max, sum)
			}
		}
		fmt.Println(max)
	}
}