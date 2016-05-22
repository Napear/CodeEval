package main
import (
	"log"
	"bufio"
	"os"
	"strings"
	"fmt"
	"sort"
	"strconv"
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
	var dist int; //holder for distance
	for testCase.Scan() {
		raw := strings.TrimSpace(testCase.Text())
		distances := make([]int, 0)
		for _, city := range strings.Split(raw, " ") {
			tmp := strings.Split(city, ",")
			fmt.Sscanf(tmp[1], "%d;", &dist)
			distances = append(distances, dist)
		}
		sort.Ints(distances)
		output := ""
		output += strconv.Itoa(distances[0])
		for i := 0; i < len(distances) - 1; i++ {
			val := distances[i+1]-distances[i]
			output += "," + strconv.Itoa(val)
		}
		fmt.Println(output)
	}


}