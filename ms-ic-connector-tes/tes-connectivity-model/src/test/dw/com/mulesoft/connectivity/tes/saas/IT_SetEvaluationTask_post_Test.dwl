%dw 2.8
import * from com::mulesoft::connectivity::tes::data::D_SetEvaluationTask_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_SetEvaluationTask_post

var V_SetEvaluationTask_post_response = O_SetEvaluationTask_post.executor(V_SetEvaluationTask_post_request(), connection)
---
"SetEvaluationTask tests" describedBy [
    "SetEvaluationTask - POST Successful Execution" in do {
        V_SetEvaluationTask_post_response must beSuccessful()
    },
]