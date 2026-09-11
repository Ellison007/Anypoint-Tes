%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetEvaluationTask_post
import * from dw::test::Asserts
import * from dw::test::Tests

import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils

import * from com::mulesoft::connectivity::tes::operations::O_GetEvaluationTask_post

var V_GetEvaluationTask_post_response = O_GetEvaluationTask_post.executor(V_GetEvaluationTask_post_request(), connection)
---
"GetEvaluationTask tests" describedBy [
    "GetEvaluationTask - POST Successful Execution" in do {
        V_GetEvaluationTask_post_response must beSuccessful()
    },
]