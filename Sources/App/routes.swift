import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get("username", ":username") { req -> String in
        let username = req.parameters.get("username")!
        req.logger.info("Hello \(username)") // Add Logger
        return "Hello, \(username)"
    }
    
    // print(app.routes.all)
}
