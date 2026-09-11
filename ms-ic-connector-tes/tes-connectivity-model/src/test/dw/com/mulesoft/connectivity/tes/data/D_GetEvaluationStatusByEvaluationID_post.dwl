%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetEvaluationStatusByEvaluationID_post

fun V_GetEvaluationStatusByEvaluationID_post_request()
    : O_GetEvaluationStatusByEvaluationID_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        EvaluationID: dw::System::envVars().EVALUATION_ID default ""
    }
}
