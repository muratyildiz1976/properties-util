# PropertiesUtil

This is a util for examing, validating and organising Java properties files.
At the moment only the requirements are defined. Nothing implemented yet.
It's purpose is to avoid minor bugs with labeling things in the software.

## Get the code

Git:

    git clone https://github.com/muratyildiz1976/properties-util.git

Or simply [download a zip]( https://github.com/muratyildiz1976/properties-util/archive/master.zip ) file.

## Use Maven

Open a command window and run:

	cd properties-util
    mvn test

This runs Cucumber features using Cucumber's JUnit runner. The `@RunWith(Cucumber.class)` annotation on the `RunCukesTest`
class tells JUnit to kick off Cucumber.

## Use Gradle

Open a command window and run:

	cd properties-util
    ./gradlew test --info

This runs Cucumber features using Cucumber's JUnit runner. The `@RunWith(Cucumber.class)` annotation on the `RunCukesTest`
class tells JUnit to kick off Cucumber.
