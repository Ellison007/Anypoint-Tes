%dw 2.8
import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import  * from com::mulesoft::connectivity::tes::operations::O_SetEvaluationTask_post

type flow_O_SetEvaluationTask_post_request = {
  setEvaluationTaskRequest: @Label(value = "SetEvaluationTask Request")
  O_SetEvaluationTask_post_Type.request.body
}

var flow_O_SetEvaluationTask_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "setEvaluationTaskRequest" mapsTo "body"
]

@OperationElement()
var flow_O_SetEvaluationTask_post = O_SetEvaluationTask_post withTransformer {
  in: fromMapping<flow_O_SetEvaluationTask_post_request, O_SetEvaluationTask_post_Type.request>(flow_O_SetEvaluationTask_post_mapping),
  out: extractRequestBody
}