#if os(macOS)
import Cocoa
#endif
import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
extension Color {
    public static let coolGray = Color("CoolGray", bundle: .module)
    public static let lightGray = Color("LightGray", bundle: .module)
    public static let powerOrange = Color("PowerOrange", bundle: .module)
    public static let powerTeal = Color("Teal", bundle: .module)
    public static let yellow = Color("Yellow", bundle: .module)
    public static let softBlack = Color("SoftBlack", bundle: .module)
}

@available(iOS 13.0, macOS 11.0, *)
extension Image {
    public init(name: Asset) {
#if os(iOS)
        self.init(uiImage: UIImage(named: name.rawValue, in: .module, with: nil)!)
#else
        self.init(name.rawValue, bundle: .module)
#endif
    }
    
    public enum Asset: String {
        case ArrowDown, ArrowLeft, ArrowRight, ArrowUp, Assets,
             Badge, Book, Calendar, Camera, Cancel, ChangePassword,
             Chart, ChatBubbles, Check, CheckRound, Clear, Coaching,
             Contact, Cross, CustomFields,Download, Exit, FavoriteStar,
             File, Filter, Fire, Folder, Insights, LearningCenter,
             Link, Mail, MapLayers, Menu, Monitor, Pen, People,
             QuestionMark, RemoveForm, Ringer, Save, Search, Settings,
             Sort, Templates, ThreeDots, TurnOff, Upload, User, UserRound, World
    }
}
