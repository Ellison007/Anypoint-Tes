%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByOPEIDCode_post

fun V_GetInstitutionByOPEIDCode_post_request()
    : O_GetInstitutionByOPEIDCode_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        InstitutionOPEID: dw::System::envVars().INSTITUTION_OPEID default ""
    }
}
