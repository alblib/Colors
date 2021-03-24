//
//  Colors.swift
//
//
//  Created by Albertus Liberius on 2021/03/24.
//

#if !os(macOS)
import UIKit
#else
import AppKit
#endif
import SwiftUI

// First, let's satisfy Apple's Human Interface Guidelines https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/#system-colors

@available(OSX 10.15, iOS 15, tvOS 13, watchOS 6, *)
extension Color{
    #if os(macOS)
    static let defaultBackground: Color = Color(NSColor.windowBackgroundColor)
    #else
    static let defaultBackground: Color = Color(UIColor.systemBackground)
    #endif
    
    #if os(macOS)
    static let tertiary: Color = Color(NSColor.tertiaryLabelColor)
    #else
    static let tertiary: Color = Color(UIColor.tertiaryLabel)
    #endif
    
    #if os(macOS)
    static let quaternary: Color = Color(NSColor.quaternaryLabelColor)
    #else
    static let quaternary: Color = Color(UIColor.quaternaryLabel)
    #endif
    
    #if os(macOS)
    static let link: Color = Color(NSColor.linkColor)
    #else
    static let link: Color = Color(UIColor.link)
    #endif
    
    #if os(macOS)
    static let indigo: Color = Color(NSColor.systemIndigo)
    #else
    static let indigo: Color = Color(UIColor.systemIndigo)
    #endif
    
    #if os(macOS)
    static let teal: Color = Color(NSColor.systemTeal)
    #else
    static let teal: Color = Color(UIColor.systemTeal)
    #endif
    
    
    #if os(macOS)
    static let brown: Color = Color(NSColor.systemBrown)
    #else
    static let brown: Color = Color(UIColor(dynamicProvider: { (traits: UITraitCollection) -> UIColor in
        if traits.accessibilityContrast == .high{ // High constrast
            if traits.userInterfaceStyle == .dark{ // Dark mode : should be lightest
                return UIColor(red: 0.71, green: 0.58, blue: 0.412, alpha: 1)
            }else{ // light mode: 1st dark
                return UIColor(red: 0.5, green: 0.4, blue: 0.27, alpha: 1)
                
            }
        }else{ // Default mode
            if traits.userInterfaceStyle == .dark{ // Dark mode: 2nd light
                return UIColor(red: 0.675, green: 0.557, blue: 0.408, alpha: 1)
            }else{ // light mode: 2nd dark
                return UIColor(red: 0.635, green: 0.518, blue: 0.369, alpha: 1)
            }
        }
    }))
    #endif
    
    #if os(macOS)
    static let leanerGray: Color = Color(NSColor(name: "Leaner Gray", dynamicProvider: { (appearance: NSAppearance) -> NSColor in
        switch appearance.name{
        case .aqua:
            return NSColor(calibratedRed: 0.682, green: 0.682, blue: 0.7, alpha: 1)
        case .darkAqua:
            return NSColor(calibratedRed: 0.388, green: 0.388, blue: 0.4, alpha: 1)
        case .vibrantLight:
            return NSColor(calibratedRed: 0.64, green: 0.64, blue: 0.658, alpha: 1)
        case .vibrantDark:
            return NSColor(calibratedRed: 0.418, green: 0.418, blue: 0.43, alpha: 1)
        case .accessibilityHighContrastAqua:
            return NSColor(calibratedRed: 0.557, green: 0.557, blue: 0.576, alpha: 1)
        case .accessibilityHighContrastDarkAqua:
            return NSColor(calibratedRed: 0.486, green: 0.486, blue: 0.5, alpha: 1)
        case .accessibilityHighContrastVibrantLight:
            return NSColor(calibratedRed: 0.53, green: 0.53, blue: 0.545, alpha: 1)
        case .accessibilityHighContrastVibrantDark:
            return NSColor(calibratedRed: 0.515, green: 0.515, blue: 0.53, alpha: 1)
        default:
            return NSColor.systemGray
        }
    }))
    #else
    static let leanerGray: Color = Color(UIColor.systemGray2)
    #endif
    
    #if os(macOS)
    static let thickerGray: Color = Color(NSColor(name: "Thicker Gray", dynamicProvider: { (appearance: NSAppearance) -> NSColor in
        switch appearance.name{
        // Light Mode
        case .aqua:
            return NSColor(calibratedRed: 105.0 / 255, green: 105.0 / 255, blue: 110.0 / 255, alpha: 1)
        case .vibrantLight:
            return NSColor(calibratedRed: 96.0 / 255, green: 96.0 / 255, blue: 101.0 / 255, alpha: 1)
        case .accessibilityHighContrastAqua:
            return NSColor(calibratedRed: 72.0 / 255, green: 72.0 / 255, blue: 76.0 / 255, alpha: 1)
        case .accessibilityHighContrastVibrantLight:
            return NSColor(calibratedRed: 64.0 / 255, green: 64.0 / 255, blue: 68.0 / 255, alpha: 1)
        
        // Dark Mode
        case .darkAqua:
            return NSColor(calibratedRed: 162.0 / 255, green: 162.0 / 255, blue: 167.0 / 255, alpha: 1)
            
        case .vibrantDark:
            return NSColor(calibratedRed: 166.0 / 255, green: 166.0 / 255, blue: 171.0 / 255, alpha: 1)
        case .accessibilityHighContrastDarkAqua:
            return NSColor(calibratedRed: 168.0 / 255, green: 168.0 / 255, blue: 173.0 / 255, alpha: 1)
        case .accessibilityHighContrastVibrantDark:
            return NSColor(calibratedRed: 168.0 / 255, green: 168.0 / 255, blue: 173.0 / 255, alpha: 1)
        default:
            return NSColor.systemGray
        }
    }))
    
    #else
    static let thickerGray: Color = Color(UIColor(dynamicProvider: { (traits: UITraitCollection) -> UIColor in
        if traits.accessibilityContrast == .high{ // High constrast
            if traits.userInterfaceStyle == .dark{ // Dark mode : should be lightest
                return UIColor(red: 0.78, green: 0.78, blue: 0.8, alpha: 1)
            }else{ // light mode: 1st dark
                return UIColor(red: 0.27, green: 0.27, blue: 0.285, alpha: 1)
                
            }
        }else{ // Default mode
            if traits.userInterfaceStyle == .dark{ // Dark mode: 2nd light
                return UIColor(red: 0.682, green: 0.682, blue: 0.7, alpha: 1)
            }else{ // light mode: 2nd dark
                return UIColor(red: 0.424, green: 0.424, blue: 0.439, alpha: 1)
            }
        }
    }))
    #endif
}

