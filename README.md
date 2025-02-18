# clean_architecture

This application demonstrates a simple task app that fetches tasks from an API using the Dio package and implements Clean Architecture principles.
## Architecture

The app follows a Clean Architecture structure, dividing the code into the following layers:

*   **Presentation Layer:** Contains the UI (widgets) and state management (BLoC).
*   **Domain Layer:** Contains use cases that encapsulate business logic and  repositories (interface) .
*   **Data Layer:** Contains repositories (implementations) and data sources (remote )and model.

## Dependencies

*   `flutter_bloc`: For state management.
*   `dio`: For making HTTP requests to the API.
*   `get_it`: For dependency injection.
## video Demo output
[clean_architecture.webm](https://github.com/user-attachments/assets/40970f9e-e745-479c-aa31-de60129450d4)
