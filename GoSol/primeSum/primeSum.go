package main
import (
	"fmt"
	"math"
)

func isPrime(n int) bool {
	if n < 2 {
		return false
	}
	if n == 2 {
		return true
	}
	if n & 1 == 0 {
		return false
	}
	s := int(math.Sqrt(float64(n)))
	for i := 3; i <= s; i += 2 {
		if n % i == 0 {
			return false
		}
	}
	return true
}

func main() {
	count, i, total := 0,0,0
	for count < 1000 {
		if isPrime(i) {
			total += i
			count++
		}
		i++
	}
	fmt.Println(total)
}
