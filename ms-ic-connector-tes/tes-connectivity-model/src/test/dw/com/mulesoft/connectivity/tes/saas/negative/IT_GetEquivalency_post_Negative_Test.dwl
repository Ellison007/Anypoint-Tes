%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetEquivalency_post

import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider

import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalency_post


var V_GetEquivalency_post_response_400 =
    O_GetEquivalency_post.executor(
        V_GetEquivalency_post_request(),
        connection400
    )


var V_GetEquivalency_post_response_500 =
    O_GetEquivalency_post.executor(
        V_GetEquivalency_post_request(),
        connection500
    )


var V_GetEquivalency_post_response_600 =
    O_GetEquivalency_post.executor(
        V_GetEquivalency_post_request(),
        connection600
    )


---

"GetEquivalency Negative Tests" describedBy [

    "GetEquivalency - POST 400 Error Handling" in do {

        V_GetEquivalency_post_response_400.error.value.status
            must equalTo(400)

    },

    "GetEquivalency - POST 500 Error Handling" in do {

        V_GetEquivalency_post_response_500.error.value.status
            must equalTo(500)

    },

    "GetEquivalency - POST 600 Error Handling" in do {

        V_GetEquivalency_post_response_600.error.value.status
            must equalTo(600)

    }

]
