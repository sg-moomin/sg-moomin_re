var url = require('url');
var http = require('http');
var parsedObject = url.parse('https://sg-moomin.tistory.com:8080/p/a/t/h?query=string#hash');

var app = http.createServer(function(request, response){
  var parse = url.parse(request.url, true);
  var queryData = url.parse(request.url, true).query;
  var pathname = url.parse(request.url, true).pathname;

  console.log("parse : " + parse);
  console.log(queryData.id);
  console.log("pathname : " + pathname);

});
app.listen(3000);



console.log(parsedObject);
console.log(url.format(parsedObject));
