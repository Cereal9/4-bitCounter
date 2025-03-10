## Design and Implementation of a 4-bit Loadable Counter


## Introduction
This lab focuses on the design, simulation, and implementation of a 4-bit loadable counter, a fundamental component in sequential digital logic. Counters are essential for various digital applications, including timing, sequencing, and event counting.

## Objectives
- Design, simulate, and implement a 4-bit loadable counter.
- Utilize multiplexers and flip-flops to control data flow.
- Implement the design on an FPGA and validate its functionality.

## 4-bit Loadable Counter Design and Implementation

### Theory
A **loadable counter** is a sequential circuit that can either increment or load a specific value based on control signals. The 4-bit counter designed in this lab utilizes D flip-flops and multiplexers to enable controlled counting and loading functions. It includes an active-high clear input for resetting the count and a load enable signal for loading a predefined value.

### Procedure
1. **Counter Design**
   - Create a new VHDL file `Counter-4bit.vhd`.
   - Design a 4-bit loadable counter using:
     - `D_flipflop` components.
     - `MUX2to1-1bit` multiplexer.
   - Implement an active-high clear input for resetting the count.
   - Develop testbench statements to verify counter operation.
   - Simulate and confirm correct functionality.

2. **FPGA Implementation**
   - Assign FPGA inputs/outputs as follows:
     - **D (Input Data)** → Switches 0-3
     - **Count Output** → LEDs 0-3
     - **Clk (Clock)** → Switch 4
     - **Clr (Clear)** → Switch 5
     - **Ct (Count Enable)** → Switch 6
     - **Ld (Load Enable)** → Switch 7
   - Deploy and test the counter on an FPGA.
   - Validate its functionality based on test cases.
   - Demonstrate functionality to the instructor.

## Observations and Results
- The counter correctly loaded values and incremented as expected.
- The clear input effectively reset the count.
- FPGA implementation verified expected behavior.
- The use of multiplexers simplified control logic.

## Conclusion
This lab demonstrated the design and implementation of a 4-bit loadable counter using VHDL. The counter successfully performed controlled counting operations, essential for digital systems requiring counting functionality. FPGA validation confirmed the reliability of the design in hardware applications.
