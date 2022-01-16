extension Device: Equatable {
    public static func == (lhs: Device, rhs: Device) -> Bool {
        lhs.description == rhs.description
    }
}
