%dw 2.7

import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetUsers_post
import * from com::mulesoft::connectivity::tes::data::D_GetUsers_post_request

var V_GetUsers_post_response_400 =
    O_GetUsers_post.executor(
        V_GetUsers_post_request(),
        connection400
    )

var V_GetUsers_post_response_500 =
    O_GetUsers_post.executor(
        V_GetUsers_post_request(),
        connection500
    )

var V_GetUsers_post_response_600 =
    O_GetUsers_post.executor(
        V_GetUsers_post_request(),
        connection600
    )

---

"GetUsers Negative Tests" describedBy [
    "GetUsers - POST 400 Error Handling" in do {
        V_GetUsers_post_response_400.error.value.status
            must equalTo(400)
    },
    "GetUsers - POST 500 Error Handling" in do {
        V_GetUsers_post_response_500.error.value.status
            must equalTo(500)
    },
    "GetUsers - POST 600 Error Handling" in do {
        V_GetUsers_post_response_600.error.value.status
            must equalTo(600)
    }
]