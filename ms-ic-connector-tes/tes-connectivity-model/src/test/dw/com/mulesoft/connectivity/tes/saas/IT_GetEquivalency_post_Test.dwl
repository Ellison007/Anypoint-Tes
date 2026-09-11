%dw 2.7
import V_GetEquivalency_post_request from com::mulesoft::connectivity::tes::data::D_GetEquivalency_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalency_post

var V_GetEquivalency_post_response = O_GetEquivalency_post.executor(V_GetEquivalency_post_request(), connection)

---
"GetEquivalency tests" describedBy [
    "GetEquivalency - POST Successful Execution" in do {
        V_GetEquivalency_post_response must beSuccessful()
    },
]