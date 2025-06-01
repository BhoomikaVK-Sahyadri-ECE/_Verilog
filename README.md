#  Verilog

Verilog is a **Hardware Description Language (HDL)** used to model and design digital electronic systems such as processors, FPGAs, and controllers.

---

## 📘 Key Concepts

- **Modules**: Building blocks that describe hardware components.
- **Data Types**: `wire`, `reg`, `integer`, `parameter`.
- **Procedural Blocks**: 
  - `always @(...)` — for clocked or combinational logic.
  - `initial` — for testbenches.
- **Operators**: Logical, arithmetic, bitwise, reduction.
- **Simulation Tools**: `Icarus Verilog`, `ModelSim`, `GTKWave`.

---

## 📦 Sample: 2-to-1 Multiplexer

```verilog
module mux2to1(a, b, sel, y);
  input [3:0] a, b;
  input sel;
  output [3:0] y;
  assign y = sel ? b : a;
endmodule
