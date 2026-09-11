%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import Error, Result, ResultFailure,  failure, success from com::mulesoft::connectivity::Model
import T_EquivalencyInstitution, T_GetEquivalencyInstitutionListByAccountRequest, T_GetEquivalencyInstitutionListByAccountResponse from com::mulesoft::connectivity::tes::types::Types
import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http
import serializeBodyParams, serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type O_GetEquivalencyInstitutionListByAccount_post_Type = {
  "200": HttpResponse<T_GetEquivalencyInstitutionListByAccountResponse>,
  "400": HttpResponse<Any>,
  "401": HttpResponse<Any>,
  "500": HttpResponse<Any>,
  errorResponse: ResultFailure<O_GetEquivalencyInstitutionListByAccount_post_Type."401", Error<"401", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEquivalencyInstitutionListByAccount_post_Type."400", Error<"400", "CLIENT_ERROR">> 
  | ResultFailure<O_GetEquivalencyInstitutionListByAccount_post_Type."500", Error<"500", "SERVER_ERROR">> 
    | ResultFailure<HttpResponse<Any>, Error<"status-unexpected", String>>,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body: T_GetEquivalencyInstitutionListByAccountRequest |}>,
  response: O_GetEquivalencyInstitutionListByAccount_post_Type."200"
}

@OperationElement()
var O_GetEquivalencyInstitutionListByAccount_post = {
  name: "GetEquivalencyInstitutionListByAccount",
  displayName: "Get Equivalency Institution List By Account",
  executor: (parameter: O_GetEquivalencyInstitutionListByAccount_post_Type.request, connection: HttpConnection): Result<O_GetEquivalencyInstitutionListByAccount_post_Type.response, O_GetEquivalencyInstitutionListByAccount_post_Type.errorResponse> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})

      var requestBody = parameter.body default {}
      var bodyWithDefaults =
          if (requestBody.PageSize?)
            requestBody
          else
            requestBody ++ {
              PageSize: "500"
            }
      var body = serializeBodyParams(bodyWithDefaults, {})

      var response = connection({
        method: "POST",
        path: "/CollegeSource_WSAPI_Basic.asmx/GetEquivalencyInstitutionListByAccount",
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
          var institutionNodes = ((responseBody.ArrayOfInstitutionPV as Object).*InstitutionPV default []) as Array
          var institutions: Array<T_EquivalencyInstitution> = institutionNodes map ((node) -> do {
            var institution = node as Object
            ---
            {
              SendInstitutionID: institution.SendInstitutionID as String,
              SendInstitutionName: institution.SendInstitutionName as String,
              ReceiveInstitutionName: institution.ReceiveInstitutionName as String,
              InstitutionCity: institution.InstitutionCity as String,
              InstitutionStateAbbr: institution.InstitutionStateAbbr as String default "" ,
              PageCount: institution.PageCount as String as Number
            }
          })
          var mappedResponse = ((response - "body") ++ { body: { institutions: institutions } }) as O_GetEquivalencyInstitutionListByAccount_post_Type."200"
           ---
          success(mappedResponse)
        }
      else if (response.status == 400 and response is O_GetEquivalencyInstitutionListByAccount_post_Type."400")
        failure(response, {
          kind: "400",
          categories: ["CLIENT_ERROR"]
        }, "Invalid request parameters.")
      else if (response.status == 401 and response is O_GetEquivalencyInstitutionListByAccount_post_Type."401")
        failure(response, {
          kind: "401",
          categories: ["CLIENT_ERROR"]
        }, "Unauthorized or invalid TES access key.")
      else if (response.status == 500 and response is O_GetEquivalencyInstitutionListByAccount_post_Type."500")
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

