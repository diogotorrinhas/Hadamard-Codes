LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY mbit_decoder IS
	PORT (ix0, ix1, ix2, ix3, ix4, ix5, ix6, ix7: IN  STD_LOGIC;
        o_m: OUT STD_LOGIC;
		  o_v: OUT STD_LOGIC);
END mbit_decoder;

ARCHITECTURE structure OF mbit_decoder IS
		--signals
		SIGNAL mc: STD_LOGIC_VECTOR(3 downto 0);
		SIGNAL mAnd01, mAnd23, mOr01, mOr23: STD_LOGIC;
		SIGNAL mNAnd01, mNAnd23, mNOr01, mNOr23: STD_LOGIC;
		SIGNAL mOneC1, mOneC2, mZeroC1, mZeroC2 : STD_LOGIC;
		SIGNAL mZero, mOne : STD_LOGIC;
		SIGNAL mNZero, mNOne: STD_LOGIC;
		
		--gates
		COMPONENT gateXor2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;
		COMPONENT gateNor2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;	
		COMPONENT gateNand2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;
		COMPONENT gateAnd2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;
		COMPONENT gateOr2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;
		COMPONENT gateNot
			PORT (x: IN  STD_LOGIC;
					y:	OUT STD_LOGIC);
		END COMPONENT;
	
BEGIN
		--xor operations
		mc0    : gateXor2  PORT MAP (ix0, ix1, mc(0));
		mc1    : gateXor2  PORT MAP (ix2, ix3, mc(1));
		mc2    : gateXor2  PORT MAP (ix4, ix5, mc(2));
		mc3    : gateXor2  PORT MAP (ix6, ix7, mc(3));
		
		-- C3-0 equations calculations for one
		m_And01 : gateAnd2  PORT MAP (mc(1), mc(0), mAnd01);
		m_And23 : gateAnd2  PORT MAP (mc(2), mc(3), mAnd23);
		m_Or01  : gateOr2	  PORT MAP (mc(1), mc(0), mOr01);
		m_Or23  : gateOr2	  PORT MAP (mc(2), mc(3), mOr23);
		
		-- C3-0 equations calculations for zero
		m_NAnd01 : gateNot PORT MAP (mAnd01, mNAnd01);
		m_NAnd23 : gateNot PORT MAP (mAnd23, mNAnd23);
		m_NOr01  : gateNot PORT MAP (mOr01,  mNOr01);
		m_NOr23  : gateNot PORT MAP (mOr23,  mNOr23);
		
		--One calculations
		m1C1 	 : gateAnd2  PORT MAP (mAnd01, mOr23,  mOneC1);
		m1C2 	 : gateAnd2  PORT MAP (mAnd23, mOr01,  mOneC2);
		m1		 : gateOr2	 PORT MAP (mOneC1, mOneC2, mOne);
		
		-- Zero calculations
		m0C1 	 : gateAnd2  PORT MAP (mNAnd01, mNOr23,  mZeroC1);
		m0C2 	 : gateAnd2  PORT MAP (mNAnd23, mNOr01,  mZeroC2);
		m0		 : gateOr2	 PORT MAP (mZeroC1, mZeroC2, mZero);
		
		
		--check validity with error
		n_mOne : gateNot PORT MAP (mOne, mNOne);
		n_mZero : gateNot PORT MAP (mZero, mNZero);
		mvalid: gateAnd2 PORT MAP(mNOne, mNZero, o_v);
		o_m <= mOne;

END structure;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

LIBRARY arithmetic;
USE arithmetic.all;

ENTITY m3_decoder IS
	PORT (iy0, iy1, iy2, iy3, iy4, iy5, iy6, iy7: IN  STD_LOGIC;
		  mlinhas: IN STD_LOGIC_VECTOR(3 downto 0);
		  valid: IN STD_LOGIC;
        o_m: OUT STD_LOGIC);
END m3_decoder;

