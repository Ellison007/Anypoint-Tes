%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetEquivalencyExportList_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyExportList_post

var V_GetEquivalencyExportList_post_response_400 =
    O_GetEquivalencyExportList_post.executor(
        V_GetEquivalencyExportList_post_request(),
        connection400
    )

var V_GetEquivalencyExportList_post_response_500 =
    O_GetEquivalencyExportList_post.executor(
        V_GetEquivalencyExportList_post_request(),
        connection500
    )

var V_GetEquivalencyExportList_post_response_600 =
    O_GetEquivalencyExportList_post.executor(
        V_GetEquivalencyExportList_post_request(),
        connection600
    )

---

"GetEquivalencyExportList Negative Tests" describedBy [
    "GetEquivalencyExportList - POST 400 Error Handling" in do {
        V_GetEquivalencyExportList_post_response_400.error.value.status
            must equalTo(400)
    },

    "GetEquivalencyExportList - POST 500 Error Handling" in do {
        V_GetEquivalencyExportList_post_response_500.error.value.status
            must equalTo(500)
    },

    "GetEquivalencyExportList - POST 600 Error Handling" in do {
        V_GetEquivalencyExportList_post_response_600.error.value.status
            must equalTo(600)
    }
]