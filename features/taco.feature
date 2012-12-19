
Feature: Taco shell
    In order to run programs with flexible input
    As a UNIX user
    I want to start a shell and run commands with variable substitution

    @future
    Scenario: The shell can be started and exited
        When I run `taco` interactively
        And I type "exit"
        Then the exit status should be 0

    @future
    Scenario: The shell presents a prompt
        When I run `taco` interactively
        And I type "exit"
        Then the output should contain exactly:
        """
        taco> 
        """

    @future
    Scenario: Echo a simple string
        When I run `taco` interactively
        And I type "echo 'bananas'"
        And I type "exit"
        Then the output should contain:
        """
        bananas
        """

    @future
    Scenario: Run a command with variable substitution
        When I run `taco` interactively
        And I type "set var bananas"
        And I type "echo $var"
        And I type "exit"
        Then the output should contain:
        """
        bananas
        """

    @future
    Scenario: Run a command that exists in a directory in the PATH variable

