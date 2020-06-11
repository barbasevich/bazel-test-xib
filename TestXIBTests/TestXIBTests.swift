//
//  TestXIBTests.swift
//  TestXIBTests
//
//  Created by Anton Barbasevich on 08/06/2020.
//  Copyright © 2020 Anton Barbasevich. All rights reserved.
//

import UIKit
import XCTest
@testable import TestXIB

final class TestXIBTests: XCTestCase {

    func testCustomView() {
        let view = CustomView.fromNib()

        assert(view != nil, "CustomView is not instantiated.")
    }

    func testCustomViewObjc() {
        let view = CustomViewObjc.fromNib()

        assert(view != nil, "CustomViewObjc is not instantiated.")
    }
}
