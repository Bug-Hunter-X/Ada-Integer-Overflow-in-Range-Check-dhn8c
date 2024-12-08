# Ada Integer Overflow Bug

This repository demonstrates a subtle integer overflow bug in an Ada function that checks if an integer falls within a specified range.  The `Check_Range` function appears to work correctly for normal inputs, but it's susceptible to failure if excessively large or small values are used. The issue arises from the lack of explicit overflow checks. 

## How to Reproduce

1. Compile and run the `bug.ada` file. 
2. Observe the correct behavior for inputs within a reasonable range.
3. Modify the input value `Num` in `Main` procedure to a very large or very small integer (potentially exceeding the capacity of Integer type). The output might be incorrect. This is due to integer overflow which is not explicitly handled in Check_Range function.

## Solution

The `bugSolution.ada` file provides a corrected version of the code. The solution involves explicitly checking for potential overflow before performing the range check. This approach uses Ada's predefined attributes to determine the range boundaries of the `Integer` type.

## Lessons Learned

- Always be mindful of potential integer overflow, especially when dealing with user inputs or external data.
- Use appropriate error handling and exception mechanisms for improved program robustness. 
- Ada's predefined attributes such as `Integer'Last` and `Integer'First` can help to prevent Integer overflow related issues.