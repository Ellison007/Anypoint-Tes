%dw 2.7
 
import * from dw::test::Asserts
import * from dw::test::Tests

import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils

import * from com::mulesoft::connectivity::tes::pagination::O_GetEquivalencyListBySendInstitutionByAccount_post_pagination

// Test: First page with default page size (500)
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
        CourseCode: "",
        SortType: dw::System::envVars().SORT_TYPE default "",
        CourseCodeType: dw::System::envVars().COURSE_CODE_TYPE default "",
        HideStatus: dw::System::envVars().HIDE_STATUS default ""
    }
}



var response1 =
    O_GetEquivalencyListBySendInstitutionByAccount_post_paginated.executor(
        request1, connection
    )

var req2 = response1.value.nextPage.args

var response2 =
    O_GetEquivalencyListBySendInstitutionByAccount_post_paginated.executor(
        req2,  connection
    )
    
---
"GetEquivalencyListBySendInstitutionByAccount Pagination Tests" describedBy [

    "Paginated operation - First page with default page size" in do {
        response1 must beSuccessful()

    },
    "Paginated operation - Second page" in do {
        response2 must beSuccessful()

    },
]
