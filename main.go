package main

import (
	"database/sql"
	"embed"
	"fmt"
	"io/ioutil"
	"log"

	_ "github.com/mattn/go-sqlite3"
	"github.com/wailsapp/wails/v2"
	"github.com/wailsapp/wails/v2/pkg/options"
)

//go:embed all:frontend/dist
var assets embed.FS

//go:embed build/appicon.png
var icon []byte

func initDB() {

	db, err := sql.Open("sqlite3", "./sqliteDB.db")

	if err != nil {
		log.Fatal(err)
	}

	defer db.Close()

	buf, err := ioutil.ReadFile("salsa_backup.db.sql")

	if err != nil {
		log.Fatal(err)
	}

	sqlStmt := string(buf)

	_, err = db.Exec(sqlStmt)
	if err != nil {
		log.Printf("%q: %s\n", err, sqlStmt)
		return
	}
}

func getDB() (*sql.DB, error) {
	return sql.Open("sqlite3", "./foo.db")
}

func main() {
	// Create an instance of the app structure
	app := NewApp()

	// Create application with options
	err := wails.Run(&options.App{
		Title:            "wails-events",
		Width:            1024,
		Height:           768,
		Assets:           assets,
		BackgroundColour: &options.RGBA{R: 27, G: 38, B: 54, A: 1},
		OnStartup:        app.startup,
		Bind: []interface{}{
			app,
		},
	})

	if err != nil {
		println("Error:", err.Error())
	}

}

func (a *App) GreetName(name string) string {
	return fmt.Sprintf("Hello %s!", name)
}

type Position struct {
	ID      string `json:"id"`
	Name    string `json:"name"`
	Picture string `json:"picture"`
	Type    string `json:"type"`
	tags    string `json:"tags"`
}

func (a *App) GetPositions(idx int, limit int) []Position {

	db, err := getDB()
	if err != nil {
		log.Fatal(err)
	}

	rows, err := db.Query("select ID,Name,Picture,Type,tags from positions")
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	got := []Position{}

	for rows.Next() {
		var id string
		var name string
		var picture string
		var mtype string
		var tags string
		err = rows.Scan(
			&id,
			&name,
			&picture,
			&mtype,
			&tags,
		)
		if err != nil {
			log.Fatal(err)
		}

		got = append(got, Position{
			ID:      id,
			Name:    name,
			Picture: picture,
			Type:    mtype,
			tags:    tags,
		})

		fmt.Println(id, name)
	}
	err = rows.Err()
	if err != nil {
		log.Fatal(err)
	}
	return got
}
