%dw 2.7

import * from dw::test::Asserts // MatcherResult, etc.
import * from com::mulesoft::connectivity::Model // Result type, etc.
import * from com::mulesoft::connectivity::transport::Http // HttpResponseType

// Helper type to simplify method signatures. This type maps to a Result of an HTTP call that returns a given type on success, or a given type on error
type HttpOperationCallResult<SuccessType, ErrorValueType, ErrorType <: Error> = Result<HttpResponse<SuccessType>, ResultFailure<HttpResponse<ErrorValueType>, ErrorType>>

fun extractError<ErrorType <: Error>(result: HttpOperationCallResult<Any, Any, ErrorType>): ErrorType | Null =
    if (result.success) null else result.error.value

fun extractErrorDescription(result: HttpOperationCallResult<Any, Any, Error>): String | Null =
    if (result.success) null else result.error.description

fun extractStatusCode(result: HttpOperationCallResult<Any, Any, Error>): Number =
    if (result.success) result.value.status else result.error.value.status

fun buildErrorReport<ErrorValueType, ErrorType <: Error>(result: HttpOperationCallResult<Any, ErrorValueType, ErrorType>): Null | {
    response: ErrorValueType,
    description: String,
    kind: Any,
    categories: Array<String>
} =
    if (result.success) null else {
        response: extractError(result),
        description: extractErrorDescription(result),
        kind: result.error.kind,
        categories: result.error.categories
    }

/**
* Matcher that validates that the the given operation execution result is successful. Reports HTTP status code and response body on mismatch.
*
* === Example
*
* This example shows how to invoke the `beSuccessful` matcher.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* import * from utils::UcAssertionUtils
*
* var response = O_my_operation.executor(my_input, my_connection)
* ---
* response must beSuccessful()
* ----
*/
fun beSuccessful(): Matcher<Result<Any, Any>> = (actual: Result<Any, Any>) ->
    if (actual.success as Boolean)
        {
            matches: true,
            description: "Operation was successful"
        }
    else do {
        var errorReport = buildErrorReport(actual)
        var responseCode = extractStatusCode(actual)
        ---
        {
            matches: false,
            description: errorReport.description default "Operation failed with status code " ++ responseCode as String,
            reasons: [
                "Operation failed with status code " ++ responseCode as String,
                (actual.error.value.^raw default "<could not stringify response>") as String
            ] ++ (errorReport.categories default [])
        }
    }

/**
* Matcher that validates that the the given operation execution result has the specified HTTP status code. Reports expected and actual status codes on mismatch.
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description
* | expectedStatusCode | The expected HTTP status code
* |===
*
* === Example
*
* This example shows how to invoke the `haveStatusCode` matcher.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* import * from utils::UcAssertionUtils
*
* var response = O_my_operation.executor(my_input, my_connection)
* ---
* response must haveStatusCode(200)
* ----
*/
fun haveStatusCode<ErrorValueType, ErrorType <: Error>(expectedStatusCode: Number): Matcher<HttpOperationCallResult<Any, ErrorValueType, ErrorType>> = (actual: HttpOperationCallResult<Any, ErrorValueType, ErrorType>) -> do {
    var responseCode = extractStatusCode(actual)
    ---
    {
        matches: responseCode == expectedStatusCode,
        description: "Expected status code " ++ expectedStatusCode as String ++ " but got " ++ responseCode as String
    }
}
