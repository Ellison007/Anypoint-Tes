%dw 2.7

import V_GetCourseByInstitutionIDCourseCodeMonthYear_post_request
    from com::mulesoft::connectivity::tes::data::D_GetCourseByInstitutionIDCourseCodeMonthYear_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::utils::UcAssertionUtils
import * from com::mulesoft::connectivity::tes::operations::O_GetCourseByInstitutionIDCourseCodeMonthYear_post


var V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response = O_GetCourseByInstitutionIDCourseCodeMonthYear_post.executor(
        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_request(),
        connection
    )
---
"GetCourseByInstitutionIDCourseCodeMonthYear tests" describedBy [
    "GetCourseByInstitutionIDCourseCodeMonthYear - POST Successful Execution" in do {
        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response must beSuccessful()
    }

]