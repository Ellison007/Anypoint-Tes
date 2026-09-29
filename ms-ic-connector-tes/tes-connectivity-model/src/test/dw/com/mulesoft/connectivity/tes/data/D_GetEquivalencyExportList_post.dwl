%dw 2.7
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyExportList_post
fun V_GetEquivalencyExportList_post_request()
    : O_GetEquivalencyExportList_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        PastNumDay: dw::System::envVars().PAST_NUM_DAY default "",
        DateType: "0",
        EquivalencyType: "0"
    }
}
