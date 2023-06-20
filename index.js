const express = require('express')
const app = express()

const port = 3000

app.get('/', (req, res) => {
    res.send("Node running on Docker! \n Created by Gabriel Carlos")
})

app.listen(port, () => {
    console.log(`App running on port: ${port}`)
})