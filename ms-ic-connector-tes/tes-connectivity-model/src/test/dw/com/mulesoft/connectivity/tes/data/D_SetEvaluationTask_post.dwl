%dw 2.8
import * from com::mulesoft::connectivity::tes::operations::O_SetEvaluationTask_post

fun V_SetEvaluationTask_post_request()
    : O_SetEvaluationTask_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        CreateUserID: dw::System::envVars().CREATE_USER_ID default "",
        AssignedUserID: dw::System::envVars().ASSIGNED_USER_ID default "",
        Comments: dw::System::envVars().COMMENTS default "",
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID default "",
        SendCourseID1: dw::System::envVars().SEND_COURSE_ID_1 default "",
        SendCourseID2: "",
        SendCourseID3: "",
        SendCourseID4: "",
        SendCourseID5: "",
        SendCourseID6: "",
        SendCourseID7: "",
        SendCourseID8: "",
        SendCourseID9: "",
        SendCourseID10: ""
    }
}