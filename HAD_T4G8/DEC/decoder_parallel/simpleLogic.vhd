LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateAnd2;

ARCHITECTURE logicFunction OF gateAnd2 IS
BEGIN
  y <= x1 AND x2;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNand2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateNand2;

ARCHITECTURE logicFunction OF gateNand2 IS
BEGIN
  y <= NOT (x1 AND x2);
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNor2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateNor2;

ARCHITECTURE logicFunction OF gateNor2 IS
BEGIN
  y <= NOT (x1 OR x2);
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNor4 IS
  PORT (x1, x2, x3, x4: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateNor4;

ARCHITECTURE logicFunction OF gateNor4 IS
BEGIN
  y <= NOT (x1 OR x2 OR x3 OR x4);
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXor2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateXor2;

ARCHITECTURE logicFunction OF gateXor2 IS
BEGIN
  y <= x1 XOR x2;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNot IS
  PORT (x: IN  STD_LOGIC;
        y : OUT STD_LOGIC);
END gateNot;

ARCHITECTURE logicFunction OF gateNot IS
BEGIN
	y <= NOT x;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd4 IS
  PORT (x1, x2, x3, x4: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateAnd4;

ARCHITECTURE logicFunction OF gateAnd4 IS
BEGIN
	y <= x1 AND x2 AND x3 AND x4;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateOr2;

ARCHITECTURE logicFunction OF gateOr2 IS
BEGIN
  y <= x1 OR x2;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY parallel_encoder IS
  PORT (m: IN STD_LOGIC_VECTOR(3 downto 0);
        x:   OUT STD_LOGIC_VECTOR(7 downto 0));
END parallel_encoder;

ARCHITECTURE structure OF parallel_encoder IS
SIGNAL x0, x1, x2, x3, x4, x5, x6, x7: STD_LOGIC;
BEGIN
	--(m3 m2 m1 m0) -> (m1 m2 m3 m4)
	x0 <= m(0);				--m4
	x1 <= m(3) xor m(0);	--m1 xor m4
	x2 <= m(2) xor m(0);	--m2 xor m4
	x3 <= m(3) xor x2;	--m1 xor x2
	x4 <= m(1) xor m(0);	--m3 xor m4
	x5 <= m(3) xor x4;	--m1 xor x4
	x6 <= m(2) xor x4;	--m2 xor x4
	x7 <= m(3) xor x6;	--m1 xor x6
	x <= x0 & x1 & x2 & x3 & x4 & x5 & x6 & x7; --output
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNor3 IS
  PORT (x1, x2, x3: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateNor3;

ARCHITECTURE logicFunction OF gateNor3 IS
BEGIN
  y <= NOT (x1 OR x2 OR x3);
END logicFunction;

