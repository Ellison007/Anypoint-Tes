%dw 2.8
import V_SetEvaluationTask_post_request from com::mulesoft::connectivity::tes::data::D_SetEvaluationTask_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_SetEvaluationTask_post


var V_SetEvaluationTask_post_response_400 =
    O_SetEvaluationTask_post.executor(
        V_SetEvaluationTask_post_request(),
        connection400
    )

var V_SetEvaluationTask_post_response_500 =
    O_SetEvaluationTask_post.executor(
        V_SetEvaluationTask_post_request(),
        connection500
    )

var V_SetEvaluationTask_post_response_600 =
    O_SetEvaluationTask_post.executor(
        V_SetEvaluationTask_post_request(),
        connection600
    )
---

"SetEvaluationTask Negative Tests" describedBy [
    "SetEvaluationTask - POST 400 Error Handling" in do {
        V_SetEvaluationTask_post_response_400.error.value.status
            must equalTo(400)
    },

    "SetEvaluationTask - POST 500 Error Handling" in do {
        V_SetEvaluationTask_post_response_500.error.value.status
            must equalTo(500)
    },

    "SetEvaluationTask - POST 600 Error Handling" in do {
        V_SetEvaluationTask_post_response_600.error.value.status
            must equalTo(600)
    }
]