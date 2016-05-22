package main
import (
	"log"
	"bufio"
	"os"
	"fmt"
)
//helper for printing errors
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
	var vamp, zom, wit, houses int
	//	read each testCase line and apply logic
	for testCase.Scan() {
		//read and parse various values
		fmt.Sscanf(testCase.Text(), "Vampires: %d, Zombies: %d, Witches: %d, Houses: %d\n", &vamp, &zom, &wit, &houses)
		numKids := vamp + zom + wit
		total := ((vamp*3+zom*4+wit*5)*houses)/numKids
		fmt.Println(total)
	}
}
