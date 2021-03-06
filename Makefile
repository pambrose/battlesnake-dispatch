default: versioncheck

clean:
	./gradlew clean

compile:
	./gradlew build -xtest

build: compile

tests:
	./gradlew check

versioncheck:
	./gradlew dependencyUpdates

upgrade-wrapper:
	./gradlew wrapper --gradle-version=6.8.3 --distribution-type=bin