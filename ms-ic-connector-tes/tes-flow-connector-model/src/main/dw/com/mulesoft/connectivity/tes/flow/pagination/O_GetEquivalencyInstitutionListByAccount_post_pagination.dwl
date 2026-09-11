%dw 2.7

import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyInstitutionListByAccount_post
import * from com::mulesoft::connectivity::tes::pagination::O_GetEquivalencyInstitutionListByAccount_post_pagination

type flow_O_GetEquivalencyInstitutionListByAccount_post_request = {
    Page?: String | Null
}

var flow_O_GetEquivalencyInstitutionListByAccount_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "Page" mapsTo "body.Page"
]

@OperationElement()
var flow_O_GetEquivalencyInstitutionListByAccount_post_paginated = O_GetEquivalencyInstitutionListByAccount_post_paginated withTransformer {
  in: fromMapping<flow_O_GetEquivalencyInstitutionListByAccount_post_request, O_GetEquivalencyInstitutionListByAccount_post_Type.request>(flow_O_GetEquivalencyInstitutionListByAccount_post_mapping)
  }