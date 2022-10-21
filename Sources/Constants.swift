/// All possible notifications you can subscribe to with `Observer`.
/// - seeAlso: [Notificatons](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/c/data/NSAccessibilityAnnouncementRequestedNotification)
public struct AXNotification: Hashable, RawRepresentable, ExpressibleByStringLiteral {
    public var rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.init(rawValue: value)
    }
}

extension AXNotification {
    // Focus notifications
    public static let mainWindowChanged: AXNotification       = "AXMainWindowChanged"
    public static let focusedWindowChanged: AXNotification    = "AXFocusedWindowChanged"
    public static let focusedUIElementChanged: AXNotification = "AXFocusedUIElementChanged"
    public static let focusedTabChanged: AXNotification       = "AXFocusedTabChanged"

    // Application notifications
    public static let applicationActivated: AXNotification    = "AXApplicationActivated"
    public static let applicationDeactivated: AXNotification  = "AXApplicationDeactivated"
    public static let applicationHidden: AXNotification       = "AXApplicationHidden"
    public static let applicationShown: AXNotification        = "AXApplicationShown"

    // Window notifications
    public static let windowCreated: AXNotification           = "AXWindowCreated"
    public static let windowMoved: AXNotification             = "AXWindowMoved"
    public static let windowResized: AXNotification           = "AXWindowResized"
    public static let windowMiniaturized: AXNotification      = "AXWindowMiniaturized"
    public static let windowDeminiaturized: AXNotification    = "AXWindowDeminiaturized"

    // Drawer & sheet notifications
    public static let drawerCreated: AXNotification           = "AXDrawerCreated"
    public static let sheetCreated: AXNotification            = "AXSheetCreated"

    // Element notifications
    public static let uiElementDestroyed: AXNotification      = "AXUIElementDestroyed"
    public static let valueChanged: AXNotification            = "AXValueChanged"
    public static let titleChanged: AXNotification            = "AXTitleChanged"
    public static let resized: AXNotification                 = "AXResized"
    public static let moved: AXNotification                   = "AXMoved"
    public static let created: AXNotification                 = "AXCreated"

    // Used when UI changes require the attention of assistive application.  Pass along a user info
    // dictionary with the key NSAccessibilityUIElementsKey and an array of elements that have been
    // added or changed as a result of this layout change.
    public static let layoutChanged: AXNotification           = "AXLayoutChanged"

    // Misc notifications
    public static let helpTagCreated: AXNotification          = "AXHelpTagCreated"
    public static let selectedTextChanged: AXNotification     = "AXSelectedTextChanged"
    public static let rowCountChanged: AXNotification         = "AXRowCountChanged"
    public static let selectedChildrenChanged: AXNotification = "AXSelectedChildrenChanged"
    public static let selectedRowsChanged: AXNotification     = "AXSelectedRowsChanged"
    public static let selectedColumnsChanged: AXNotification  = "AXSelectedColumnsChanged"
    public static let loadComplete: AXNotification            = "AXLoadComplete"

    public static let rowExpanded: AXNotification             = "AXRowExpanded"
    public static let rowCollapsed: AXNotification            = "AXRowCollapsed"

    // Cell-table notifications
    public static let selectedCellsChanged: AXNotification    = "AXSelectedCellsChanged"

    // Layout area notifications
    public static let unitsChanged: AXNotification            = "AXUnitsChanged"
    public static let selectedChildrenMoved: AXNotification   = "AXSelectedChildrenMoved"

    // This notification allows an application to request that an announcement be made to the user
    // by an assistive application such as VoiceOver.  The notification requires a user info
    // dictionary with the key NSAccessibilityAnnouncementKey and the announcement as a localized
    // string.  In addition, the key NSAccessibilityAnnouncementPriorityKey should also be used to
    // help an assistive application determine the importance of this announcement.  This
    // notification should be posted for the application element.
    public static let announcementRequested: AXNotification   = "AXAnnouncementRequested"
}

/// All UIElement roles.
/// - seeAlso: [Roles](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/doc/constant_group/Roles)
public struct Role: Hashable, RawRepresentable, ExpressibleByStringLiteral {
    public var rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.init(rawValue: value)
    }
}

