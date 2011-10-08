doctype 5
html ->
  head ->
    stylesheet 'main'
    stylesheet 'http://fonts.googleapis.com/css?family=Amaranth:400+700'
    stylesheet 'http://fonts.googleapis.com/css?family=Alice'
    title @title or "fathom.js"
  body ->
    nav ->
      div '.container', ->
        text "fathom"
        span ".js"
      ul
    div '.catchphrase', "The easiest way to make HTML5 games in the world."
    @body