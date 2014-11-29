package main

import (
    "net/http"
    "encoding/json"
    "fmt"
)

type QueryPlayersResponse struct {
    Online uint
    Max uint
}

type QueryResponse struct {
    Online bool `json:"status"`
    Motd string
    Version string
    Players QueryPlayersResponse
    Ping uint
}

func getResultsFor(ip string) (record *QueryResponse, err error){
    results, err := http.Get("http://mcapi.ca/query/" + ip + "/info")
    if err != nil {
        return nil, err
    }

    return decodeResults(results)
}

func decodeResults(results *http.Response) (record *QueryResponse, err error) {
    record = new(QueryResponse)
    err = json.NewDecoder(results.Body).Decode(record)
    return
}

func main() {
    status, _ := getResultsFor("localhost")

    if !status.Online {
        fmt.Print("The server is offline.")
    } else {
        fmt.Printf("The server is online with %d/%d players.", status.Players.Online, status.Players.Max)
    }
}