extension Role {
    public static let unknown: Role            = "AXUnknown"
    public static let button: Role             = "AXButton"
    public static let radioButton: Role        = "AXRadioButton"
    public static let checkBox: Role           = "AXCheckBox"
    public static let slider: Role             = "AXSlider"
    public static let tabGroup: Role           = "AXTabGroup"
    public static let textField: Role          = "AXTextField"
    public static let staticText: Role         = "AXStaticText"
    public static let textArea: Role           = "AXTextArea"
    public static let scrollArea: Role         = "AXScrollArea"
    public static let popUpButton: Role        = "AXPopUpButton"
    public static let menuButton: Role         = "AXMenuButton"
    public static let table: Role              = "AXTable"
    public static let application: Role        = "AXApplication"
    public static let group: Role              = "AXGroup"
    public static let radioGroup: Role         = "AXRadioGroup"
    public static let list: Role               = "AXList"
    public static let scrollBar: Role          = "AXScrollBar"
    public static let valueIndicator: Role     = "AXValueIndicator"
    public static let image: Role              = "AXImage"
    public static let menuBar: Role            = "AXMenuBar"
    public static let menu: Role               = "AXMenu"
    public static let menuItem: Role           = "AXMenuItem"
    public static let menuBarItem: Role        = "AXMenuBarItem"
    public static let column: Role             = "AXColumn"
    public static let row: Role                = "AXRow"
    public static let toolbar: Role            = "AXToolbar"
    public static let busyIndicator: Role      = "AXBusyIndicator"
    public static let progressIndicator: Role  = "AXProgressIndicator"
    public static let window: Role             = "AXWindow"
    public static let drawer: Role             = "AXDrawer"
    public static let systemWide: Role         = "AXSystemWide"
    public static let outline: Role            = "AXOutline"
    public static let incrementor: Role        = "AXIncrementor"
    public static let browser: Role            = "AXBrowser"
    public static let comboBox: Role           = "AXComboBox"
    public static let splitGroup: Role         = "AXSplitGroup"
    public static let splitter: Role           = "AXSplitter"
    public static let colorWell: Role          = "AXColorWell"
    public static let growArea: Role           = "AXGrowArea"
    public static let sheet: Role              = "AXSheet"
    public static let helpTag: Role            = "AXHelpTag"
    public static let matte: Role              = "AXMatte"
    public static let ruler: Role              = "AXRuler"
    public static let rulerMarker: Role        = "AXRulerMarker"
    public static let link: Role               = "AXLink"
    public static let disclosureTriangle: Role = "AXDisclosureTriangle"
    public static let grid: Role               = "AXGrid"
    public static let relevanceIndicator: Role = "AXRelevanceIndicator"
    public static let levelIndicator: Role     = "AXLevelIndicator"
    public static let cell: Role               = "AXCell"
    public static let popover: Role            = "AXPopover"
    public static let layoutArea: Role         = "AXLayoutArea"
    public static let layoutItem: Role         = "AXLayoutItem"
    public static let handle: Role             = "AXHandle"
}

/// All UIElement subroles.
/// - seeAlso: [Subroles](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/doc/constant_group/Subroles)
public struct Subrole: Hashable, RawRepresentable, ExpressibleByStringLiteral {
    public var rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.init(rawValue: value)
    }
}

extension Subrole {
    public static let unknown: Subrole              = "AXUnknown"
    public static let closeButton: Subrole          = "AXCloseButton"
    public static let zoomButton: Subrole           = "AXZoomButton"
    public static let minimizeButton: Subrole       = "AXMinimizeButton"
    public static let toolbarButton: Subrole        = "AXToolbarButton"
    public static let tableRow: Subrole             = "AXTableRow"
    public static let outlineRow: Subrole           = "AXOutlineRow"
    public static let secureTextField: Subrole      = "AXSecureTextField"
    public static let standardWindow: Subrole       = "AXStandardWindow"
    public static let dialog: Subrole               = "AXDialog"
    public static let systemDialog: Subrole         = "AXSystemDialog"
    public static let floatingWindow: Subrole       = "AXFloatingWindow"
    public static let systemFloatingWindow: Subrole = "AXSystemFloatingWindow"
    public static let incrementArrow: Subrole       = "AXIncrementArrow"
    public static let decrementArrow: Subrole       = "AXDecrementArrow"
    public static let incrementPage: Subrole        = "AXIncrementPage"
    public static let decrementPage: Subrole        = "AXDecrementPage"
    public static let searchField: Subrole          = "AXSearchField"
    public static let textAttachment: Subrole       = "AXTextAttachment"
    public static let textLink: Subrole             = "AXTextLink"
    public static let timeline: Subrole             = "AXTimeline"
    public static let sortButton: Subrole           = "AXSortButton"
    public static let ratingIndicator: Subrole      = "AXRatingIndicator"
    public static let contentList: Subrole          = "AXContentList"
    public static let definitionList: Subrole       = "AXDefinitionList"
    public static let fullScreenButton: Subrole     = "AXFullScreenButton"
    public static let toggle: Subrole               = "AXToggle"
    public static let switchSubrole: Subrole        = "AXSwitch"
    public static let descriptionList: Subrole      = "AXDescriptionList"
}

