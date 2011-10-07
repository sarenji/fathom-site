express   = require 'express'
coffeekup = require 'coffeekup'
stylus    = require 'stylus'
nib       = require 'nib'

# coffeekup helpers
helpers =
  stylesheet: (fileName) ->
    fileName = "/stylesheets/#{fileName}.css" unless /https?\:\/\//.test fileName
    link href: fileName, rel: "stylesheet", type: "text/css"

app = express.createServer()

app.configure ->
  @set 'view engine', 'coffee'
  @register '.coffee', coffeekup.adapters.express
  @use express.bodyParser()
  @use express.methodOverride()
  @use stylus.middleware
    src     : "#{__dirname}/public"
    compile : (str, path) ->
      stylus(str)
        .set('filename', path)
        .set('compress', true)
        .use(nib())
        .import('nib')
  @use express.static("#{__dirname}/public")
  @use @router



app.get '/', (req, res) ->
  res.render 'index', hardcode: helpers

app.listen process.env.PORT || 3000