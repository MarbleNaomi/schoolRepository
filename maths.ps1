#!/usr/bin/pwsh

# operation variable set to a meaningless variable to initialise
$OPERATION = "x"

# main loop to keep doing calculations unless given a !
while ( $OPERATION -ne "0" ) {
    $OPERATION = Read-Host - Prompt "Enter operation (+, -, *, /, or 0 to exit)"

    # breaks loop if input is 0
    if ( $OPERATION -eq "0" ) {
        echo "Application closed"
        break
    }

    $NUMBER1 = Read-Host - Prompt "Enter the first number: "
    $NUMBER2 = Read-Host - Prompt "Enter the second number: "

    if ( $OPERATION -eq "+" ) {
        $NUMBER3 = [int]$NUMBER1 + [int]$NUMBER2  #[int] to ensure the input is in integer form
    } elseif ( $OPERATION -eq "-" ) {
        $NUMBER3 = [int]$NUMBER1 - [int]$NUMBER2
    } elseif ( $OPERATION -eq "*" ) {
        $NUMBER3 = [int]$NUMBER1 * [int]$NUMBER2
    } elseif ( $OPERATION -eq "/" ) {
        $NUMBER3 = [int]$NUMBER1 / [int]$NUMBER2
    } else {
        echo "Invalid input"
        continue
    }

    # output
    echo "Output: $NUMBER3"
}
