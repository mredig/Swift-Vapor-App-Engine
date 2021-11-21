import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

	app.get("readiness_check") { request -> String in
		print("All - /readiness_check handler...")
		return "OK"
	}

	app.get("liveness_check") { request -> String in
		print("All - /liveness_check route handler...")
		return "OK"
	}

//	app.get("_ah", "health") { request -> String in
//		print("All - /_ah/health route handler...")
//		return "OK"
//	}

	app.get("hello") { request -> String in
		print("GET - /hello route handler...")
		return "Hello from Vapor on App Engine"
	}
}
