express = require 'express'
bodyParser = require 'body-parser'

app = express()
app.use bodyParser.json()

app.get '/', (req, res) -> res.send 'hello, world'

port = parseInt(process.env.PORT) or 3000

app.listen port, -> console.info "listening on 3000"
