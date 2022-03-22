var http = require('http');
var fs = require('fs');
var url = require('url');
var table = `
<h3> sg-moomin table </h3>
  <table style="width:100%">
    <tr>
      <th>이름</th>
      <th>나이</th>
      <th>성별</th>
      <th>블로그</th>
      <th>기타</th>
    </tr>
    <tr>
      <td>sg-moomin</td>
      <td>27</td>
      <td>남자</td>
      <td>blog.naver.com/rooney9325</td>
      <td>sg-moomin 화이팅</td>
    </tr>
  </tr>
  </table>
`;

function templateList(title, list, body){
  return`
  <!doctype html>
  <head>
  <style>
  table {
    font-family : courier,
    border-collapse : collapse;
    width : 100%;
  }

  td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
  }

  tr:nth-child(even) {
    background-color: #dddddd;
  }
  </style>
    <title>WEB1 - ${title}</title>
    <meta charset="utf-8">
  </head>
  <body>
    <h1><a href="/">Sg-moomin</a></h1>
    ${list}
    ${body}
    </body>
    </html>`
  ;
}

function fileReadlist(filelist){
  var list = `<ul>`;
  var i;
  for(i = 0; i < filelist.length; i++){
    list = list + `<li><a href="/?id=${filelist[i]}">  we : ${filelist[i]}</a></li>`;
  }
  list = list + `</ul>`;
  return list;
}

var app = http.createServer(function(request,response){
    var _url = request.url;
    var queryData = url.parse(_url, true).query;
    var pathname = url.parse(_url, true).pathname;
    // console.log(queryData);
    if(pathname === '/'){
      if(queryData.id === undefined){
        fs.readdir('./sgmoominFile', function(error, filelist){
        var title = "hello";
        var descript = "welcome";
        var list = fileReadlist(filelist);
        var template = templateList(title, list, `<h2>${title}</h2>`);
        response.writeHead(200);
        response.end(template);
          })
        } else {
      fs.readdir('./sgmoominFile', function(error, filelist){
            var title = queryData.id;
            var description = "Hello - Sg Moomin ";

            var list = fileReadlist(filelist);
            console.log(list);
            var template = templateList(title, list, `<h2>${title}</h2>${description}${table}`);
            response.writeHead(200);
            response.end(template);
        })
      }
    } else {
      response.writeHead(404);
      response.end('Not found');
    }
});
app.listen(3000);
