LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY storeDev;
USE storeDev.all;

LIBRARY arithmetic;
USE arithmetic.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

LIBRARY control;
USE control.all;

ENTITY encoder_serial IS
  PORT (nGRst: IN STD_LOGIC;
		  clk:   IN STD_LOGIC;
		  mIn:   IN STD_LOGIC;
		  code:  OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		  --andAux: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		  --xorAux: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		  busy_o: OUT STD_LOGIC
		  );
END encoder_serial;

ARCHITECTURE structure OF encoder_serial IS
		--Sinais
		SIGNAL c: STD_LOGIC_VECTOR(2 DOWNTO 0);
		SIGNAL Q, inSET, inRST, inCLK: STD_LOGIC;
		SIGNAL and8Out, xorIN, xorOUT, k, Q8: STD_LOGIC_VECTOR(7 DOWNTO 0);

		--Componentes
		COMPONENT flipFlopDPET
			PORT (clk, D: IN STD_LOGIC;
				 nSet, nRst: IN STD_LOGIC;
				 Q, nQ: OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT control
		  PORT (nGRst: IN STD_LOGIC;
				  clk:   IN STD_LOGIC;
				  add:   IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				  nRst:  OUT STD_LOGIC;
				  nSetO: OUT STD_LOGIC;
				  k   :  OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
				  clkO:  OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT gateAnd8
			PORT (x1, x2: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  y:      OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
		END COMPONENT;
		
		COMPONENT gateXor8
			PORT (x1, x2: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  y:      OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
		END COMPONENT;
		
		COMPONENT binCounter_3bit
			PORT (nRst: IN STD_LOGIC;
				 clk:  IN STD_LOGIC;
				 c:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
		END COMPONENT;
		
		COMPONENT ParReg_8bit
			PORT (nSet: IN STD_LOGIC;
				nRst: IN STD_LOGIC;
			  clk: IN STD_LOGIC;
			  D: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			  Q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
		END COMPONENT;
		
		COMPONENT busy
		  PORT (x1, x2, y: IN STD_LOGIC;
				  z:      OUT STD_LOGIC);
		END COMPONENT;
		
BEGIN
		FF_Op: flipFlopDPET PORT MAP(clk, mIn, '1', inRST, Q);
		Q8 <= (OTHERS=>Q); --passar para 8 bits
		and8_Op: gateAnd8 PORT MAP(Q8, k, and8Out);
		xor8_Op: gateXor8 PORT MAP (and8Out, xorIN, xorOUT);
		reg8bits_Op: ParReg_8bit PORT MAP ('1', inRST, clk, xorOUT, xorIN);
		--andAux <= and8Out; --testes
		--xorAux <= xorOUT; --testes
		binC_Op: binCounter_3bit PORT MAP(inRST, clk, c);
		cntrl_Op: control PORT MAP(nGRst, clk, c, inRST, inSET, k, inCLK);
		reg8bitsFinal_Op: ParReg_8bit PORT MAP (inSET, '1', inCLK, xorOUT, code);
		--busy
		busy_Op: busy PORT MAP(c(2), c(0), inCLK, busy_o);
		
END structure;