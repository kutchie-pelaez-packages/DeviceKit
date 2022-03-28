extension Device {
    public enum Camera {
        case wide
        case telephoto
        case ultraWide
    }

    public var cameras: [Camera] {
        switch self {
        case .iPodTouch7: return [.wide]
        case .iPhone6s: return [.wide]
        case .iPhone6sPlus: return [.wide]
        case .iPhone7: return [.wide]
        case .iPhoneSE: return [.wide]
        case .iPhone8: return [.wide]
        case .iPhoneXR: return [.wide]
        case .iPhoneSE2: return [.wide]
        case .iPadAir2: return [.wide]
        case .iPad5: return [.wide]
        case .iPad6: return [.wide]
        case .iPadAir3: return [.wide]
        case .iPad7: return [.wide]
        case .iPad8: return [.wide]
        case .iPad9: return [.wide]
        case .iPadAir4: return [.wide]
        case .iPadMini4: return [.wide]
        case .iPadMini5: return [.wide]
        case .iPadMini6: return [.wide]
        case .iPadPro9Inch: return [.wide]
        case .iPadPro12Inch: return [.wide]
        case .iPadPro12Inch2: return [.wide]
        case .iPadPro10Inch: return [.wide]
        case .iPadPro11Inch: return [.wide]
        case .iPadPro12Inch3: return [.wide]
        case .iPhone7Plus: return [.wide, .telephoto]
        case .iPhone8Plus: return [.wide, .telephoto]
        case .iPhoneX: return [.wide, .telephoto]
        case .iPhoneXS: return [.wide, .telephoto]
        case .iPhoneXSMax: return [.wide, .telephoto]
        case .iPhone11: return [.wide, .ultraWide]
        case .iPhone12: return [.wide, .ultraWide]
        case .iPhone12Mini: return [.wide, .ultraWide]
        case .iPhone13: return [.wide, .ultraWide]
        case .iPhone13Mini: return [.wide, .ultraWide]
        case .iPadPro11Inch2: return [.wide, .ultraWide]
        case .iPadPro12Inch4: return [.wide, .ultraWide]
        case .iPadPro11Inch3: return [.wide, .ultraWide]
        case .iPadPro12Inch5: return [.wide, .ultraWide]
        case .iPhone11Pro: return [.wide, .telephoto, .ultraWide]
        case .iPhone11ProMax: return [.wide, .telephoto, .ultraWide]
        case .iPhone12Pro: return [.wide, .telephoto, .ultraWide]
        case .iPhone12ProMax: return [.wide, .telephoto, .ultraWide]
        case .iPhone13Pro: return [.wide, .telephoto, .ultraWide]
        case .iPhone13ProMax: return [.wide, .telephoto, .ultraWide]
        default: return []
        }
    }

    public var hasCamera: Bool { !cameras.isEmpty }

    public var hasWideCamera: Bool { cameras.contains(.wide) }

    public var hasTelephotoCamera: Bool { cameras.contains(.telephoto) }

    public var hasUltraWideCamera: Bool { cameras.contains(.ultraWide) }
}
