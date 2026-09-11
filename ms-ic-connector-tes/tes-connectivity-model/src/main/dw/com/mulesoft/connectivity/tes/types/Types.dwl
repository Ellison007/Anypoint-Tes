%dw 2.7

import Integer from com::mulesoft::connectivity::Types

type T_GetUsersRequest = {
}

type T_GetEquivalencyInstitutionListByAccountRequest = {
  Page: String | Null,
  PageSize?: String | Null
}

type T_GetEquivalencyListBySendInstitutionByAccountRequest = {
  SendInstitutionID: String,
  Page: String,
  PageSize?: String ,
  ActiveStatus: String ,
  CourseCode?: String ,
  SortType: String ,
  CourseCodeType: String ,
  HideStatus: String 
}

type T_GetEquivalencyDetailByEquivalencyIDRequest = {
  EquivalencyID: String
}

type T_GetEquivalencyRequest = {
  SendInstitutionID: String,
  SendCourseCode1: String,
  SendCourseCode2?: String,
  SendCourseCode3?: String,
  SendCourseCode4?: String,
  SendCourseCode5?: String,
  SendCourseCode6?: String,
  SendCourseCode7?: String,
  SendCourseCode8?: String,
  SendCourseCode9?: String,
  SendCourseCode10?: String,
  ReceiveCourseCode1: String,
  ReceiveCourseCode2?: String,
  ReceiveCourseCode3?: String,
  ReceiveCourseCode4?: String,
  ReceiveCourseCode5?: String,
  ReceiveCourseCode6?: String,
  ReceiveCourseCode7?: String,
  ReceiveCourseCode8?: String,
  ReceiveCourseCode9?: String,
  ReceiveCourseCode10?: String
}

type T_GetEquivalencyExportListRequest = {
  SendInstitutionID: String,
  PastNumDay: String,
  DateType: String,
  EquivalencyType: String
}

type T_GetEvaluationTaskRequest = {
  SendInstitutionID: String,
  SendCourseCode1: String,
  SendCourseCode2: String,
  SendCourseCode3: String,
  SendCourseCode4: String,
  SendCourseCode5: String,
  SendCourseCode6: String,
  SendCourseCode7: String,
  SendCourseCode8: String,
  SendCourseCode9: String,
  SendCourseCode10: String
}

type T_GetEvaluationStatusByEvaluationIDRequest = {
  EvaluationID: String
}

type T_GetInstitutionByCEEBCodeRequest = {
  CEEBCode: String
}

type T_GetInstitutionByInstitutionNameCityStateAbbrRequest = {
  InstitutionName: String,
  City: String,
  StateAbbr: String
}

type T_GetInstitutionByOPEIDCodeRequest = {
  InstitutionOPEID: String
}

type T_GetReceiveCourseByCourseCodeRequest = {
  CourseCode: String
}

type T_GetCourseByInstitutionIDCourseCodeMonthYearRequest = {
  InstitutionID: String,
  CourseCode: String,
  Month: String,
  Year: String
}

type T_SetEquivalencyRequest = {
  CreateUserID: String,
  EffectiveDateBegin?: String,
  EffectiveDateEnd?: String,
  PublicNote?: String,
  PrivateNote?: String,
  HideFlag: String,
  SendCourseID1: String,
  SendCourseID2?: String,
  SendCourseID3?: String,
  SendCourseID4?: String,
  SendCourseID5?: String,
  SendCourseID6?: String,
  SendCourseID7?: String,
  SendCourseID8?: String,
  SendCourseID9?: String,
  SendCourseID10?: String,
  ReceiveCourseID1: String,
  ReceiveCourseID2?: String,
  ReceiveCourseID3?: String,
  ReceiveCourseID4?: String,
  ReceiveCourseID5?: String,
  ReceiveCourseID6?: String,
  ReceiveCourseID7?: String,
  ReceiveCourseID8?: String,
  ReceiveCourseID9?: String,
  ReceiveCourseID10?: String
}

type T_User = {
  ContactID?: String,
  NameFirst?: String,
  NameLast?: String,
  JobTitle?: String,
  Administrator?: Boolean,
  ServiceEvaluation?: Boolean,
  ManageEvaluation?: Boolean,
  CreateEquivalency?: Boolean
}

type T_EquivalencyInstitution = {
  SendInstitutionID?: String,
  SendInstitutionName?: String,
  ReceiveInstitutionName?: String,
  InstitutionCity?: String,
  InstitutionStateAbbr?: String|Null,
  PageCount?: Integer
}

type T_GetEquivalencyInstitutionListByAccountResponse = {
  institutions?: Array<T_EquivalencyInstitution> | Null
}

type T_GetEquivalencyListBySendInstitutionByAccountResponse = {
  results?: Array<T_Equivalency> | Null
}

