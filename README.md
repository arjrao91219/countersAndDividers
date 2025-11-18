# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab, we designed a ripple counter using chains of T-FlipFlops that divide the clock input in half for each T-FlipFlop in the sequence. Then we designed a modulo counter using full-adders and D-FlipFlops for each bit, then the bits are compared using combinatorial logic (when the bits are equal to the value of the reset trigger value, the comparator triggers the D-FlipFlops to reset and toggles the output T-FlipFlop) whose output is fed to a final output T-FlipFlop which determines the output of the divided clock.
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

