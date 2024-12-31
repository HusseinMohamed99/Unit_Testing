# Unit Testing

## What is testing

* Ensuring that the app does exactly what it should.
* Verifying that the actual software product matches expected requirements.

## Why do we need testing

* To discover defects before the delivery to the client.
* To reduce flaws in the component or system.
* To increase the overall quality of the software.

## Main types of testing

* Manual.
* Automated.

## Tests in flutter

* Unit test.
* Widget test.
* Integration test.

## Unit test

* For all code besides the UI widgets.
* One set of unit tests usually tests a single function, method or class.
* Easier to write and runs faster.

## Widget test

* For testing a single widget.
* Runs on a simulated UI environment.
* It involves multiple classes and requires a test environment that provides the appropriate widget lifecycle context.

## Integration test

* For testing the complete app or large parts of the app from the user's perspective
* To verify that all the widgets and services being tested work together as expected
* It can be used to verify your app’s performance
* Runs on an emulator, simulator or a real device
* It's hard to write and runs slower

## AAA pattern

* Arrange(setup everything that is going to be used in the test)
* Act(call the specific method or make the change that we want to test)
* Assert(compare expected value with actual value)
