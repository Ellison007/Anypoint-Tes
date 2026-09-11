%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetEvaluationTask_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetEvaluationTask_post

var V_GetEvaluationTask_post_response_400 =
    O_GetEvaluationTask_post.executor(
        V_GetEvaluationTask_post_request(),
        connection400
    )

var V_GetEvaluationTask_post_response_500 =
    O_GetEvaluationTask_post.executor(
        V_GetEvaluationTask_post_request(),
        connection500
    )

var V_GetEvaluationTask_post_response_600 =
    O_GetEvaluationTask_post.executor(
        V_GetEvaluationTask_post_request(),
        connection600
    )

---
"GetEvaluationTask Negative Tests" describedBy [
    "GetEvaluationTask - POST 400 Error Handling" in do {
        V_GetEvaluationTask_post_response_400.error.value.status
            must equalTo(400)
    },
    "GetEvaluationTask - POST 500 Error Handling" in do {
        V_GetEvaluationTask_post_response_500.error.value.status
            must equalTo(500)
    },
    "GetEvaluationTask - POST 600 Error Handling" in do {
        V_GetEvaluationTask_post_response_600.error.value.status
            must equalTo(600)
    }
]