# <div align="center"> ⏱️ Counter Cubit ⏱️ </div>

## 🚀 Getting Started

- A flexible and scalable Flutter Counter Cubit implemented with the `flutter_bloc` package. Manage counter states effortlessly, promoting clean architecture and separation of concerns in your Flutter applications.

## 🎲 Features

- Bloc-based Architecture: Leverage the power of the `flutter_bloc` package for managing state with the Bloc pattern.
- Increment and Decrement: Easily perform increment and decrement operations on the counter state.
- Clean Architecture: Ensure a clear separation of concerns with distinct layers for business logic and UI components.
- Testable Code: Facilitates unit testing of the counter logic using Flutter's testing framework.

## ☢️ Usage

1- ***Add Dependency:*** Add the `flutter_bloc` dependencie to your pubspec.yaml file:

```yaml
dependencies:
  flutter_bloc:
```
And Run:
```bash
flutter pub get
```

2- ***Initialize BlocProvider:*** Create an instance of CounterCubitProvider:

```dart
home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const CounterScreen(),
      ),
```

3- Access the counter value using the BlocBuilder widget:

```dart
BlocBuilder<CounterCubit, CounterState>(
  builder: (context, state) {
    // Your UI code here
  },
)
```

4- ***Dispose:*** Dispose of the Bloc when no longer needed:

```dart
@override
void dispose() {
  CounterCubit.close();
  super.dispose();
}
```

## 📱 UI

<p align="center">
  <img src="https://github.com/Shalaby-VBS/Counter_Cubit/assets/149938388/dc86b3fa-e5ef-41e7-9cdf-f91c20c4a926"/>
  
## 🛠 Dependencies

```pubspec.yaml
  flutter_bloc: ^8.1.3
```

## 🚨 Contributing

- Contributions are welcome 💜
- If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

## 💳 License

- This project is licensed under the MIT License.

## 📞 Contact Me

<div align="left">
  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmed-shalaby-21196521b/) 
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/sh4l4by/)
</div>

## 💖 Support

- If you find this tutorial useful or learned something from this code, consider show some ❤️ by starring this repo ⭐️.
