%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetInstitutionByCEEBCode_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByCEEBCode_post

var V_GetInstitutionByCEEBCode_post_response = O_GetInstitutionByCEEBCode_post.executor(V_GetInstitutionByCEEBCode_post_request(), connection)
---
"GetInstitutionByCEEBCode tests" describedBy [
    "GetInstitutionByCEEBCode - POST Successful Execution" in do {
        V_GetInstitutionByCEEBCode_post_response must beSuccessful()
    },
]