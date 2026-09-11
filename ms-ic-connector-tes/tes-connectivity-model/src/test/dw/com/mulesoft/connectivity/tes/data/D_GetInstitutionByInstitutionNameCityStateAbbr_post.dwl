%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByInstitutionNameCityStateAbbr_post

fun V_GetInstitutionByInstitutionNameCityStateAbbr_post_request()
    : O_GetInstitutionByInstitutionNameCityStateAbbr_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        InstitutionName: dw::System::envVars().INSTITUTION_NAME default "",
        City: dw::System::envVars().CITY default "",
        StateAbbr: dw::System::envVars().STATE_ABBR default ""
    }
}
