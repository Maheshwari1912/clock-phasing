# clock-phasing

**Introduction to Clock Phasing**

Clock phasing is a technique used in digital systems to generate multiple clock signals with different phase shifts from a single clock source. These phase-shifted clocks are used in applications like clock domain management, timing optimization, and parallel data processing.

**Aim of Clock Phasing**

The aim of clock phasing is to generate clock signals with controlled phase shifts (0°, 90°, 180°, 270°) relative to the main clock. This helps in synchronizing different logic blocks efficiently.

**Uses of Clock Phasing**

**Phase Interleaving in Data Processing** – Helps distribute workload across different clock phases, improving speed.

**Clock Synchronization** – Ensures proper alignment between multiple clock domains.

**High-Speed Data Sampling** – Used in ADCs, DDR memory interfaces, and high-speed communication protocols.

**Reducing Clock Skew** – Helps mitigate timing mismatches in complex digital circuits.

**Working of the clock_phasing Module**

**Clock Divider Logic:**

The count register (2-bit) helps create phase-shifted clock signals.

count toggles its bits in a specific pattern to generate phase shifts.

**Clock Toggling Mechanism:**

clk_2 toggles at half the frequency of the input clock, creating additional phase shifts.

**Clock Signal Assignments:**

clk_0 = count[1] → 0° phase

clk_90 = count[1] ^ clk_2 → 90° phase shift

clk_180 = ~count[1] → 180° phase shift

clk_270 = ~clk_90 → 270° phase shift

This method ensures phase control without requiring external PLLs or clock buffers.


**simulation results:**
![image](https://github.com/user-attachments/assets/b8d6f35f-3c5a-46c6-8eb0-361662811202)



