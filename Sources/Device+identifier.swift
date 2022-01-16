import Foundation

extension Device {
    public init(identifier: String) {
        switch identifier {
        case "iPhone8,1":
            self = .iPhone6s

        case "iPhone8,2":
            self = .iPhone6sPlus

        case "iPhone9,1", "iPhone9,3":
            self = .iPhone7

        case "iPhone9,2", "iPhone9,4":
            self = .iPhone7Plus

        case "iPhone8,4":
            self = .iPhoneSE

        case "iPhone10,1", "iPhone10,4":
            self = .iPhone8

        case "iPhone10,2", "iPhone10,5":
            self = .iPhone8Plus

        case "iPhone10,3", "iPhone10,6":
            self = .iPhoneX

        case "iPhone11,2":
            self = .iPhoneXS

        case "iPhone11,4", "iPhone11,6":
            self = .iPhoneXSMax

        case "iPhone11,8":
            self = .iPhoneXR

        case "iPhone12,1":
            self = .iPhone11

        case "iPhone12,3":
            self = .iPhone11Pro

        case "iPhone12,5":
            self = .iPhone11ProMax

        case "iPhone12,8":
            self = .iPhoneSE2

        case "iPhone13,2":
            self = .iPhone12

        case "iPhone13,1":
            self = .iPhone12Mini

        case "iPhone13,3":
            self = .iPhone12Pro

        case "iPhone13,4":
            self = .iPhone12ProMax

        case "iPhone14,5":
            self = .iPhone13

        case "iPhone14,4":
            self = .iPhone13Mini

        case "iPhone14,2":
            self = .iPhone13Pro

        case "iPhone14,3":
            self = .iPhone13ProMax

        case "iPod9,1":
            self = .iPodTouch7

        case "iPad6,11", "iPad6,12":
            self = .iPad5

        case "iPad7,5", "iPad7,6":
            self = .iPad6

        case "iPad7,11", "iPad7,12":
            self = .iPad7

        case "iPad11,6", "iPad11,7":
            self = .iPad8

        case "iPad12,1", "iPad12,2":
            self = .iPad9

        case "iPad5,3", "iPad5,4":
            self = .iPadAir2

        case "iPad11,3", "iPad11,4":
            self = .iPadAir3

        case "iPad13,1", "iPad13,2":
            self = .iPadAir4

        case "iPad5,1", "iPad5,2":
            self = .iPadMini4

        case "iPad11,1", "iPad11,2":
            self = .iPadMini5

        case "iPad14,1", "iPad14,2":
            self = .iPadMini6

        case "iPad6,3", "iPad6,4":
            self = .iPadPro9Inch

        case "iPad6,7", "iPad6,8":
            self = .iPadPro12Inch

        case "iPad7,3", "iPad7,4":
            self = .iPadPro10Inch

        case "iPad7,1", "iPad7,2":
            self = .iPadPro12Inch2

        case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":
            self = .iPadPro11Inch

        case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":
            self = .iPadPro12Inch3

        case "iPad8,9", "iPad8,10":
            self = .iPadPro11Inch2

        case "iPad8,11", "iPad8,12":
            self = .iPadPro12Inch4

        case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":
            self = .iPadPro11Inch3

        case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":
            self = .iPadPro12Inch5

        case "i386", "x86_64", "arm64":
            let environmentIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"
            self = .simulator(Device(identifier: environmentIdentifier))

        default:
            self = .unknown(identifier)
        }
    }

    public static let currentIdentifier: String = {
        var systemInfo = utsname()
        uname(&systemInfo)

        let mirror = Mirror(reflecting: systemInfo.machine)

        let identifier = mirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }

        return identifier
    }()
}
