%dw 2.7
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyDetailByEquivalencyID_post

fun V_GetEquivalencyDetailByEquivalencyID_post_request()
    : O_GetEquivalencyDetailByEquivalencyID_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        EquivalencyID: dw::System::envVars().EQUIVALENCY_ID default ""
    }
}
