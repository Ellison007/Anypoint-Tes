%dw 2.7

import V_GetReceiveCourseByCourseCode_post_request
    from com::mulesoft::connectivity::tes::data::D_GetReceiveCourseByCourseCode_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetReceiveCourseByCourseCode_post

var V_GetReceiveCourseByCourseCode_post_response_400 =
    O_GetReceiveCourseByCourseCode_post.executor(
        V_GetReceiveCourseByCourseCode_post_request(),
        connection400
    )

var V_GetReceiveCourseByCourseCode_post_response_500 =
    O_GetReceiveCourseByCourseCode_post.executor(
        V_GetReceiveCourseByCourseCode_post_request(),
        connection500
    )

var V_GetReceiveCourseByCourseCode_post_response_600 =
    O_GetReceiveCourseByCourseCode_post.executor(
        V_GetReceiveCourseByCourseCode_post_request(),
        connection600
    )

---

"GetReceiveCourseByCourseCode Negative Tests" describedBy [
    "GetReceiveCourseByCourseCode - POST 400 Error Handling" in do {
        V_GetReceiveCourseByCourseCode_post_response_400.error.value.status
            must equalTo(400)
    },
    "GetReceiveCourseByCourseCode - POST 500 Error Handling" in do {
        V_GetReceiveCourseByCourseCode_post_response_500.error.value.status
            must equalTo(500)
    },
    "GetReceiveCourseByCourseCode - POST 600 Error Handling" in do {
        V_GetReceiveCourseByCourseCode_post_response_600.error.value.status
            must equalTo(600)
    }
]