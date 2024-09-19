import js

pub struct headers

pub struct request
  method: string
  url: string
  headers: headers
  body: maybe<string>

pub struct response
  body: maybe<string> = Nothing
  status: int = 200
  headers: maybe<headers> = Nothing

val ts-server: (int, (request) -> response) -> io unit = require("./server.ts")

pub fun server(port: int, callback : (request) -> response) : io unit
  println("Starting server on port " ++ port.show)
  ts-server(port, callback)
