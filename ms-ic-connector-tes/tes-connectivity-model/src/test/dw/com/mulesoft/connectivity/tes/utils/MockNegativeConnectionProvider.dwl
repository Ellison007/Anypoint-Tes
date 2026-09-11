%dw 2.7
import * from com::mulesoft::connectivity::transport::Http

var mockConnectionProvider400: HttpConnectionProvider<Object, { "type": "custom" }> = {
    authenticationType: { "type": "custom" },
    connect: (parameter) -> (httpRequest: HttpRequester) -> do {
        var mockResponse = {
            contentType: "application/json",
            status: 400,
            headers: {},
            cookies: {},
            body: {
                error: {
                    code: "BadRequest",
                    message: "The request is invalid or malformed.",
                    innerError: {}
                }
            }
        }
        ---
        mockResponse
    }
}

var mockConnectionProvider500: HttpConnectionProvider<Object, { "type": "custom" }> = {
    authenticationType: { "type": "custom" },
    connect: (parameter) -> (httpRequest: HttpRequester) -> do {

        var mockResponse = {
            contentType: "application/json",
            status: 500,
            headers: {},
            cookies: {},
            body: {
                error: {
                    code: "InternalServerError",
                    message: "An unexpected error occurred on the server.",
                    innerError: {}
                }
            }
        }

        ---
        mockResponse
    }
}

var mockConnectionProvider600: HttpConnectionProvider<Object, { "type": "custom" }> = {

    authenticationType: { "type": "custom" },

    connect: (parameter) -> (httpRequest: HttpRequester) -> do {

        var mockResponse = {
            contentType: "application/json",
            status: 600,
            headers: {},
            cookies: {},
            body: {
                error: {
                    code: "UnexpectedStatus",
                    message: "Unexpected status code returned by the server.",
                    innerError: {}
                }
            }
        }

        ---
        mockResponse
    }
}

var connection400 = mockConnectionProvider400.connect({})
var connection500 = mockConnectionProvider500.connect({})
var connection600 = mockConnectionProvider600.connect({})