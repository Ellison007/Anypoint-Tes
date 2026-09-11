%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetEvaluationTask_post

fun V_GetEvaluationTask_post_request()
    : O_GetEvaluationTask_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID_EVALUATION_TASK default "",
        SendCourseCode1: dw::System::envVars().SEND_COURSE_CODE_1 default "",
        SendCourseCode2:"",
        SendCourseCode3:"",
        SendCourseCode4:"",
        SendCourseCode5:"",
        SendCourseCode6:"",
        SendCourseCode7:"",
        SendCourseCode8:"",
        SendCourseCode9:"",
        SendCourseCode10:""
    }
}
