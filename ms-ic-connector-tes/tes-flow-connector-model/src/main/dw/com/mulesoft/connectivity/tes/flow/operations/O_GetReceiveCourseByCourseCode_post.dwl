%dw 2.7
import OperationElement from com::mulesoft::connectivity::Metadata
import alwaysMapsTo, extractRequestBody, fromMapping, mapsTo, withTransformer from com::mulesoft::connectivity::codegen::Transformation
import Label from com::mulesoft::connectivity::decorator::Annotations
import O_GetReceiveCourseByCourseCode_post, O_GetReceiveCourseByCourseCode_post_Type from com::mulesoft::connectivity::tes::operations::O_GetReceiveCourseByCourseCode_post

type flow_O_GetReceiveCourseByCourseCode_post_request = {
  getReceiveCourseByCourseCodeRequest: @Label(value = "GetReceiveCourseByCourseCode Request")
  O_GetReceiveCourseByCourseCode_post_Type.request.body
}

var flow_O_GetReceiveCourseByCourseCode_post_mapping = [
  {} alwaysMapsTo "query",
  {} alwaysMapsTo "headers",
  {} alwaysMapsTo "cookie",
  "getReceiveCourseByCourseCodeRequest" mapsTo "body"
]

@OperationElement()
var flow_O_GetReceiveCourseByCourseCode_post = O_GetReceiveCourseByCourseCode_post withTransformer {
  in: fromMapping<flow_O_GetReceiveCourseByCourseCode_post_request, O_GetReceiveCourseByCourseCode_post_Type.request>(flow_O_GetReceiveCourseByCourseCode_post_mapping),
  out: extractRequestBody
}

