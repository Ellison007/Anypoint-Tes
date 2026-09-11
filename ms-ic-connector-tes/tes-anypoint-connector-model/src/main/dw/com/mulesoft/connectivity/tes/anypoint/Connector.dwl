%dw 2.8
import MuleConnectorElement from com::mulesoft::connectivity::mule::Metadata
import anypoint_O_GetCourseByInstitutionIDCourseCodeMonthYear_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetCourseByInstitutionIDCourseCodeMonthYear_post
import anypoint_O_GetEquivalencyDetailByEquivalencyID_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetEquivalencyDetailByEquivalencyID_post
import anypoint_O_GetEquivalencyExportList_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetEquivalencyExportList_post
import anypoint_O_GetEquivalencyInstitutionListByAccount_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetEquivalencyInstitutionListByAccount_post
import anypoint_O_GetEquivalencyListBySendInstitutionByAccount_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetEquivalencyListBySendInstitutionByAccount_post
import anypoint_O_GetEquivalency_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetEquivalency_post
import anypoint_O_GetEvaluationStatusByEvaluationID_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetEvaluationStatusByEvaluationID_post
import anypoint_O_GetEvaluationTask_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetEvaluationTask_post
import anypoint_O_GetInstitutionByCEEBCode_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetInstitutionByCEEBCode_post
import anypoint_O_GetInstitutionByInstitutionNameCityStateAbbr_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetInstitutionByInstitutionNameCityStateAbbr_post
import anypoint_O_GetInstitutionByOPEIDCode_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetInstitutionByOPEIDCode_post
import anypoint_O_GetReceiveCourseByCourseCode_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetReceiveCourseByCourseCode_post
import anypoint_O_GetUsers_post from com::mulesoft::connectivity::tes::anypoint::operations::O_GetUsers_post
import anypoint_O_SetEquivalency_post from com::mulesoft::connectivity::tes::anypoint::operations::O_SetEquivalency_post
import anypoint_O_SetEvaluationTask_post from com::mulesoft::connectivity::tes::anypoint::operations::O_SetEvaluationTask_post
import TESAccessKey, test from com::mulesoft::connectivity::tes::connections::Connections

@MuleConnectorElement()
var connector = {
  name: "tes",
  displayName: "tes",
  version: "1.0.0-SNAPSHOT",
  releaseStatus: "PILOT",
  description: "Connect to an external CollegeSource TES account. Manage transfer evaluations, course equivalencies, articulation agreements, and transfer guides.",
  icons: [
    {
      id: "icon",
      name: "tes",
      alternateText: "tes",
      resource: "icon/icon.svg",
      size: 1,
      dimensions: "0x0"
    }
  ],
  vendor: "Salesforce",
  category: "SELECT",
  connections: {
    TESAccessKey: TESAccessKey
  },
  testConnection: test,
  operations: {
    GetCourseByInstitutionIDCourseCodeMonthYear: anypoint_O_GetCourseByInstitutionIDCourseCodeMonthYear_post,
    GetEquivalency: anypoint_O_GetEquivalency_post,
    GetEquivalencyDetailByEquivalencyID: anypoint_O_GetEquivalencyDetailByEquivalencyID_post,
    GetEquivalencyExportList: anypoint_O_GetEquivalencyExportList_post,
    GetEquivalencyInstitutionListByAccount: anypoint_O_GetEquivalencyInstitutionListByAccount_post,
    GetEquivalencyListBySendInstitutionByAccount: anypoint_O_GetEquivalencyListBySendInstitutionByAccount_post,
    GetEvaluationStatusByEvaluationID: anypoint_O_GetEvaluationStatusByEvaluationID_post,
    GetEvaluationTask: anypoint_O_GetEvaluationTask_post,
    GetInstitutionByCEEBCode: anypoint_O_GetInstitutionByCEEBCode_post,
    GetInstitutionByInstitutionNameCityStateAbbr: anypoint_O_GetInstitutionByInstitutionNameCityStateAbbr_post,
    GetInstitutionByOPEIDCode: anypoint_O_GetInstitutionByOPEIDCode_post,
    GetReceiveCourseByCourseCode: anypoint_O_GetReceiveCourseByCourseCode_post,
    GetUsers: anypoint_O_GetUsers_post,
    SetEquivalency: anypoint_O_SetEquivalency_post,
    SetEvaluationTask: anypoint_O_SetEvaluationTask_post
  },
  valueProviders: {},
  metadataProviders: {}
}

