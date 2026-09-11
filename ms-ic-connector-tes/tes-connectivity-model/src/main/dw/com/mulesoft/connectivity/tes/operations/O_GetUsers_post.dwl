%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure,   failure, success  from com::mulesoft::connectivity::Model
import T_GetUsersRequest, T_User from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization
 
type O_GetUsers_post_Type = {
  "200": HttpResponse<Array<T_User>>,
  "400": HttpResponse<Any>,
  "401": HttpResponse<Any>,
  "500": HttpResponse<Any>,
  errorResponse: ResultFailure<O_GetUsers_post_Type."401", Error<"401", "CLIENT_ERROR">> 
  | ResultFailure<O_GetUsers_post_Type."400", Error<"400", "CLIENT_ERROR">> 
  | ResultFailure<O_GetUsers_post_Type."500", Error<"500", "SERVER_ERROR">> 
    | ResultFailure<HttpResponse<Any>, Error<"status-unexpected", String>>,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body: T_GetUsersRequest |}>,
  response: O_GetUsers_post_Type."200"
}
 
@OperationElement()
var O_GetUsers_post = {
  name: "GetUsers",
  displayName: "Get Users",
  executor: (parameter: O_GetUsers_post_Type.request, connection: HttpConnection): Result<O_GetUsers_post_Type.response, O_GetUsers_post_Type.errorResponse> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      var body = serializeBodyParams(parameter.body default {}, {})
      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/GetUsers",
        queryParams: query,
        headers: headers,
        config: {
          contentType: "application/x-www-form-urlencoded"
        },
        cookie: cookie,
        body: body
      })
      var statusCode = response.status as String
      ---
      if (response.status == 200)
        do {
          var responseBody = response.body as Object
          var userNodes = ((responseBody.ArrayOfUser as Object).*User default []) as Array
          var users: Array<T_User> = userNodes map ((node) -> do {
            var user = node as Object
            ---
            {
              ContactID: user.ContactID as String,
              NameFirst: user.NameFirst as String,
              NameLast: user.NameLast as String,
              JobTitle: user.JobTitle as String,
              Administrator: user.Administrator as String as Boolean,
              ServiceEvaluation: user.ServiceEvaluation as String as Boolean,
              ManageEvaluation: user.ManageEvaluation as String as Boolean,
              CreateEquivalency: user.CreateEquivalency as String as Boolean
            }
          })
          var mappedResponse = ((response - "body") ++ { body: users }) as O_GetUsers_post_Type."200"
          ---
          success(mappedResponse)
        }
      else if (response.status == 400 and response is O_GetUsers_post_Type."400")
        failure(response, {
          kind: "400",
          categories: ["CLIENT_ERROR"]
        }, "Invalid request parameters.")
      else if (response.status == 401 and response is O_GetUsers_post_Type."401")
        failure(response, {
          kind: "401",
          categories: ["CLIENT_ERROR"]
        }, "Unauthorized or invalid TES access key.")
      else if (response.status == 500 and response is O_GetUsers_post_Type."500")
        failure(response, {
          kind: "500",
          categories: ["SERVER_ERROR"]
        }, "TES service error.")
      else
        failure(response, {
          kind: "status-unexpected",
          categories: []
        }, "Unexpected status code")
    }
}
 
 
 
