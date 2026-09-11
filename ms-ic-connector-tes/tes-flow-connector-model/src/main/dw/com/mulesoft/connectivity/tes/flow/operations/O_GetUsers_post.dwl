%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import O_GetUsers_post, O_GetUsers_post_Type from com::mulesoft::connectivity::tes::operations::O_GetUsers_post

type flow_O_GetUsers_post_request = {
}

var flow_O_GetUsers_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  {} alwaysMapsTo "body"
]

@OperationElement()
var flow_O_GetUsers_post = O_GetUsers_post withTransformer {
  in: fromMapping<flow_O_GetUsers_post_request, O_GetUsers_post_Type.request>(flow_O_GetUsers_post_mapping),
  out: extractRequestBody
}