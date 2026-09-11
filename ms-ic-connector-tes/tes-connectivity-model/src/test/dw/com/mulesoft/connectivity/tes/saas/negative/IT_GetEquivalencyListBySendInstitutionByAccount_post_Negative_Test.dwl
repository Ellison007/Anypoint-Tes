%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetEquivalencyListBySendInstitutionByAccount_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyListBySendInstitutionByAccount_post

var V_GetEquivalencyListBySendInstitutionByAccount_post_response_400 =
    O_GetEquivalencyListBySendInstitutionByAccount_post.executor(
        V_GetEquivalencyListBySendInstitutionByAccount_post_request(),
        connection400
    )

var V_GetEquivalencyListBySendInstitutionByAccount_post_response_500 =
    O_GetEquivalencyListBySendInstitutionByAccount_post.executor(
        V_GetEquivalencyListBySendInstitutionByAccount_post_request(),
        connection500
    )

var V_GetEquivalencyListBySendInstitutionByAccount_post_response_600 =
    O_GetEquivalencyListBySendInstitutionByAccount_post.executor(
        V_GetEquivalencyListBySendInstitutionByAccount_post_request(),
        connection600
    )

---
"GetEquivalencyListBySendInstitutionByAccount Negative Tests" describedBy [
    "GetEquivalencyListBySendInstitutionByAccount - POST 400 Error Handling" in do {
        V_GetEquivalencyListBySendInstitutionByAccount_post_response_400.error.value.status
            must equalTo(400)
    },
    "GetEquivalencyListBySendInstitutionByAccount - POST 500 Error Handling" in do {
        V_GetEquivalencyListBySendInstitutionByAccount_post_response_500.error.value.status
            must equalTo(500)
    },
    "GetEquivalencyListBySendInstitutionByAccount - POST 600 Error Handling" in do {
        V_GetEquivalencyListBySendInstitutionByAccount_post_response_600.error.value.status
            must equalTo(600)
    }
]