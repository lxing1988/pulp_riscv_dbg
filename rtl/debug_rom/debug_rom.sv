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
module bootrom (
   input  logic         clk_i,
   input  logic         req_i,
   input  logic [31:0]  addr_i,
   output logic [31:0]  rdata_o
);
    localparam int RomSize = 26;

    const logic [RomSize-1:0][31:0] mem = {
        32'h00000000,
        32'h00000000,
        32'h7B200073,
        32'h7B202473,
        32'h10802423,
        32'hF1402473,
        32'h30000067,
        32'h10002223,
        32'h7B202473,
        32'h00100073,
        32'h10002623,
        32'hFDDFF06F,
        32'hFC0418E3,
        32'h00247413,
        32'h40044403,
        32'hF1402473,
        32'h02041063,
        32'h00147413,
        32'h40044403,
        32'h10802023,
        32'hF1402473,
        32'h7B241073,
        32'h0FF0000F,
        32'h0340006F,
        32'h04C0006F,
        32'h00C0006F
    };

    logic [$clog2(RomSize)-1:0] addr_q;

    always_ff @(posedge clk_i) begin
        if (req_i) begin
            addr_q <= addr_i[$clog2(RomSize)-1+3:3];
        end
    end

    assign rdata_o = mem[addr_q];
endmodule
