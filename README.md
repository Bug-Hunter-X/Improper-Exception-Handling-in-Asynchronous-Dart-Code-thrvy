# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient exception handling within asynchronous functions. The provided `bug.dart` file showcases the issue, while `bugSolution.dart` offers a more robust solution.

## Bug Description

The original code uses a `try-catch` block to handle exceptions during an HTTP request. However, it only prints the error to the console without providing mechanisms for user feedback or request retries. This makes the application less resilient to network issues or server errors.

## Solution

The improved code in `bugSolution.dart` addresses these shortcomings.  It offers more informative error handling, including custom exception types for more specific error messages and potentially implementing retries for transient network failures.