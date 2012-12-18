
Feature: Taco shell
    In order to run programs with flexible input
    As a UNIX user
    I want to start a shell and run commands with variable substitution

    @future
    Scenario: The shell presents a prompt
        Given a terminal prompt
        When I run `taco`
        Then I should see "taco> "

    @future
    Scenario: The shell can be started and exited
        Given a terminal prompt
        When I run `taco`
        And I enter `exit`
        Then the program should exit successfully

    @future
    Scenario: Echo a simple string
        Given a terminal prompt
        When I run `taco`
        And I enter `echo "bananas"`
        Then I should see "bananas"

    @future
    Scenario: Run a command with variable substitution
        Given a terminal prompt
        When I run `taco`
        And I enter `set var "bananas"`
        And I enter `echo $var`
        Then I should see "bananas"

    @future
    Scenario: Run a command that exists in a directory in the PATH variable

