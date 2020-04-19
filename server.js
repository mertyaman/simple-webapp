var http = require('http')

var port = 11130

var server = http.createServer(function (request, response) {
  response.writeHead(200, {'Content-Type': 'text/plain'})
  response.end('"Hello Hepsiburada from Mert"!!!\n')
})

server.listen(port)

console.log('Server started.')
