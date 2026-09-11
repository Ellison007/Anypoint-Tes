%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetInstitutionByInstitutionNameCityStateAbbr_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByInstitutionNameCityStateAbbr_post

var V_GetInstitutionByInstitutionNameCityStateAbbr_post_response = O_GetInstitutionByInstitutionNameCityStateAbbr_post.executor(V_GetInstitutionByInstitutionNameCityStateAbbr_post_request(), connection)

---
"GetInstitutionByInstitutionNameCityStateAbbr tests" describedBy [
    "GetInstitutionByInstitutionNameCityStateAbbr - POST Successful Execution" in do {
        V_GetInstitutionByInstitutionNameCityStateAbbr_post_response must beSuccessful()
    },
]