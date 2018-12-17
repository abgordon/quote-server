package main

import (
	"bufio"
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"os"
	"time"
)

var quotes []string
var err error

func rootHandler(w http.ResponseWriter, r *http.Request) {
	rand.Seed(time.Now().UnixNano())
	randomInt := rand.Int() % len(quotes)
	w.Write([]byte(fmt.Sprintf("%s 🐼\n", quotes[randomInt])))
}

func main() {
	quotes, err = readall()
	if err != nil {
		quotes = []string{"no quotes today. Why don't you try again later?\n"}
	}
	http.HandleFunc("/", rootHandler)
	log.Fatal(http.ListenAndServe(":8080", nil))
}

func readall() ([]string, error) {
	file, err := os.Open("quotes.txt")
	if err != nil {
		return nil, err
	}
	defer file.Close()

	var lines []string
	scanner := bufio.NewScanner(file)
	var concat string
	for scanner.Scan() {
		if len(scanner.Text()) == 0 {
			lines = append(lines, concat)
			concat = ""
		} else {
			concat = fmt.Sprintf("%s %s", concat, scanner.Text())
		}
	}
	return lines, scanner.Err()
}
