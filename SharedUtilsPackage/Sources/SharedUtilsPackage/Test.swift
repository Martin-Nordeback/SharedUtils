//
// Copyright © 2024 Storytel AB. All Rights Reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("sdad")
    }
}

#Preview {
    ContentView()
}


extension CGFloat {
    public static let zero: CGFloat = 0
    public static let xtraSmall: CGFloat = 4
    public static let small: CGFloat = 8
    public static let medium: CGFloat = 12
    public static let large: CGFloat = 16
    public static let xLarge: CGFloat = 20
    public static let xxLarge: CGFloat = 24
    public static let xxxLarge: CGFloat = 28
    public static let xxxxLarge: CGFloat = 32
}

extension String {
    public static let loremTitle: String = "Lorem Ipsum"
    public static let loremShort: String = "Lorem ipsum dolor sit."
    public static let loremMedium: String =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    public static let loremLong: String = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        """
    public static let loremLongWithUrl: String = """
            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Visit our site at https://example.com for more information.
        """
    public static let placeHolderUrl: String = "https://placeholder.com"
}
