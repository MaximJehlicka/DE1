# Lab 7: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAME

### Display driver

1. Listing of VHDL code of the completed process `p_mux`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_mux:
    -- A sequential process that implements a multiplexer for
    -- selecting data for a single digit, a decimal point,
    -- and switches the common anodes of each display.
    --------------------------------------------------------
  p_mux : process (clk) is
  begin

    if (rising_edge(clk)) then
      if (rst = '1') then
        sig_hex <= data0;
        dp      <= dp_vect(0);
        dig     <= "1110";
      else

        case sig_cnt_2bit is

          when "11" =>
            sig_hex <= data3;
            dp      <= dp_vect(3);
            dig     <= "0111";

          when "10" =>
            sig_hex <= data2;
            dp      <= dp_vect(2);
            dig     <= "1011";
          when "01" =>
            sig_hex <= data1;
            dp      <= dp_vect(1);
            dig     <= "1101";

          when others =>
    
            sig_hex <= data0;
            dp      <= dp_vect(0);
            dig     <= "1110";
     
        end case;

      end if;
    end if;

  end process p_mux;

```

### Eight-digit driver

1. Image of the 8-digit driver's block schematic. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components, and internal signals!

![8bit](https://user-images.githubusercontent.com/125310309/228329058-ed5b4525-31d6-4d1d-b769-561606d0d5ef.png)
