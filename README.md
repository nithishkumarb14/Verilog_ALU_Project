## 🧮 Project Description

This project implements a **Configurable 8-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.  
The ALU performs various **arithmetic and logical operations** controlled by a 4-bit opcode.  
It is parameterized to allow scalability for wider data widths.

The design includes:
- **Arithmetic operations:** Addition, Addition with Carry, Subtraction, Increment, Decrement  
- **Logical operations:** AND, NOT  
- **Bitwise rotations:** Rotate Left (ROL), Rotate Right (ROR)  
- **Flags:** Carry, Borrow, Zero, Parity, Invalid Opcode detection  

The accompanying **testbench** (`alu_tb.v`) verifies each operation and generates a simulation waveform demonstrating the ALU’s behavior.

---

### 🖼️ Simulation Waveform
Below is the simulation result captured in Vivado/GTKWave showing transitions for different ALU operations:

![ALU Waveform](waveforms/alu_waveform.png)

---

### 🧩 Tools Used
- **Language:** Verilog HDL  
- **Simulation Tools:** Xilinx Vivado / Icarus Verilog + GTKWave  
- **Platform:** FPGA / HDL simulation environment  

---

### 👨‍💻 Author
NithishKumar B
B.E. Electronics and Communication Engineering  
Sri Krishna College of Engineering and Technology  
