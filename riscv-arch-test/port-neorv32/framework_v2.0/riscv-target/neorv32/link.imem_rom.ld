OUTPUT_ARCH( "riscv" )
ENTRY(rvtest_entry_point)

SECTIONS
{
  . = 0x00000000;
  .text :
  {
    *(.text.init)
    . = ALIGN(0x1000);
    *(.text)
    . = ALIGN(0x1000);
    _end = .;
  }

  . = 0x80000000;
  .data :
  {
    . = ALIGN(0x1000);
    *(.tohost)
    *(.data)
    *(.data.string)
    *(.bss)
  }
}

