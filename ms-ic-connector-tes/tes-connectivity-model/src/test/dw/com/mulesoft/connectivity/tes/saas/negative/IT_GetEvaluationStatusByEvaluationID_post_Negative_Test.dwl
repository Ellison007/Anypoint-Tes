%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetEvaluationStatusByEvaluationID_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetEvaluationStatusByEvaluationID_post

var V_GetEvaluationStatusByEvaluationID_post_response_400 =
    O_GetEvaluationStatusByEvaluationID_post.executor(
        V_GetEvaluationStatusByEvaluationID_post_request(),
        connection400
    )

var V_GetEvaluationStatusByEvaluationID_post_response_500 =
    O_GetEvaluationStatusByEvaluationID_post.executor(
        V_GetEvaluationStatusByEvaluationID_post_request(),
        connection500
    )

var V_GetEvaluationStatusByEvaluationID_post_response_600 =
    O_GetEvaluationStatusByEvaluationID_post.executor(
        V_GetEvaluationStatusByEvaluationID_post_request(),
        connection600
    )

---

"GetEvaluationStatusByEvaluationID Negative Tests" describedBy [
    "GetEvaluationStatusByEvaluationID - POST 400 Error Handling" in do {
        V_GetEvaluationStatusByEvaluationID_post_response_400.error.value.status
            must equalTo(400)
    },
    "GetEvaluationStatusByEvaluationID - POST 500 Error Handling" in do {
        V_GetEvaluationStatusByEvaluationID_post_response_500.error.value.status
            must equalTo(500)
    },
    "GetEvaluationStatusByEvaluationID - POST 600 Error Handling" in do {
        V_GetEvaluationStatusByEvaluationID_post_response_600.error.value.status
            must equalTo(600)
    }
]