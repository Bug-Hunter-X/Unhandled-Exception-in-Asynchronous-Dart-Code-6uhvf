# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart programming:  unhandled exceptions in `Future` completions. The `bug.dart` file shows a `Completer` that may fail and how that failure is handled using a `try-catch` block.  The `bugSolution.dart` provides the solution to ensure all error conditions are caught and handled gracefully.

## Problem

The `bug.dart` file shows code that simulates an asynchronous operation. If the simulated operation fails, an exception is thrown.  However, without proper error handling, this exception might not be caught, leading to unexpected application behavior or crashes.  Using only a `catch` statement can mask the actual root cause.

## Solution

The `bugSolution.dart` provides the correct way of handling asynchronous errors using `try-catch` in an asynchronous Dart operation.