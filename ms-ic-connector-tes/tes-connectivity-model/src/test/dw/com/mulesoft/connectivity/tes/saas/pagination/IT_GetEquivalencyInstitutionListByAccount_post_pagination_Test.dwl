%dw 2.7

import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::pagination::O_GetEquivalencyInstitutionListByAccount_post_pagination

var request1 = {
    query: {},
    headers: {},
    cookie: {},
    body: {
        Page: dw::System::envVars().PAGE default "",
        PageSize: dw::System::envVars().PAGE_SIZE default ""
    }
}
 
var response1 =
    O_GetEquivalencyInstitutionListByAccount_post_paginated.executor(
        request1, connection
    )

var req2 = response1.value.nextPage.args

var response2 =
    O_GetEquivalencyInstitutionListByAccount_post_paginated.executor(
        req2,  connection
    )

---
"GetEquivalencyInstitutionListByAccount Pagination Tests" describedBy [
    "Paginated operation - First page with default page size" in do {
        response1 must beSuccessful()
        
    },
    "Paginated operation - Second page" in do {   
        response2 must beSuccessful()
        
    },
]