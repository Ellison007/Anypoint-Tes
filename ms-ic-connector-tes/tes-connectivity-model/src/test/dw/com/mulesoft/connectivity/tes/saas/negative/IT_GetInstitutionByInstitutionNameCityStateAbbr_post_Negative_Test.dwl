%dw 2.7
import * from com::mulesoft::connectivity::tes::data::D_GetInstitutionByInstitutionNameCityStateAbbr_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByInstitutionNameCityStateAbbr_post

var V_GetInstitutionByInstitutionNameCityStateAbbr_post_response_400 =
    O_GetInstitutionByInstitutionNameCityStateAbbr_post.executor(
        V_GetInstitutionByInstitutionNameCityStateAbbr_post_request(),
        connection400
    )

var V_GetInstitutionByInstitutionNameCityStateAbbr_post_response_500 =
    O_GetInstitutionByInstitutionNameCityStateAbbr_post.executor(
        V_GetInstitutionByInstitutionNameCityStateAbbr_post_request(),
        connection500
    )

var V_GetInstitutionByInstitutionNameCityStateAbbr_post_response_600 =
    O_GetInstitutionByInstitutionNameCityStateAbbr_post.executor(
        V_GetInstitutionByInstitutionNameCityStateAbbr_post_request(),
        connection600
    )

---
"GetInstitutionByInstitutionNameCityStateAbbr Negative Tests" describedBy [
    "GetInstitutionByInstitutionNameCityStateAbbr - POST 400 Error Handling" in do {
        V_GetInstitutionByInstitutionNameCityStateAbbr_post_response_400.error.value.status
            must equalTo(400)
    },

    "GetInstitutionByInstitutionNameCityStateAbbr - POST 500 Error Handling" in do {
        V_GetInstitutionByInstitutionNameCityStateAbbr_post_response_500.error.value.status
            must equalTo(500)
    },

    "GetInstitutionByInstitutionNameCityStateAbbr - POST 600 Error Handling" in do {
        V_GetInstitutionByInstitutionNameCityStateAbbr_post_response_600.error.value.status
            must equalTo(600)
    }
]