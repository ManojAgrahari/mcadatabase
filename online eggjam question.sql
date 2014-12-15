-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2014 at 02:43 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mcadatabase`
--
CREATE DATABASE IF NOT EXISTS `mcadatabase` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mcadatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `modelquestion`
--

DROP TABLE IF EXISTS `modelquestion`;
CREATE TABLE IF NOT EXISTS `modelquestion` (
`id` int(5) unsigned NOT NULL,
  `Question` varchar(20000) NOT NULL,
  `Option1` varchar(200) NOT NULL,
  `Option2` varchar(200) NOT NULL,
  `Option3` varchar(200) NOT NULL,
  `Option4Right` varchar(200) NOT NULL,
  `Solution` text NOT NULL,
  `Visibility` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modelquestion`
--

INSERT INTO `modelquestion` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4Right`, `Solution`, `Visibility`) VALUES
(1, 'The boy made some .......... remarks.', 'Unicautious', 'Incaustious', 'Incautious', 'Uncautious', 'c', 'e'),
(2, 'If $ \\alpha\\ and\\ \\beta\\ be\\ the\\ roots\\ of\\ ax^2 + bx +c \\ = 0,\\ the\\ value\\ of\\ \\dfrac{1}{{\\alpha}^2}\\ +\\ \\dfrac {1}{{\\beta}^2} $ is ', '$ \\dfrac {b^2 + 2ac}{c^2}  $', '$  \\dfrac {b^2 - 4ac}{c^2} $', '$ \\dfrac {b^2 - 2ac}{c^2} $', '$ {b^2 + 4ac}{c^2} $', ' <br> $ Sum\\ of\\ roots\\ = \\alpha + \\beta = -\\dfrac{b}{a}$</br>  <br> $ Products\\ of\\ roots\\ =\\alpha\\beta =\\dfrac{c}{a}$ </br>  <br>$ \\therefore\\ \\dfrac{1}{\\alpha^2} + \\dfrac{1}{\\beta^2} $ =  $\\dfrac{\\alpha^2 + \\beta^2}{\\alpha^2 \\beta^2}$ =  $ \\dfrac{ { ( {\\alpha} + {\\beta} )}^2 - 2 {\\ ( \\alpha \\beta \\ )} ^2 }{ { \\ ( {\\alpha}{\\beta} \\ )}^2} $ = $ \\dfrac{ \\ ({-b/a \\ )}^2 -2c/a}{ \\ ( c/a \\ )^2} $ = $ \\dfrac{b^2 - 2ac}{c^2} $</br>', 'm'),
(3, 'If  \\alpha\\ and\\ \\beta\\ be\\ the\\ roots\\ of\\ ax^2 + bx +c \\ = 0,\\ the\\ value\\ of\\ \\dfrac{1}{{\\alpha}^2}\\ +\\ \\dfrac {1}{{\\beta}^2}  is ', ' \\dfrac {b^2 + 2ac}{c^2}  ', ' \\dfrac {b^2 - 4ac}{c^2} ', ' \\dfrac {b^2 - 2ac}{c^2} ', ' {b^2 + 4ac}{c^2} ', ' <br>  Sum\\ of\\ roots\\ = \\alpha + \\beta = -\\dfrac{b}{a}</br>  <br>  Products\\ of\\ roots\\ =\\alpha\\beta =\\dfrac{c}{a} </br>  <br> \\therefore\\ \\dfrac{1}{\\alpha^2} + \\dfrac{1}{\\beta^2}  =  \\dfrac{\\alpha^2 + \\beta^2}{\\alpha^2 \\beta^2} =   \\dfrac{ { ( {\\alpha} + {\\beta} )}^2 - 2 {\\ ( \\alpha \\beta \\ )} ^2 }{ { \\ ( {\\alpha}{\\beta} \\ )}^2}  =  \\dfrac{ \\ ({-b/a \\ )}^2 -2c/a}{ \\ ( c/a \\ )^2} =  \\dfrac{b^2 - 2ac}{c^2} </br>', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam`
--

