import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
extension Color {
    public static let coolGray = Color("CoolGray")
    public static let lightGray = Color("LightGray")
    public static let powerOrange = Color("PowerOrange")
    public static let teal = Color("Teal")
    public static let yellow = Color("Yellow")
}

@available(iOS 13.0, macOS 10.15, *)
extension Image {
    public init(name: Asset) {
        self.init(uiImage: UIImage(named: name.rawValue, in: .module, with: nil)!)
    }

    public enum Asset: String {
        case ArrowDown, ArrowLeft, ArrowRight, ArrowUp, Assets,
        Badge, Book, Calendar, ChangePassword, Chart, Check,
        CheckRound, Clear, Coaching, Cross, CustomFields,
        File, Filter, Fire, Folder, Insights, LearningCenter,
        Monitor, Pen, People, QuestionMark, Search, Settings,
        Sort, Templates, ThreeDots, TurnOff, User, UserRound
    }
}
