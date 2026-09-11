%dw 2.8

import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import O_GetEquivalencyInstitutionListByAccount_post, O_GetEquivalencyInstitutionListByAccount_post_Type from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyInstitutionListByAccount_post
type anypoint_O_GetEquivalencyInstitutionListByAccount_post_request = {
  "GetEquivalencyInstitutionListByAccount--body": @Label(value = "body")
  O_GetEquivalencyInstitutionListByAccount_post_Type.request.body
}

var anypoint_O_GetEquivalencyInstitutionListByAccount_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "GetEquivalencyInstitutionListByAccount--body" mapsTo "body"
]

@OperationElement()
var anypoint_O_GetEquivalencyInstitutionListByAccount_post = O_GetEquivalencyInstitutionListByAccount_post withTransformer {
  in: fromMapping<anypoint_O_GetEquivalencyInstitutionListByAccount_post_request, O_GetEquivalencyInstitutionListByAccount_post_Type.request>(anypoint_O_GetEquivalencyInstitutionListByAccount_post_mapping),
  out: extractRequestBody
}