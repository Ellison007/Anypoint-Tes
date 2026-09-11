%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetReceiveCourseByCourseCode_post

fun V_GetReceiveCourseByCourseCode_post_request()
    : O_GetReceiveCourseByCourseCode_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        CourseCode: dw::System::envVars().COURSE_CODE default ""
    }
}
