%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure,  failure, success  from com::mulesoft::connectivity::Model
import T_EquivalencyExport, T_GetEquivalencyExportListRequest from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type O_GetEquivalencyExportList_post_Type = {
  "200": HttpResponse<Array<T_EquivalencyExport>>,
  "400": HttpResponse<Any>,
  "401": HttpResponse<Any>,
  "500": HttpResponse<Any>,
  errorResponse: ResultFailure<O_GetEquivalencyExportList_post_Type."401", Error<"401", "CLIENT_ERROR">> | ResultFailure<O_GetEquivalencyExportList_post_Type."400", Error<"400", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEquivalencyExportList_post_Type."500", Error<"500", "SERVER_ERROR">> 
  | ResultFailure<HttpResponse<Any>, Error<"status-unauthorized", String>> 
    | ResultFailure<HttpResponse<Any>, Error<"status-unexpected", String>>,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body: T_GetEquivalencyExportListRequest |}>,
  response: O_GetEquivalencyExportList_post_Type."200"
}

@OperationElement()
var O_GetEquivalencyExportList_post = {
  name: "GetEquivalencyExportList",
  displayName: "Get Equivalency Export List",
  executor: (parameter: O_GetEquivalencyExportList_post_Type.request, connection: HttpConnection): Result<O_GetEquivalencyExportList_post_Type.response, O_GetEquivalencyExportList_post_Type.errorResponse> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      var body = serializeBodyParams(parameter.body default {}, {})
      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/GetEquivalencyExportList",
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
          var rawList = responseBody.ArrayOfEquivalencyExport.*EquivalencyExport default []
          var exportList = if (rawList is Array) rawList else [rawList]
          var result: Array<T_EquivalencyExport> = exportList map ((item) -> {
            SendInstitution: item.SendInstitution as String default "",
            SendInstitutionCity: item.SendInstitutionCity as String default "",
            SendInstitutionState: item.SendInstitutionState as String default "",
            SendInstitutionCountry: item.SendInstitutionCountry as String default "",
            SendInstitutionOPEID: item.SendInstitutionOPEID as String default "",
            SendInstitutionIPEDSID: item.SendInstitutionIPEDSID as String default "",
            SendInstitutionCEEBCode: item.SendInstitutionCEEBCode as String default "",
            SendEditionLowYear: item.SendEditionLowYear as Number {format: "#"} default 0,
            SendEditionHighYear: item.SendEditionHighYear as Number {format: "#"} default 0,
            SendCourse1CourseCode: item.SendCourse1CourseCode as String default "",
            SendCourse2CourseCode: item.SendCourse2CourseCode as String default "",
            SendCourse3CourseCode: item.SendCourse3CourseCode as String default "",
            SendCourse4CourseCode: item.SendCourse4CourseCode as String default "",
            SendCourse5CourseCode: item.SendCourse5CourseCode as String default "",
            SendCourse6CourseCode: item.SendCourse6CourseCode as String default "",
            SendCourse7CourseCode: item.SendCourse7CourseCode as String default "",
            SendCourse8CourseCode: item.SendCourse8CourseCode as String default "",
            SendCourse9CourseCode: item.SendCourse9CourseCode as String default "",
            SendCourse10CourseCode: item.SendCourse10CourseCode as String default "",
            SendCourse1CourseTitle: item.SendCourse1CourseTitle as String default "",
            SendCourse2CourseTitle: item.SendCourse2CourseTitle as String default "",
            SendCourse3CourseTitle: item.SendCourse3CourseTitle as String default "",
            SendCourse4CourseTitle: item.SendCourse4CourseTitle as String default "",
            SendCourse5CourseTitle: item.SendCourse5CourseTitle as String default "",
            SendCourse6CourseTitle: item.SendCourse6CourseTitle as String default "",
            SendCourse7CourseTitle: item.SendCourse7CourseTitle as String default "",
            SendCourse8CourseTitle: item.SendCourse8CourseTitle as String default "",
            SendCourse9CourseTitle: item.SendCourse9CourseTitle as String default "",
            SendCourse10CourseTitle: item.SendCourse10CourseTitle as String default "",
            SendCourse1Units: item.SendCourse1Units as String default "",
            SendCourse2Units: item.SendCourse2Units as String default "",
            SendCourse3Units: item.SendCourse3Units as String default "",
            SendCourse4Units: item.SendCourse4Units as String default "",
            SendCourse5Units: item.SendCourse5Units as String default "",
            SendCourse6Units: item.SendCourse6Units as String default "",
            SendCourse7Units: item.SendCourse7Units as String default "",
            SendCourse8Units: item.SendCourse8Units as String default "",
            SendCourse9Units: item.SendCourse9Units as String default "",
            SendCourse10Units: item.SendCourse10Units as String default "",
            ReceiveInstitution: item.ReceiveInstitution as String default "",
            ReceiveEditionLowYear: item.ReceiveEditionLowYear as Number {format: "#"} default 0,
            ReceiveEditionHighYear: item.ReceiveEditionHighYear as Number {format: "#"} default 0,
            ReceiveCourse1CourseCode: item.ReceiveCourse1CourseCode as String default "",
            ReceiveCourse2CourseCode: item.ReceiveCourse2CourseCode as String default "",
            ReceiveCourse3CourseCode: item.ReceiveCourse3CourseCode as String default "",
            ReceiveCourse4CourseCode: item.ReceiveCourse4CourseCode as String default "",
            ReceiveCourse5CourseCode: item.ReceiveCourse5CourseCode as String default "",
            ReceiveCourse6CourseCode: item.ReceiveCourse6CourseCode as String default "",
            ReceiveCourse7CourseCode: item.ReceiveCourse7CourseCode as String default "",
            ReceiveCourse8CourseCode: item.ReceiveCourse8CourseCode as String default "",
            ReceiveCourse9CourseCode: item.ReceiveCourse9CourseCode as String default "",
            ReceiveCourse10CourseCode: item.ReceiveCourse10CourseCode as String default "",
            ReceiveCourse1CourseTitle: item.ReceiveCourse1CourseTitle as String default "",
            ReceiveCourse2CourseTitle: item.ReceiveCourse2CourseTitle as String default "",
            ReceiveCourse3CourseTitle: item.ReceiveCourse3CourseTitle as String default "",
            ReceiveCourse4CourseTitle: item.ReceiveCourse4CourseTitle as String default "",
            ReceiveCourse5CourseTitle: item.ReceiveCourse5CourseTitle as String default "",
            ReceiveCourse6CourseTitle: item.ReceiveCourse6CourseTitle as String default "",
            ReceiveCourse7CourseTitle: item.ReceiveCourse7CourseTitle as String default "",
            ReceiveCourse8CourseTitle: item.ReceiveCourse8CourseTitle as String default "",
            ReceiveCourse9CourseTitle: item.ReceiveCourse9CourseTitle as String default "",
            ReceiveCourse10CourseTitle: item.ReceiveCourse10CourseTitle as String default "",
            ReceiveCourse1Units: item.ReceiveCourse1Units as String default "",
            ReceiveCourse2Units: item.ReceiveCourse2Units as String default "",
            ReceiveCourse3Units: item.ReceiveCourse3Units as String default "",
            ReceiveCourse4Units: item.ReceiveCourse4Units as String default "",
            ReceiveCourse5Units: item.ReceiveCourse5Units as String default "",
            ReceiveCourse6Units: item.ReceiveCourse6Units as String default "",
            ReceiveCourse7Units: item.ReceiveCourse7Units as String default "",
            ReceiveCourse8Units: item.ReceiveCourse8Units as String default "",
            ReceiveCourse9Units: item.ReceiveCourse9Units as String default "",
            ReceiveCourse10Units: item.ReceiveCourse10Units as String default "",
            ActiveDateBegin: item.ActiveDateBegin as String default "",
            ActiveDateEnd: item.ActiveDateEnd as String default "",
            ContactName: item.ContactName as String default "",
            EQCreateDateTime: item.EQCreateDateTime as String default "",
            EQLEditDateTime: item.EQLEditDateTime as String default "",
            HideFlag: item.HideFlag as Boolean default false,
            CommentsPublic: item.CommentsPublic as String default "",
            CommentsPrivate: item.CommentsPrivate as String default ""
          })
          var mappedResponse: O_GetEquivalencyExportList_post_Type."200" = {
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
      else if (response.status == 400 and response is O_GetEquivalencyExportList_post_Type."400")
        failure(response, {
          kind: "400",
          categories: ["CLIENT_ERROR"]
        }, "Invalid request parameters.")
      else if (response.status == 401 and response is O_GetEquivalencyExportList_post_Type."401")
        failure(response, {
          kind: "401",
          categories: ["CLIENT_ERROR"]
        }, "Unauthorized or invalid TES access key.")
      else if (response.status == 500 and response is O_GetEquivalencyExportList_post_Type."500")
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
