const app = require('express');
const router = app.Router();
const http = require('http').Server(app);
const io = require('socket.io')(http);

const room = io.of('/test');
const aroom = io.of('/a');
const broom = io.of('/b');
const croom = io.of('/c');

const userList = [
  {
    "id": "1",
    "name": "ns",
    "isConneted": false
  },
  {
    "id": "2",
    "name": "jm",
    "isConneted": false
  },
  {"id": "3",
  "name": "jh",
  "isConneted": false
},
{
  "id": "4",
  "name": "hj",
  "isConneted": false
}
]

const chatRoom = [
{
  'name' : '1',
  'room' : [ "test", "b", "c" ]
},
{
  'name' : '2',
  'room' : [ "d", "b", "c" ]
}
]
router.get('/', function (req, res) {
    room.emit('test', {
      'Hello': 'World',
      'test': 'good'
    });
    res.send('<h1>AppCoda - SocketChat Server</h1>');
  });
  
  
  router.get('/getChatList/:name', (req, res) => {
    const name = req.params.name
    const list = []
    
    chatRoom.forEach(element => {
      if( element.name == name ){
        list.push(element)
      }
    }); 
  
    res.send(list)
  })

  http.listen(8000, function () {
    console.log('Listening on *:8000');
  });

  room.on('connection', (clientSocket) => {
    console.log('*** test connected ***');
    console.log(clientSocket.id)
  
    //echo
    //user = 0, other = 1
    clientSocket.on('test', (msg) => {
      console.log(msg)
      room.emit('test', { 
        'type' : 1,
       'message' : msg })
    })
  
    clientSocket.on('disconnect', function () {
      clientSocket.disconnect();
      console.log('test disconnected');
    })
    
    clientSocket.on('event', (msg) => {
      console.log(msg)
      console.log(msg["message"])
      console.log('*************')
    })
  
    clientSocket.on('event1', (msg) => {
      console.log(msg)
      console.log(msg[0]["name"])
      console.log(msg[1]["email"])
  
      clientSocket.emit('test', { 'res': 'event1 response!' })
    })
  
    clientSocket.on('event2', (msg) => {
      console.log(msg)
      console.log(msg["name"])
      console.log(msg["email"])
  
      clientSocket.emit('test', { 'res': 'event2 response!' })
    })
  })