/// Orientations returned by the orientation property.
/// - seeAlso: [NSAccessibilityOrientation](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSAccessibility_Protocol_Reference/index.html#//apple_ref/c/tdef/NSAccessibilityOrientation)
public enum Orientation: Int {
    case unknown    = 0
    case vertical   = 1
    case horizontal = 2
}

public struct Attribute: Hashable, RawRepresentable, ExpressibleByStringLiteral {
    public var rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.init(rawValue: value)
    }
}

extension Attribute {
    // Standard attributes
    public static let role: Self                                   = "AXRole" //(NSString *) - type, non-localized (e.g. radioButton)
    public static let roleDescription: Self                        = "AXRoleDescription" //(NSString *) - user readable role (e.g. "radio button")
    public static let subrole: Self                                = "AXSubrole" //(NSString *) - type, non-localized (e.g. closeButton)
    public static let help: Self                                   = "AXHelp" //(NSString *) - instance description (e.g. a tool tip)
    public static let value: Self                                  = "AXValue" //(id)         - element's value
    public static let minValue: Self                               = "AXMinValue" //(id)         - element's min value
    public static let maxValue: Self                               = "AXMaxValue" //(id)         - element's max value
    public static let enabled: Self                                = "AXEnabled" //(NSNumber *) - (boolValue) responds to user?
    public static let focused: Self                                = "AXFocused" //(NSNumber *) - (boolValue) has keyboard focus?
    public static let parent: Self                                 = "AXParent" //(id)         - element containing you
    public static let children: Self                               = "AXChildren" //(NSArray *)  - elements you contain
    public static let window: Self                                 = "AXWindow" //(id)         - UIElement for the containing window
    public static let topLevelUIElement: Self                      = "AXTopLevelUIElement" //(id)         - UIElement for the containing top level element
    public static let selectedChildren: Self                       = "AXSelectedChildren" //(NSArray *)  - child elements which are selected
    public static let visibleChildren: Self                        = "AXVisibleChildren" //(NSArray *)  - child elements which are visible
    public static let position: Self                               = "AXPosition" //(NSValue *)  - (pointValue) position in screen coords
    public static let size: Self                                   = "AXSize" //(NSValue *)  - (sizeValue) size
    public static let frame: Self                                  = "AXFrame" //(NSValue *)  - (rectValue) frame
    public static let contents: Self                               = "AXContents" //(NSArray *)  - main elements
    public static let title: Self                                  = "AXTitle" //(NSString *) - visible text (e.g. of a push button)
    public static let description: Self                            = "AXDescription" //(NSString *) - instance description
    public static let shownMenu: Self                              = "AXShownMenu" //(id)         - menu being displayed
    public static let valueDescription: Self                       = "AXValueDescription" //(NSString *)  - text description of value

    public static let sharedFocusElements: Self                    = "AXSharedFocusElements" //(NSArray *)  - elements that share focus

