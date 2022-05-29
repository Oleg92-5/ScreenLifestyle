//
//  String + Localizable.swift
//  ScreenLifestyle
//
//  Created by Олег Рубан on 27.05.2022.
//

import Foundation
import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
