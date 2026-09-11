%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetEquivalencyDetailByEquivalencyID_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyDetailByEquivalencyID_post

var V_GetEquivalencyDetailByEquivalencyID_post_response = O_GetEquivalencyDetailByEquivalencyID_post.executor(V_GetEquivalencyDetailByEquivalencyID_post_request(), connection)
---
"GetEquivalencyDetailByEquivalencyID tests" describedBy [
    "GetEquivalencyDetailByEquivalencyID - POST Successful Execution" in do {
        V_GetEquivalencyDetailByEquivalencyID_post_response must beSuccessful()
    },
]