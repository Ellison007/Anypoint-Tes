%dw 2.8
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure, UnexpectedError, failure, success, unexpectedFailure from com::mulesoft::connectivity::Model
import T_SetEvaluationTaskRequest, T_EvaluationID from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type O_SetEvaluationTask_post_Type = {
  "200": HttpResponse<Any>,
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
      var requestBody = parameter.body default {}
      var bodyWithDefaults = {
        CreateUserID: requestBody.CreateUserID,
        AssignedUserID: requestBody.AssignedUserID,
        Comments: requestBody.Comments default "",
        SendInstitutionID: requestBody.SendInstitutionID,
        SendCourseID1: requestBody.SendCourseID1,
        SendCourseID2: requestBody.SendCourseID2 default "",
        SendCourseID3: requestBody.SendCourseID3 default "",
        SendCourseID4: requestBody.SendCourseID4 default "",
        SendCourseID5: requestBody.SendCourseID5 default "",
        SendCourseID6: requestBody.SendCourseID6 default "",
        SendCourseID7: requestBody.SendCourseID7 default "",
        SendCourseID8: requestBody.SendCourseID8 default "",
        SendCourseID9: requestBody.SendCourseID9 default "",
        SendCourseID10: requestBody.SendCourseID10 default ""
      }
      var body = serializeBodyParams(bodyWithDefaults, {})
      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/SetEvaluationTask",
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
      if (response.status == 200 and response is O_SetEvaluationTask_post_Type."200")
        success(response)
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