import SwiftUI

// MARK: - WhatsNew+SecondaryAction

public extension WhatsNew {
    
    /// The WhatsNew SecondaryAction
    struct SecondaryAction {
        
        // MARK: Properties
        
        /// The title Text
        public var title: Text
        public var backgroundColor: Color
        
        /// The foreground color
        public var foregroundColor: Color
        
        /// The optional HapticFeedback
        public var hapticFeedback: HapticFeedback?
        
        /// The Action
        public var action: Action
        
        // MARK: Initializer
        
        /// Creates a new instance of `WhatsNew.PrimaryAction`
        /// - Parameters:
        ///   - title: The title Text
        ///   - foregroundColor: The foreground color. Default value `.accentColor`
        ///   - hapticFeedback: The optional HapticFeedback. Default value `nil`
        ///   - action: The Action
        public init(
            title: Text,
            backgroundColor: Color = .white.opacity(1.0),
            foregroundColor: Color = {
                #if os(visionOS)
                .primary
                #else
                .accentColor
                #endif
            }(),
            hapticFeedback: HapticFeedback? = nil,
            action: Action
        ) {
            self.title = title
            self.backgroundColor = backgroundColor
            self.foregroundColor = foregroundColor
            self.hapticFeedback = hapticFeedback
            self.action = action
        }
        
    }
    
}