type T_Equivalency = {
  CourseEquivalencyID?: String,
  EffectiveDateBegin?: String,
  EffectiveDateEnd?: String,
  PublicNote?: String,
  PrivateNote?: String,
  HideFlag?: String,
  PageCount?: String,
  SendTitle?: String,
  SendLo?: String,
  SendHi?: String,
  SendCourseCode1?: String,
  SendCourseCode2?: String,
  SendCourseCode3?: String,
  SendCourseCode4?: String,
  SendCourseCode5?: String,
  SendCourseCode6?: String,
  SendCourseCode7?: String,
  SendCourseCode8?: String,
  SendCourseCode9?: String,
  SendCourseCode10?: String,
  SendCourseTitle1?: String,
  SendCourseTitle2?: String,
  SendCourseTitle3?: String,
  SendCourseTitle4?: String,
  SendCourseTitle5?: String,
  SendCourseTitle6?: String,
  SendCourseTitle7?: String,
  SendCourseTitle8?: String,
  SendCourseTitle9?: String,
  SendCourseTitle10?: String,
  ReceiveTitle?: String,
  ReceiveLo?: String,
  ReceiveHi?: String,
  ReceiveCourseCode1?: String,
  ReceiveCourseCode2?: String,
  ReceiveCourseCode3?: String,
  ReceiveCourseCode4?: String,
  ReceiveCourseCode5?: String,
  ReceiveCourseCode6?: String,
  ReceiveCourseCode7?: String,
  ReceiveCourseCode8?: String,
  ReceiveCourseCode9?: String,
  ReceiveCourseCode10?: String,
  ReceiveCourseTitle1?: String,
  ReceiveCourseTitle2?: String,
  ReceiveCourseTitle3?: String,
  ReceiveCourseTitle4?: String,
  ReceiveCourseTitle5?: String,
  ReceiveCourseTitle6?: String,
  ReceiveCourseTitle7?: String,
  ReceiveCourseTitle8?: String,
  ReceiveCourseTitle9?: String,
  ReceiveCourseTitle10?: String
}

type T_EquivalencyDetail = {
  EffectiveDateBegin?: String,
  EffectiveDateEnd?: String,
  CreateUser?: String,
  CreateDateTime?: String,
  HideFlag?: Boolean,
  PublicNote?: String,
  PrivateNote?: String,
  SendInstitution?: String,
  SendInstitutionCity?: String,
  SendInstitutionState?: String,
  SendCourseCode1?: String,
  SendCourseCode2?: String,
  SendCourseCode3?: String,
  SendCourseCode4?: String,
  SendCourseCode5?: String,
  SendCourseCode6?: String,
  SendCourseCode7?: String,
  SendCourseCode8?: String,
  SendCourseCode9?: String,
  SendCourseCode10?: String,
  SendCourseTitle1?: String,
  SendCourseTitle2?: String,
  SendCourseTitle3?: String,
  SendCourseTitle4?: String,
  SendCourseTitle5?: String,
  SendCourseTitle6?: String,
  SendCourseTitle7?: String,
  SendCourseTitle8?: String,
  SendCourseTitle9?: String,
  SendCourseTitle10?: String,
  SendCourseUnits1?: String,
  SendCourseUnits2?: String,
  SendCourseUnits3?: String,
  SendCourseUnits4?: String,
  SendCourseUnits5?: String,
  SendCourseUnits6?: String,
  SendCourseUnits7?: String,
  SendCourseUnits8?: String,
  SendCourseUnits9?: String,
  SendCourseUnits10?: String,
  ReceiveInstitution?: String,
  ReceiveInstitutionCity?: String,
  ReceiveInstitutionState?: String,
  ReceiveCourseCode1?: String,
  ReceiveCourseCode2?: String,
  ReceiveCourseCode3?: String,
  ReceiveCourseCode4?: String,
  ReceiveCourseCode5?: String,
  ReceiveCourseCode6?: String,
  ReceiveCourseCode7?: String,
  ReceiveCourseCode8?: String,
  ReceiveCourseCode9?: String,
  ReceiveCourseCode10?: String,
  ReceiveCourseTitle1?: String,
  ReceiveCourseTitle2?: String,
  ReceiveCourseTitle3?: String,
  ReceiveCourseTitle4?: String,
  ReceiveCourseTitle5?: String,
  ReceiveCourseTitle6?: String,
  ReceiveCourseTitle7?: String,
  ReceiveCourseTitle8?: String,
  ReceiveCourseTitle9?: String,
  ReceiveCourseTitle10?: String,
  ReceiveCourseUnits1?: String,
  ReceiveCourseUnits2?: String,
  ReceiveCourseUnits3?: String,
  ReceiveCourseUnits4?: String,
  ReceiveCourseUnits5?: String,
  ReceiveCourseUnits6?: String,
  ReceiveCourseUnits7?: String,
  ReceiveCourseUnits8?: String,
  ReceiveCourseUnits9?: String,
  ReceiveCourseUnits10?: String
}

