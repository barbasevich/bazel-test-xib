//
//  CustomView.swift
//  TestXIB
//
//  Created by Anton Barbasevich on 08/06/2020.
//  Copyright © 2020 Anton Barbasevich. All rights reserved.
//

import UIKit

final class CustomView: UIView {

    @IBOutlet private var label: UILabel!

    static func fromNib() -> CustomView? {
        let bundle = Bundle.resourceBundle()

        if let bunleName = bundle.infoDictionary?["CFBundleName"] {
            print("Bundle name - \(bunleName)")
        }
        if let path = bundle.path(forResource: "CustomView", ofType: "nib") {
            print("Path - \(path)")
        }

        return bundle.loadNibNamed("CustomView", owner: nil, options: nil)?.first as? CustomView
    }
}

private extension Bundle {
    static func resourceBundle() -> Bundle {
        Bundle(for: CustomView.self)
    }
}
