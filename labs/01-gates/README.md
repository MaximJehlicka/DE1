# Lab 1: Maxim Jehlička

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):
 
![IMG_20230215_104923](https://user-images.githubusercontent.com/125310309/219005038-2e260948-bf59-4bfd-9228-68f24976c881.jpg)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));
    f_nand_o <= (not((not(b_i) nand a_i) and (c_i nand (not(b_i) and a_i))));
    f_nor_o  <= ((b_i nor not(a_i)) or (not(c_i) nor (b_i or not(a_i))));
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 |  |  |  |
   | 0 | 0 | 1 | 1 | 1 | 1 |
   | 0 | 1 | 0 |  |  |  |
   | 0 | 1 | 1 |  |  |  |
   | 1 | 0 | 0 |  |  |  |
   | 1 | 0 | 1 | 1 | 1 | 1 |
   | 1 | 1 | 0 |  |  |  |
   | 1 | 1 | 1 |  |  |  |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

 ![git_1](https://user-images.githubusercontent.com/125310309/219006445-3e20e6f7-1102-4787-bfcb-04f2595db711.jpg)



2. Link to your public EDA Playground example:

  https://www.edaplayground.com/x/V7eH
