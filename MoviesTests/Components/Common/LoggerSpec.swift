//
//  LoggerSpec.swift
//  MoviesTests
//
//  Created by Khanh Pham on 10/6/17.
//  Copyright © 2017 Khanh Pham. All rights reserved.
//

import Quick
import Nimble

@testable import Movies

class LoggerSpec: QuickSpec {
    override func spec() {
        describe("LoggerSpec") {
            it("should be able to invoke log methods without error") {
                
                let loggerManager = LoggerManager.shared
                loggerManager.configure()
                
                logDebug("Debug message")
                logVerbose("Verbose message")
                logError("Error message")
                logInfo("Info message")
                logWarn("Warn message")
            }
        }
    }
}
