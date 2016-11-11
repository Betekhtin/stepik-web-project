def application (environ, start_response):
		start_response('200 OK', [('Content-Type', 'text/plain')])
		response = environ['QUERY_STRING'].split("&")
		response = [item + "\r\n" for item in response]
		return response
