%dw 2.7

import FlowConnectorElement from com::mulesoft::connectivity::flow::Metadata
import TESAccessKey, test from com::mulesoft::connectivity::tes::connections::Connections
import flow_O_GetCourseByInstitutionIDCourseCodeMonthYear_post from com::mulesoft::connectivity::tes::flow::operations::O_GetCourseByInstitutionIDCourseCodeMonthYear_post
import flow_O_GetEquivalencyDetailByEquivalencyID_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEquivalencyDetailByEquivalencyID_post
import flow_O_GetEquivalencyExportList_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEquivalencyExportList_post
import flow_O_GetEquivalencyInstitutionListByAccount_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEquivalencyInstitutionListByAccount_post
import flow_O_GetEquivalencyListBySendInstitutionByAccount_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEquivalencyListBySendInstitutionByAccount_post
import flow_O_GetEquivalency_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEquivalency_post
import flow_O_GetEvaluationStatusByEvaluationID_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEvaluationStatusByEvaluationID_post
import flow_O_GetEvaluationTask_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEvaluationTask_post
import flow_O_GetInstitutionByCEEBCode_post from com::mulesoft::connectivity::tes::flow::operations::O_GetInstitutionByCEEBCode_post
import flow_O_GetInstitutionByInstitutionNameCityStateAbbr_post from com::mulesoft::connectivity::tes::flow::operations::O_GetInstitutionByInstitutionNameCityStateAbbr_post
import flow_O_GetInstitutionByOPEIDCode_post from com::mulesoft::connectivity::tes::flow::operations::O_GetInstitutionByOPEIDCode_post
import flow_O_GetReceiveCourseByCourseCode_post from com::mulesoft::connectivity::tes::flow::operations::O_GetReceiveCourseByCourseCode_post
import flow_O_GetEquivalencyListBySendInstitutionByAccount_post from com::mulesoft::connectivity::tes::flow::operations::O_GetEquivalencyListBySendInstitutionByAccount_post
import * from com::mulesoft::connectivity::tes::flow::pagination::O_GetEquivalencyInstitutionListByAccount_post_pagination
import * from com::mulesoft::connectivity::tes::flow::pagination::O_GetEquivalencyListBySendInstitutionByAccount_post_pagination
import flow_O_GetUsers_post from com::mulesoft::connectivity::tes::flow::operations::O_GetUsers_post
import * from com::mulesoft::connectivity::tes::flow::operations::O_SetEquivalency_post
import * from com::mulesoft::connectivity::tes::flow::operations::O_SetEvaluationTask_post

@FlowConnectorElement()
var connector = {
  name: "Tes",
  displayName: "Tes",
  version: "1.1.0-SNAPSHOT",
  since: "R258",
  description: "Connect to an external CollegeSource TES account. Manage transfer evaluations, course equivalencies, articulation agreements, and transfer guides.",
  icons: [
    {
    id: "icon",
    name: "tes",
    alternateText: "Tes",
    resource: "icon/icon.svg",
    size: 1,
    dimensions: "0x0"
  }
  ],
  vendor: "Salesforce",
  connections: {
    TESAccessKey: TESAccessKey
  },
  testConnection: test,
  operations: {
    getCourseByInstitutionIDCourseCodeMonthYear: flow_O_GetCourseByInstitutionIDCourseCodeMonthYear_post,
    getEquivalency: flow_O_GetEquivalency_post,
    getEquivalencyDetailByEquivalencyID: flow_O_GetEquivalencyDetailByEquivalencyID_post,
    getEquivalencyExportList: flow_O_GetEquivalencyExportList_post,
    getEquivalencyInstitutionListByAccount: flow_O_GetEquivalencyInstitutionListByAccount_post_paginated,
    getEquivalencyListBySendInstitutionByAccount: flow_O_GetEquivalencyListBySendInstitutionByAccount_post_paginated,
    getEvaluationStatusByEvaluationID: flow_O_GetEvaluationStatusByEvaluationID_post,
    getEvaluationTask: flow_O_GetEvaluationTask_post,
    getInstitutionByCEEBCode: flow_O_GetInstitutionByCEEBCode_post,
    getInstitutionByInstitutionNameCityStateAbbr: flow_O_GetInstitutionByInstitutionNameCityStateAbbr_post,
    getInstitutionByOPEIDCode: flow_O_GetInstitutionByOPEIDCode_post,
    getReceiveCourseByCourseCode: flow_O_GetReceiveCourseByCourseCode_post,
    getUsers: flow_O_GetUsers_post,
    setEquivalency: flow_O_SetEquivalency_post,
    setEvaluationTask: flow_O_SetEvaluationTask_post
  },
  valueProviders: {},
  metadataProviders: {}
}