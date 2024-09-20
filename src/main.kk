import koka-bun/serve

fun main()
  server(3000) fn(request)
    Response(Just("Hello, World!"))
