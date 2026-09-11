%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetEquivalencyExportList_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyExportList_post

var V_GetEquivalencyExportList_post_response = O_GetEquivalencyExportList_post.executor(V_GetEquivalencyExportList_post_request(), connection)
var msg = log(V_GetEquivalencyExportList_post_request())
var msgLog = log(V_GetEquivalencyExportList_post_response)
---
"GetEquivalencyExportList tests" describedBy [
    "GetEquivalencyExportList - POST Successful Execution" in do {
        V_GetEquivalencyExportList_post_response must beSuccessful()
    },
    "GetEquivalencyExportList - Returns multiple records" in do {
    (sizeOf(V_GetEquivalencyExportList_post_response.value.body default [])) must beGreaterThan(1)
    }
]