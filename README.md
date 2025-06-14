# 🔢 Verilog Projects – BCD & Advanced Adders (Part 6)

This repository includes five advanced Verilog HDL projects focused on binary-to-display conversion, optimized adders, and BCD arithmetic techniques. These are crucial for anyone interested in digital system design, VLSI, or FPGA implementation.

---

## 📘 Included Projects

| No. | Project                              | Description                                      |
|-----|--------------------------------------|--------------------------------------------------|
| 26  | Binary to 7-Segment Display          | Converts BCD to segment control signals          |
| 27  | Carry Look-Ahead Adder (CLA)         | Fast 4-bit binary adder using generate/propagate |
| 28  | BCD Adder                            | Adds two BCD numbers with carry correction       |
| 29  | BCD to Excess-3 Converter            | Encodes BCD into Excess-3 representation         |
| 30  | Carry Save Adder (CSA)               | Adds three binary numbers efficiently            |

---

## 🔍 Project Details

### 2️⃣6️⃣ Binary to 7-Segment Display Converter

- **Input**: `D[3:0]`
- **Outputs**: `a` through `g`
- **Description**: Displays digits 0–9 on a seven-segment display.

📷 *Expected Output Preview*  
![BCD 7-Segment](assets/bcd_sevensegment_conv_waveform.png)

---

### 2️⃣7️⃣ Carry Look-Ahead Adder

- **Inputs**: `A[3:0]`, `B[3:0]`, `Cin`
- **Outputs**: `S[3:0]`, `Cout`, `out[4:0]`
- **Logic**: Uses generate/propagate terms for faster computation.

📷 *Expected Output Preview*  
![CLA Adder](assets/carry_look_ahead_adder_waveform.png)

---

### 2️⃣8️⃣ BCD Adder

- **Inputs**: `a[3:0]`, `b[3:0]`, `cin`
- **Outputs**: `sum[3:0]`, `cout`
- **Description**: Adds two BCD digits with correction (add +6 if > 9).

📷 *Expected Output Preview*  
![BCD Adder](assets/bcd_addition_waveform.png)

---

### 2️⃣9️⃣ BCD to Excess-3 Converter

- **Input**: `b[3:0]`
- **Output**: `x[3:0]`
- **Description**: Performs BCD to Excess-3 encoding using combinational logic.

📷 *Expected Output Preview*  
![BCD to Excess-3](assets/bcd_x3_conv_waveform.png)

---

### 3️⃣0️⃣ Carry Save Adder (CSA)

- **Inputs**: `a[3:0]`, `b[3:0]`, `c[3:0]`
- **Outputs**: `sum[4:0]`, `cout`, `out[5:0]`
- **Description**: Efficient addition of three numbers using intermediate full-adders.

📷 *Expected Output Preview*  
![Carry Save Adder](assets/carry_save_adder_waveform.png)

---

## ▶️ Simulation Instructions

Use **Icarus Verilog**, **ModelSim**, or **Vivado** to simulate:

### Example (with Icarus Verilog)
```bash
# Compile
iverilog -o tb_csa verilog/carry_save_adder.v testbench/tb_carry_save_adder.v

# Run
vvp tb_csa
