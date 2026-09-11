%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetCourseByInstitutionIDCourseCodeMonthYear_post
fun V_GetCourseByInstitutionIDCourseCodeMonthYear_post_request(): O_GetCourseByInstitutionIDCourseCodeMonthYear_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        InstitutionID: dw::System::envVars().INSTITUTION_ID default "",
        CourseCode: dw::System::envVars().COURSE_CODE default "",
        Month: dw::System::envVars().MONTH default "",
        Year: dw::System::envVars().YEAR default ""
    }
}
