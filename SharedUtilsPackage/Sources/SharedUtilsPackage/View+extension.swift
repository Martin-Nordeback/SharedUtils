import SwiftUI

public extension View {
    func printing<T>(_ value: T) -> some View {
        print(value)
        return self
    }
}
