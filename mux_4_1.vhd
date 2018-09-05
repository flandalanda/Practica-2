library  IEEE;

use  IEEE.STD_LOGIC_1164.ALL;

use  IEEE.STD_LOGIC_ARITH.ALL;

use  IEEE.STD_LOGIC_UNSIGNED.ALL;


entity  mux_4_1  is

port(

S: in  std_logic_vector (0 to 1);

I0: in  std_logic_vector (0 to 3);

I1: in  std_logic_vector (0 to 3);

I2: in  std_logic_vector (0 to 3);

I3: in  std_logic_vector (0 to 3);

O: out  std_logic_vector (0 to 3)

);

end  mux_4_1;


architecture  function_table  of mux_4_1  is

	begin

	with S select

	O <= I0  when  "00",

	I1  when  "01",

	I2  when  "10",

	I3  when  "11",

	"XXXX" when  others;

end  function_table;