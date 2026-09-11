%dw 2.7
import O_GetUsers_post
    from com::mulesoft::connectivity::tes::operations::O_GetUsers_post
import ConnectionElement, TestConnectionElement
    from com::mulesoft::connectivity::Metadata
import defineTestConnection
    from com::mulesoft::connectivity::Model
import mapInputOperation
    from com::mulesoft::connectivity::decorator::Operation
import ApiKeyAuthSchema, defineApiKeyHttpConnectionProvider
    from com::mulesoft::connectivity::transport::Http
 
@TestConnectionElement()
var test = {
    validate: defineTestConnection(
        mapInputOperation(
            O_GetUsers_post,
            (param: {}) -> {
                query: {},
                headers: {},
                cookie: {},
                body: {
                }
            }
        ),
        (response) -> {
            isValid: response.success == true and response.value.status == 200,
            message:
                if (response.success == true)
                    "Connection test succeeded"
                else if (response.error.value.status?)
                    "Connection test failed - Http status code: "
                        ++ (response.error.value.status as String)
                else
                    "Connection test failed",
            (
                error:
                    if (isEmpty(response.error.value.body.^raw))
                        write(response.error.value.body, "application/dw") as String
                    else
                        response.error.value.body.^raw as String
            )
            if (response.success == false and response.error.value.body?)
        }
    )
}
 
@ConnectionElement()
var TESAccessKey =
    defineApiKeyHttpConnectionProvider<
        ApiKeyAuthSchema & {
            baseUri: String
        }
>(
        (schema) -> {
            apiKey: schema.apiKey
        },
        (schema) -> {
            baseUri: schema.baseUri
        },
        {
            in: "header",
            name: "AccessKeyID"
        },
        {
            extensions: (schema) -> [
                {
                    indance : false,
                    in: "body",
                    name: "AccessKeyID",
                    value: schema.apiKey
                }
            ]
        }
    )
