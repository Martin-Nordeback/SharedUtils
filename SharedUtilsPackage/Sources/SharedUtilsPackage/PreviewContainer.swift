//
//  Copyright ⓒ Martin Nordebäck 2025
//

import SwiftUI

struct PreviewTestView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Content()
            Button {
                // Action
            } label: {
                Text("Button")
            }
            Content()
        }
        .padding()
    }

    struct Content: View {
        var body: some View {
            Text(
                """
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt \
                ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation \
                ullamco laboris nisi ut aliquip ex ea commodo consequat.
                """
            )
            .foregroundStyle(.gray)
        }
    }
}

#if DEBUG
    #Preview {
        PreviewContainer(
            explanations: [
                .init("This preview is about testing the actual preview 'builder'"),
                .init("We also want the content to be size correctly"),
                .init("Also explain the size of the device"),
                .init(""),
            ]
        ) {
            PreviewTestView()
        }
    }

    struct PreviewContainer<PreviewContent: View>: View {
        private let previewContent: PreviewContent
        private let explanations: [Bullet]
        @State private var previewSize: CGSize = .zero

        init(
            explanations: [Bullet],
            @ViewBuilder previewContent: () -> PreviewContent
        ) {
            self.previewContent = previewContent()
            self.explanations = explanations
        }

        var body: some View {
            VStack {
                // TODO: - Fix so the height is correct when content is fullscreen
                ExplainableGroupView(with: explanations, size: previewSize)
                PreviewSizeReporter(size: $previewSize) {
                    previewContent
                }
            }
            .frame(
                maxWidth: .infinity, maxHeight: .infinity, alignment: .top
            )
        }

        struct ExplainableGroupView: View {
            private let explanations: [Bullet]
            private let size: CGSize

            init(
                with explanations: [Bullet],
                size: CGSize
            ) {
                self.explanations = explanations
                self.size = size
            }

            var body: some View {
                DisclosureGroup {
                    VStack(alignment: .leading) {
                        Text("Preview size \(size.description)")
                            .bold()
                        ForEach(explanations) { message in
                            Text(message.description)
                        }
                    }
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Label {
                        Text("About this preview")
                    } icon: {
                        Image(systemName: "info.circle.fill")
                    }
                }
                .padding(.horizontal)
            }
        }

        struct Bullet: Identifiable {
            let description: String
            var id: String { description }

            init(_ description: String) {
                guard !description.isEmpty else {
                    self.description = " • TODO : ADD EXPLANATION"; return
                }
                self.description = " • \(description)"
            }
        }
    }

    extension CGSize {
        var intWidth: Int { Int(width) }

        var intHeight: Int { Int(height) }

        var description: String {
            "Width: \(intWidth) - Height: \(intHeight)"
        }

        var descriptionN: String {
            "Width: \(intWidth) \nHeight: \(intHeight)"
        }
    }

    private struct PreviewSizeReporter<Content: View>: View {
        @Binding private var size: CGSize
        private let content: () -> Content
        init(
            size: Binding<CGSize>,
            @ViewBuilder content: @escaping () -> Content
        ) {
            _size = size
            self.content = content
        }

        var body: some View {
            content()
                .background(
                    GeometryReader { geometry in
                        Color.clear
                            .onAppear {
                                size = geometry.size
                            }
                            .onChange(of: geometry.size) { oldSize, newSize in
                                size = newSize
                            }
                    }
                )
        }
    }

#endif
