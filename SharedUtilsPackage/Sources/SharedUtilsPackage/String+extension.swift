import Foundation

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

    public static let loremXXXXL: String = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.
        """
    public static let dirtyLoremBackend: String =
        """
        Lorem ipsum dolor sit amet, consectetur adipiscing in elit, sunt in culpa. \n\n\n
        Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n

        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris\n\nnisi ut aliquip ex ea commodo consequat.\n

        \nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n\n\n
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n


        Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\n
        Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.\n\n\n

        Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.\n\n\n


        Fusce nec tellus sed augue semper porta.\n\n Mauris massa.\n\n\n Vestibulum lacinia arcu eget nulla.\n\n\n\n

        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n\nCurabitur sodales ligula in libero.\n\n
        """.textTrimmingDoubleNewlines
}

extension String {
    var textTrimmingDoubleNewlines: String {
        self.replacingOccurrences(of: #"\n\s*\n"#, with: "\n", options: .regularExpression)
    }
}