type T_EquivalencyID = {
  EquivalencyID?: String
}

type T_EquivalencyExport = {
  SendInstitution?: String,
  SendInstitutionCity?: String,
  SendInstitutionState?: String,
  SendInstitutionCountry?: String,
  SendInstitutionOPEID?: String,
  SendInstitutionIPEDSID?: String,
  SendInstitutionCEEBCode?: String,
  SendEditionLowYear?: Integer,
  SendEditionHighYear?: Integer,
  SendCourse1CourseCode?: String,
  SendCourse2CourseCode?: String,
  SendCourse3CourseCode?: String,
  SendCourse4CourseCode?: String,
  SendCourse5CourseCode?: String,
  SendCourse6CourseCode?: String,
  SendCourse7CourseCode?: String,
  SendCourse8CourseCode?: String,
  SendCourse9CourseCode?: String,
  SendCourse10CourseCode?: String,
  SendCourse1CourseTitle?: String,
  SendCourse2CourseTitle?: String,
  SendCourse3CourseTitle?: String,
  SendCourse4CourseTitle?: String,
  SendCourse5CourseTitle?: String,
  SendCourse6CourseTitle?: String,
  SendCourse7CourseTitle?: String,
  SendCourse8CourseTitle?: String,
  SendCourse9CourseTitle?: String,
  SendCourse10CourseTitle?: String,
  SendCourse1Units?: String,
  SendCourse2Units?: String,
  SendCourse3Units?: String,
  SendCourse4Units?: String,
  SendCourse5Units?: String,
  SendCourse6Units?: String,
  SendCourse7Units?: String,
  SendCourse8Units?: String,
  SendCourse9Units?: String,
  SendCourse10Units?: String,
  ReceiveInstitution?: String,
  ReceiveEditionLowYear?: Integer,
  ReceiveEditionHighYear?: Integer,
  ReceiveCourse1CourseCode?: String,
  ReceiveCourse2CourseCode?: String,
  ReceiveCourse3CourseCode?: String,
  ReceiveCourse4CourseCode?: String,
  ReceiveCourse5CourseCode?: String,
  ReceiveCourse6CourseCode?: String,
  ReceiveCourse7CourseCode?: String,
  ReceiveCourse8CourseCode?: String,
  ReceiveCourse9CourseCode?: String,
  ReceiveCourse10CourseCode?: String,
  ReceiveCourse1CourseTitle?: String,
  ReceiveCourse2CourseTitle?: String,
  ReceiveCourse3CourseTitle?: String,
  ReceiveCourse4CourseTitle?: String,
  ReceiveCourse5CourseTitle?: String,
  ReceiveCourse6CourseTitle?: String,
  ReceiveCourse7CourseTitle?: String,
  ReceiveCourse8CourseTitle?: String,
  ReceiveCourse9CourseTitle?: String,
  ReceiveCourse10CourseTitle?: String,
  ReceiveCourse1Units?: String,
  ReceiveCourse2Units?: String,
  ReceiveCourse3Units?: String,
  ReceiveCourse4Units?: String,
  ReceiveCourse5Units?: String,
  ReceiveCourse6Units?: String,
  ReceiveCourse7Units?: String,
  ReceiveCourse8Units?: String,
  ReceiveCourse9Units?: String,
  ReceiveCourse10Units?: String,
  ActiveDateBegin?: String,
  ActiveDateEnd?: String,
  ContactName?: String,
  EQCreateDateTime?: String,
  EQLEditDateTime?: String,
  HideFlag?: Boolean,
  CommentsPublic?: String,
  CommentsPrivate?: String
}

type T_EvaluationID = {
  EvaluationID?: String
}

type T_GenericResult = {
  EquivalencyID?: String,
  LastLogEntry?: String ,
  LastLogEntryDate?: String
}

type T_Institution = {
  InstitutionID?: String,
  InstitutionName?: String,
  InstitutionCity?: String,
  InstitutionStateAbbr?: String,
  InstitutionCountry?: String
}

type T_Course = {
  CourseID?: String,
  CourseCode?: String,
  CourseTitle?: String
}

type T_SetEvaluationTaskRequest = {
  CreateUserID: String,
  AssignedUserID: String,
  Comments: String,
  SendInstitutionID: String,
  SendCourseID1: String,
  SendCourseID2: String,
  SendCourseID3: String,
  SendCourseID4: String,
  SendCourseID5: String,
  SendCourseID6: String,
  SendCourseID7: String,
  SendCourseID8: String,
  SendCourseID9: String,
  SendCourseID10: String
}