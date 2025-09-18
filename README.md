# OLOCA Approximate Vedic Multiplier

## Overview
This repository contains a **Verilog implementation of approximate Vedic multipliers** using **OLOCA hybrid adders**. The project implements 2x2, 4x4, and 8x8 multipliers with both exact and approximate adder modules to reduce area, delay, and power while maintaining acceptable accuracy.

The design leverages **approximate computing techniques** and hierarchical Vedic multiplication for efficient digital hardware implementation.

---

## Features

- Hierarchical **modular Vedic multipliers**: 2x2, 4x4, and 8x8.
- **Approximate adders (OLOCA)** for lower significance bits to reduce hardware complexity.
- Supports **8-bit operands**, producing 16-bit outputs.
- Includes exact adders for comparison and verification.
- Fully parameterized and modular for extension to larger multipliers.
- Includes **testbench for error analysis**.

---

## Modules

### 1. **OLOCA Approximate Adders**
- `oloca4`, `oloca6`, `oloca8`, `oloca12`
- Implement hybrid approximate addition for various bit-widths.
- Approximation applied to lower-order bits; higher-order bits propagate carries.

### 2. **Exact Adders**
- `add_4_bit`, `add_6_bit`, `add_8_bit`, `add_12_bit`
- Standard addition for verification and hierarchical computation.

### 3. **Half Adder**
- `ha` module: computes sum and carry for two single-bit inputs.

### 4. **Vedic Multipliers**
- **2x2 multiplier**: `vedic_2_x_2`
- **4x4 multiplier**: `vedic_4_x_4`
- **8x8 multiplier**: `vedic_8X8`
- Implements hierarchical multiplication using lower-bit modules and adders.

### 5. **Approximate Vedic Multipliers**
- `approx_vedic_2_x_2`, `approx_vedic_4_x_4`, `approx_vedic_8X8`
- Integrate **OLOCA approximate adders** with the Vedic multiplier structure.
- Reduce area and computation time while maintaining reasonable accuracy.

---

## How to Run

1. Place all Verilog files (`oloca*.v`, `add_*.v`, `vedic_*.v`, `approx_vedic_*.v`) in your Vivado/Verilog project directory.
2. Create a **testbench** to supply inputs and observe outputs.
3. Compile and simulate using Vivado Simulator, ModelSim, or Icarus Verilog.
4. Observe outputs:
   - Approximate sum/product using OLOCA adders.
   - Exact sum/product for comparison.
   - Compute **error rates** if desired.

---
## 📂 Repository Structure
```plaintext
OLOCA-Approximate-Vedic-Multiplier/
│
├── README.md                 # Project documentation
├── tb.txt                    # Test vectors for simulation
├── hybrid_adder.v            # Hybrid adder module (if used separately)
├── oloca_adders/             # Folder containing approximate adder modules
│   ├── oloca4.v
│   ├── oloca6.v
│   ├── oloca8.v
│   └── oloca12.v
│
├── exact_adders/             # Folder containing exact adder modules
│   ├── add_4_bit.v
│   ├── add_6_bit.v
│   ├── add_8_bit.v
│   └── add_12_bit.v
│
├── vedic_multipliers/        # Exact Vedic multiplier modules
│   ├── vedic_2_x_2.v
│   ├── vedic_4_x_4.v
│   └── vedic_8X8.v
│
├── approx_vedic_multipliers/ # Approximate Vedic multiplier modules
│   ├── approx_vedic_2_x_2.v
│   ├── approx_vedic_4_x_4.v
│   └── approx_vedic_8X8.v
│
└── testbench/                # Testbench for simulation
    └── testbench.v
```
---

### Schematic 
<img width="769" height="294" alt="image" src="https://github.com/user-attachments/assets/1372052f-cc4b-41ba-ae2c-9f01e64e896c" />

---

### Waveform Simulation
<img width="786" height="421" alt="image" src="https://github.com/user-attachments/assets/4fd7ca95-792f-401e-b871-5b33082fcbfb" />


---

### Performance Metrics
<img width="804" height="263" alt="image" src="https://github.com/user-attachments/assets/5dea2130-f320-4899-9d6b-0e355fbc2cc0" />

