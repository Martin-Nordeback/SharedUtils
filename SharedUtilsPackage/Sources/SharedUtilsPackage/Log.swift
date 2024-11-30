
import Foundation

public enum Log: String {
    case error = "🚨"
    case info = "ℹ️"
    case warning = "⚠️"
    case success = "✅"
    
    public static func print(
        _ items: Any...,
        type: Log,
        extended: Bool = false,
        fileID: String = #fileID,
        function: String = #function,
        line: Int = #line
    ) {
        Swift.print(type.rawValue, items.map{ "\($0)" }.joined(separator: " "))
        if extended {
            Swift.print(
            """
            \(fileID)
            function: \(function)
            line: \(line)
            ---------------------------------------------------------------------
            """
            )
        }
    }
}