ARCHITECTURE structure OF m3_decoder IS
		SIGNAL zs: STD_LOGIC_VECTOR(7 downto 0); --outputs from encoder
		SIGNAL xorz0y0, xorz1y1, xorz2y2, xorz3y3, xorz4y4, xorz5y5, xorz6y6, xorz7y7: STD_LOGIC; --outputs from xor with z's and y's
		SIGNAL inputVectorPopCnt: STD_LOGIC_VECTOR(7 downto 0);
		SIGNAL cs: STD_LOGIC_VECTOR(3 downto 0); --outputs from pop counter
		SIGNAL xorc2c3: STD_LOGIC; -- output from xor with c2 and c3

		--gates
		COMPONENT gateXor2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT gateAnd2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;
		
		--pop counter component
		COMPONENT popCounter_8bitParallelOpt 
		  PORT (d: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				  c: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
		END COMPONENT;
		
		--parallel encoder component
		COMPONENT parallel_encoder 
		  PORT (m: IN STD_LOGIC_VECTOR(3 downto 0);
				  x:   OUT STD_LOGIC_VECTOR(7 downto 0));
		END COMPONENT;
		
BEGIN
		encoderOp   : parallel_encoder  PORT MAP (mlinhas, zs);
		-- z7 z6 z5 z4 z3 z2 z1 z0 ----> z0 z1 z2 z3 z4 z5 z6 z7
		xor_z0y0    : gateXor2  PORT MAP (zs(7),iy0, xorz0y0);
		xor_z1y1    : gateXor2  PORT MAP (zs(6),iy1, xorz1y1);
		xor_z2y2    : gateXor2  PORT MAP (zs(5),iy2, xorz2y2);
		xor_z3y3    : gateXor2  PORT MAP (zs(4),iy3, xorz3y3);
		xor_z4y4    : gateXor2  PORT MAP (zs(3),iy4, xorz4y4);
		xor_z5y5    : gateXor2  PORT MAP (zs(2),iy5, xorz5y5);
		xor_z6y6    : gateXor2  PORT MAP (zs(1),iy6, xorz6y6);
		xor_z7y7    : gateXor2  PORT MAP (zs(0),iy7, xorz7y7);
		
		inputVectorPopCnt <= xorz0y0 & xorz1y1 & xorz2y2 & xorz3y3 & xorz4y4 & xorz5y5 & xorz6y6 & xorz7y7;
		
		popCntOp    : popCounter_8bitParallelOpt  PORT MAP (inputVectorPopCnt, cs);
		
		--c3 c2 c1 c0 ----> c0 c1 c2 c3
		xor_c3c2Op  : gateXor2  PORT MAP (cs(2), cs(3), xorc2c3);
		
		--xor_m3Op  : gateXor2  PORT MAP (xorc2c3, valid, o_m);
		
		xor_m3Op  : gateAnd2  PORT MAP (xorc2c3, valid, o_m);
		
END structure;



--parallel decoder for all bits
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY decoder_parallel IS
  PORT (x: IN STD_LOGIC_VECTOR(7 downto 0);
        m: OUT STD_LOGIC_VECTOR(3 downto 0);
		  v: OUT STD_LOGIC);
END decoder_parallel;
	
ARCHITECTURE structure OF decoder_parallel IS
		--signals for not operations from valid
		--SIGNAL m3N_V, m2N_V, m1N_V, m0N_V: STD_LOGIC;
		
		SIGNAL mls: STD_LOGIC_VECTOR(3 downto 0);
		
		--signals for final operation of m bit
		SIGNAL m3_f, m2_f, m1_f, m0_f: STD_LOGIC;
		
		SIGNAL valid_f: STD_LOGIC;
				
		-- decoding computation bits for m3
		SIGNAL m3_o: STD_LOGIC;
		SIGNAL m3_V: STD_LOGIC;
		
		-- decoding computation bits for m2
		SIGNAL m2_o: STD_LOGIC;
		SIGNAL m2_V: STD_LOGIC;
		
		-- decoding computation bits for m1
		SIGNAL m1_o: STD_LOGIC;
		SIGNAL m1_V: STD_LOGIC;
		
		-- decoding computation bits for m0
		SIGNAL m0_o: STD_LOGIC;
		SIGNAL m0_V: STD_LOGIC;
		
		-- gate component
		COMPONENT gateAnd4 
			PORT (x1, x2, x3, x4: IN  STD_LOGIC;
					y				  : OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT gateAnd2
			PORT (x1, x2 : IN  STD_LOGIC;
					y:			OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT gateNot
			PORT (x: IN  STD_LOGIC;
					y:	OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT gateNor4 
			PORT (x1, x2, x3, x4: IN STD_LOGIC;
					y:      OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT gateNor3 
			PORT (x1, x2, x3: IN STD_LOGIC;
					y:      OUT STD_LOGIC);
		END COMPONENT;
		
		-- mbit decoder component
		COMPONENT mbit_decoder
			PORT (ix0, ix1, ix2, ix3, ix4, ix5, ix6, ix7: IN  STD_LOGIC;
					o_m: OUT STD_LOGIC;
					o_v: OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT m3_decoder 
			PORT (iy0, iy1, iy2, iy3, iy4, iy5, iy6, iy7: IN  STD_LOGIC;
				  mlinhas: IN STD_LOGIC_VECTOR(3 downto 0);
				  valid: IN STD_LOGIC;
				  o_m: OUT STD_LOGIC);
		END COMPONENT;
		
BEGIN
		-- m3 computations
		m3 : mbit_decoder PORT MAP (x(0), x(1), x(2), x(3), x(4), x(5), X(6), x(7), m3_o, m3_v);

		-- m2 computations
		m2	: mbit_decoder PORT MAP (x(0), x(2), x(1), x(3), x(4), x(6), x(5), x(7), m2_o, m2_v);

		-- m1 computations
		m1	: mbit_decoder PORT MAP (x(0), x(4), x(1), x(5), x(2), x(6), x(3), x(7), m1_o, m1_v);
		
		--not operations from valid value from mbit
		--m3_vNot	: gateNot PORT MAP (m3_v, m3N_V); 
		--m2_vNot	: gateNot PORT MAP (m2_v, m2N_V);
		--m1_vNot	: gateNot PORT MAP (m1_v, m1N_V);
		--m0_vNot	: gateNot PORT MAP (m0_v, m0N_V);
		
		-- final results
		--valid		: gateAnd4 PORT MAP(m3N_V, m2N_V, m1N_V, m0N_V, valid_f);
		--valid : gateNor4 PORT MAP(m3_v, m2_v, m1_v, m0_v, valid_f); --old valid
		valid : gateNor3 PORT MAP(m3_v, m2_v, m1_v, valid_f); --new valid
		v <= valid_f;
		
		m3_final	: gateAnd2  PORT MAP (m3_o, valid_f,  m3_f);
		m2_final	: gateAnd2  PORT MAP (m2_o, valid_f,  m2_f);
		m1_final	: gateAnd2  PORT MAP (m1_o, valid_f,  m1_f);
		
		mls <= m3_f & m2_f & m1_f & '0'; --vector with m'0, m'1, m'2, m'3
		
		m0 : m3_decoder PORT MAP (x(7), x(6), x(5), x(4), x(3), x(2), x(1), x(0), mls, valid_f, m0_o); 
		
		m <= m3_f & m2_f & m1_f & m0_o;
	
END structure;
	