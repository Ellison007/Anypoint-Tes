%dw 2.8
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure, UnexpectedError, failure, success, unexpectedFailure from com::mulesoft::connectivity::Model
import T_SetEvaluationTaskRequest, T_EvaluationID from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type O_SetEvaluationTask_post_Type = {
  "200": HttpResponse<T_EvaluationID>,
  "400": HttpResponse<Any>,
  "401": HttpResponse<Any>,
  "500": HttpResponse<Any>,
  errorResponse: ResultFailure<O_SetEvaluationTask_post_Type."401", Error<"401", "CLIENT_ERROR">> | ResultFailure<O_SetEvaluationTask_post_Type."400", Error<"400", "CLIENT_ERROR">> | ResultFailure<O_SetEvaluationTask_post_Type."500", Error<"500", "SERVER_ERROR">> | ResultFailure<HttpResponse<Any>, UnexpectedError>,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body: T_SetEvaluationTaskRequest |}>,
  response: O_SetEvaluationTask_post_Type."200"
}

@OperationElement()
var O_SetEvaluationTask_post = {
  name: "SetEvaluationTask",
  displayName: "Set Evaluation Task",
  executor: (parameter: O_SetEvaluationTask_post_Type.request, connection: HttpConnection): Result<O_SetEvaluationTask_post_Type.response, O_SetEvaluationTask_post_Type.errorResponse> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      var body = serializeBodyParams(parameter.body default {}, {})
      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/SetEvaluationTask",
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
          var evaluationIdValue = (responseBody.*"string")[0] as String default ""
          var result: T_EvaluationID = {
            EvaluationID: evaluationIdValue
          }
          var mappedResponse: O_SetEvaluationTask_post_Type."200" = {
            contentType: (response.contentType default (response.headers."Content-Type" default response.headers."content-type" default "")),
            status: response.status,
            statusText: (response.statusText default ""),
            headers: (response.headers default {}),
            body: result,
            cookies: (response.cookies default {})
          }
          ---
          success(mappedResponse)
        }
      else if (response.status == 400 and response is O_SetEvaluationTask_post_Type."400")
        failure(response, {
          kind: "400",
          categories: ["CLIENT_ERROR"]
        }, "Invalid request parameters.")
      else if (response.status == 401 and response is O_SetEvaluationTask_post_Type."401")
        failure(response, {
          kind: "401",
          categories: ["CLIENT_ERROR"]
        }, "Unauthorized or invalid TES access key.")
      else if (response.status == 500 and response is O_SetEvaluationTask_post_Type."500")
        failure(response, {
          kind: "500",
          categories: ["SERVER_ERROR"]
        }, "TES service error.")
      else
        unexpectedFailure(response, {
          kind: statusCode,
          categories: []
        })
    }
}