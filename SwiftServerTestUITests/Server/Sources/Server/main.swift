import Kitura

let router = Router()

router.get("hello") { request, response, next in
    response.send("Hello world!")
    next()
}

router.get("users/shashikant86") { request, response, next in
    response.send(
        """
{
  "location": "Kitura"
}
"""
    )
    next()
}

Kitura.addHTTPServer(onPort: 11551, with: router)
Kitura.run()
