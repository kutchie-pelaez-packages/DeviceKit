import UIKit

extension Device {
    public var safeAreaInsets: UIEdgeInsets {
        switch self {
        case .iPhone6s,
             .iPhone6sPlus,
             .iPhone7,
             .iPhone7Plus,
             .iPhoneSE,
             .iPhone8,
             .iPhone8Plus,
             .iPhoneSE2,
             .iPodTouch7:
            return UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)

        case .iPhoneX,
             .iPhoneXS,
             .iPhoneXSMax,
             .iPhone11Pro,
             .iPhone11ProMax:
            return UIEdgeInsets(top: 44, left: 0, bottom: 34, right: 0)

        case .iPhoneXR,
             .iPhone11:
            return UIEdgeInsets(top: 48, left: 0, bottom: 34, right: 0)

        case .iPhone12,
             .iPhone12Pro,
             .iPhone12ProMax,
             .iPhone13,
             .iPhone13Pro,
             .iPhone13ProMax:
            return UIEdgeInsets(top: 47, left: 0, bottom: 34, right: 0)

        case .iPhone12Mini,
             .iPhone13Mini:
            return UIEdgeInsets(top: 50, left: 0, bottom: 34, right: 0)

        case .iPad5,
             .iPad6,
             .iPad7,
             .iPad8,
             .iPad9,
             .iPadAir2,
             .iPadAir3,
             .iPadAir4,
             .iPadMini4,
             .iPadMini5,
             .iPadMini6,
             .iPadPro9Inch,
             .iPadPro12Inch,
             .iPadPro10Inch,
             .iPadPro12Inch2,
             .iPadPro11Inch,
             .iPadPro12Inch3,
             .iPadPro11Inch2,
             .iPadPro12Inch4,
             .iPadPro11Inch3,
              .iPadPro12Inch5:
            return UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)

        case let .simulator(device): return device.safeAreaInsets
        case .unknown: return .zero
        }
    }
}
