import SwiftUI

// MARK: - WhatsNewView+PrimaryButtonStyle

extension WhatsNewView {
    
    /// The WhatsNewView SecondaryButtonStyle
    struct SecondaryButtonStyle {
        
        /// The WhatsNew ÍecondaryAction
        let secondaryAction: WhatsNew.SecondaryAction
        
        /// The WhatsNew Layout
        let layout: WhatsNew.Layout
        
    }
    
}

// MARK: - ButtonStyle

extension WhatsNewView.SecondaryButtonStyle: ButtonStyle {
    
    /// Creates a view that represents the body of a button.
    /// - Parameter configuration: The properties of the button.
    func makeBody(
        configuration: Configuration
    ) -> some View {
        Group {
            #if os(iOS)
            HStack {
                Spacer()
                configuration
                    .label
                    .font(.headline.weight(.semibold))
                    .padding(.vertical)
                Spacer()
            }
            #else
            configuration
                .label
                .padding(.horizontal, 60)
                .padding(.vertical, 8)
            #endif
        }
        .foregroundColor(self.secondaryAction.foregroundColor)
        .background(self.secondaryAction.backgroundColor)
        .cornerRadius(self.layout.footerPrimaryActionButtonCornerRadius)
        .opacity(configuration.isPressed ? 0.5 : 1)
    }
    
}

