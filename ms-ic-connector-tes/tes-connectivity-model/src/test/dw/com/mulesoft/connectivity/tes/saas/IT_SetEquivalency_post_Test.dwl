%dw 2.8
import * from com::mulesoft::connectivity::tes::data::D_SetEquivalency_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_SetEquivalency_post

var V_SetEquivalency_post_response = O_SetEquivalency_post.executor(V_SetEquivalency_post_request(), connection)
---
"SetEquivalency tests" describedBy [
    "SetEquivalency - POST Successful Execution" in do {
        V_SetEquivalency_post_response must beSuccessful()
    },
]