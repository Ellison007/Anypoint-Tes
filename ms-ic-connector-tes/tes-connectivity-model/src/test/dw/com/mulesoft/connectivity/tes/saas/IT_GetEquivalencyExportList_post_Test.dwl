%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetEquivalencyExportList_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyExportList_post

var V_GetEquivalencyExportList_post_response = O_GetEquivalencyExportList_post.executor(V_GetEquivalencyExportList_post_request(), connection)
---
"GetEquivalencyExportList tests" describedBy [
    "GetEquivalencyExportList - POST Successful Execution" in do {
        V_GetEquivalencyExportList_post_response must beSuccessful()
    }
]