%dw 2.7
 
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::pagination::O_GetEquivalencyInstitutionListByAccount_post_pagination

var request1 = {
    query: {},
    headers: {},
    cookie: {},
    body: {
        Page: dw::System::envVars().PAGE default "1",
        PageSize: dw::System::envVars().PAGE_SIZE default "100"
    }
}

var response_400 =
    O_GetEquivalencyInstitutionListByAccount_post_paginated.executor(
        request1,  connection400
    )
 
var response_500 =
    O_GetEquivalencyInstitutionListByAccount_post_paginated.executor(
        request1,  connection500
    )

var response_600 =
    O_GetEquivalencyInstitutionListByAccount_post_paginated.executor(
        request1,  connection600
    )
 
---
"GetEquivalencyInstitutionListByAccount Pagination Tests" describedBy [
    "Paginated - GetEquivalencyInstitutionListByAccount - POST 400 Error Handling" in do {
        response_400.error.value.status
            must equalTo(400)
    },
    "Paginated - GetEquivalencyInstitutionListByAccount - POST 500 Error Handling" in do {
        response_500.error.value.status
            must equalTo(500)
    },
    "Paginated - GetEquivalencyInstitutionListByAccount - POST 600 Error Handling" in do {
        response_600.error.value.status
            must equalTo(600)
    },
]