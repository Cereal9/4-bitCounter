## Design and Implementation of a 4-bit Loadable Counter

### Theory
A **loadable counter** is a sequential circuit that increments or loads a specific value. The 4-bit counter designed in this lab uses D flip-flops and multiplexers to enable controlled counting and loading functions.

### Procedure
- Create a new VHDL file named `Counter-4bit.vhd`.
- Design a 4-bit loadable counter using D flip-flops and the `MUX2to1_1bit` component from Lab 4.
- Add an active-high clear input to reset the count.
- Define four test statements to verify counter functionality.
- Simulate and confirm the correct operation of the counter.
- Implement the counter on an FPGA with the following assignments:
  - **D (Input Data)** → Switches 0-3
  - **Count Output** → LEDs 0-3
  - **Clk (Clock)** → Switch 4
  - **Clr (Clear)** → Switch 5
  - **Ct (Count Enable)** → Switch 6
  - **Ld (Load Enable)** → Switch 7
- Validate the functionality based on test statements.
- Demonstrate functionality to the instructor.

### Observations and Results
- The counter correctly loaded values and incremented as expected.
- The clear input effectively reset the count.
- FPGA implementation verified expected behavior.

### Conclusion
The 4-bit loadable counter successfully demonstrated controlled counting operations, essential for digital counting applications.



## Summary and Final Thoughts
This lab provided practical experience with registers and counters, reinforcing their roles in sequential circuit design. The FPGA implementations matched simulation expectations, confirming the accuracy of the designs.

Future improvements could include:
- Implementing bidirectional shift registers.
- Adding synchronous reset and preset functions.
- Expanding the counter to more bits for broader applications.

### Files in Repository
- `MUX2to1_1bit.vhd` – VHDL code for the multiplexer
- `4to1_MUX.vhd` – VHDL code for the multiplexer
- `ShiftRegister.vhd` – VHDL code for the shift register
- Simulation screenshots (to be added)