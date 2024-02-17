package main

import (
	"fmt"
	"log/slog"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("SERVER_PORT")
	if port == "" {
		port = "3000"
	}
	addr := fmt.Sprintf(":%s", port)

	mux := http.NewServeMux()

	mux.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		slog.Debug("request in", "remote_addr", r.RemoteAddr, "uri", r.RequestURI)
		w.WriteHeader(http.StatusOK)
	})

	mux.HandleFunc("/ping", func(w http.ResponseWriter, r *http.Request) {
		slog.Debug("request in", "remote_addr", r.RemoteAddr, "uri", r.RequestURI)
		fmt.Fprint(w, "pong")
	})

	server := &http.Server{
		Addr:    addr,
		Handler: mux,
	}

	slog.Info("Start Server", "addr", addr)
	if err := server.ListenAndServe(); err != nil {
		panic(err)
	}
}
