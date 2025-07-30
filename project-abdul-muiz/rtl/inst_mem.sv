// Copyright 2025 Maktab-e-Digital Systems Lahore.
// Licensed under the Apache License, Version 2.0, see LICENSE file for details.
// SPDX-License-Identifier: Apache-2.0
//
// Author: Umer Shahid (@umershahidengr)
// =============================================================================
// Single-Cycle RISC-V Processor - Instruction Memory (Workshop Skeleton Version)
// =============================================================================

module imem (
    input  logic [31:0] addr,
    output logic [31:0] instruction
);

    logic [31:0] mem [0:1023]; // 4KB instruction memory

    initial begin
        // Example instruction
        //main function frfrfr
        mem[0] = 32'h00500093; // addi x1, x0, 5


        // TODO: Add more test instructions (e.g., addi, add, sub, etc.)
        // TODO: Fill the remaining memory with NOPs (32'h00000013) using a for loop
        mem[1] = 32'h00600113;
        mem[2] = 32'h002081b3;
        mem[3] = 32'h00000013;
        mem[4] = 32'h00000013;
        for (int i = 5; i < 1024; i++) begin
            mem[i] = 32'h00000013;
        end
    end

    // Word-aligned access
    assign instruction = mem[addr[31:2]];

endmodule
