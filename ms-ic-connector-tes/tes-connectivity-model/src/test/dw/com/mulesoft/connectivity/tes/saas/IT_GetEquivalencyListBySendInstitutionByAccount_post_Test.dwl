%dw 2.7

import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyListBySendInstitutionByAccount_post

var request1 =
{
    query: {},
    headers: {},
    cookie: {},
    body: {
        SendInstitutionID: dw::System::envVars().SEND_INSTITUTION_ID default "",
        Page: "1",
        PageSize: dw::System::envVars().PAGE_SIZE default "",
        ActiveStatus: dw::System::envVars().ACTIVE_STATUS default "",
        CourseCode: dw::System::envVars().COURSE_CODE default "",
        SortType: dw::System::envVars().SORT_TYPE default "",
        CourseCodeType: dw::System::envVars().COURSE_CODE_TYPE default "",
        HideStatus: dw::System::envVars().HIDE_STATUS default ""
    }
}
 
var resp1 = O_GetEquivalencyListBySendInstitutionByAccount_post.executor(
    request1, connection)
 

---
"GetEquivalencyListBySendInstitutionByAccount tests" describedBy [
    "GetEquivalencyListBySendInstitutionByAccount - POST Successful Execution" in do {
        resp1 must beSuccessful()
    },
]