%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetInstitutionByOPEIDCode_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByOPEIDCode_post

var V_GetInstitutionByOPEIDCode_post_response = O_GetInstitutionByOPEIDCode_post.executor(V_GetInstitutionByOPEIDCode_post_request(), connection)
---
"GetInstitutionByOPEIDCode tests" describedBy [
    "GetInstitutionByOPEIDCode - POST Successful Execution" in do {
        V_GetInstitutionByOPEIDCode_post_response must beSuccessful()
    },
]