import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(GoogleUserMessagingPlatform_SPMTests.allTests),
    ]
}
#endif
