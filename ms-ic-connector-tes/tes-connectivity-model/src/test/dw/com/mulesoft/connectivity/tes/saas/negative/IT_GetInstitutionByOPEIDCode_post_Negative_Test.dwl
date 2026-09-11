%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetInstitutionByOPEIDCode_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByOPEIDCode_post

var V_GetInstitutionByOPEIDCode_post_response_400 =
    O_GetInstitutionByOPEIDCode_post.executor(
        V_GetInstitutionByOPEIDCode_post_request(),
        connection400
    )

var V_GetInstitutionByOPEIDCode_post_response_500 =
    O_GetInstitutionByOPEIDCode_post.executor(
        V_GetInstitutionByOPEIDCode_post_request(),
        connection500
    )

var V_GetInstitutionByOPEIDCode_post_response_600 =
    O_GetInstitutionByOPEIDCode_post.executor(
        V_GetInstitutionByOPEIDCode_post_request(),
        connection600
    )

---
"GetInstitutionByOPEIDCode Negative Tests" describedBy [
    "GetInstitutionByOPEIDCode - POST 400 Error Handling" in do {
        V_GetInstitutionByOPEIDCode_post_response_400.error.value.status
            must equalTo(400)
    },
    "GetInstitutionByOPEIDCode - POST 500 Error Handling" in do {
        V_GetInstitutionByOPEIDCode_post_response_500.error.value.status
            must equalTo(500)
    },
    "GetInstitutionByOPEIDCode - POST 600 Error Handling" in do {
        V_GetInstitutionByOPEIDCode_post_response_600.error.value.status
            must equalTo(600)
    }
]