DROP TABLE IF EXISTS `onlineexam`;
CREATE TABLE IF NOT EXISTS `onlineexam` (
`id` int(5) unsigned NOT NULL,
  `Question` varchar(20000) NOT NULL,
  `Option1` varchar(200) NOT NULL,
  `Option2` varchar(200) NOT NULL,
  `Option3` varchar(200) NOT NULL,
  `Option4Right` varchar(200) NOT NULL,
  `Solution` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `onlineexam`
--

INSERT INTO `onlineexam` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4Right`, `Solution`) VALUES
(1, '$ \\qquad $ ....about this sooner we could informed you.', 'If we knew', 'Had we know', 'If we know ', 'If we had known', ' '),
(2, 'The first moon landing marked the begining of an exciting ..........space in exploration', 'age', 'event', 'era', 'step', ' '),
(3, 'The pattern for the sentence. ''The children came running to meet us'' is.......', 's+vi+gerund, etc', 's+v+o, etc', 's+v+n, etc,', 's+vi+present participle etc', ' '),
(4, 'Neither of them....paid....fee.', 'have,their', 'have,our', 'has,their', 'has,his', ' '),
(5, '"Let us go out of this place."means:', 'He asked us to go out of that place.', 'He said that we should go out of that place', 'I am heard he had a heart attack two years ago', 'He proposed that they should go out of that place', ' '),
(6, 'Which of the following is acceptable?', 'I was heard he had a heart attack two years ago', 'I was heard he had had a heart attack two years ago', 'I am heard he had a heart attack two years ago.', 'He is supposed to have had a heart attack two years ago', ' '),
(7, 'Time and tide.......for no man.', 'waited', 'do not wait', 'waits', 'wait ', ' '),
(8, 'If ''sun'' is ''solar'', what is galaxy?', 'galaxic', 'galaxyic', 'galaxtic', 'galactic', ' '),
(9, 'He was struck......by cancer at the age of thirty.', 'down', 'at', 'out', 'off', ' '),
(10, 'Which of the following is true?', 'The word ''controversial'' gets stress on the fourth syllable.', 'The word ''contributor'' is accented on its first syllable.', 'The word ''cooking'' is stressed on its second syllable.', 'The word ''circuitous'' is accented on its second syllable.', ' '),
(11, 'I heard him....a song.', 'sang', 'had sung', 'from ', 'sing', ' '),
(12, 'I could just make out three people......the mist.', 'at', 'from', 'through', 'in ', ''),
(13, 'If they labour hard,......', 'they would pass the examination', 'they could pass', 'I could help them', ' I will help them', ''),
(14, 'Which of the following is acceptable?', 'He informed that nobody had gone against him.', 'He informed me that they had gone against him.', 'He had informed that they had gone against him.', 'He informed me that everybody had gone against him.', ''),
(15, 'The suffix''-ed'' in the word ''hooked'' is pronounced as:', '/t/', '/Id/', '/ad/', '/d/', ''),
(16, 'The products of electrolysis of aqueous sodium chloride in Down''s process is are', 'hydrogen at cathode and chlorine at anode ', 'hydrogen at cathode and oxygen at anode', 'sodium at cathode and oxygen at anode', 'sodium at cathode and chlorine at anode', 'In Down''s process electrolysis of aqueous NaCl gives Na at cathode and Cl<sub>2</sub> at anode.'),
(17, 'Ethyne is distinguished from ethene by', 'Baeyer''s reagent', 'Fehling''s reagent', 'alkaline KMnO<sub>4</sub>', 'ammonical cuprous chloride', 'Ethyne gives red ppt. with ammonical cuprous chloride.'),
(18, 'Which of the following can act as both Brosted acid and Bronsted base?', 'HCL', 'NH<sub>4</sub><sup>+</sup>', 'CO<sub>2</sub></br>', ' HCO<sub>3</sub><sup>-</sup>', 'Species like H<sub>2</sub>0,NH<sub>3</sub>,ROH,HCO<sub>3</sub><sup>-</sup> etc. are both Bronsted acid and base.'),
(19, 'The bleaching action of SO<sub>2</sub> 	is due to', 'reduction', 'dehydration ', 'polymerization', 'Oxidation', '<br>SO<sub>2</sub> acts as bleaching agent as well as antichlor. e.g.</br> <br> $ SO_2 + 2H_20 +Cl_2 \\rightarrow H_2SO_4 + 2HCl $ </br> <br> $ SO_2 + 2H_20 \\longrightarrow H_2SO_4 + 2H $  </br> <br> Hence, bleaching actions is due to oxidation and it is permanent. </br>'),
(20, 'The oxide of nitrogen obtained by dehydration of nitric acid by P<sub>2</sub>O<sub>5</sub> is ', 'N<sub>2</sub>O<sub>3</sub>', 'N<sub>2</sub>O', 'CO<sub>2</sub>', 'N<sub>2</sub>O<sub>5</sub>', '<br> Dehydration of HNO<sub>3</sub> by P<sub>2</sub>0<sub>5</sub> gives dinitrogen pentaoxide.(N<sub>2</sub>O<sub>5</sub>) <br> $ 2HNO_3 + P_2O_5 \\longrightarrow 2HNO_3 + N_2O_5 $ </br> <br> It is colourless crystalline solid. </br>'),
(21, ' The outer shell configuration of most electronegative elements is', 'ns<sup>2</sup>np<sup>3</sup>', 'ns<sup>2</sup>np<sup>4</sup>', 'ns<sup>2</sup>np<sup>6</sup>', 'ns<sup>2</sup>np<sup>5</sup>', '<br> Outer shell confihuration of, </br> <br> Most electronegative elements $ \\rightarrow ns^2np^5 $ </br> <br> Most electropositive elements $ \\rightarrow ns^1 $ </br> <br> Noble elements $ \\rightarrow ns^2np^6 $ </br>'),
(22, ' Ammonia gas is dried by using', ' conc.H<sub>2</sub>SO<sub>4</sub>', 'P<sub>2</sub>O<sub>5</sub>', 'H<sub>3</sub>PO<sub>4</sub>', 'quick lime', 'NH<sub>3</sub> is dried by passing through quick lime (CaO) and collected in inverted gas jar by downward displacement of air.'),
(23, 'In the gaseous reaction A+2B $ \\rightarrow $ C+heat, the forward reaction is favoured by', 'low temperature and high temperature', 'low pressure and hight temperature', 'high pressure and high temperature', 'low temperature and high pressure', '<br> The rxn is exothermic, so favoured by low temp.</br> <br> Since volume has decreased towards products , the increase in pressure shifts rxn forward.</br> <br> Removal of products shift the rxn in forward direction. </br>'),
(24, 'Sodium hydroxide is manufactured by', 'Down''s process', 'Ammonia soda process', 'Haber''s process', ')Solvay Kellner process', '<br> Sodium (Na) $ \\longrightarrow $ Down''s process </br> <br> Sodium hydroxied (NaOH) $ \\longrightarrow $ Solvey Kellner process </br> <br> H<sub>2</sub>CO<sub>3</sub>.10H<sub>2</sub>O $ \\longrightarrow $  Known as washing soda $ \\longrightarrow $  Solvey process/ Ammonia - Soda process </br> <br> Sodium bicarbonate (NaHCO<sub>3</sub> ) $ \\longrightarrow $ known as Baking soda $ \\longrightarrow $  Solvay''s process </br> <br> Nitric acid (NHO <sub>3</sub>) $ \\longrightarrow $  Ostwald''s process </br> <br> Sulphuric acid (H <sub> 2</sub> SO<sub>4</sub>) $ \\longrightarrow $ Contact process.</br>'),
(25, ' Which of the following pairs of compounds represent functional isomers?', '1-propanol and 2-propanol', 'n-butane and isobutane', '2- pentanone and 3-pentanone', 'ehtanoic acid and methyl methanoate', '<br>The functional isomers are of same molecular formula but of differnet functional group. Among given only (c) option is of different functional group. </br> <br> CH<sub>3</sub>COOH = ethanoic acid and </br> <br> CH<sub>3</sub>COOH<sub>3</sub> = methylmethanoate </br>'),
(26, 'What volume of oxygen at NTP will be required for the complete oxidation of six grams of carbon?', '44.8 liter', '22.4 liter', '3 $ \\times $ 22.4 liter', '11.2 liter', '<br> The rxn is, </br> <br> C  $ \\quad    +   \\quad $  O<sub>2</sub>  $ \\longrightarrow $ CO<sub>2</sub> </br> <br>12gm 	 22.4 lit </br> <br>6gm			11.2 lit </br>'),
(28, 'Magnetic quantum number specifies', 'nuclear stability', 'shape of orbitals ', 'size of orbitals', 'orientation of orbitals', '<br> 1. Principle quantum number (n) </br> <br>	- Energy shell, n=1,2,3......... </br> <br>	-Inform about size of orbit.</br> <br>	2.Azimuthally quantum number(l)</br> <br>	-Angular momentum or orbital quantum no.</br> <br>	-Signifies sub-shell, sub-orbit</br> <br>	-Value 0 to (n-1)</br> 	 <br>	3. Magnetic quantam no(m)</br> <br>	-Specifies orientation of sub-shell in space</br> <br>	-Value -l to l i.e total(2l+1)</br> 	 <br>	4.Spin quantum number(s)</br> <br>	-Explains the fine structure of special lines within atomic level.</br>'),
(29, 'One of the ores of copper is', 'haematite', 'carnalite', 'cinnabar', 'malachite', '<br> Ores of cupper, </br> <br> Malachite [Cu(OH)<sub>2</sub>.CuCO<sub>3</sub>]</br> <br> Azurite[2CuCO<sub>3</sub>.Cu(OH)<sub>2</sub>]</br> <br>Copper pyrite(CuFeS<sub>2</sub>)</br>'),
(30, 'The action of iodoethane with sodium methoxide to produce methoxy ethane is an example of', 'Wurtz reaction', 'Witting''s reaction', 'Friedal Craft reaction', 'Williamson'' synthesis', '<br> In Williamson''s process, alkyl halide is heated with sodium or potassium alkoxide.</br> <br> $ CH_3ONa + IC_2H_5 \\longrightarrow CH_3OC_2H_5 + NaI $ </br> <br> Suitable for preparation of mixed ether. </br>'),
(31, 'The cost of sugar is RS.55 per kg in the local market.Then cost per mole is', 'Rs.188.80', 'Rs.20.80', 'Rs.25.80', 'Rs.18.81', '<br> Sugar $ (C_{12}H_{22}O_{11} ) $ </br> <br> 1 mole = mol. wt = 12 * 12 + 22+ 11*16 =342gm = 0.342kg</br> <br> Here 1 kg sugar $ \\rightarrow $ Rs.55 </br> <br> $ \\quad $ 1 mole = 0.342kg $ \\longrightarrow Rs.0.342 \\times 55 $ = Rs.18.81 </br>'),
(32, 'IN <sub>92</sub>U<sup>235</sup> nucleus, the ratio of the number of nucleons to the number of neutrons is', '$ \\dfrac{92}{235} $', '$ \\dfrac{235}{92} $', '$ \\dfrac{143}{92} $', '$ \\dfrac{235}{143} $', '<br><sub>92</sub>U<sup>235</sup> </br> <br> no. of nucleons = nu =235 </br> <br> no. of neutrons =ne= 235-92 =143</br> <br> So, nu/ne=235/143 </br>'),
(33, 'Why is the speed of sound greater in a solid than in fluids?', 'Solid has high density and low modulus of elasticity.', 'Solid has a low density and high modulus of elasticity.', 'Solid has a low density and low modulus of elasticity.', 'Solid has high density and high modulus of elasticity.', '<br> Speed of sound (V<sub>s</sub>) = $ \\sqrt{ \\dfrac {E}{ \\rho } } $ </br> <br> $ E \\longrightarrow $ modulus of elasticity </br> <br> $ \\rho \\longrightarrow $ density of medium </br> <br> For solid even though $ \\rho $ is high , E is of order 10<sup>11</sup> so </br> <br> $ V_{solid} > V_{liquid} > V_{gas} $ </br>'),
(34, 'The first law of thermodynamics may be expressed by the relation. $ \\Delta Q = \\Delta U + \\Delta W $, where Q is the quantity of heat given to a system of internal energy U and W is the external work done. Which of the following statement is correct? ', '$ \\Delta U $ = $ V  \\Delta P $, where V is the volume of the gas and P is the pressure.', '$ \\Delta U $ = $ \\Delta W $ at constant tempertaure.', '$ \\Delta U $= $ P  \\Delta U $ ', ' $ \\Delta U $ depends only on the temperature change.', '<br> Equation $ \\Delta Q = \\Delta U + \\Delta W $ is for ideal gas. </br> <br> For ideal gas $ \\Delta U $ is function of temp only. </br>'),
(35, 'The angle of projection at which the horizontal range and maximum height of projectile are equal in', '$ 45^ {\\circ} $', ' $ \\theta = \\tan^{-1}(0.25) $', ' $ 60^\\circ $ ', ' $ \\tan^{-1}(4) $', '<br> $ R = \\dfrac {u^2 \\sin 2 \\theta}{g} $ </br> <br> $ H = \\dfrac { u^2 { \\sin }^2 \\theta } {2g} $ </br> <br> $ So,  \\dfrac {R}{H} = \\dfrac {4}{ \\tan \\theta } $ (Remember) </br> <br> For R=H , tan $ \\theta $ =4 $ \\Rightarrow \\theta $ = tan<sup>-1</sup> (4) </br>'),
(36, 'Consider two simple pendulums A and B having identical bobs and same time period of oscillation T<sub>1</sub>.If the bob    of A is half filled with mercury and that of B is half filled with water.', 'none of the above.', 'Pendulum B will have longer time period of oscillation than that of A.', 'Pendulum A and pendulum B will have the same time period of oscillation T<sub>1</sub>.', 'Pendulum A will have longer time period of oscillation than that of B.', '$ T=2 \\pi \\sqrt { \\dfrac {l}{g} } $ , effective value of l is greater for pendulum A as C.G. is lower.'),
(37, 'In Young''s double slit experiment, if the distance between the slits of halved and the distance between the slits and the    screeen is doubled, the fringe width becomes', 'half', 'Double', 'Eight times', 'Four times', '<br> $ Frige\\ width,  \\beta = \\lambda \\dfrac{D}{d} $</br> <br> If D<sup>''</sup> = 2D and d <sup>''</sup>= d/2 </br> <br>  $ \\therefore { \\beta } ^ \\prime  = \\lambda \\dfrac{2D} { \\left ( {\\dfrac {d}{2} } \\right )}  = 4 \\beta $ </br>'),
(38, 'A cylindrical copper rod is reformed to twice its original length. Which one of the following statements describes the way  	in which the resistances in changed?', 'The resistance remains constant', 'The resistance increased by a factors of two', 'The resistance increased by a factors of eight', 'The resistance increased by a factors of four', '<br> R= $ \\rho \\dfrac{l}{A} = \\rho { l^2}{V} $ </br> <br> $ \\therefore \\propto l^2 $ and $ R \\propto \\dfrac {1}{r^4}  $ </br> <br> So, of l'' = 2l </br> <br> Then, R''=4R.</br>'),
(39, 'The metal of pendulum clock has a linear expansivity of expansivity of $ \\alpha K^{-1} $. If period is 2 seconds at $ 0^ \\circ C $ what is the loss or gain in one day when the temperature rises by a small amount of $ \\theta ^\\circ C $.', 'Gain by 43200 $ \\alpha \\ \\theta $ second', 'Loses by 86400 $ \\alpha \\ \\theta $ second', 'Gain by 86400 $ \\alpha \\ \\theta $ second', ' Loses by 43200 $ \\alpha \\ \\theta $ second', '<br> Time loss or gain in day = $ \\dfrac {1}{2} \\propto \\Delta \\theta $ of day. </br> <br> $ \\qquad \\qquad \\qquad \\qquad = \\dfrac {1}{2} \\propto \\theta \\times $ 86400 sec </br> <br> $ \\qquad \\qquad \\qquad \\qquad= 43200 \\propto \\theta $ sec </br> <br> As, temp has increased, it loss time by 43200 $ \\propto \\theta $ sec. </br>'),
(40, 'The value of $ \\alpha $ for given transistor is 0.99 what is the value of the current transfer ratio $ \\beta $', '49', '50', '90', '99', '<br>For transistor , </br> <br> $ \\qquad \\dfrac{1}{ \\alpha } - \\dfrac {1}{ \\beta } =1 $ </br> <br> As, $ \\alpha $ = 0.99 </br> <br> $ \\qquad \\dfrac{1}{0.99} - \\dfrac{1}{ \\beta } =1 $ </br> <br> $ \\beta = 99 $ </br>'),
(41, 'If X,Y amd Z in the figure are identical lamps, which of the following changes to the brightness of the lamps occur when 	switch S is closed?', 'X stays the same, Y decreases', 'X increase,Y stays the same', 'X decrease, Y increase', 'X increasek Y decrease', 'When S is closed equivalent resistance of circuit decrease. So, Current in circuit increase and X becomes more bright.  However, due to branching of current, amount of current decrease in Y and brightnessecrease.'),
(42, 'If $ A= \\begin {pmatrix} 				a & b \\\\ 				c & d 				\\end {pmatrix} $ and ad $ \\ne $ bc ,then $ A ^{-1} $ =', '$ \\begin {pmatrix} 				\\dfrac{1}{a} & \\dfrac{1}{b} \\\\ 				\\dfrac{1}{c} & \\dfrac{1}{d} 				\\end {pmatrix} $ ', '$ \\dfrac{1}{ad-bc}  { \\begin {pmatrix} 																		\\dfrac{1}{a} & \\dfrac{1}{b} \\\\ 																	\\dfrac{1}{c} & \\dfrac{1}{d} 																		\\end {pmatrix} } $', '$ \\dfrac{1}{\\left \\vert A \\right \\vert}  \\begin {pmatrix} 				d & -c \\\\ 				-b & a 				\\end {pmatrix} $', '$ \\dfrac{1}{\\left \\vert A \\right \\vert}  \\begin {pmatrix} 				d & -b \\\\ 				-c & a 				\\end {pmatrix} $	', 'Definition'),
(43, 'The gradient of a line parallel to X-axis is', '1', '$ \\infty  $', 'none of them', '0', 'Gradient = slope = $ { dy \\over dx } = 0 $'),
(44, 'Any vector (a,b,c) $ \\in $ R<sup>3</sup> is a linear combination of ', '(1,1,1),(0,1,0),(0,0,1)', '(0,0,1),(0,1,1),(1,1,1)', '(0,0,1),(0,1,0),(0,1,1)', '(1,0,0),(0,1,0),(0,0,1)', ''),
(45, ' The derivative of f(x)=$ \\dfrac{1}{x} $ at the point (1,1) is', '1', '2', '-2', '-1', '<br> f''(x)= $ \\dfrac{dy}{dx} = -\\dfrac{1}{x^2} $ </br> <br> At (1,1), $ { dy \\over dx } = -1 $ </br>'),
(46, 'If $ \\cos \\theta = \\cos \\alpha $ the general value of $ \\theta $ is', ' $ 2n \\pi + \\alpha $', '$ 2n \\pi - \\alpha $', '$ n \\pi \\pm \\alpha $', ' $ 2n \\pi \\pm \\alpha $', '<br> 1. For $ \\sin x = \\sin \\theta $ </br> <br> $ \\quad x= n \\pi + (-1)^n \\theta $, n= 0,1,2,.......</br> <br> cor1: $ \\sin x=1, x = (4n+1) \\dfrac{\\pi}{2} $, for all integer n </br> <br> cor2: $ \\sin x= -1, x =(4n-1) \\dfrac {\\pi}{2} $, for all integer n </br> <br> 2. $ \\cos x = \\cos \\alpha $ </br> <br> $ \\quad x=2n \\pi \\pm \\alpha $ </br> <br> 3. $ \\tan x= \\tan \\theta $</br> <br> $ \\quad x=n \\pi + \\theta $</br> <br> 4. $ \\underbrace{ \\sin ^2 x= \\sin ^2 \\theta \\qquad \\tan ^2 x = \\tan ^2 \\theta \\qquad \\cos ^2 x= \\cos ^2 \\theta }_{ \\theta = n \\pi + \\theta} $</br>'),
(47, 'Which of following relation represents a function for x,y $ \\in $ R?', '$ F = \\{(x,y):x + y < 4 \\} $', '$ F= \\{(x,y):  \\dfrac {x^2}{4} + \\dfrac{y^2}{9} =1  \\} $ ', '$ F = \\{(x,y):x^2 + y^2 = 4 \\} $', '$ F = \\{(x,y):x + y = 2 \\} $ ', ''),
(48, ' The Z coordinate of any point in the XY planes is', '1', '-1', '2', '0', '<br> Point on xy plane (a,b,0) </br> <br> Point on yz plane (0,b,c) </br> <br> Point on xz plane (a,0.c) </br>'),
(49, '$ \\int \\dfrac {x+1}{ \\sqrt{x}} dx $ is equal to', '$ \\dfrac {3}{2} x^3 + 2x^{1/2} +c $', '$ \\dfrac {2}{3} x^2 + 2x +c $', '$ \\dfrac {3}{2} x^2 + x +c $', '$ \\dfrac {2}{3} x^{3/2} + 2x^{1/2} +c $', '<br> $ \\quad \\int \\dfrac {x+1}{\\sqrt x} dx $ </br> <b> $  = \\int \\left ( { \\sqrt{x} } + \\dfrac {1}{ \\sqrt{x} }  \\right ) dx $  </br> <br> $ = \\dfrac{2}{3} x ^{ \\frac {3}{2} }  + 2x^ { \\frac {1}{2} }+ C $ </br>'),
(50, '$ \\textstyle lim_{x \\to 0^-} \\dfrac{ \\left \\vert 2x \\right \\vert }{x} $ is equal to', '2', '0', '$ \\left \\vert 2 \\right \\vert $', '-2', '<br>$ \\textstyle lim_{x \\to 0^-} \\dfrac{ \\left \\vert 2x \\right \\vert }{x} $ </br> <br> $ = \\textstyle lim_{x \\to 0^-} \\dfrac{- 2x}{x} $ </br> <br> = -2. </br>  <br> Note: For real value x, </br> <br> f(x) = |x| = $ \\begin {cases} 					-x\\ for\\ x\\ < 0 \\\\ 					x\\ for\\ x \\geq 0  					\\end {cases} $ </br> '),
(51, 'The graph of polynomial funtion of positive n can have one of the must following turning points', ' n turning points	', 'n<sup>2</sup> turning points', 'n-2 turning points', 'n-1 turnig points', ''),
(52, 'In an IC engine fuel is', ' burst horse power', 'not burst anywhere', 'none of above', 'inside the cylinder', ''),
(53, 'The power produced inside the cylinder of an IC engine is known as', 'break horse power', 'frictional horse power', 'none of above', 'indicated horse power', ''),
(54, 'The net indicated horse power (IHP) of na IC engine given by indicator diagram is equal to', 'total power produced + pumping power', '(total power produced)/(pumping power)', 'none of above', 'total power produced - pumping power', ''),
(55, 'The shape of crusher aggregate is', 'rounded ', 'flat', 'flaky', 'irregular', ''),
(56, 'The shape of river bed aggregate is', 'irregular', 'flat', 'flaky', 'rounded', ''),
(57, 'The aggregate having high interlocking property is', 'river bed aggregate	', 'volcanic aggregate', 'none', 'crusher aggregate', ''),
(58, 'In order to minimize seepage, which agrregate is suitable?', 'fine aggregate	', 'coarse aggregate', 'all of above', 'graded aggregate ', ''),
(59, 'In operating a 400Hz transformer at 50Hz', 'Only voltage is reduced in the same proportion as the frequency', 'Only kVA is reduced in the same proportion as the frequency ', 'None of the above', 'Both voltage and kVA rating are reduced in the same proportion as the frequency', ''),
(60, 'In performing the short circuit test of a transformer', 'High-voltage side is usually short-circuited', 'Any side is short-circuited with preference', 'None of above', 'Low-voltage side is usually short-circiuted', ''),
(61, 'In performing open circuit test of a transformer', 'Low voltage is usually kept open', 'Any side can be kept open', 'None of the above', 'High voltage is usually kept open', ''),
(62, 'Transformer core usually uses grain-oriented laminated sheets. The grain orientation reduces', 'Copper loss', 'Hystersis loss', 'None of the above', 'Eddy Current loss', ''),
(63, 'Random access device is', 'RAM ', 'ROM', 'optical disk ', 'all of above', ''),
(64, 'The shortcut key to copy in the keyboard is', 'ctrl+x', 'ctrl+v', ' ctrl+a ', 'ctrl+c', ''),
(65, 'Which of the following is acceptor impurity element?', 'antimony ', 'phosphorus   ', 'germanium', 'boron', ''),
(66, 'germanium', 'intrinsic semiconductor', 'p-type semiconductor ', 'n-type semiconductor', 'none of the above', '');

-- --------------------------------------------------------

--
-- Table structure for table `trick`
--

DROP TABLE IF EXISTS `trick`;
CREATE TABLE IF NOT EXISTS `trick` (
`id` int(5) unsigned NOT NULL,
  `Question` varchar(20000) NOT NULL,
  `Option1` varchar(200) NOT NULL,
  `Option2` varchar(200) NOT NULL,
  `Option3` varchar(200) NOT NULL,
  `Option4Right` varchar(200) NOT NULL,
  `Trick` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modelquestion`
--
ALTER TABLE `modelquestion`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlineexam`
--
ALTER TABLE `onlineexam`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trick`
--
ALTER TABLE `trick`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modelquestion`
--
ALTER TABLE `modelquestion`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `onlineexam`
--
ALTER TABLE `onlineexam`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `trick`
--
ALTER TABLE `trick`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
