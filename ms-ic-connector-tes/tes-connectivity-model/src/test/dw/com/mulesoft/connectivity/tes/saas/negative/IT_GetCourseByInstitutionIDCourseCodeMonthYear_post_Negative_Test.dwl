%dw 2.7

import * from com::mulesoft::connectivity::tes::data::D_GetCourseByInstitutionIDCourseCodeMonthYear_post
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::MockNegativeConnectionProvider
import * from com::mulesoft::connectivity::tes::operations::O_GetCourseByInstitutionIDCourseCodeMonthYear_post


var V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response_400 =
    O_GetCourseByInstitutionIDCourseCodeMonthYear_post.executor(
        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_request(),
        connection400
    )


var V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response_500 =
    O_GetCourseByInstitutionIDCourseCodeMonthYear_post.executor(
        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_request(),
        connection500
    )


var V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response_600 =
    O_GetCourseByInstitutionIDCourseCodeMonthYear_post.executor(
        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_request(),
        connection600
    )


---

"GetCourseByInstitutionIDCourseCodeMonthYear Negative Tests" describedBy [

    "GetCourseByInstitutionIDCourseCodeMonthYear - POST 400 Error Handling" in do {

        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response_400.error.value.status
            must equalTo(400)

    },

    "GetCourseByInstitutionIDCourseCodeMonthYear - POST 500 Error Handling" in do {

        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response_500.error.value.status
            must equalTo(500)

    },

    "GetCourseByInstitutionIDCourseCodeMonthYear - POST 600 Error Handling" in do {

        V_GetCourseByInstitutionIDCourseCodeMonthYear_post_response_600.error.value.status
            must equalTo(600)

    }

]
