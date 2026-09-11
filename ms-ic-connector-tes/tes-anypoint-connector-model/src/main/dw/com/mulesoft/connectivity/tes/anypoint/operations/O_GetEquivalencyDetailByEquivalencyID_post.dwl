%dw 2.8

import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import O_GetEquivalencyDetailByEquivalencyID_post, O_GetEquivalencyDetailByEquivalencyID_post_Type from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyDetailByEquivalencyID_post

type anypoint_O_GetEquivalencyDetailByEquivalencyID_post_request = {
  "GetEquivalencyDetailByEquivalencyID--body": @Label(value = "body")
  O_GetEquivalencyDetailByEquivalencyID_post_Type.request.body
}

var anypoint_O_GetEquivalencyDetailByEquivalencyID_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "GetEquivalencyDetailByEquivalencyID--body" mapsTo "body"
]

@OperationElement()
var anypoint_O_GetEquivalencyDetailByEquivalencyID_post = O_GetEquivalencyDetailByEquivalencyID_post withTransformer {
  in: fromMapping<anypoint_O_GetEquivalencyDetailByEquivalencyID_post_request, O_GetEquivalencyDetailByEquivalencyID_post_Type.request>(anypoint_O_GetEquivalencyDetailByEquivalencyID_post_mapping),
  out: extractRequestBody
}