    // Misc attributes
    public static let previousContents: Self                       = "AXPreviousContents" //(NSArray *)  - main elements
    public static let nextContents: Self                           = "AXNextContents" //(NSArray *)  - main elements
    public static let header: Self                                 = "AXHeader" //(id)         - UIElement for header.
    public static let edited: Self                                 = "AXEdited" //(NSNumber *) - (boolValue) is it dirty?
    public static let tabs: Self                                   = "AXTabs" //(NSArray *)  - UIElements for tabs
    public static let horizontalScrollBar: Self                    = "AXHorizontalScrollBar" //(id)       - UIElement for the horizontal scroller
    public static let verticalScrollBar: Self                      = "AXVerticalScrollBar" //(id)         - UIElement for the vertical scroller
    public static let overflowButton: Self                         = "AXOverflowButton" //(id)         - UIElement for overflow
    public static let incrementButton: Self                        = "AXIncrementButton" //(id)         - UIElement for increment
    public static let decrementButton: Self                        = "AXDecrementButton" //(id)         - UIElement for decrement
    public static let filename: Self                               = "AXFilename" //(NSString *) - filename
    public static let expanded: Self                               = "AXExpanded" //(NSNumber *) - (boolValue) is expanded?
    public static let selected: Self                               = "AXSelected" //(NSNumber *) - (boolValue) is selected?
    public static let splitters: Self                              = "AXSplitters" //(NSArray *)  - UIElements for splitters
    public static let document: Self                               = "AXDocument" //(NSString *) - url as string - for open document
    public static let activationPoint: Self                        = "AXActivationPoint" //(NSValue *)  - (pointValue)

    public static let url: Self                                    = "AXURL" //(NSURL *)    - url
    public static let index: Self                                  = "AXIndex" //(NSNumber *)  - (intValue)

    public static let rowCount: Self                               = "AXRowCount" //(NSNumber *)  - (intValue) number of rows

    public static let columnCount: Self                            = "AXColumnCount" //(NSNumber *)  - (intValue) number of columns

    public static let orderedByRow: Self                           = "AXOrderedByRow" //(NSNumber *)  - (boolValue) is ordered by row?

    public static let warningValue: Self                           = "AXWarningValue" //(id)  - warning value of a level indicator, typically a number

    public static let criticalValue: Self                          = "AXCriticalValue" //(id)  - critical value of a level indicator, typically a number

    public static let placeholderValue: Self                       = "AXPlaceholderValue" //(NSString *)  - placeholder value of a control such as a text field

    public static let containsProtectedContent: Self               = "AXContainsProtectedContent" // (NSNumber *) - (boolValue) contains protected content?
    public static let alternateUIVisible: Self                     = "AXAlternateUIVisible" //(NSNumber *) - (boolValue)

    // Linkage attributes
    public static let titleUIElement: Self                         = "AXTitleUIElement" //(id)       - UIElement for the title
    public static let servesAsTitleForUIElements: Self             = "AXServesAsTitleForUIElements" //(NSArray *) - UIElements this titles
    public static let linkedUIElements: Self                       = "AXLinkedUIElements" //(NSArray *) - corresponding UIElements

    // Text-specific attributes
    public static let selectedText: Self                           = "AXSelectedText" //(NSString *) - selected text
    public static let selectedTextRange: Self                      = "AXSelectedTextRange" //(NSValue *)  - (rangeValue) range of selected text
    public static let numberOfCharacters: Self                     = "AXNumberOfCharacters" //(NSNumber *) - number of characters
    public static let visibleCharacterRange: Self                  = "AXVisibleCharacterRange" //(NSValue *)  - (rangeValue) range of visible text
    public static let sharedTextUIElements: Self                   = "AXSharedTextUIElements" //(NSArray *)  - text views sharing text
    public static let sharedCharacterRange: Self                   = "AXSharedCharacterRange" //(NSValue *)  - (rangeValue) part of shared text in this view
    public static let insertionPointLineNumber: Self               = "AXInsertionPointLineNumber" //(NSNumber *) - line# containing caret
    public static let selectedTextRanges: Self                     = "AXSelectedTextRanges" //(NSArray<NSValue *> *) - array of NSValue (rangeValue) ranges of selected text
    /// - note: private/undocumented attribute
    public static let textInputMarkedRange: Self                   = "AXTextInputMarkedRange"

