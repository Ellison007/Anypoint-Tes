%dw 2.7
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyInstitutionListByAccount_post

fun V_GetEquivalencyInstitutionListByAccount_post_request()
    : O_GetEquivalencyInstitutionListByAccount_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        Page: dw::System::envVars().PAGE default "",
        PageSize: dw::System::envVars().PAGE_SIZE default ""
    }
}
