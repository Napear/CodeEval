package main

import (
	"os"
	"log"
	"bufio"
	"strings"
	"sort"
	"strconv"
	"fmt"
)

func procErr(err error) {
	if err != nil {
		log.Fatal(err)
	}
}

type Lines []string

func (s Lines) Len() int {
	return len(s)
}

func (s Lines) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s Lines) Less(i, j int) bool {
	return len(s[i])>len(s[j])
}

func main() {
	file, err := os.Open(os.Args[1])
	procErr(err)
	defer file.Close()
	scanner := bufio.NewScanner(file)
	lines := make([]string, 0)
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		lines = append(lines, line)
	}
	numLines, err := strconv.Atoi(lines[0])
	procErr(err)
	lines = lines[1:]
	sort.Sort(Lines(lines))
	for i := 0; i < numLines; i++  {
		fmt.Println(lines[i])
	}
}