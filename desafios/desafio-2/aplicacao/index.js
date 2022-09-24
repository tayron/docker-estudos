const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
    res.send('<h1>Full Cycle</h1>')
})

app.listen(port, ()=>{
    console.info(`Rodando no endereço http://localhost:${port}`)
})