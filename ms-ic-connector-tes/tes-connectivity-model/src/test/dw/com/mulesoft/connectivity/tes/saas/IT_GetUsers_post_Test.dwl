%dw 2.7
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetUsers_post
import * from com::mulesoft::connectivity::tes::data::D_GetUsers_post_request

var V_GetUsers_post_response = O_GetUsers_post.executor(V_GetUsers_post_request(), connection)

--- 
"GetUsers tests" describedBy [
    "GetUsers - POST Successful Execution" in do {
        V_GetUsers_post_response must beSuccessful()
    },
]