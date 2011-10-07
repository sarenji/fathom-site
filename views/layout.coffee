doctype 5
html ->
  head ->
    stylesheet 'main'
    stylesheet 'http://fonts.googleapis.com/css?family=Neucha'
    stylesheet 'http://fonts.googleapis.com/css?family=Alice'
    stylesheet 'http://fonts.googleapis.com/css?family=Josefin+Sans:700'
  body ->
    nav ->
      div '.container.caps', "Fathom"
      ul
    div '.container.catchphrase', "The easiest way to make HTML5 games in the world."
    @body