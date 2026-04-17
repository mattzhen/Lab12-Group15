# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Devon Humphrey, Matt Zhen
## Summary
In this lab, we implemented One Hot and Binary encodings using D flip-flops and combinatorial logic. Finding the combinatorial logic for the Binary encodings was done using K-maps, while the One Hot logic was determined visually through drawing out the state table. 
## Lab Questions

### Compare and contrast One Hot and Binary encodings
For starters, the one hot FSM needs a D flip-flop for each state being represented. Meanwhile the Binary encoding requires log base 2 (N states) D flip-flops to represent N states. For a large number of states, the number of D flip-flops needed may be inconvenient for one hot. Meanwhile for Binary encodings, some binary states might just not exist due to not being needed.
### Which method did your team find easier, and why?
The D flip-flop was more straightforward in implementing, and thus it was easier. It was easier to determine visually what conditions would trigger what state based on the state table.
### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
The main condition we thought of is using binary encodings due to a large number of states. When there’s a large number of states, One Hot encodings are less efficient than Binary encodings due to needing more D flip-flops. Though for small numbers of states, since One Hot encodings really only have to look at the value of one D flip-flop, One Hot might be more ideal.
