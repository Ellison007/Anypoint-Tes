%dw 2.8
import * from com::mulesoft::connectivity::tes::operations::O_SetEquivalency_post

fun V_SetEquivalency_post_request()
    : O_SetEquivalency_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        CreateUserID: dw::System::envVars().CREATE_USER_ID default "",
        EffectiveDateBegin: dw::System::envVars().EFFECTIVE_DATE_BEGIN default "",
        EffectiveDateEnd: dw::System::envVars().EFFECTIVE_DATE_END default "",
        PublicNote: "",
        PrivateNote: "",
        HideFlag: dw::System::envVars().HIDE_FLAG default "",
        SendCourseID1: dw::System::envVars().SEND_COURSE_ID_1 default "",
        SendCourseID2: "",
        SendCourseID3: "",
        SendCourseID4: "",
        SendCourseID5: "",
        SendCourseID6: "",
        SendCourseID7: "",
        SendCourseID8: "",
        SendCourseID9: "",
        SendCourseID10: "",
        ReceiveCourseID1: dw::System::envVars().RECEIVE_COURSE_ID_1 default "",
        ReceiveCourseID2: "",
        ReceiveCourseID3: "",
        ReceiveCourseID4: "",
        ReceiveCourseID5: "",
        ReceiveCourseID6: "",
        ReceiveCourseID7: "",
        ReceiveCourseID8: "",
        ReceiveCourseID9: "",
        ReceiveCourseID10: ""
    }
}