# FloatView

###  Floating View App with PIP Dependency in Flutter

This Flutter application demonstrates the implementation of Picture-in-Picture (PIP) mode . The app allows users to minimize the main content into a small floating window while displaying other content, facilitating a multitasking experience similar to video streaming apps or chat applications.

## Features

- **Picture-in-Picture Mode**: Minimize the main screen into a floating window.
- **Dynamic Content Switching**: Display additional content while the main screen is in floating mode.
- **Responsive Design**: Adjusts layout to avoid system UI intrusions like notches and status bars.

<!--- ## Screenshots --->



## Usage

### Main Components

1. **FloatView (Main Screen)**:
   - The main screen of the application.
   - Contains an AppBar styled with a blue background.
   - Displays the HomeScreen widget.

2. **HomeScreen (Main Content with PIP View)**:
   - The primary content area of the application.
   - Utilizes the `PIPView` widget to enable PIP functionality.
   - Contains a button to activate the floating mode.

3. **BackgroundScreen (Secondary Content)**:
   - Displayed as the main content when the HomeScreen is minimized into a floating window.
   - Provides additional context or functionality.

## Key Functionalities

- **FloatView**:
  - Displays the main content (`HomeScreen`) with a styled AppBar.
  - Acts as the primary entry point of the application.

- **HomeScreen**:
  - Wrapped inside a `PIPView` widget to enable PIP functionality.
  - The `resizeToAvoidBottomInset` property is set to adjust the layout based on whether the view is in floating mode.
  - Contains a button to switch to floating mode and present the `BackgroundScreen`.

- **BackgroundScreen**:
  - Shown as the main content when the primary content is minimized.
  - Ensures content is displayed within the safe areas of the screen.


## 📧 Contact

### Shantanu Khadse
  
- GitHub: [ShantanuKH](https://github.com/ShantanuKH)
- Email: shantanukhadse784@gmail.com  
- LinkedIn: [shantanukhadse](https://www.linkedin.com/in/shantanu-khadse-a62585230/)  
