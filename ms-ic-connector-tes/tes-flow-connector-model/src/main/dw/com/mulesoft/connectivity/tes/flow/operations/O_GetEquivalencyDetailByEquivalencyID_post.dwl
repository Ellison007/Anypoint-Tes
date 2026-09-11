%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import O_GetEquivalencyDetailByEquivalencyID_post, O_GetEquivalencyDetailByEquivalencyID_post_Type from com::mulesoft::connectivity::tes::operations::O_GetEquivalencyDetailByEquivalencyID_post

type flow_O_GetEquivalencyDetailByEquivalencyID_post_request = {
  getEquivalencyDetailByEquivalencyIDRequest: @Label(value = "GetEquivalencyDetailByEquivalencyID Request")
  O_GetEquivalencyDetailByEquivalencyID_post_Type.request.body
}

var flow_O_GetEquivalencyDetailByEquivalencyID_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "getEquivalencyDetailByEquivalencyIDRequest" mapsTo "body"
]

@OperationElement()
var flow_O_GetEquivalencyDetailByEquivalencyID_post = O_GetEquivalencyDetailByEquivalencyID_post withTransformer {
  in: fromMapping<flow_O_GetEquivalencyDetailByEquivalencyID_post_request, O_GetEquivalencyDetailByEquivalencyID_post_Type.request>(flow_O_GetEquivalencyDetailByEquivalencyID_post_mapping),
  out: extractRequestBody
}