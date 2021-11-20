import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

	app.get("_ah", "health") { request -> String in
		print("All - /_ah/health route handler...")
		return "OK"
	}

	app.get("hello") { request -> String in
		print("GET - /hello route handler...")
		return "Hello from Vapor on App Engine"
	}
}
