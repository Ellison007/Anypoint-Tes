%dw 2.7
import * from com::mulesoft::connectivity::tes::pagination::O_GetEquivalencyListBySendInstitutionByAccount_post_pagination

fun V_GetEquivalencyListBySendInstitutionByAccount_paginated_page1_request()
    : O_GetEquivalencyListBySendInstitutionByAccount_post_paginated_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID default "",
        Page: "",
        PageSize: dw::System::envVars().PAGE_SIZE default "",
        ActiveStatus: dw::System::envVars().ACTIVE_STATUS default "",
        CourseCode: dw::System::envVars().COURSE_CODE default "",
        SortType: dw::System::envVars().SORT_TYPE default "",
        CourseCodeType: dw::System::envVars().COURSE_CODE_TYPE default "",
        HideStatus: dw::System::envVars().HIDE_STATUS default ""
    }
}

fun V_GetEquivalencyListBySendInstitutionByAccount_paginated_custom_pagesize_request()
    : O_GetEquivalencyListBySendInstitutionByAccount_post_paginated_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID default "",
        Page: "",
        PageSize: "",
        ActiveStatus: dw::System::envVars().ACTIVE_STATUS default "",
        CourseCode: dw::System::envVars().COURSE_CODE default "",
        SortType: dw::System::envVars().SORT_TYPE default "",
        CourseCodeType: dw::System::envVars().COURSE_CODE_TYPE default "",
        HideStatus: dw::System::envVars().HIDE_STATUS default ""
    }
}


