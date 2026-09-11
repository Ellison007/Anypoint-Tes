%dw 2.8
import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import   * from com::mulesoft::connectivity::tes::operations::O_SetEquivalency_post

type flow_O_SetEquivalency_post_request = {
  setEquivalencyRequest: @Label(value = "SetEquivalency Request")
  O_SetEquivalency_post_Type.request.body
}

var flow_O_SetEquivalency_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "setEquivalencyRequest" mapsTo "body"
]

@OperationElement()
var flow_O_SetEquivalency_post = O_SetEquivalency_post withTransformer {
  in: fromMapping<flow_O_SetEquivalency_post_request, O_SetEquivalency_post_Type.request>(flow_O_SetEquivalency_post_mapping),
  out: extractRequestBody
}