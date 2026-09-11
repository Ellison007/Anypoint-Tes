%dw 2.7
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalency_post
fun V_GetEquivalency_post_request()
    : O_GetEquivalency_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID_EVALUATION_TASK default "",
        SendCourseCode1: dw::System::envVars().SEND_COURSE_CODE_1 default "",
        ReceiveCourseCode1: dw::System::envVars().RECEIVE_COURSE_CODE_1 default "",
        SendCourseCode2: "",
        SendCourseCode3: "",
        SendCourseCode4: "",
        SendCourseCode5: "",
        SendCourseCode6: "",
        SendCourseCode7: "",
        SendCourseCode8: "",
        SendCourseCode9: "",
        SendCourseCode10: "",
        ReceiveCourseCode2: "",
        ReceiveCourseCode3: "",
        ReceiveCourseCode4: "",
        ReceiveCourseCode5: "",
        ReceiveCourseCode6: "",
        ReceiveCourseCode7: "",
        ReceiveCourseCode8: "",
        ReceiveCourseCode9: "",
        ReceiveCourseCode10: ""    
    }
}