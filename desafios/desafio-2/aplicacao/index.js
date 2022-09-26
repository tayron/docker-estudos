const express = require('express')
const mysql = require('mysql')

const app = express()
const port = 3000
const config = {
    host: 'mysql',
    user: 'root',
    password: '123456',
    database: 'nodedb'
}

app.get('/', (req, res) => {
    try {
        getPeopleList(function(peoples) {
            let html = '<h1>Full Cycle</h1>'    
            html += '<table><tr><th>ID</th><th>Nome</th></tr>'

            for (var i=0; i<= peoples.length -1; i++) {
                const id = peoples[i].id
                const name = peoples[i].name
                html += `<tr><td>${id}</td><td>${name}</td></tr>`
            }

            res.send(html)
        })
        
    } catch (error) {
        console.error(error.message)
    }
})

app.listen(port, ()=>{    
    executeCommand(`CREATE TABLE IF NOT EXISTS people (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(85), PRIMARY KEY(id))`)
    executeCommand(`INSERT INTO people(name) values ('Tayron')`)
    console.info(`Rodando no endereço http://localhost:${port}`)
})

function executeCommand(sql) {
    const connection = mysql.createConnection(config)
    connection.query(sql)
    connection.end()
}

function getPeopleList(callback) {
    const connection = mysql.createConnection(config)
    connection.query("SELECT * FROM people", function (err, result, fields) {
        if (err) throw err
        callback(result)
    })
    connection.end()
}