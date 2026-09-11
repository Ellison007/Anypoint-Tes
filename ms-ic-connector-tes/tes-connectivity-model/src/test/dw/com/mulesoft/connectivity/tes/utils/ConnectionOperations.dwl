%dw 2.7
import * from com::mulesoft::connectivity::transport::Http
import * from com::mulesoft::connectivity::Metadata
var apiKeyConnectionConfig = {
    apiKey: dw::System::envVars().API_KEY default "",
    baseUri: dw::System::envVars().BASE_URI default ""
}


@ConnectionElement()
var ApiKeyConnection =
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


var connection = ApiKeyConnection.connect(apiKeyConnectionConfig)