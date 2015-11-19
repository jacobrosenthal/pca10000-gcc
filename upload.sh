openocd -f interface/jlink.cfg -c "adapter_khz 2000; transport select swd; set WORKAREASIZE 0;" -f target/nrf51.cfg -c "init; reset; init; halt; nrf51 mass_erase; program $1; reset; exit;"
