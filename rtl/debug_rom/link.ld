/* See LICENSE.SiFive for license details. */
OUTPUT_ARCH( "riscv" )
ENTRY( entry )
SECTIONS
{
    .whereto 0x1a110300 :
    {
        *(.whereto)
    }   
    . = 0x1a110800;
    .text :
    {
        *(.text)
    }
    _end = .;
}
