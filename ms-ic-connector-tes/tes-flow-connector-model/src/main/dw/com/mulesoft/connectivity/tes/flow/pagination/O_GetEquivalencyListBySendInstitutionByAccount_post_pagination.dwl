%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import * from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyListBySendInstitutionByAccount_post
import * from com::mulesoft::connectivity::tes::pagination::O_GetEquivalencyListBySendInstitutionByAccount_post_pagination

type flow_O_GetEquivalencyListBySendInstitutionByAccount_post_request = {
  SendInstitutionID: String ,
  Page: String,
  ActiveStatus: String ,
  CourseCode?: String ,
  SortType: String ,
  CourseCodeType: String ,
  HideStatus: String 
}

var flow_O_GetEquivalencyListBySendInstitutionByAccount_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "SendInstitutionID" mapsTo "body.SendInstitutionID",
  "Page" mapsTo "body.Page",
  "ActiveStatus" mapsTo "body.ActiveStatus",
  "CourseCode" mapsTo "body.CourseCode",
  "SortType" mapsTo "body.SortType",
  "CourseCodeType" mapsTo "body.CourseCodeType",
  "HideStatus" mapsTo "body.HideStatus"
]

@OperationElement()
var flow_O_GetEquivalencyListBySendInstitutionByAccount_post_paginated = O_GetEquivalencyListBySendInstitutionByAccount_post_paginated withTransformer {
  in: fromMapping<flow_O_GetEquivalencyListBySendInstitutionByAccount_post_request, O_GetEquivalencyListBySendInstitutionByAccount_post_Type.request>(flow_O_GetEquivalencyListBySendInstitutionByAccount_post_mapping)
  }
