//
// Copyright © 2024 Storytel AB. All Rights Reserved.
//

import SwiftUI

extension Color {
    public static var color: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
