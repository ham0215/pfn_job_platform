package main

import (
  "fmt"
  "net/http"
)

func load_jobs() {
  // todo: jobを読み込む
}

func handler(w http.ResponseWriter, r *http.Request) {
  time := r.URL.Query().Get("time")

  // todo: timeで検索する

  // todo: jobを返却する
  fmt.Fprintf(w, time)
  fmt.Fprintf(w, "\nHello, World")
}

func main() {
  http.HandleFunc("/", handler)
  http.ListenAndServe(":8083", nil)
}
