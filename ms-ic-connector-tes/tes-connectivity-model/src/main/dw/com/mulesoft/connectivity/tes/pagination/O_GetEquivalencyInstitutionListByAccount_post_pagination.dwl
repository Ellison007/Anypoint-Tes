%dw 2.8

import O_GetEquivalencyInstitutionListByAccount_post, O_GetEquivalencyInstitutionListByAccount_post_Type from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyInstitutionListByAccount_post
import * from com::mulesoft::connectivity::decorator::Operation
import * from com::mulesoft::connectivity::decorator::PaginationStrategies
import HttpRequestType from com::mulesoft::connectivity::transport::Http
import * from com::mulesoft::connectivity::tes::types::Types 

var O_GetEquivalencyInstitutionListByAccount_post_paginated =
    pageNumberPaginated(
        O_GetEquivalencyInstitutionListByAccount_post,

        (page) -> page.body.institutions default [],

        (param) -> (param.body.Page as Number default 1),

        (param, pageNumber) ->
            param update {
                case body at .body! ->
                    body update {
                        case Page at .Page! -> pageNumber as String
                    }
            }
    )

 