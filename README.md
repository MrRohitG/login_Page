# login_page


---

# **Satzy Login Flutter App**

A modern, responsive **login page built in Flutter** with red-themed UI, validation, and reusable components.

---

## **Features**

* Clean and modern **UI with red theme**
* **Mobile number, username, and password fields** with validation
* **Show/hide password** functionality
* **Terms and Conditions checkbox**
* **Login button with form validation**
* Reusable **TextField widget** for scalability
* Responsive **SafeArea and ScrollView** layout
* **Footer with copyright and secure icon**

---



## **Installation & Setup**

1. **Clone the repository**

```bash
git clone <your-repo-url>
cd <project-folder>
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Connect your device or start an emulator**

* Android: Enable **USB Debugging** on your phone
* iOS: Use a simulator (Mac only)

4. **Run the app**

```bash
flutter run
```

5. **Hot reload** changes during development

* Press `r` in terminal
* Or use VS Code **Hot Reload button**

---

## **Project Structure**

```
lib/
 ├── main.dart        # Entry point
 └── loginpage.dart   # Login UI and logic
assets/
 └── images/          # Logos, icons, and secure mark
pubspec.yaml          # Dependencies and assets
```

---

## **Dependencies**

* `flutter`
* `google_fonts`

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^5.0.0
```

---

## **How it Works**

1. **Form Validation**: Ensures mobile number, username, and password are filled.
2. **Focus Handling**: TextFields highlight in **red** when focused.
3. **Password Visibility Toggle**: Users can show/hide password.
4. **Login Button**: Shows SnackBar on successful validation (can connect to backend later).
5. **Checkbox & Terms**: Ensures user accepts terms before login.

---

## **Future Improvements**

* Integrate **backend API** for real login authentication
* Add **forgot password** and **sign-up flow**
* Implement **animations** and **shimmer loading UI**
* Enhance **responsive layout for tablets and web**

---

## **Author**

**Rohit Gupta** – Software Engineering Student, DTU  

Copyright (c) 2025 Satzy Software Pvt Ltd

All rights reserved. This project and its source code are the intellectual property of Satzy Software Pvt Ltd. 
Unauthorized use, reproduction, or distribution of this project, in part or whole, is strictly prohibited.

---

## **Screenshots**


<img width="1892" height="825" alt="Screenshot 2025-08-26 130923" src="https://github.com/user-attachments/assets/05db6e66-db38-4423-87f0-ef712d2052f9" />
<img width="1900" height="860" alt="Screenshot 2025-08-26 131309" src="https://github.com/user-attachments/assets/a85646cf-a9dd-4150-b768-2e0911106dc5" />
<img width="1890" height="841" alt="Screenshot 2025-08-26 131419" src="https://github.com/user-attachments/assets/3160751d-41bb-4312-9bdc-4d088ff58aed" />
<img width="318" height="711" alt="Screenshot 2025-08-26 131436" src="https://github.com/user-attachments/assets/76cb6de2-0e96-4f37-8047-f9286758d80d" />
<img width="325" height="684" alt="Screenshot 2025-08-26 131504" src="https://github.com/user-attachments/assets/2efb748e-1de9-4126-bf69-e46b03a20153" />