    // Parameterized text-specific attributes
    public static let lineForIndexParameterized: Self              = "AXLineForIndexParameterized" //(NSNumber *) - line# for char index; param:(NSNumber *)
    public static let rangeForLineParameterized: Self              = "AXRangeForLineParameterized" //(NSValue *)  - (rangeValue) range of line; param:(NSNumber *)
    public static let stringForRangeParameterized: Self            = "AXStringForRangeParameterized" //(NSString *) - substring; param:(NSValue * - rangeValue)
    public static let rangeForPositionParameterized: Self          = "AXRangeForPositionParameterized" //(NSValue *)  - (rangeValue) composed char range; param:(NSValue * - pointValue)
    public static let rangeForIndexParameterized: Self             = "AXRangeForIndexParameterized" //(NSValue *)  - (rangeValue) composed char range; param:(NSNumber *)
    public static let boundsForRangeParameterized: Self            = "AXBoundsForRangeParameterized" //(NSValue *)  - (rectValue) bounds of text; param:(NSValue * - rangeValue)
    public static let rtfForRangeParameterized: Self               = "AXRTFForRangeParameterized" //(NSData *)   - rtf for text; param:(NSValue * - rangeValue)
    public static let styleRangeForIndexParameterized: Self        = "AXStyleRangeForIndexParameterized" //(NSValue *)  - (rangeValue) extent of style run; param:(NSNumber *)
    public static let attributedStringForRangeParameterized: Self  = "AXAttributedStringForRangeParameterized" //(NSAttributedString *) - does _not_ use attributes from Appkit/AttributedString.h

    // Text attributed string attributes and constants
    public static let fontText: Self                               = "AXFontText" //(NSDictionary *)  - NSAccessibilityFontXXXKey's
    public static let foregroundColorText: Self                    = "AXForegroundColorText" //CGColorRef
    public static let backgroundColorText: Self                    = "AXBackgroundColorText" //CGColorRef
    public static let underlineColorText: Self                     = "AXUnderlineColorText" //CGColorRef
    public static let strikethroughColorText: Self                 = "AXStrikethroughColorText" //CGColorRef
    public static let underlineText: Self                          = "AXUnderlineText" //(NSNumber *)     - underline style
    public static let superscriptText: Self                        = "AXSuperscriptText" //(NSNumber *)     - superscript>0, subscript<0
    public static let strikethroughText: Self                      = "AXStrikethroughText" //(NSNumber *)     - (boolValue)
    public static let shadowText: Self                             = "AXShadowText" //(NSNumber *)     - (boolValue)
    public static let attachmentText: Self                         = "AXAttachmentText" //id - corresponding element
    public static let linkText: Self                               = "AXLinkText" //id - corresponding element
    public static let autocorrectedText: Self                      = "AXAutocorrectedText" //(NSNumber *)     - (boolValue)

    // Textual list attributes and constants. Examples: unordered or ordered lists in a document.
    public static let listItemPrefixText: Self                     = "AXListItemPrefixText" // NSAttributedString, the prepended string of the list item. If the string is a common unicode character (e.g. a bullet •), return that unicode character. For lists with images before the text, return a reasonable label of the image.
    public static let listItemIndexText: Self                      = "AXListItemIndexText" // NSNumber, integerValue of the line index. Each list item increments the index, even for unordered lists. The first item should have index 0.
    public static let listItemLevelText: Self                      = "AXListItemLevelText" // NSNumber, integerValue of the indent level. Each sublist increments the level. The first item should have level 0.

    // MisspelledText attributes
    public static let misspelledText: Self                         = "AXMisspelledText" //(NSNumber *)     - (boolValue)
    public static let markedMisspelledText: Self                   = "AXMarkedMisspelledText" //(NSNumber *) - (boolValue)

    // Window-specific attributes
    public static let main: Self                                   = "AXMain" //(NSNumber *) - (boolValue) is it the main window?
    public static let minimized: Self                              = "AXMinimized" //(NSNumber *) - (boolValue) is window minimized?
    public static let closeButton: Self                            = "AXCloseButton" //(id) - UIElement for close box (or nil)
    public static let zoomButton: Self                             = "AXZoomButton" //(id) - UIElement for zoom box (or nil)
    public static let minimizeButton: Self                         = "AXMinimizeButton" //(id) - UIElement for miniaturize box (or nil)
    public static let toolbarButton: Self                          = "AXToolbarButton" //(id) - UIElement for toolbar box (or nil)
    public static let proxy: Self                                  = "AXProxy" //(id) - UIElement for title's icon (or nil)
    public static let growArea: Self                               = "AXGrowArea" //(id) - UIElement for grow box (or nil)
    public static let modal: Self                                  = "AXModal" //(NSNumber *) - (boolValue) is the window modal
    public static let defaultButton: Self                          = "AXDefaultButton" //(id) - UIElement for default button
    public static let cancelButton: Self                           = "AXCancelButton" //(id) - UIElement for cancel button
    public static let fullScreenButton: Self                       = "AXFullScreenButton" //(id) - UIElement for full screen button (or nil)
    /// - note: private/undocumented attribute
    public static let fullScreen: Self                             = "AXFullScreen" //(NSNumber *) - (boolValue) is the window fullscreen

