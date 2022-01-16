extension Device: CustomStringConvertible {
    public var description: String {
        switch self {
        case .iPhone6s:
            return "iPhone 6s"

        case .iPhone6sPlus:
            return "iPhone 6s Plus"

        case .iPhone7:
            return "iPhone 7"

        case .iPhone7Plus:
            return "iPhone 7 Plus"

        case .iPhoneSE:
            return "iPhone SE"

        case .iPhone8:
            return "iPhone 8"

        case .iPhone8Plus:
            return "iPhone 8 Plus"

        case .iPhoneX:
            return "iPhone X"

        case .iPhoneXS:
            return "iPhone XS"

        case .iPhoneXSMax:
            return "iPhone XS Max"

        case .iPhoneXR:
            return "iPhone XR"

        case .iPhone11:
            return "iPhone 11"

        case .iPhone11Pro:
            return "iPhone 11 Pro"

        case .iPhone11ProMax:
            return "iPhone 11 Pro Max"

        case .iPhoneSE2:
            return "iPhone SE (2nd generation)"

        case .iPhone12:
            return "iPhone 12"

        case .iPhone12Mini:
            return "iPhone 12 mini"

        case .iPhone12Pro:
            return "iPhone 12 Pro"

        case .iPhone12ProMax:
            return "iPhone 12 Pro Max"

        case .iPhone13:
            return "iPhone 13"

        case .iPhone13Mini:
            return "iPhone 13 mini"

        case .iPhone13Pro:
            return "iPhone 13 Pro"

        case .iPhone13ProMax:
            return "iPhone 13 Pro Max"

        case .iPodTouch7:
            return "iPod touch (7th generation)"

        case .iPad5:
            return "iPad (5th generation)"

        case .iPad6:
            return "iPad (6th generation)"

        case .iPad7:
            return "iPad (7th generation)"

        case .iPad8:
            return "iPad (8th generation)"

        case .iPad9:
            return "iPad (9th generation)"

        case .iPadAir2:
            return "iPad Air 2"

        case .iPadAir3:
            return "iPad Air (3rd generation)"

        case .iPadAir4:
            return "iPad Air (4th generation)"

        case .iPadMini4:
            return "iPad Mini 4"

        case .iPadMini5:
            return "iPad Mini (5th generation)"

        case .iPadMini6:
            return "iPad Mini (6th generation)"

        case .iPadPro9Inch:
            return "iPad Pro (9.7-inch)"

        case .iPadPro12Inch:
            return "iPad Pro (12.9-inch)"

        case .iPadPro10Inch:
            return "iPad Pro (10.5-inch)"

        case .iPadPro12Inch2:
            return "iPad Pro (12.9-inch) (2nd generation)"

        case .iPadPro11Inch:
            return "iPad Pro (11-inch)"

        case .iPadPro12Inch3:
            return "iPad Pro (12.9-inch) (3rd generation)"

        case .iPadPro11Inch2:
            return "iPad Pro (11-inch) (2nd generation)"

        case .iPadPro12Inch4:
            return "iPad Pro (12.9-inch) (4th generation)"

        case .iPadPro11Inch3:
            return "iPad Pro (11-inch) (3rd generation)"

        case .iPadPro12Inch5:
            return "iPad Pro (12.9-inch) (5th generation)"

        case let .simulator(device):
            return "Simulator (\(device.description))"

        case let .unknown(identifier):
            return identifier
        }
    }
}
