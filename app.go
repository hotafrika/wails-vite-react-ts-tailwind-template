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
	ID          string `json:"id"`
	Name        string `json:"name"`
	Picture     string `json:"picture"`
	Type        string `json:"type"`
	Tags        string `json:"tags"`
	Description string `json:"description"`
}

type Basic struct {
	ID          string `json:"id"`
	Name        string `json:"name"`
	Description string `json:"description"`
	Image       string `json:"image"`
	Tags        string `json:"tags"`
	Video       string `json:"video"`
}

type Vocab struct {
	ID         string `json:"id"`
	Word       string `json:"word"`
	Definition string `json:"definition"`
	Type       string `json:"type"`
	Tags       string `json:"tags"`
}

type Pattern struct {
	ID         string `json:"id"`
	Word       string `json:"word"`
	Definition string `json:"Definition"`
	Type       string `json:"type"`
	Tags       string `json:"tags""`
}

type Combination struct {
	ID         string `json:"id"`
	Word       string `json:"id"`
	Definition string `json:"id"`
	Type       string `json:"id"`
	Tags       string `json:"id"`
}

func (a *App) GetVocab(idx int, limit int) string {
	db, err := getDB()
	if err != nil {
		log.Fatal(err)
	}
	rows, err := db.Query("select id,name,description,image,tags,video from basics limit ?,?;", (idx-1)*limit, limit)
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	got := []Basic{}

	for rows.Next() {
		var id string
		var name string
		var description string
		var image string
		var video string
		var tags string

		err = rows.Scan(
			&id,
			&name,
			&description,
			&image,
			&tags,
			&video,
		)
		if err != nil {
			log.Fatal(err)
		}

		got = append(got, Basic{
			ID:          id,
			Name:        name,
			Description: description,
			Image:       image,
			Tags:        tags,
			Video:       video,
		})

	}
	err = rows.Err()
	if err != nil {
		log.Fatal(err)
	}

	rowsCount, err := db.Query("SELECT COUNT(*) FROM basics")
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

	// fmt.Printf("Number of rows are %s\n", count)

	responseMap := map[string]interface{}{
		"basics": got,
		"total":  count,
	}

	responseString, err := json.Marshal(responseMap)

	return fmt.Sprintf(string(responseString))

}

func (a *App) GetBasics(idx int, limit int) string {
	db, err := getDB()
	if err != nil {
		log.Fatal(err)
	}
	rows, err := db.Query("select id,name,description,image,tags,video from basics limit ?,?;", (idx-1)*limit, limit)
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	got := []Basic{}

	for rows.Next() {
		var id string
		var name string
		var description string
		var image string
		var video string
		var tags string

		err = rows.Scan(
			&id,
			&name,
			&description,
			&image,
			&tags,
			&video,
		)
		if err != nil {
			log.Fatal(err)
		}

		got = append(got, Basic{
			ID:          id,
			Name:        name,
			Description: description,
			Image:       image,
			Tags:        tags,
			Video:       video,
		})

	}
	err = rows.Err()
	if err != nil {
		log.Fatal(err)
	}

	rowsCount, err := db.Query("SELECT COUNT(*) FROM basics")
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

	// fmt.Printf("Number of rows are %s\n", count)

	responseMap := map[string]interface{}{
		"basics": got,
		"total":  count,
	}

	responseString, err := json.Marshal(responseMap)

	return fmt.Sprintf(string(responseString))

}

func (a *App) GetPositions(idx int, limit int) string {

	db, err := getDB()
	if err != nil {
		log.Fatal(err)
	}

	rows, err := db.Query("select ID,Name,Picture,Type,tags,description from positions ORDER BY ID limit ?,?;", (idx-1)*limit, limit)
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
		var description string

		err = rows.Scan(
			&id,
			&name,
			&picture,
			&mtype,
			&tags,
			&description,
		)
		if err != nil {
			log.Fatal(err)
		}

		got = append(got, Position{
			ID:          id,
			Name:        name,
			Picture:     picture,
			Type:        mtype,
			Description: description,
			Tags:        tags,
		})

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

	// fmt.Printf("Number of rows are %s\n", count)

	responseMap := map[string]interface{}{
		"positions": got,
		"total":     count,
	}

	responseString, err := json.Marshal(responseMap)

	return fmt.Sprintf(string(responseString))

}

func (a *App) GetPatterns(idx int, limit int) string {
	db, err := getDB()
	if err != nil {
		log.Fatal(err)
	}
	rows, err := db.Query("select id,name,description,image,tags,video from basics limit ?,?;", (idx-1)*limit, limit)
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	got := []Basic{}

	for rows.Next() {
		var id string
		var name string
		var description string
		var image string
		var video string
		var tags string

		err = rows.Scan(
			&id,
			&name,
			&description,
			&image,
			&tags,
			&video,
		)
		if err != nil {
			log.Fatal(err)
		}

		got = append(got, Basic{
			ID:          id,
			Name:        name,
			Description: description,
			Image:       image,
			Tags:        tags,
			Video:       video,
		})

	}
	err = rows.Err()
	if err != nil {
		log.Fatal(err)
	}

	rowsCount, err := db.Query("SELECT COUNT(*) FROM basics")
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

	// fmt.Printf("Number of rows are %s\n", count)

	responseMap := map[string]interface{}{
		"basics": got,
		"total":  count,
	}

	responseString, err := json.Marshal(responseMap)

	return fmt.Sprintf(string(responseString))

}

func (a *App) GetCombinations(idx int, limit int) string {
	db, err := getDB()
	if err != nil {
		log.Fatal(err)
	}
	rows, err := db.Query("select id,name,description,image,tags,video from basics limit ?,?;", (idx-1)*limit, limit)
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	got := []Basic{}

	for rows.Next() {
		var id string
		var name string
		var description string
		var image string
		var video string
		var tags string

		err = rows.Scan(
			&id,
			&name,
			&description,
			&image,
			&tags,
			&video,
		)
		if err != nil {
			log.Fatal(err)
		}

		got = append(got, Basic{
			ID:          id,
			Name:        name,
			Description: description,
			Image:       image,
			Tags:        tags,
			Video:       video,
		})

	}
	err = rows.Err()
	if err != nil {
		log.Fatal(err)
	}

	rowsCount, err := db.Query("SELECT COUNT(*) FROM basics")
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

	// fmt.Printf("Number of rows are %s\n", count)

	responseMap := map[string]interface{}{
		"basics": got,
		"total":  count,
	}

	responseString, err := json.Marshal(responseMap)

	return fmt.Sprintf(string(responseString))

}
