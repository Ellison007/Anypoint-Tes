%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetEquivalencyInstitutionListByAccount_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyInstitutionListByAccount_post

var V_GetEquivalencyInstitutionListByAccount_post_response_400 =
    O_GetEquivalencyInstitutionListByAccount_post.executor(
        V_GetEquivalencyInstitutionListByAccount_post_request(),
        connection400
    )

var V_GetEquivalencyInstitutionListByAccount_post_response_500 =
    O_GetEquivalencyInstitutionListByAccount_post.executor(
        V_GetEquivalencyInstitutionListByAccount_post_request(),
        connection500
    )

var V_GetEquivalencyInstitutionListByAccount_post_response_600 =
    O_GetEquivalencyInstitutionListByAccount_post.executor(
        V_GetEquivalencyInstitutionListByAccount_post_request(),
        connection600
    )

---

"GetEquivalencyInstitutionListByAccount Negative Tests" describedBy [
    "GetEquivalencyInstitutionListByAccount - POST 400 Error Handling" in do {
        V_GetEquivalencyInstitutionListByAccount_post_response_400.error.value.status
            must equalTo(400)
    },

    "GetEquivalencyInstitutionListByAccount - POST 500 Error Handling" in do {
        V_GetEquivalencyInstitutionListByAccount_post_response_500.error.value.status
            must equalTo(500)
    },

    "GetEquivalencyInstitutionListByAccount - POST 600 Error Handling" in do {
        V_GetEquivalencyInstitutionListByAccount_post_response_600.error.value.status
            must equalTo(600)
    }
]