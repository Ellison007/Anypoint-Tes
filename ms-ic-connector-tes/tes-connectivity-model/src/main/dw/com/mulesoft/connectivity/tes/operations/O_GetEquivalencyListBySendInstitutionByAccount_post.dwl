%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure,  failure, success from com::mulesoft::connectivity::Model
import * from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type O_GetEquivalencyListBySendInstitutionByAccount_post_Type = {
  "200": HttpResponse<T_GetEquivalencyListBySendInstitutionByAccountResponse>,
  "400": HttpResponse<Any>,
  "401": HttpResponse<Any>,
  "500": HttpResponse<Any>,
  errorResponse: ResultFailure<O_GetEquivalencyListBySendInstitutionByAccount_post_Type."401", Error<"401", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEquivalencyListBySendInstitutionByAccount_post_Type."400", Error<"400", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEquivalencyListBySendInstitutionByAccount_post_Type."500", Error<"500", "SERVER_ERROR">> 
    | ResultFailure<HttpResponse<Any>, Error<"status-unexpected", String>>,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body: T_GetEquivalencyListBySendInstitutionByAccountRequest |}>,
  response: O_GetEquivalencyListBySendInstitutionByAccount_post_Type."200"
}

@OperationElement()
var O_GetEquivalencyListBySendInstitutionByAccount_post = {
  name: "GetEquivalencyListBySendInstitutionByAccount",
  displayName: "Get Equivalency List By Send Institution By Account",
  executor: (parameter: O_GetEquivalencyListBySendInstitutionByAccount_post_Type.request, connection: HttpConnection): Result<O_GetEquivalencyListBySendInstitutionByAccount_post_Type.response, O_GetEquivalencyListBySendInstitutionByAccount_post_Type.errorResponse> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      var requestBody = parameter.body default {}
      var requestBodyWithPage =
          if (requestBody.PageSize?)
            requestBody
          else
            requestBody ++ {
              PageSize: "500"
            }
      var bodyWithDefaults =
          if (requestBodyWithPage.CourseCode? and requestBodyWithPage.CourseCode != null)
            requestBodyWithPage
          else
            requestBodyWithPage ++ {
              CourseCode: ""
            }
      var body = serializeBodyParams(bodyWithDefaults, {})

      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/GetEquivalencyListBySendInstitutionByAccount",
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
          var equivalencyNodes = ((responseBody.ArrayOfEquivalencyPV as Object).*EquivalencyPV default []) as Array
          var equivalencies : Array<T_Equivalency> = equivalencyNodes map ((node) -> do {
          var item = node as Object
            ---
            {
              CourseEquivalencyID: (item.CourseEquivalencyID  default "" ) as String,
              PageCount: item.PageCount    as String,
              (EffectiveDateEnd: (item.EffectiveDateEnd default "") as String) if (item.EffectiveDateEnd?),
              (EffectiveDateBegin: (item.EffectiveDateBegin default "") as String) if (item.EffectiveDateBegin?),
              (PublicNote: (item.PublicNote default "") as String) if (item.PublicNote?),
              (PrivateNote: (item.PrivateNote default "") as String) if (item.PrivateNote?),
              (HideFlag: (item.HideFlag default "") as String) if (item.HideFlag?),
              (SendTitle: (item.SendTitle default "") as String) if (item.SendTitle?),
              (SendLo: (item.SendLo default "") as String) if (item.SendLo?),
              (SendHi: (item.SendHi default "") as String) if (item.SendHi?),
              (SendCourseCode1: (item.SendCourseCode1 default "") as String) if (item.SendCourseCode1?),
              (SendCourseCode2: (item.SendCourseCode2 default "") as String) if (item.SendCourseCode2?),
              (SendCourseCode3: (item.SendCourseCode3 default "") as String) if (item.SendCourseCode3?),
              (SendCourseCode4: (item.SendCourseCode4 default "") as String) if (item.SendCourseCode4?),
              (SendCourseCode5: (item.SendCourseCode5 default "") as String) if (item.SendCourseCode5?),
              (SendCourseCode6: (item.SendCourseCode6 default "") as String) if (item.SendCourseCode6?),
              (SendCourseCode7: (item.SendCourseCode7 default "") as String) if (item.SendCourseCode7?),
              (SendCourseCode8: (item.SendCourseCode8 default "") as String) if (item.SendCourseCode8?),
              (SendCourseCode9: (item.SendCourseCode9 default "") as String) if (item.SendCourseCode9?),
              (SendCourseCode10: (item.SendCourseCode10 default "") as String) if (item.SendCourseCode10?),
              (SendCourseTitle1: (item.SendCourseTitle1 default "") as String) if (item.SendCourseTitle1?),
              (SendCourseTitle2: (item.SendCourseTitle2 default "") as String) if (item.SendCourseTitle2?),
              (SendCourseTitle3: (item.SendCourseTitle3 default "") as String) if (item.SendCourseTitle3?),
              (SendCourseTitle4: (item.SendCourseTitle4 default "") as String) if (item.SendCourseTitle4?),
              (SendCourseTitle5: (item.SendCourseTitle5 default "") as String) if (item.SendCourseTitle5?),
              (SendCourseTitle6: (item.SendCourseTitle6 default "") as String) if (item.SendCourseTitle6?),
              (SendCourseTitle7: (item.SendCourseTitle7 default "") as String) if (item.SendCourseTitle7?),
              (SendCourseTitle8: (item.SendCourseTitle8 default "") as String) if (item.SendCourseTitle8?),
              (SendCourseTitle9: (item.SendCourseTitle9 default "") as String) if (item.SendCourseTitle9?),
              (SendCourseTitle10: (item.SendCourseTitle10 default "") as String) if (item.SendCourseTitle10?),
              (ReceiveTitle: (item.ReceiveTitle default "") as String) if (item.ReceiveTitle?),
              (ReceiveLo: (item.ReceiveLo default "") as String) if (item.ReceiveLo?),
              (ReceiveHi: (item.ReceiveHi default "") as String) if (item.ReceiveHi?),
              (ReceiveCourseCode1: (item.ReceiveCourseCode1 default "") as String) if (item.ReceiveCourseCode1?),
              (ReceiveCourseCode2: (item.ReceiveCourseCode2 default "") as String) if (item.ReceiveCourseCode2?),
              (ReceiveCourseCode3: (item.ReceiveCourseCode3 default "") as String) if (item.ReceiveCourseCode3?),
              (ReceiveCourseCode4: (item.ReceiveCourseCode4 default "") as String) if (item.ReceiveCourseCode4?),
              (ReceiveCourseCode5: (item.ReceiveCourseCode5 default "") as String) if (item.ReceiveCourseCode5?),
              (ReceiveCourseCode6: (item.ReceiveCourseCode6 default "") as String) if (item.ReceiveCourseCode6?),
              (ReceiveCourseCode7: (item.ReceiveCourseCode7 default "") as String) if (item.ReceiveCourseCode7?),
              (ReceiveCourseCode8: (item.ReceiveCourseCode8 default "") as String) if (item.ReceiveCourseCode8?),
              (ReceiveCourseCode9: (item.ReceiveCourseCode9 default "") as String) if (item.ReceiveCourseCode9?),
              (ReceiveCourseCode10: (item.ReceiveCourseCode10 default "") as String) if (item.ReceiveCourseCode10?),
              (ReceiveCourseTitle1: (item.ReceiveCourseTitle1 default "") as String) if (item.ReceiveCourseTitle1?),
              (ReceiveCourseTitle2: (item.ReceiveCourseTitle2 default "") as String) if (item.ReceiveCourseTitle2?),
              (ReceiveCourseTitle3: (item.ReceiveCourseTitle3 default "") as String) if (item.ReceiveCourseTitle3?),
              (ReceiveCourseTitle4: (item.ReceiveCourseTitle4 default "") as String) if (item.ReceiveCourseTitle4?),
              (ReceiveCourseTitle5: (item.ReceiveCourseTitle5 default "") as String) if (item.ReceiveCourseTitle5?),
              (ReceiveCourseTitle6: (item.ReceiveCourseTitle6 default "") as String) if (item.ReceiveCourseTitle6?),
              (ReceiveCourseTitle7: (item.ReceiveCourseTitle7 default "") as String) if (item.ReceiveCourseTitle7?),
              (ReceiveCourseTitle8: (item.ReceiveCourseTitle8 default "") as String) if (item.ReceiveCourseTitle8?),
              (ReceiveCourseTitle9: (item.ReceiveCourseTitle9 default "") as String) if (item.ReceiveCourseTitle9?),
              (ReceiveCourseTitle10: (item.ReceiveCourseTitle10 default "") as String) if (item.ReceiveCourseTitle10?)
            }
          })
          var mappedResponse = ((response - "body") ++ { body: { results: equivalencies } }) as O_GetEquivalencyListBySendInstitutionByAccount_post_Type."200"
          ---
          success(mappedResponse)
        }
      else if (response.status == 400 and response is O_GetEquivalencyListBySendInstitutionByAccount_post_Type."400")
        failure(response, {
          kind: "400",
          categories: ["CLIENT_ERROR"]
        }, "Invalid request parameters.")
      else if (response.status == 401 and response is O_GetEquivalencyListBySendInstitutionByAccount_post_Type."401")
        failure(response, {
          kind: "401",
          categories: ["CLIENT_ERROR"]
        }, "Unauthorized or invalid TES access key.")
      else if (response.status == 500 and response is O_GetEquivalencyListBySendInstitutionByAccount_post_Type."500")
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