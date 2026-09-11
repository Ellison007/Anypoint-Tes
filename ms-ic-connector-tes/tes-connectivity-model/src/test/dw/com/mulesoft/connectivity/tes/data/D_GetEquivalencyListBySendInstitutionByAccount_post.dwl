%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyListBySendInstitutionByAccount_post

fun V_GetEquivalencyListBySendInstitutionByAccount_post_request()
    : O_GetEquivalencyListBySendInstitutionByAccount_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID default "",
        Page: dw::System::envVars().PAGE default "",
        PageSize: dw::System::envVars().PAGE_SIZE default "",
        ActiveStatus: dw::System::envVars().ACTIVE_STATUS default "",
        CourseCode: dw::System::envVars().COURSE_CODE default "",
        SortType: dw::System::envVars().SORT_TYPE default "",
        CourseCodeType: dw::System::envVars().COURSE_CODE_TYPE default "",
        HideStatus: dw::System::envVars().HIDE_STATUS default ""
    }
}