    // Application-specific attributes
    public static let menuBar: Self                                = "AXMenuBar" //(id)         - UIElement for the menu bar
    public static let windows: Self                                = "AXWindows" //(NSArray *)  - UIElements for the windows
    public static let frontmost: Self                              = "AXFrontmost" //(NSNumber *) - (boolValue) is the app active?
    public static let hidden: Self                                 = "AXHidden" //(NSNumber *) - (boolValue) is the app hidden?
    public static let mainWindow: Self                             = "AXMainWindow" //(id)         - UIElement for the main window.
    public static let focusedWindow: Self                          = "AXFocusedWindow" //(id)         - UIElement for the key window.
    public static let focusedUIElement: Self                       = "AXFocusedUIElement" //(id)         - Currently focused UIElement.
    public static let extrasMenuBar: Self                          = "AXExtrasMenuBar" //(id)         - UIElement for the application extras menu bar.
    /// - note: private/undocumented attribute
    public static let enhancedUserInterface: Self                  = "AXEnhancedUserInterface" //(NSNumber *) - (boolValue) is the enhanced user interface active?

    public static let orientation: Self                            = "AXOrientation" //(NSString *) - NSAccessibilityXXXOrientationValue

    public static let columnTitles: Self                           = "AXColumnTitles" //(NSArray *)  - UIElements for titles

    public static let searchButton: Self                           = "AXSearchButton" //(id)         - UIElement for search field search btn
    public static let searchMenu: Self                             = "AXSearchMenu" //(id)         - UIElement for search field menu
    public static let clearButton: Self                            = "AXClearButton" //(id)         - UIElement for search field clear btn

    // Table/outline view attributes
    public static let rows: Self                                   = "AXRows" //(NSArray *)  - UIElements for rows
    public static let visibleRows: Self                            = "AXVisibleRows" //(NSArray *)  - UIElements for visible rows
    public static let selectedRows: Self                           = "AXSelectedRows" //(NSArray *)  - UIElements for selected rows
    public static let columns: Self                                = "AXColumns" //(NSArray *)  - UIElements for columns
    public static let visibleColumns: Self                         = "AXVisibleColumns" //(NSArray *)  - UIElements for visible columns
    public static let selectedColumns: Self                        = "AXSelectedColumns" //(NSArray *)  - UIElements for selected columns
    public static let sortDirection: Self                          = "AXSortDirection" //(NSString *) - see sort direction values below

    // Cell-based table attributes
    public static let selectedCells: Self                          = "AXSelectedCells" //(NSArray *)  - UIElements for selected cells
    public static let visibleCells: Self                           = "AXVisibleCells" //(NSArray *)  - UIElements for visible cells
    public static let rowHeaderUIElements: Self                    = "AXRowHeaderUIElements" //(NSArray *)  - UIElements for row headers
    public static let columnHeaderUIElements: Self                 = "AXColumnHeaderUIElements" //(NSArray *)  - UIElements for column headers

    // Cell-based table parameterized attributes.  The parameter for this attribute is an NSArray containing two NSNumbers, the first NSNumber specifies the column index, the second NSNumber specifies the row index.
    public static let cellForColumnAndRowParameterized: Self       = "AXCellForColumnAndRowParameterized" // (id) - UIElement for cell at specified row and column

    // Cell attributes.  The index range contains both the starting index, and the index span in a table.
    public static let rowIndexRange: Self                          = "AXRowIndexRange" //(NSValue *)  - (rangeValue) location and row span
    public static let columnIndexRange: Self                       = "AXColumnIndexRange" //(NSValue *)  - (rangeValue) location and column span

    // Layout area attributes
    public static let horizontalUnits: Self                        = "AXHorizontalUnits" //(NSString *) - see ruler unit values below
    public static let verticalUnits: Self                          = "AXVerticalUnits" //(NSString *) - see ruler unit values below
    public static let horizontalUnitDescription: Self              = "AXHorizontalUnitDescription" //(NSString *)
    public static let verticalUnitDescription: Self                = "AXVerticalUnitDescription" //(NSString *)

