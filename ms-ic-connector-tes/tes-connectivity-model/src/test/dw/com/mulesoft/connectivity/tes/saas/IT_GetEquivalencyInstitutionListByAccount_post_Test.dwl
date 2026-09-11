%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetEquivalencyInstitutionListByAccount_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyInstitutionListByAccount_post

var V_GetEquivalencyInstitutionListByAccount_post_response = 
O_GetEquivalencyInstitutionListByAccount_post.executor(
    V_GetEquivalencyInstitutionListByAccount_post_request(), 
    connection
)
---
"GetEquivalencyInstitutionListByAccount tests" describedBy [
    "GetEquivalencyInstitutionListByAccount - POST Successful Execution" in do {
        V_GetEquivalencyInstitutionListByAccount_post_response must beSuccessful()
    },
]