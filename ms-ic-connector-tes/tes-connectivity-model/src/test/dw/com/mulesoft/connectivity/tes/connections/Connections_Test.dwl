%dw 2.7 
import * from dw::test::Asserts
import * from dw::test::Tests
import * from com::mulesoft::connectivity::tes::utils::ConnectionOperations
import * from com::mulesoft::connectivity::tes::connections::Connections
var testResponse = test.validate(connection)
---
"TES connection tests" describedBy [
    "connection test executes" in do {
        testResponse.isValid must equalTo(true)
    }
]
 
