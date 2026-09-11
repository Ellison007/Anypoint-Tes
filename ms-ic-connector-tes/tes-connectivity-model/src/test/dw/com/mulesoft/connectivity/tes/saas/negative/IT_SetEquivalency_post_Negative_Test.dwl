%dw 2.8
import V_SetEquivalency_post_request from com::mulesoft::connectivity::tes::data::D_SetEquivalency_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_SetEquivalency_post


var V_SetEquivalency_post_response_400 =
    O_SetEquivalency_post.executor(
        V_SetEquivalency_post_request(),
        connection400
    )

var V_SetEquivalency_post_response_500 =
    O_SetEquivalency_post.executor(
        V_SetEquivalency_post_request(),
        connection500
    )

var V_SetEquivalency_post_response_600 =
    O_SetEquivalency_post.executor(
        V_SetEquivalency_post_request(),
        connection600
    )
---

"SetEquivalency Negative Tests" describedBy [
    "SetEquivalency - POST 400 Error Handling" in do {
        V_SetEquivalency_post_response_400.error.value.status
            must equalTo(400)
    },

    "SetEquivalency - POST 500 Error Handling" in do {
        V_SetEquivalency_post_response_500.error.value.status
            must equalTo(500)
    },

    "SetEquivalency - POST 600 Error Handling" in do {
        V_SetEquivalency_post_response_600.error.value.status
            must equalTo(600)
    }
]