    // Layout area parameterized attributes
    public static let layoutPointForScreenPointParameterized: Self = "AXLayoutPointForScreenPointParameterized" //(NSValue *)  - (pointValue); param:(NSValue * - pointValue)
    public static let layoutSizeForScreenSizeParameterized: Self   = "AXLayoutSizeForScreenSizeParameterized" //(NSValue *)  - (sizeValue); param:(NSValue * - sizeValue)
    public static let screenPointForLayoutPointParameterized: Self = "AXScreenPointForLayoutPointParameterized" //(NSValue *)  - (pointValue); param:(NSValue * - pointValue)
    public static let screenSizeForLayoutSizeParameterized: Self   = "AXScreenSizeForLayoutSizeParameterized" //(NSValue *)  - (sizeValue); param:(NSValue * - sizeValue)

    // Layout item attributes
    public static let handles: Self                                = "AXHandles" //(NSArray *)  - UIElements for handles

    // Outline attributes
    public static let disclosing: Self                             = "AXDisclosing" //(NSNumber *) - (boolValue) is disclosing rows?
    public static let disclosedRows: Self                          = "AXDisclosedRows" //(NSArray *)  - UIElements for disclosed rows
    public static let disclosedByRow: Self                         = "AXDisclosedByRow" //(id)         - UIElement for disclosing row
    public static let disclosureLevel: Self                        = "AXDisclosureLevel" //(NSNumber *) - indentation level

    // Slider attributes
    public static let allowedValues: Self                          = "AXAllowedValues" //(NSArray<NSNumber *> *) - array of allowed values
    public static let labelUIElements: Self                        = "AXLabelUIElements" //(NSArray *) - array of label UIElements
    public static let labelValue: Self                             = "AXLabelValue" //(NSNumber *) - value of a label UIElement

    // Matte attributes
    // Attributes no longer supported
    public static let matteHole: Self                              = "AXMatteHole" //(NSValue *) - (rect value) bounds of matte hole in screen coords
    public static let matteContentUIElement: Self                  = "AXMatteContentUIElement" //(id) - UIElement clipped by the matte

    // Ruler view attributes
    public static let markerUIElements: Self                       = "AXMarkerUIElements" //(NSArray *)
    public static let markerValues: Self                           = "AXMarkerValues" //
    public static let markerGroupUIElement: Self                   = "AXMarkerGroupUIElement" //(id)
    public static let units: Self                                  = "AXUnits" //(NSString *) - see ruler unit values below
    public static let unitDescription: Self                        = "AXUnitDescription" //(NSString *)
    public static let markerType: Self                             = "AXMarkerType" //(NSString *) - see ruler marker type values below
    public static let markerTypeDescription: Self                  = "AXMarkerTypeDescription" //(NSString *)

    // UI element identification attributes
    public static let identifier: Self                             = "AXIdentifier" //(NSString *)

    // System-wide attributes
    public static let focusedApplication: Self                     = "AXFocusedApplication"

    // Unknown attributes
    public static let functionRowTopLevelElements: Self            = "AXFunctionRowTopLevelElements"
    public static let childrenInNavigationOrder: Self              = "AXChildrenInNavigationOrder"
}

/// All actions a `UIElement` can support.
/// - seeAlso: [Actions](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Protocols/NSAccessibility_Protocol/#//apple_ref/doc/constant_group/Actions)
public struct Action: Hashable, RawRepresentable, ExpressibleByStringLiteral {
    public var rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.init(rawValue: value)
    }
}

extension Action {
    public static let press: Self           = "AXPress"
    public static let increment: Self       = "AXIncrement"
    public static let decrement: Self       = "AXDecrement"
    public static let confirm: Self         = "AXConfirm"
    public static let pick: Self            = "AXPick"
    public static let cancel: Self          = "AXCancel"
    public static let raise: Self           = "AXRaise"
    public static let showMenu: Self        = "AXShowMenu"
    public static let delete: Self          = "AXDelete"
    public static let showAlternateUI: Self = "AXShowAlternateUI"
    public static let showDefaultUI: Self   = "AXShowDefaultUI"
}
