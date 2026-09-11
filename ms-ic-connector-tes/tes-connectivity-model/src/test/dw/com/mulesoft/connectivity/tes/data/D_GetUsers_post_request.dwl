%dw 2.7

import * from com::mulesoft::connectivity::tes::operations::O_GetUsers_post
fun V_GetUsers_post_request()
    : O_GetUsers_post_Type.request =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
    }
}
