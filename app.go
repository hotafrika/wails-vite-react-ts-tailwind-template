package main

import (
	"context"
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
)

// App struct
type App struct {
	ctx context.Context
}

// NewApp creates a new App application struct
func NewApp() *App {
	return &App{}
}

// startup is called at application startup
func (a *App) startup(ctx context.Context) {
	// Perform your setup here
	a.ctx = ctx
}

// domReady is called after front-end resources have been loaded
func (a App) domReady(ctx context.Context) {
	// Add your action here
}

// beforeClose is called when the application is about to quit,
// either by clicking the window close button or calling runtime.Quit.
// Returning true will cause the application to continue, false will continue shutdown as normal.
func (a *App) beforeClose(ctx context.Context) (prevent bool) {
	return false
}

// shutdown is called at application termination
func (a *App) shutdown(ctx context.Context) {
	// Perform your teardown here
}

// Greet returns a greeting for the given name
// func (a *App) Greet(name string) string {
// 	return fmt.Sprintf("Hello %s, It's show time!", name)
// }

// func initDB() {

// 	db, err := sql.Open("sqlite3", "./sqliteDB.db")

// 	if err != nil {
// 		log.Fatal(err)
// 	}

// 	defer db.Close()

// 	buf, err := ioutil.ReadFile("salsa_backup.db.sql")

// 	if err != nil {
// 		log.Fatal(err)
// 	}

// 	sqlStmt := string(buf)

// 	_, err = db.Exec(sqlStmt)
// 	if err != nil {
// 		log.Printf("%q: %s\n", err, sqlStmt)
// 		return
// 	}
// }

func getDB() (*sql.DB, error) {
	return sql.Open("sqlite3", "./sqliteDB.db")
}

// func (a *App) GreetName(name string) string {
// 	return fmt.Sprintf("Hello %s!", name)
// }

type Position struct {
	ID      string         `json:"id"`
	Name    string         `json:"name"`
	Picture sql.NullString `json:"picture"`
	Type    sql.NullString `json:"type"`
	tags    sql.NullString `json:"tags"`
}

func (a *App) GetPositions(idx int, limit int) string {

	db, err := getDB()
	if err != nil {
		log.Fatal(err)
	}

	rows, err := db.Query("select ID,Name,Picture,Type,tags from positions limit ?,?;", idx, limit)
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	got := []Position{}

	for rows.Next() {
		var id string
		var name string
		var picture sql.NullString
		var mtype sql.NullString
		var tags sql.NullString
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

	rowsCount, err := db.Query("SELECT COUNT(*) FROM positions")
	if err != nil {
		log.Fatal(err)
	}
	defer rowsCount.Close()

	var count int

	for rowsCount.Next() {
		if err := rowsCount.Scan(&count); err != nil {
			log.Fatal(err)
		}
	}

	fmt.Printf("Number of rows are %s\n", count)

	responseMap := map[string]interface{}{
		"positions": got,
		"total":     count,
	}

	responseString, err := json.Marshal(responseMap)

	return fmt.Sprintf(string(responseString))

}
