var http = require('http')

var port = 11130

var server = http.createServer(function (request, response) {
  response.writeHead(200, {'Content-Type': 'text/plain'})
  response.end('"Hello world"!!!\n')
})

server.listen(port)

console.log('Server started.')
