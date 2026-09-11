%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetReceiveCourseByCourseCode_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetReceiveCourseByCourseCode_post

var V_GetReceiveCourseByCourseCode_post_response = O_GetReceiveCourseByCourseCode_post.executor(V_GetReceiveCourseByCourseCode_post_request(), connection)
---
"GetReceiveCourseByCourseCode tests" describedBy [
    "GetReceiveCourseByCourseCode - POST Successful Execution" in do {
        V_GetReceiveCourseByCourseCode_post_response must beSuccessful()
    },
]