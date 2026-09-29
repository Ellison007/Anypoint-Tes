%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure,  failure, success from com::mulesoft::connectivity::Model
import T_GetEvaluationTaskRequest from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type O_GetEvaluationTask_post_Type = {
  "200": HttpResponse<Any>,
  "400": HttpResponse<Any>,
  "401": HttpResponse<Any>,
  "500": HttpResponse<Any>,
  errorResponse: ResultFailure<O_GetEvaluationTask_post_Type."401", Error<"401", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEvaluationTask_post_Type."400", Error<"400", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEvaluationTask_post_Type."500", Error<"500", "SERVER_ERROR">> 
    | ResultFailure<HttpResponse<Any>, Error<"status-unexpected", String>>,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body: T_GetEvaluationTaskRequest |}>,
  response: O_GetEvaluationTask_post_Type."200"
}

@OperationElement()
var O_GetEvaluationTask_post = {
  name: "GetEvaluationTask",
  displayName: "Get Evaluation Task",
  executor: (parameter: O_GetEvaluationTask_post_Type.request, connection: HttpConnection): Result<O_GetEvaluationTask_post_Type.response, O_GetEvaluationTask_post_Type.errorResponse> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      var requestBody = parameter.body default {}
      var bodyWithDefaults = {
        SendInstitutionID: requestBody.SendInstitutionID,
        SendCourseCode1: requestBody.SendCourseCode1,
        SendCourseCode2: requestBody.SendCourseCode2 default "",
        SendCourseCode3: requestBody.SendCourseCode3 default "",
        SendCourseCode4: requestBody.SendCourseCode4 default "",
        SendCourseCode5: requestBody.SendCourseCode5 default "",
        SendCourseCode6: requestBody.SendCourseCode6 default "",
        SendCourseCode7: requestBody.SendCourseCode7 default "",
        SendCourseCode8: requestBody.SendCourseCode8 default "",
        SendCourseCode9: requestBody.SendCourseCode9 default "",
        SendCourseCode10: requestBody.SendCourseCode10 default ""
      }
      var body = serializeBodyParams(bodyWithDefaults, {})
      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/GetEvaluationTask",
        queryParams: query,
        headers: headers,
        config: {
          contentType: "application/x-www-form-urlencoded",
          requestBodyType: "FORM"
        },
        cookie: cookie,
        body: body
      })
      var statusCode = response.status as String
      ---
      if (response.status == 200 and response is O_GetEvaluationTask_post_Type."200")
          success(response)
      else if (response.status == 400 and response is O_GetEvaluationTask_post_Type."400")
        failure(response, {
          kind: "400",
          categories: ["CLIENT_ERROR"]
        }, "Invalid request parameters.")
      else if (response.status == 401 and response is O_GetEvaluationTask_post_Type."401")
        failure(response, {
          kind: "401",
          categories: ["CLIENT_ERROR"]
        }, "Unauthorized or invalid TES access key.")
      else if (response.status == 500 and response is O_GetEvaluationTask_post_Type."500")
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
