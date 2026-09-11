%dw 2.8

import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import O_GetEquivalency_post, O_GetEquivalency_post_Type from com::mulesoft::connectivity::tes::operations::O_GetEquivalency_post

type anypoint_O_GetEquivalency_post_request = {
  "GetEquivalency--body": @Label(value = "body")
  O_GetEquivalency_post_Type.request.body
}

var anypoint_O_GetEquivalency_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "GetEquivalency--body" mapsTo "body"
]

@OperationElement()
var anypoint_O_GetEquivalency_post = O_GetEquivalency_post withTransformer {
  in: fromMapping<anypoint_O_GetEquivalency_post_request, O_GetEquivalency_post_Type.request>(anypoint_O_GetEquivalency_post_mapping),
  out: extractRequestBody
}