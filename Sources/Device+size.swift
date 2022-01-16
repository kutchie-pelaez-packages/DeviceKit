extension Device {
    public struct ScreenSize {
        public let width: Double
        public let height: Double

        public var ratio: Double {
            width / height
        }
    }

    public var diagonal: Double {
        switch self {
        case .iPhoneSE, .iPodTouch7:
            return 4

        case .iPhone6s, .iPhone7, .iPhone8, .iPhoneSE2:
            return 4.7

        case .iPhone12Mini, .iPhone13Mini:
            return 5.4

        case .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
            return 5.5

        case .iPhoneX, .iPhoneXS, .iPhone11Pro:
            return 5.8

        case .iPhoneXR, .iPhone11, .iPhone12, .iPhone12Pro, .iPhone13, .iPhone13Pro:
            return 6.1

        case .iPhoneXSMax, .iPhone11ProMax:
            return 6.5

        case .iPhone12ProMax, .iPhone13ProMax:
            return 6.7

        case .iPadMini4, .iPadMini5:
            return 7.9

        case .iPadMini6:
            return 8.3

        case .iPad5, .iPad6, .iPadAir2, .iPadPro9Inch:
            return 9.7

        case .iPad7, .iPad8, .iPad9:
            return 10.2

        case .iPadAir3, .iPadPro10Inch:
            return 10.5

        case .iPadAir4:
            return 10.9

        case .iPadPro11Inch, .iPadPro11Inch2, .iPadPro11Inch3:
            return 11.0

        case .iPadPro12Inch, .iPadPro12Inch2, .iPadPro12Inch3, .iPadPro12Inch4, .iPadPro12Inch5:
            return 12.9

        case let .simulator(device): return
            device.diagonal

        case .unknown:
            return -1
        }
    }

    public var screenSize: ScreenSize {
        switch self {
        case .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax:
            return ScreenSize(width: 9, height: 19.5)

        case .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneSE2, .iPodTouch7:
            return ScreenSize(width: 9, height: 16)

        case .iPadMini6:
            return ScreenSize(width: 744, height: 1133)

        case .iPadAir4:
            return ScreenSize(width: 41, height: 59)

        case .iPadPro11Inch, .iPadPro11Inch2, .iPadPro11Inch3:
            return ScreenSize(width: 139, height: 199)

        case .iPadPro12Inch3, .iPadPro12Inch4, .iPadPro12Inch5:
            return ScreenSize(width: 512, height: 683)

        case .iPad5, .iPad6, .iPad7, .iPad8, .iPad9, .iPadAir2, .iPadAir3, .iPadMini4, .iPadMini5, .iPadPro9Inch, .iPadPro12Inch, .iPadPro10Inch, .iPadPro12Inch2:
            return ScreenSize(width: 3, height: 4)

        case let .simulator(device):
            return device.screenSize

        case .unknown:
            return ScreenSize(width: -1, height: -1)
        }
    }

    public var ppi: Int {
        switch self {
        case .iPad5, .iPad6, .iPad7, .iPad8, .iPad9, .iPadAir2, .iPadAir3, .iPadAir4, .iPadPro9Inch, .iPadPro12Inch, .iPadPro10Inch, .iPadPro12Inch2, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5:
            return 264

        case .iPhone6s, .iPhone7, .iPhoneSE, .iPhone8, .iPhoneXR, .iPhone11, .iPhoneSE2, .iPodTouch7, .iPadMini4, .iPadMini5, .iPadMini6:
            return 326

        case .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
            return 401

        case .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhone11Pro, .iPhone11ProMax, .iPhone12ProMax, .iPhone13ProMax:
            return 458

        case .iPhone12, .iPhone12Pro, .iPhone13, .iPhone13Pro:
            return 460

        case .iPhone12Mini, .iPhone13Mini:
            return 476

        case let .simulator(device):
            return device.ppi

        case .unknown:
            return -1
        }
    }

    public var cornerRadius: Double {
        switch self {
        case .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhone11Pro, .iPhone11ProMax:
            return 39.0

        case .iPhoneXR, .iPhone11:
            return 41.5

        case .iPhone12Mini:
            return 44.0

        case .iPhone12, .iPhone12Pro, .iPhone13, .iPhone13Pro:
            return 47.33

        case .iPhone12ProMax, .iPhone13ProMax:
            return 53.33

        case .iPadPro11Inch:
            return 18.0

        case let .simulator(device):
            return device.cornerRadius

        default:
            return 0
        }
    }
}
