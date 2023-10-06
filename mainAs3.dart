import 'dart:io';
import 'dart:math';

void main() {
  List<Map<String, String>> dartQuestions = [
    {
      "question": "What is Dart programming language?",
      "answer":
          "Dart is a general-purpose, object-oriented programming language developed by Google. It is used for building web, mobile, desktop, and server applications."
    },
    {
      "question": "What are the main features of Dart?",
      "answer":
          "Dart is known for its fast performance, strong type system, object-oriented programming support, and great tools like the Dart VM, Dart SDK, and Flutter framework for building mobile applications."
    },
    {
      "question": "How do you declare a variable in Dart?",
      "answer":
          "You can declare a variable in Dart using the 'var' keyword, followed by the variable name and its data type. For example: 'var name = 'John';'"
    },
    {
      "question": "What is type inference in Dart?",
      "answer":
          "Type inference in Dart allows the Dart compiler to automatically determine the data type of a variable based on its value. You can use the 'var' keyword for type inference."
    },
    {
      "question":
          "Explain the difference between 'final' and 'const' keywords in Dart.",
      "answer":
          "'final' variables can be set only once, whereas 'const' variables are compile-time constants, meaning their values must be known at compile time and cannot change."
    },
    {
      "question": "What are the basic data types in Dart?",
      "answer":
          "Dart supports data types such as int, double, String, bool, and dynamic. 'int' is used for integers, 'double' for floating-point numbers, 'String' for textual data, 'bool' for boolean values, and 'dynamic' for dynamic (runtime determined) types."
    },
    {
      "question": "Explain the concept of functions in Dart.",
      "answer":
          "Functions in Dart are blocks of reusable code that perform a specific task. Dart supports named, anonymous, and higher-order functions. Functions can also be assigned to variables and passed as arguments to other functions."
    },
    {
      "question": "What is the Dart main() function?",
      "answer":
          "The 'main()' function is the entry point of a Dart program. Execution starts from this function. It returns 'void' and does not accept any arguments."
    },
    {
      "question": "How do you create a class in Dart?",
      "answer":
          "You can create a class in Dart using the 'class' keyword followed by the class name. Classes can contain properties (variables) and methods (functions). For example: 'class MyClass { int myProperty; void myMethod() { /* code */ } }'"
    },
    {
      "question": "Explain inheritance in Dart.",
      "answer":
          "Inheritance is a mechanism in Dart where a class can inherit properties and methods from another class. The class that is inherited from is called the superclass, and the inheriting class is called the subclass. Dart supports single inheritance, meaning a class can inherit from only one superclass."
    },
    {
      "question": "What is object-oriented programming (OOP) in Dart?",
      "answer":
          "Object-oriented programming is a programming paradigm that uses objects and classes for organizing code. Dart is an object-oriented language, which means it uses the concepts of objects, classes, encapsulation, inheritance, and polymorphism."
    },
    {
      "question": "Explain the concept of asynchronous programming in Dart.",
      "answer":
          "Asynchronous programming in Dart allows you to perform time-consuming tasks without blocking the program's execution. Dart provides 'async' and 'await' keywords to work with asynchronous code, along with 'Future' and 'Stream' classes for managing asynchronous operations."
    },
    {
      "question": "What is the Flutter framework?",
      "answer":
          "Flutter is a popular open-source UI software development toolkit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter uses the Dart programming language."
    },
    {
      "question": "How do you handle exceptions in Dart?",
      "answer":
          "Dart provides 'try', 'catch', and 'finally' blocks for exception handling. You can use 'try' to enclose the code that might throw an exception, 'catch' to handle specific exceptions, and 'finally' to execute code regardless of whether an exception was thrown or not."
    },
    {
      "question": "Explain the concept of mixins in Dart.",
      "answer":
          "Mixins are a way to reuse a class's code in multiple class hierarchies. In Dart, a mixin is a class that provides methods and properties that can be used by other classes. You can use the 'with' keyword to include a mixin in a class."
    },
    {
      "question": "What is the purpose of the 'async' keyword in Dart?",
      "answer":
          "The 'async' keyword is used to indicate that a function performs asynchronous operations. An async function can use the 'await' keyword to wait for asynchronous operations to complete. Dart allows you to write asynchronous code using async/await, making it easier to work with asynchronous tasks."
    },
    {
      "question": "Explain the concept of closures in Dart.",
      "answer":
          "Closures in Dart allow functions to capture and remember the scope in which they were created. This means a function can access variables from its containing function, even after the containing function has completed execution. Closures are often used with asynchronous programming and event handling."
    },
    {
      "question": "What is dependency injection in Dart?",
      "answer":
          "Dependency injection is a design pattern in which a class receives its dependencies from external sources rather than creating them itself. Dart supports dependency injection, which helps in managing the dependencies of classes and makes the code more testable and maintainable."
    },
    {
      "question": "How do you work with JSON in Dart?",
      "answer":
          "Dart provides built-in support for JSON. You can convert Dart objects to JSON using the 'jsonEncode()' function and convert JSON strings to Dart objects using the 'jsonDecode()' function. JSON (JavaScript Object Notation) is a lightweight data interchange format that is easy for humans to read and write."
    },
    {
      "question": "Explain the concept of named constructors in Dart.",
      "answer":
          "In Dart, you can define named constructors, which are special constructors with names. Named constructors allow you to create multiple ways to construct an object. You can define named constructors using the 'ClassName.constructorName' syntax."
    },
    {
      "question": "What is the purpose of the 'is' and 'as' operators in Dart?",
      "answer":
          "The 'is' operator is used to check the type of an object at runtime. It returns 'true' if the object is an instance of the specified type, otherwise 'false'. The 'as' operator is used for type casting. It allows you to cast an object to a specific type if the object is of that type, otherwise, it throws a runtime error."
    },
    {
      "question": "Explain the concept of futures in Dart.",
      "answer":
          "Futures in Dart represent values that might not be available yet. They are used for asynchronous programming, allowing you to perform operations asynchronously and handle the result once it's available. Futures can be completed with a value (successful result) or with an error."
    },
    {
      "question": "What is the purpose of the 'stream' in Dart?",
      "answer":
          "A stream in Dart is a sequence of asynchronous events. It allows you to process a sequence of values over time. Streams are commonly used for handling input/output, such as reading data from a file or receiving data over a network connection."
    },
    {
      "question": "How do you handle routing in Dart applications?",
      "answer":
          "In Dart web applications, you can handle routing using the 'package:angular_router' package. This package provides a way to handle different views (pages) based on the URL. You can define routes, navigate between views, and pass parameters using this package."
    },
    {
      "question": "Explain the concept of lazy loading in Dart.",
      "answer":
          "Lazy loading is a technique in Dart and other programming languages where you load a module or a part of your application only when it's needed. This helps in reducing the initial load time of the application, as modules are loaded on-demand."
    },
    {
      "question": "What are singletons in Dart?",
      "answer":
          "Singletons are design patterns in Dart where a class has only one instance, providing a global point of access to it. This instance is created once and reused throughout the application. Dart provides various ways to implement singletons, including factory constructors and static variables."
    },
    {
      "question": "How do you create custom exceptions in Dart?",
      "answer":
          "You can create custom exceptions in Dart by defining a new class that extends the 'Exception' class or any other exception class. This custom class represents your custom exception. You can then throw instances of this class using the 'throw' keyword when an exceptional condition occurs in your code."
    },
    {
      "question":
          "What is the role of the 'sync*' and 'async*' functions in Dart?",
      "answer":
          "The 'sync*' and 'async*' functions are used to define synchronous and asynchronous generators in Dart. 'sync*' functions generate a sequence of values synchronously, allowing you to iterate over them using a 'for...in' loop. 'async*' functions generate a sequence of values asynchronously, allowing you to use 'await' inside the function to wait for values before yielding them."
    },
    {
      "question": "Explain the concept of reflection in Dart.",
      "answer":
          "Reflection in Dart allows you to inspect, analyze, and manipulate your program's structure and behavior during runtime. Dart provides a 'reflectable' package that enables reflection capabilities. Reflection is useful for tasks like serialization, deserialization, and building dynamic UIs where you need to work with objects and classes dynamically."
    },
    {
      "question": "What are annotations in Dart?",
      "answer":
          "Annotations in Dart are a form of metadata that provides additional information about the program's elements, such as classes, methods, or variables. Annotations are used for various purposes, including code generation, documentation, and runtime behavior customization. Dart allows you to create custom annotations for specific use cases."
    },
    {
      "question": "How do you work with databases in Dart applications?",
      "answer":
          "Dart provides database support through various packages like 'sqflite' for SQLite databases and 'moor' for reactive, typesafe, and easy-to-use database operations. These packages allow you to create, read, update, and delete records in databases. You can use asynchronous programming and 'Future' objects to handle database operations efficiently."
    },
    {
      "question": "What is the purpose of the 'extension' keyword in Dart?",
      "answer":
          "The 'extension' keyword in Dart allows you to add new functionality to existing classes without modifying their source code. Extensions provide a way to extend classes with new methods, getters, or setters. This is particularly useful for adding utility methods to classes that you don't control or modifying classes from external libraries."
    },
    {
      "question": "Explain the concept of isolate in Dart.",
      "answer":
          "An isolate in Dart is a separate memory space with its own event loop that runs concurrently with the main isolate (main program). Isolates do not share memory, making them suitable for concurrent and parallel processing. Dart provides the 'Isolate' class for creating and communicating with isolates, allowing you to perform tasks concurrently."
    },
    {
      "question":
          "How do you handle internationalization in Dart applications?",
      "answer":
          "Dart provides the 'intl' package, which offers internationalization and localization support. This package allows you to translate text, format dates, numbers, and currencies based on different locales. You can use message lookup, pluralization, and gender support to handle various language-specific requirements in your applications."
    },
    {
      "question":
          "What is the role of the 'async' and 'await' keywords in Dart?",
      "answer":
          "The 'async' keyword is used to define asynchronous functions in Dart. An async function returns a 'Future' and can contain 'await' expressions, which allow you to wait for asynchronous operations to complete. 'await' suspends the function's execution until the awaited operation is done. This makes it easier to work with asynchronous code in a synchronous manner."
    },
    {
      "question": "Explain the concept of null safety in Dart.",
      "answer":
          "Null safety in Dart is a feature that helps prevent null reference errors in your code. It ensures that variables cannot have a 'null' value unless explicitly specified. Dart introduces a sound null safety system, where variables are either non-nullable (guaranteed not to be null) or nullable (can be null). Non-nullable variables are denoted by a '?' after their type declaration."
    },
    {
      "question": "How do you perform unit testing in Dart applications?",
      "answer":
          "Dart provides a built-in testing framework called 'test'. Using this framework, you can write unit tests for your Dart code. You can create test cases, define test functions, and run tests either from the command line or an IDE. Additionally, Dart supports test coverage analysis, allowing you to measure how much of your code is covered by tests."
    },
    {
      "question": "What is the purpose of the 'with' keyword in Dart?",
      "answer":
          "The 'with' keyword in Dart is used for mixin composition. Mixins are a way to reuse a class's code in multiple class hierarchies. By using the 'with' keyword, a class can inherit properties and methods from one or more mixins. This allows you to create modular and reusable code components in your Dart applications."
    },
    {
      "question": "Explain the concept of isolates in Dart.",
      "answer":
          "Isolates in Dart are independent workers that run concurrently with the main isolate. They do not share memory with the main isolate or other isolates, making them suitable for parallel processing. Isolates communicate by passing messages, allowing you to perform tasks concurrently without shared state, reducing the likelihood of race conditions and other concurrency issues."
    },
    {
      "question": "What is the purpose of the 'assert' keyword in Dart?",
      "answer":
          "The 'assert' keyword in Dart is used for debugging and validating assumptions in your code. When an 'assert' statement is encountered, Dart evaluates the given expression. If the expression evaluates to 'false', an AssertionError is thrown. 'assert' statements are typically used during development and testing to catch logical errors and invalid states in the code."
    },
    {
      "question": "Explain the concept of package management in Dart.",
      "answer":
          "Package management in Dart involves managing external libraries and dependencies for your projects. Dart uses the 'pub' package manager, which allows you to search, install, and publish packages. The 'pubspec.yaml' file is used to specify project dependencies and configurations. Dart packages can be hosted on the 'pub.dev' repository, making it easy to share and discover packages."
    },
    {
      "question":
          "What are the benefits of using the Dart programming language?",
      "answer":
          "Dart offers several benefits, including its fast performance, strong type system, flexibility, and ease of learning. It is especially popular for building web and mobile applications, thanks to the Flutter framework. Dart's null safety feature enhances code reliability, and its asynchronous programming support simplifies working with asynchronous tasks. Additionally, Dart supports both AOT (Ahead of Time) and JIT (Just in Time) compilation, enabling efficient execution on various platforms."
    },
    {
      "question": "Explain the concept of garbage collection in Dart.",
      "answer":
          "Garbage collection in Dart is the process of automatically identifying and reclaiming memory occupied by objects that are no longer in use by the program. Dart uses a generational garbage collector that divides objects into different generations based on their age. The garbage collector periodically runs in the background, identifying and freeing up memory occupied by unreachable objects, ensuring efficient memory usage and preventing memory leaks."
    },
    {
      "question": "How does Dart support functional programming?",
      "answer":
          "Dart supports functional programming paradigms by treating functions as first-class objects. This means functions can be assigned to variables, passed as arguments to other functions, and returned from functions. Dart provides higher-order functions, allowing the creation of functions that operate on other functions. It also supports anonymous functions (closures) and provides functions like 'map', 'reduce', and 'filter' for working with collections in a functional style."
    },
    {
      "question": "Explain the concept of mixins in Dart.",
      "answer":
          "Mixins in Dart allow the reuse of a class's code in multiple class hierarchies. A mixin is a class that provides methods and properties that can be used by other classes without becoming their parent class. The 'with' keyword is used to include a mixin in a class. Mixins promote code reuse and composition, enabling the creation of modular and flexible class structures."
    },
    {
      "question": "What is the role of the 'sync' package in Dart?",
      "answer":
          "The 'sync' package in Dart provides support for synchronous programming, allowing you to perform synchronous tasks and operations. It offers classes like 'Lock', 'Semaphore', and 'Queue' that facilitate synchronization in multi-threaded environments. The 'sync' package is particularly useful when working with isolates and concurrent programming, ensuring thread-safe operations and preventing race conditions."
    },
    {
      "question": "Explain the concept of web programming in Dart.",
      "answer":
          "Dart can be used for web programming to create interactive and dynamic web applications. Dart provides a comprehensive set of libraries and tools for building web applications, including client-side and server-side frameworks. The 'dart:html' library allows you to manipulate the DOM (Document Object Model) and handle user interactions in the browser. Dart also supports server-side frameworks like 'Aqueduct' for building robust and scalable web backends."
    },
    {
      "question": "What are abstract classes in Dart?",
      "answer":
          "Abstract classes in Dart are classes that cannot be instantiated directly. They are meant to be subclassed, serving as blueprints for other classes. Abstract classes can have abstract methods (methods without a body) that must be implemented by any concrete (non-abstract) subclass. Abstract classes allow you to define a common interface for multiple related classes, promoting code reuse and polymorphism."
    },
    {
      "question": "How do you perform error handling in Dart applications?",
      "answer":
          "Error handling in Dart is typically done using try-catch blocks. The 'try' block contains the code that might throw an exception. If an exception is thrown, the 'catch' block handles the exception, allowing you to provide specific error handling logic. Dart also supports 'finally' blocks, which are executed regardless of whether an exception was thrown or not. Additionally, you can create custom exception classes to represent specific error scenarios in your application."
    },
    {
      "question":
          "Explain the concept of state management in Dart applications.",
      "answer":
          "State management in Dart applications involves managing the state (data) of the application in a way that ensures consistency and responsiveness. Dart applications, especially those built with frameworks like Flutter, often have complex UIs that respond to user interactions and external events. Various state management approaches, such as Provider, Riverpod, Redux, and setState, are used to handle state changes, update the UI, and maintain a smooth user experience."
    },
    {
      "question": "What is the role of the 'factory' keyword in Dart?",
      "answer":
          "The 'factory' keyword in Dart is used to create factory constructors. A factory constructor is a special type of constructor that may or may not create a new instance of the class. It can return an existing instance or a subclass instance, allowing you to control the object creation process. Factory constructors are commonly used for implementing factory design patterns and optimizing object creation."
    },
    {
      "question":
          "Explain the concept of streams and reactive programming in Dart.",
      "answer":
          "Streams in Dart represent a sequence of asynchronous events. They allow you to handle and react to asynchronous data or events as they occur. Dart's 'dart:async' library provides support for working with streams. Reactive programming, based on streams, is a programming paradigm that emphasizes the propagation of changes and the handling of asynchronous data streams. It is commonly used for UI updates, data synchronization, and event-driven programming."
    },
    {
      "question": "What are extension methods in Dart?",
      "answer":
          "Extension methods in Dart allow you to add new functionality to existing classes without modifying their source code. Extensions enable you to define additional methods (including getters and setters) for existing classes, making it convenient to work with classes that you don't own or control. Extension methods promote code readability, reusability, and modularity by keeping related methods together."
    },
    {
      "question": "Explain the concept of RxDart in Dart applications.",
      "answer":
          "RxDart is a popular reactive programming library for Dart that provides an implementation of reactive extensions (Rx) for Dart programming language. RxDart extends Dart's streams with powerful operators and patterns for working with asynchronous data streams. It allows you to handle complex asynchronous scenarios, such as debouncing, throttling, combining streams, and error handling, using a functional and reactive approach."
    },
    {
      "question": "How do you work with HTTP requests in Dart applications?",
      "answer":
          "Dart provides the 'http' package, which allows you to make HTTP requests in Dart applications. You can send GET, POST, PUT, DELETE, and other types of HTTP requests to interact with REST APIs and web services. The 'http' package provides functions for making asynchronous HTTP requests and handling responses. It is widely used in Dart applications for data fetching and integration with backend services."
    },
    {
      "question":
          "What are the benefits of using Dart with Flutter for mobile app development?",
      "answer":
          "Dart, when used with Flutter, offers several advantages for mobile app development. It provides a rich set of pre-designed widgets and a reactive framework, allowing you to create beautiful, responsive, and native-like user interfaces for both Android and iOS platforms. Dart's hot reload feature enables real-time code changes without losing the application state, speeding up the development process. Additionally, Dart's performance optimization and the Flutter framework's flexibility make it a popular choice for building high-quality and efficient mobile applications."
    },
    {
      "question":
          "Explain the concept of the BLoC pattern in Dart applications.",
      "answer":
          "The BLoC (Business Logic Component) pattern in Dart applications is an architectural pattern used for state management and separation of concerns. In the BLoC pattern, the business logic and UI are decoupled, allowing for easier testing and maintenance. BLoCs handle data transformation, validation, and interaction with external services. Dart's streams and reactive programming are often used in conjunction with the BLoC pattern to manage state changes and update the UI efficiently."
    },
    {
      "question":
          "How do you implement navigation in Dart applications using Flutter?",
      "answer":
          "In Flutter applications, navigation is implemented using the 'Navigator' class. Flutter provides a 'Navigator' widget and a 'PageRouteBuilder' class to manage navigation between different screens (routes). You can use 'Navigator.push()' to navigate to a new screen and 'Navigator.pop()' to go back. Flutter also supports named routes, allowing you to define routes with names and navigate using these names. Additionally, you can pass data between screens using arguments."
    },
    {
      "question": "What is the purpose of the 'async' package in Dart?",
      "answer":
          "The 'async' package in Dart provides additional asynchronous programming utilities and classes. It includes features such as asynchronous mutexes, timeouts, and various tools for managing asynchronous tasks. The 'async' package complements Dart's native asynchronous programming capabilities, offering advanced functionalities for complex asynchronous scenarios and synchronization."
    },
    {
      "question": "Explain the concept of isolates in Dart.",
      "answer":
          "Isolates in Dart are independent workers that run concurrently with the main isolate (main program). They do not share memory, making them suitable for parallel processing. Dart's isolates communicate by passing messages, allowing for concurrent execution without shared state. Isolates are often used for computationally intensive tasks, background processing, and parallel execution of code segments."
    },
    {
      "question": "How do you perform background tasks in Dart applications?",
      "answer":
          "Dart provides the 'compute()' function, which allows you to perform computationally intensive tasks in the background. The 'compute()' function runs a function in a separate isolate, ensuring that the main isolate remains responsive and the application's UI does not freeze. By isolating time-consuming operations, you can maintain a smooth user experience while executing complex computations or data processing tasks in Dart applications."
    },
    {
      "question":
          "Explain the concept of the 'async' and 'await' keywords in Dart.",
      "answer":
          "The 'async' and 'await' keywords in Dart are used for asynchronous programming. 'async' is used to declare that a function performs asynchronous operations, allowing it to use 'await'. 'await' is used inside an 'async' function to pause the function's execution until the awaited Future completes. This enables you to write asynchronous code that looks similar to synchronous code, improving readability and simplifying the handling of asynchronous tasks."
    },
    {
      "question": "What is the purpose of the 'test' package in Dart?",
      "answer":
          "The 'test' package in Dart provides a testing framework for writing unit tests. It allows developers to create test cases, define test functions, and perform assertions to validate the behavior of their code. The 'test' package provides a structured way to write tests, organize them into groups, and execute them. It also supports asynchronous testing, allowing you to write tests for asynchronous code and handle asynchronous operations in your test cases."
    },
    {
      "question": "Explain the concept of the 'mixin' keyword in Dart.",
      "answer":
          "The 'mixin' keyword in Dart is used to define mixins, which are a way to reuse a class's code in multiple class hierarchies. Mixins allow you to add functionalities to classes without inheriting from them, promoting code reuse and modularity. You can use the 'with' keyword to include a mixin in a class. Mixins are often used to share methods and properties among different classes without creating a deep inheritance hierarchy."
    },
    {
      "question":
          "How do you handle errors in asynchronous code using 'Future' in Dart?",
      "answer":
          "In Dart, you can handle errors in asynchronous code using the 'Future' class. When an asynchronous operation completes with an error, the corresponding 'Future' is completed with an error state. You can use the 'catchError()' method on a 'Future' to handle errors. 'catchError()' allows you to specify a callback function that will be called when an error occurs, allowing you to handle and process errors in your asynchronous code."
    },
    {
      "question": "What is the purpose of the 'partition' method in Dart?",
      "answer":
          "The 'partition' method in Dart is used to partition a collection into two separate collections based on a predicate function. It takes a predicate function as an argument and returns a pair of lists. The first list contains the elements for which the predicate function returns 'true', and the second list contains the elements for which the predicate function returns 'false'. The 'partition' method is useful for categorizing and separating elements in a collection based on specific criteria."
    },
    // ... (your list of questions and answers goes here)
  ];

  List<int> askedIndices = [];
  int correctAnswers = 0;
  DartQuize quize = DartQuize(askedIndices, correctAnswers, dartQuestions);
  quize.startQuize();
}

class DartQuize {
  List<Map<String, String>> dartQuestions;
  List<int> askedIndices;
  int correctAnswers;

  DartQuize(this.askedIndices, this.correctAnswers, this.dartQuestions);

  startQuize() {
    for (int i = 0; i < 20; i++) {
      int randomNo;
      do {
        randomNo = Random().nextInt(dartQuestions.length);
      } while (askedIndices.contains(randomNo));
      askedIndices.add(randomNo);
      print("Question ${i + 1}:${dartQuestions[randomNo]['question']}");
      print("your answer: ");
      String? userAnswer = stdin.readLineSync()!;

      if (userAnswer.toLowerCase() ==
          dartQuestions[randomNo]['answer']!.toLowerCase()) {
        correctAnswers + 1;
      }
    }
    double percentage = correctAnswers / 20 * 100;
    print("\nTotal Correct Answers: $correctAnswers out of 20");
    print("Percentage: ${percentage.toStringAsFixed(2)}%");

    if (percentage > 50) {
      print("Congratulations! You did great!");
    } else {
      print("Keep practicing. You can do better!");
    }
  }
}
