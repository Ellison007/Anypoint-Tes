%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure,  failure, success from com::mulesoft::connectivity::Model
import T_EquivalencyDetail, T_GetEquivalencyDetailByEquivalencyIDRequest from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type O_GetEquivalencyDetailByEquivalencyID_post_Type = {
  "200": HttpResponse<T_EquivalencyDetail>,
  "400": HttpResponse<Any>,
  "401": HttpResponse<Any>,
  "500": HttpResponse<Any>,
  errorResponse: ResultFailure<O_GetEquivalencyDetailByEquivalencyID_post_Type."401", Error<"401", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEquivalencyDetailByEquivalencyID_post_Type."400", Error<"400", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEquivalencyDetailByEquivalencyID_post_Type."500", Error<"500", "SERVER_ERROR">> 
  | ResultFailure<HttpResponse<Any>, Error<"status-unauthorized", String>> 
    | ResultFailure<HttpResponse<Any>, Error<"status-unexpected", String>>,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body: T_GetEquivalencyDetailByEquivalencyIDRequest |}>,
  response: O_GetEquivalencyDetailByEquivalencyID_post_Type."200"
}

@OperationElement()
var O_GetEquivalencyDetailByEquivalencyID_post = {
  name: "GetEquivalencyDetailByEquivalencyID",
  displayName: "Get Equivalency Detail By EquivalencyID",
  executor: (parameter: O_GetEquivalencyDetailByEquivalencyID_post_Type.request, connection: HttpConnection): Result<O_GetEquivalencyDetailByEquivalencyID_post_Type.response, O_GetEquivalencyDetailByEquivalencyID_post_Type.errorResponse> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      var body = serializeBodyParams(parameter.body default {}, {})
      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/GetEquivalencyDetailByEquivalencyID",
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
          var equivalency = responseBody.Equivalency default {}
          var result: T_EquivalencyDetail = {
            EffectiveDateBegin: equivalency.EffectiveDateBegin as String default "",
            EffectiveDateEnd: equivalency.EffectiveDateEnd as String default "",
            CreateUser: equivalency.CreateUser as String default "",
            CreateDateTime: equivalency.CreateDateTime as String default "",
            HideFlag: equivalency.HideFlag as Boolean default false,
            PublicNote: equivalency.PublicNote as String default "",
            PrivateNote: equivalency.PrivateNote as String default "",
            SendInstitution: equivalency.SendInstitution as String default "",
            SendInstitutionCity: equivalency.SendInstitutionCity as String default "",
            SendInstitutionState: equivalency.SendInstitutionState as String default "",
            SendCourseCode1: equivalency.SendCourseCode1 as String default "",
            SendCourseCode2: equivalency.SendCourseCode2 as String default "",
            SendCourseCode3: equivalency.SendCourseCode3 as String default "",
            SendCourseCode4: equivalency.SendCourseCode4 as String default "",
            SendCourseCode5: equivalency.SendCourseCode5 as String default "",
            SendCourseCode6: equivalency.SendCourseCode6 as String default "",
            SendCourseCode7: equivalency.SendCourseCode7 as String default "",
            SendCourseCode8: equivalency.SendCourseCode8 as String default "",
            SendCourseCode9: equivalency.SendCourseCode9 as String default "",
            SendCourseCode10: equivalency.SendCourseCode10 as String default "",
            SendCourseTitle1: equivalency.SendCourseTitle1 as String default "",
            SendCourseTitle2: equivalency.SendCourseTitle2 as String default "",
            SendCourseTitle3: equivalency.SendCourseTitle3 as String default "",
            SendCourseTitle4: equivalency.SendCourseTitle4 as String default "",
            SendCourseTitle5: equivalency.SendCourseTitle5 as String default "",
            SendCourseTitle6: equivalency.SendCourseTitle6 as String default "",
            SendCourseTitle7: equivalency.SendCourseTitle7 as String default "",
            SendCourseTitle8: equivalency.SendCourseTitle8 as String default "",
            SendCourseTitle9: equivalency.SendCourseTitle9 as String default "",
            SendCourseTitle10: equivalency.SendCourseTitle10 as String default "",
            SendCourseUnits1: equivalency.SendCourseUnits1 as String default "",
            SendCourseUnits2: equivalency.SendCourseUnits2 as String default "",
            SendCourseUnits3: equivalency.SendCourseUnits3 as String default "",
            SendCourseUnits4: equivalency.SendCourseUnits4 as String default "",
            SendCourseUnits5: equivalency.SendCourseUnits5 as String default "",
            SendCourseUnits6: equivalency.SendCourseUnits6 as String default "",
            SendCourseUnits7: equivalency.SendCourseUnits7 as String default "",
            SendCourseUnits8: equivalency.SendCourseUnits8 as String default "",
            SendCourseUnits9: equivalency.SendCourseUnits9 as String default "",
            SendCourseUnits10: equivalency.SendCourseUnits10 as String default "",
            ReceiveInstitution: equivalency.ReceiveInstitution as String default "",
            ReceiveInstitutionCity: equivalency.ReceiveInstitutionCity as String default "",
            ReceiveInstitutionState: equivalency.ReceiveInstitutionState as String default "",
            ReceiveCourseCode1: equivalency.ReceiveCourseCode1 as String default "",
            ReceiveCourseCode2: equivalency.ReceiveCourseCode2 as String default "",
            ReceiveCourseCode3: equivalency.ReceiveCourseCode3 as String default "",
            ReceiveCourseCode4: equivalency.ReceiveCourseCode4 as String default "",
            ReceiveCourseCode5: equivalency.ReceiveCourseCode5 as String default "",
            ReceiveCourseCode6: equivalency.ReceiveCourseCode6 as String default "",
            ReceiveCourseCode7: equivalency.ReceiveCourseCode7 as String default "",
            ReceiveCourseCode8: equivalency.ReceiveCourseCode8 as String default "",
            ReceiveCourseCode9: equivalency.ReceiveCourseCode9 as String default "",
            ReceiveCourseCode10: equivalency.ReceiveCourseCode10 as String default "",
            ReceiveCourseTitle1: equivalency.ReceiveCourseTitle1 as String default "",
            ReceiveCourseTitle2: equivalency.ReceiveCourseTitle2 as String default "",
            ReceiveCourseTitle3: equivalency.ReceiveCourseTitle3 as String default "",
            ReceiveCourseTitle4: equivalency.ReceiveCourseTitle4 as String default "",
            ReceiveCourseTitle5: equivalency.ReceiveCourseTitle5 as String default "",
            ReceiveCourseTitle6: equivalency.ReceiveCourseTitle6 as String default "",
            ReceiveCourseTitle7: equivalency.ReceiveCourseTitle7 as String default "",
            ReceiveCourseTitle8: equivalency.ReceiveCourseTitle8 as String default "",
            ReceiveCourseTitle9: equivalency.ReceiveCourseTitle9 as String default "",
            ReceiveCourseTitle10: equivalency.ReceiveCourseTitle10 as String default "",
            ReceiveCourseUnits1: equivalency.ReceiveCourseUnits1 as String default "",
            ReceiveCourseUnits2: equivalency.ReceiveCourseUnits2 as String default "",
            ReceiveCourseUnits3: equivalency.ReceiveCourseUnits3 as String default "",
            ReceiveCourseUnits4: equivalency.ReceiveCourseUnits4 as String default "",
            ReceiveCourseUnits5: equivalency.ReceiveCourseUnits5 as String default "",
            ReceiveCourseUnits6: equivalency.ReceiveCourseUnits6 as String default "",
            ReceiveCourseUnits7: equivalency.ReceiveCourseUnits7 as String default "",
            ReceiveCourseUnits8: equivalency.ReceiveCourseUnits8 as String default "",
            ReceiveCourseUnits9: equivalency.ReceiveCourseUnits9 as String default "",
            ReceiveCourseUnits10: equivalency.ReceiveCourseUnits10 as String default ""
          }
          var mappedResponse: O_GetEquivalencyDetailByEquivalencyID_post_Type."200" = {
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
      else if (response.status == 400 and response is O_GetEquivalencyDetailByEquivalencyID_post_Type."400")
        failure(response, {
          kind: "400",
          categories: ["CLIENT_ERROR"]
        }, "Invalid request parameters.")
      else if (response.status == 401 and response is O_GetEquivalencyDetailByEquivalencyID_post_Type."401")
        failure(response, {
          kind: "401",
          categories: ["CLIENT_ERROR"]
        }, "Unauthorized or invalid TES access key.")
      else if (response.status == 500 and response is O_GetEquivalencyDetailByEquivalencyID_post_Type."500")
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
