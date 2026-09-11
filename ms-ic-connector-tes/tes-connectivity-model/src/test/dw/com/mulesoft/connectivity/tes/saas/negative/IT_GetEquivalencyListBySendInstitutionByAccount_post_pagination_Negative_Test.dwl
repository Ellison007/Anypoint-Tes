%dw 2.7

import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::pagination::O_GetEquivalencyListBySendInstitutionByAccount_post_pagination

var request1 =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID default "",
        Page: "1",
        PageSize: dw::System::envVars().PAGE_SIZE default "",
        ActiveStatus: dw::System::envVars().ACTIVE_STATUS default "",
        CourseCode: dw::System::envVars().COURSE_CODE default "",
        SortType: dw::System::envVars().SORT_TYPE default "",
        CourseCodeType: dw::System::envVars().COURSE_CODE_TYPE default "",
        HideStatus: dw::System::envVars().HIDE_STATUS default ""
    }
}


 var response_400 =
    O_GetEquivalencyListBySendInstitutionByAccount_post_paginated.executor(
        request1,   connection400
    )

var response_500 =
    O_GetEquivalencyListBySendInstitutionByAccount_post_paginated.executor(
        request1,  connection500
    )

var response_600 =
    O_GetEquivalencyListBySendInstitutionByAccount_post_paginated.executor(
        request1,  connection600
    )

---
"GetEquivalencyListBySendInstitutionByAccount Pagination Tests" describedBy [
    "Paginated - GetEquivalencyListBySendInstitutionByAccount - POST 400 Error Handling" in do {
        response_400.error.value.status
            must equalTo(400)
    },
    "Paginated - GetEquivalencyListBySendInstitutionByAccount - POST 500 Error Handling" in do {
        response_500.error.value.status
            must equalTo(500)
    },
    "Paginated - GetEquivalencyListBySendInstitutionByAccount - POST 600 Error Handling" in do {
        response_600.error.value.status
            must equalTo(600)
    },
]