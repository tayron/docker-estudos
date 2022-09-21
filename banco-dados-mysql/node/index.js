const express = require('express')
const app = express()
const port = 3000
const config = {
    host: 'db',
    user: 'root',
    password: '123456',
    database: 'nodedb'
}

const mysql = require('mysql')
const connection = mysql.createConnection(config)

const sql = `INSERT INTO people(name) values ('Tayron')`
connection.query(sql)
connection.end()

app.get('/', (req, res) => {
    res.send('<h1>Olá Mundo</h1>')
})

app.listen(port, ()=>{
    console.info('Rodando na porta ' + port)
})