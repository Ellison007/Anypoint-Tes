%dw 2.7
import * from com::mulesoft::connectivity::tes::operations::O_GetInstitutionByCEEBCode_post

fun V_GetInstitutionByCEEBCode_post_request()
    : O_GetInstitutionByCEEBCode_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        CEEBCode: dw::System::envVars().CEEB_CODE default ""
    }
}
