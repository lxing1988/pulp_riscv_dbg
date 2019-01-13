/* Copyright 2018 ETH Zurich and University of Bologna.
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the “License”); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 * File: $filename.v
 *
 * Description: Auto-generated 32 bits bootrom
 */

// Auto-generated code
module debug_rom (
   input  logic         clk_i,
   input  logic         req_i,
   input  logic [31:0]  addr_i,
   output logic [31:0]  rdata_o
);
    localparam int RomSize = 31;

    const logic [RomSize-1:0][31:0] mem = {
        32'h7b200073,
        32'h7b302573,
        32'h7b202473,
        32'h10852423,
        32'h1a110537,
        32'hf1402473,
        32'haa1ff06f,
        32'h7b302573,
        32'h10052223,
        32'h7b202473,
        32'h00100073,
        32'h10052623,
        32'hfd1ff06f,
        32'hfc0410e3,
        32'h00247413,
        32'h40044403,
        32'h00a40433,
        32'hf1402473,
        32'h02041263,
        32'h00147413,
        32'h40044403,
        32'h00a40433,
        32'h10852023,
        32'h1a110537,
        32'hf1402473,
        32'h7b351073,
        32'h7b241073,
        32'h00000013,
        32'h0440006f,
        32'h0600006f,
        32'h00c0006f
    };

    logic [$clog2(RomSize)-1:0] addr_q;

    always_ff @(posedge clk_i) begin
        if (req_i) begin
            addr_q <= addr_i[$clog2(RomSize)-1+3:3];
        end
    end

    assign rdata_o = mem[addr_q];
endmodule
