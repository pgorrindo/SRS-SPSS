* syntax written by Phillip Gorrindo (pgorrindo.github@gorrindo.com)
* last updated on November 25, 2012
* Git repository at https://github.com/pgorrindo/SRS-SPSS.git
* Some notes on the following code:
*    - there are some required variables that this code expects (ex: sex, study_group, etc) which your database may not have; 
*        consider this code as the starting point that you can build on and will, most likely, need to modify to work for your particular dataset
*    - this code allows for a manually (i.e., using the SRS auto-score sheets) coded score, and will calculate a score based on individual items, 
*        and then check the two against each other
*    - use this code at your own risk... I can't guarantee that I'll be able to help you troubleshoot if a problem comes up
*    - if you find an error, please let me know
*    - a version of this code has been used in analysis of data that has been published in peer-reviewed reports.




* this is the primary variable from REDCap's output for the manually scored SRS; here we apply a better variable label.
VARIABLE LABELS srs_t_total "SRS T score (manual) - total".


* REDCap's output of the srs_t_total variable is by default a string and nominal; here we make a new variable that is numeric. 
RECODE srs_t_total (CONVERT) INTO srs_t_total_manual.
FORMATS srs_t_total_manual (F5.0).
VARIABLE LEVEL  srs_t_total_manual (Scale).
VARIABLE LABELS srs_t_total_manual "SRS T score (manual) - total".


* recode all variables so that what the parent circled (i.e., what is in REDCap and gets exported).
* is now re-coded as the actual score used to calculate raw scores (i.e., the number that is circled on the carbon copy scoresheet).
* into a corresponding variable with an "a" appended to the variable name, thus maintaining the original raw scores in the original variables.
* note: the variable names are numbered in sequence with how the items are presented on the 2005 WPS SRS AutoScore form.
* for example, srs_q_1 corresponds to "Seems much more fidgety in social situations than when alone". 
RECODE srs_q_1 (1=0) (2=1) (3=2) (4=3) INTO srs_q_1a.
RECODE srs_q_2 (1=0) (2=1) (3=2) (4=3) INTO srs_q_2a.
RECODE srs_q_3 (1=3) (2=2) (3=1) (4=0) INTO srs_q_3a.
RECODE srs_q_4 (1=0) (2=1) (3=2) (4=3) INTO srs_q_4a.
RECODE srs_q_5 (1=0) (2=1) (3=2) (4=3) INTO srs_q_5a.
RECODE srs_q_6 (1=0) (2=1) (3=2) (4=3) INTO srs_q_6a.
RECODE srs_q_7 (1=3) (2=2) (3=1) (4=0) INTO srs_q_7a.
RECODE srs_q_8 (1=0) (2=1) (3=2) (4=3) INTO srs_q_8a.
RECODE srs_q_9 (1=0) (2=1) (3=2) (4=3) INTO srs_q_9a.
RECODE srs_q_10 (1=0) (2=1) (3=2) (4=3) INTO srs_q_10a.
RECODE srs_q_11 (1=3) (2=2) (3=1) (4=0) INTO srs_q_11a.
RECODE srs_q_12 (1=3) (2=2) (3=1) (4=0) INTO srs_q_12a.
RECODE srs_q_13 (1=0) (2=1) (3=2) (4=3) INTO srs_q_13a.
RECODE srs_q_14 (1=0) (2=1) (3=2) (4=3) INTO srs_q_14a.
RECODE srs_q_15 (1=3) (2=2) (3=1) (4=0) INTO srs_q_15a.
RECODE srs_q_16 (1=0) (2=1) (3=2) (4=3) INTO srs_q_16a.
RECODE srs_q_17 (1=3) (2=2) (3=1) (4=0) INTO srs_q_17a.
RECODE srs_q_18 (1=0) (2=1) (3=2) (4=3) INTO srs_q_18a.
RECODE srs_q_19 (1=0) (2=1) (3=2) (4=3) INTO srs_q_19a.
RECODE srs_q_20 (1=0) (2=1) (3=2) (4=3) INTO srs_q_20a.
RECODE srs_q_21 (1=3) (2=2) (3=1) (4=0) INTO srs_q_21a.
RECODE srs_q_22 (1=3) (2=2) (3=1) (4=0) INTO srs_q_22a.
RECODE srs_q_23 (1=0) (2=1) (3=2) (4=3) INTO srs_q_23a.
RECODE srs_q_24 (1=0) (2=1) (3=2) (4=3) INTO srs_q_24a.
RECODE srs_q_25 (1=0) (2=1) (3=2) (4=3) INTO srs_q_25a.
RECODE srs_q_26 (1=3) (2=2) (3=1) (4=0) INTO srs_q_26a.
RECODE srs_q_27 (1=0) (2=1) (3=2) (4=3) INTO srs_q_27a.
RECODE srs_q_28 (1=0) (2=1) (3=2) (4=3) INTO srs_q_28a.
RECODE srs_q_29 (1=0) (2=1) (3=2) (4=3) INTO srs_q_29a.
RECODE srs_q_30 (1=0) (2=1) (3=2) (4=3) INTO srs_q_30a.
RECODE srs_q_31 (1=0) (2=1) (3=2) (4=3) INTO srs_q_31a.
RECODE srs_q_32 (1=3) (2=2) (3=1) (4=0) INTO srs_q_32a.
RECODE srs_q_33 (1=0) (2=1) (3=2) (4=3) INTO srs_q_33a.
RECODE srs_q_34 (1=0) (2=1) (3=2) (4=3) INTO srs_q_34a.
RECODE srs_q_35 (1=0) (2=1) (3=2) (4=3) INTO srs_q_35a.
RECODE srs_q_36 (1=0) (2=1) (3=2) (4=3) INTO srs_q_36a.
RECODE srs_q_37 (1=0) (2=1) (3=2) (4=3) INTO srs_q_37a.
RECODE srs_q_38 (1=3) (2=2) (3=1) (4=0) INTO srs_q_38a.
RECODE srs_q_39 (1=0) (2=1) (3=2) (4=3) INTO srs_q_39a.
RECODE srs_q_40 (1=3) (2=2) (3=1) (4=0) INTO srs_q_40a.
RECODE srs_q_41 (1=0) (2=1) (3=2) (4=3) INTO srs_q_41a.
RECODE srs_q_42 (1=0) (2=1) (3=2) (4=3) INTO srs_q_42a.
RECODE srs_q_43 (1=3) (2=2) (3=1) (4=0) INTO srs_q_43a.
RECODE srs_q_44 (1=0) (2=1) (3=2) (4=3) INTO srs_q_44a.
RECODE srs_q_45 (1=3) (2=2) (3=1) (4=0) INTO srs_q_45a.
RECODE srs_q_46 (1=0) (2=1) (3=2) (4=3) INTO srs_q_46a.
RECODE srs_q_47 (1=0) (2=1) (3=2) (4=3) INTO srs_q_47a.
RECODE srs_q_48 (1=3) (2=2) (3=1) (4=0) INTO srs_q_48a.
RECODE srs_q_49 (1=0) (2=1) (3=2) (4=3) INTO srs_q_49a.
RECODE srs_q_50 (1=0) (2=1) (3=2) (4=3) INTO srs_q_50a.
RECODE srs_q_51 (1=0) (2=1) (3=2) (4=3) INTO srs_q_51a.
RECODE srs_q_52 (1=3) (2=2) (3=1) (4=0) INTO srs_q_52a.
RECODE srs_q_53 (1=0) (2=1) (3=2) (4=3) INTO srs_q_53a.
RECODE srs_q_54 (1=0) (2=1) (3=2) (4=3) INTO srs_q_54a.
RECODE srs_q_55 (1=3) (2=2) (3=1) (4=0) INTO srs_q_55a.
RECODE srs_q_56 (1=0) (2=1) (3=2) (4=3) INTO srs_q_56a.
RECODE srs_q_57 (1=0) (2=1) (3=2) (4=3) INTO srs_q_57a.
RECODE srs_q_58 (1=0) (2=1) (3=2) (4=3) INTO srs_q_58a.
RECODE srs_q_59 (1=0) (2=1) (3=2) (4=3) INTO srs_q_59a.
RECODE srs_q_60 (1=0) (2=1) (3=2) (4=3) INTO srs_q_60a.
RECODE srs_q_61 (1=0) (2=1) (3=2) (4=3) INTO srs_q_61a.
RECODE srs_q_62 (1=0) (2=1) (3=2) (4=3) INTO srs_q_62a.
RECODE srs_q_63 (1=0) (2=1) (3=2) (4=3) INTO srs_q_63a.
RECODE srs_q_64 (1=0) (2=1) (3=2) (4=3) INTO srs_q_64a.
RECODE srs_q_65 (1=0) (2=1) (3=2) (4=3) INTO srs_q_65a.


* calculate how many items are missing from the SRS.
COMPUTE  num_missing_srs = 65-(NVALID(srs_q_1a, srs_q_2a, srs_q_3a, srs_q_4a, srs_q_5a, srs_q_6a, srs_q_7a, srs_q_8a, srs_q_9a, srs_q_10a,
 srs_q_11a, srs_q_12a, srs_q_13a, srs_q_14a, srs_q_15a, srs_q_16a, srs_q_17a, srs_q_18a, srs_q_19a, srs_q_20a,
 srs_q_21a, srs_q_22a, srs_q_23a, srs_q_24a, srs_q_25a, srs_q_26a, srs_q_27a, srs_q_28a, srs_q_29a, srs_q_30a,
 srs_q_31a, srs_q_32a, srs_q_33a, srs_q_34a, srs_q_35a, srs_q_36a, srs_q_37a, srs_q_38a, srs_q_39a, srs_q_40a,
 srs_q_41a, srs_q_42a, srs_q_43a, srs_q_44a, srs_q_45a, srs_q_46a, srs_q_47a, srs_q_48a, srs_q_49a, srs_q_50a,
 srs_q_51a, srs_q_52a, srs_q_53a, srs_q_54a, srs_q_55a, srs_q_56a, srs_q_57a, srs_q_58a, srs_q_59a, srs_q_60a,
 srs_q_61a, srs_q_62a, srs_q_63a, srs_q_64a, srs_q_65a)).
VARIABLE LABELS num_missing_srs "number of missing values on SRS".
FORMATS num_missing_srs (F4.0).


* calculate the raw sum of the individual items - total score.
COMPUTE calc_srs_raw_tot_indivs = sum(srs_q_1a, srs_q_2a, srs_q_3a, srs_q_4a, srs_q_5a, srs_q_6a, srs_q_7a, srs_q_8a, srs_q_9a, srs_q_10a,
 srs_q_11a, srs_q_12a, srs_q_13a, srs_q_14a, srs_q_15a, srs_q_16a, srs_q_17a, srs_q_18a, srs_q_19a, srs_q_20a,
 srs_q_21a, srs_q_22a, srs_q_23a, srs_q_24a, srs_q_25a, srs_q_26a, srs_q_27a, srs_q_28a, srs_q_29a, srs_q_30a,
 srs_q_31a, srs_q_32a, srs_q_33a, srs_q_34a, srs_q_35a, srs_q_36a, srs_q_37a, srs_q_38a, srs_q_39a, srs_q_40a,
 srs_q_41a, srs_q_42a, srs_q_43a, srs_q_44a, srs_q_45a, srs_q_46a, srs_q_47a, srs_q_48a, srs_q_49a, srs_q_50a,
 srs_q_51a, srs_q_52a, srs_q_53a, srs_q_54a, srs_q_55a, srs_q_56a, srs_q_57a, srs_q_58a, srs_q_59a, srs_q_60a,
 srs_q_61a, srs_q_62a, srs_q_63a, srs_q_64a, srs_q_65a).
VARIABLE LABELS calc_srs_raw_tot_indivs "SRS raw (calculated) - total (indiv items)".
FORMATS calc_srs_raw_tot_indivs (F4.0).


* calculate the raw sum of the individual items - awareness score.
COMPUTE calc_srs_raw_aware = sum(srs_q_2a, srs_q_7a, srs_q_25a, srs_q_32a, srs_q_45a, srs_q_52a, srs_q_54a, srs_q_56a).
VARIABLE LABELS calc_srs_raw_aware "SRS raw (calculated) - awareness".
FORMATS calc_srs_raw_aware (F4.0).


* calculate the raw sum of the individual items - cognition subscale score.
COMPUTE calc_srs_raw_cogtn = sum(srs_q_5a, srs_q_10a, srs_q_15a, srs_q_17a, srs_q_30a, srs_q_40a, srs_q_42a, srs_q_44a, srs_q_48a, srs_q_58a, srs_q_59a, srs_q_62a).
VARIABLE LABELS calc_srs_raw_cogtn "SRS raw (calculated) - cognition".
FORMATS calc_srs_raw_cogtn (F4.0).


* calculate the raw sum of the individual items - communication subscale score.
COMPUTE calc_srs_raw_comm = sum(srs_q_12a, srs_q_13a, srs_q_16a, srs_q_18a, srs_q_19a, srs_q_21a, srs_q_22a, srs_q_26a, 
srs_q_33a, srs_q_35a, srs_q_36a, srs_q_37a, srs_q_38a, srs_q_41a, srs_q_46a, srs_q_47a, srs_q_51a, srs_q_53a, srs_q_55a, srs_q_57a, srs_q_60a, srs_q_61a).
VARIABLE LABELS calc_srs_raw_comm "SRS raw (calculated) - communication".
FORMATS calc_srs_raw_comm (F4.0).


* calculate the raw sum of the individual items - motivation subscale score.
COMPUTE calc_srs_raw_motvn = sum(srs_q_1a, srs_q_3a, srs_q_6a, srs_q_9a, srs_q_11a, srs_q_23a, srs_q_27a, srs_q_34a, srs_q_43a, srs_q_64a, srs_q_65a).
VARIABLE LABELS calc_srs_raw_motvn "SRS raw (calculated) - motivation".
FORMATS calc_srs_raw_motvn (F4.0).


* calculate the raw sum of the individual items - mannerisms subscale score.
COMPUTE calc_srs_raw_mannr = sum(srs_q_4a, srs_q_8a, srs_q_14a, srs_q_20a, srs_q_24a, srs_q_28a, srs_q_29a, srs_q_31a, srs_q_39a, srs_q_49a, srs_q_50a, srs_q_63a).
VARIABLE LABELS calc_srs_raw_mannr "SRS raw (calculated) - mannerisms".
FORMATS calc_srs_raw_mannr (F4.0).


* calculate the raw sum of the subscale scores, as this score should be the same as the total raw score calculated above.
COMPUTE calc_srs_raw_tot_subs = sum(calc_srs_raw_aware, calc_srs_raw_cogtn, calc_srs_raw_comm, calc_srs_raw_motvn, calc_srs_raw_mannr).
VARIABLE LABELS calc_srs_raw_tot_subs "SRS raw (calculated) - total (subscales)".
FORMATS calc_srs_raw_tot_subs (F4.0).


* REDCap's output of the srs_raw_total variable is by default a string and nominal; here we make a temporary second variable that is numeric. 
RECODE srs_raw_total (CONVERT) INTO srs_raw_total_manual.
FORMATS srs_raw_total_manual (F5.0).
VARIABLE LEVEL  srs_raw_total_manual (Scale).


* calculate the difference between the manual and the calculated raw scores -- this diference should be zero.
COMPUTE diff_manual_calc_srs = srs_raw_total_manual - calc_srs_raw_tot_indivs.
VARIABLE LABELS diff_manual_calc_srs "difference between calculated raw SRS scores and manual scores".
FORMATS diff_manual_calc_srs (F4.0).

EXECUTE.


*** generate t-scores from raw scores, using the conversion tables available in the SRS manual***.
***************MALES***************.

* make a new variable for male T scores.
NUMERIC calc_srs_t_tot_male (F4.0).

* look up the raw score and then recode it into the T score and save it in the new variable.
* as an example: 	(33,34=50) means a raw score of 33 or 34 gets recoded into a T score of 50.
RECODE calc_srs_raw_tot_indivs 
	(0,1=34) 
	(2,3=35)
	(4,5=36) 
	(6,7=37)
	(8,9=38)
	(10,11=39)
	(12,13=40)
	(14,15=41)
	(16,17,18=42)
	(19,20=43)
	(21,22=44)
	(23,24=45)
	(25,26=46)
	(27,28=47)
	(29,30=48)
	(31,32=49)
	(33,34=50)
	(35,36=51)
	(37,38=52)
	(39,40,41=53)
	(42,43=54)
	(44,45=55)
	(46,47=56)
	(48,49=57)
	(50,51=58)
	(52,53=59)
	(54,55=60)
	(56,57=61)
	(58,59=62)
	(60,61=63)
	(62,63,64=64)
	(65,66=65)
	(67,68=66)
	(69,70=67)
	(71,72=68)
	(73,74=69)
	(75,76=70)
	(77,78=71)
	(79,80=72)
	(81,82=73)
	(83,84=74)
	(85,86=75)
	(87,88,89=76)
	(90,91=77)
	(92,93=78)
	(94,95=79)
	(96,97=80)
	(98,99=81)
	(100,101=82)
	(102,103=83)
	(104,105=84)
	(106,107=85)
	(108,109=86)
	(110,111,112=87)
	(113,114=88)
	(115,116=89)
	(117,118=90)
	(119,120=91)
	(121,122=92)
	(123,124=93)
	(125,126=94)
	(127,128=95)
	(129,130=96)
	(131,132=97)
	(133,134,135=98)
	(136,137=99)
	(138,139=100)
	(140,141=101)
	(142,143=102)
	(144,145=103)
	(146,147=104)
	(148,149=105)
	(150,151=106)
	(152,153=107)
	(154,155=108)
	(156,157,158=109)
	(159,160=110)
	(161,162=111)
	(163,164=112)
	(165,166=113)
	(167,168=114)
	(169,170=115)
	(171,172=116)
	(173,174=117)
	(175,176=118)
	(177,178=119)
	(179,180,181=120)
	(182,183=121)
	(184,185=122)
	(186,187=123)
	(188,189=124)
	(190,191=125)
	(192,193=126)
	(194,195=127)
	INTO calc_srs_t_tot_male.
EXECUTE.


*** now calculate T scores for females ***.
***************FEMALES***************.
NUMERIC calc_srs_t_tot_female (F4.0).
RECODE calc_srs_raw_tot_indivs
	(0,1=35)
	(2,3=36)
	(4=37)
	(5,6=38)
	(7,8=39)
	(9,10=40) 
	(11,12=41)
	(13,14=42)
	(15=43)
	(16,17=44)
	(18,19=45)
	(20,21=46)
	(22,23=47)
	(24=48)
	(25,26=49)
	(27,28=50)
	(29,30=51)
	(31,32=52)
	(33=53)
	(34,35=54)
	(36,37=55)
	(38,39=56)
	(40,41=57)
	(42=58)
	(43,44=59)
	(45,46=60)
	(47,48=61)
	(49,50=62)
	(51,52=63)
	(53=64)
	(54,55=65)
	(56,57=66)
	(58,59=67)
	(60,61=68)
	(62=69)
	(63,64=70)
	(65,66=71)
	(67,68=72)
	(69,70=73)
	(71=74)
	(72,73=75)
	(74,75=76)
	(76,77=77)
	(78,79=78)
	(80=79)
	(81,82=80)
	(83,84=81)
	(85,86=82)
	(87,88=83)
	(89,90=84)
	(91=85)
	(92,93=86)
	(94,95=87)
	(96,97=88)
	(98,99=89)
	(100=90)
	(101,102=91)
	(103,104=92)
	(105,106=93)
	(107,108=94)
	(109=95)
	(110,111=96)
	(112,113=97)
	(114,115=98)
	(116,117=99)
	(118,119=100)
	(120=101)
	(121,122=102)
	(123,124=103)
	(125,126=104)
	(127,128=105)
	(129=106)
	(130,131=107)
	(132,133=108)
	(134,135=109)
	(136,137=110)
	(138=111)
	(139,140=112)
	(141,142=113)
	(143,144=114)
	(145,146=115)
	(147=116)
	(148,149=117)
	(150,151=118)
	(152,153=119)
	(154,155=120)
	(156,157=121)
	(158=122)
	(159,160=123)
	(161,162=124)
	(163,164=125)
	(165,166=126)
	(167=127)
	(168,169=128)
	(170,171=129)
	(172,173=130)
	(174,175=131)
	(176=132)
	(177,178,=133)
	(179,180=134)
	(181,182=135)
	(183,184=136)
	(185=137)
	(186,187=138)
	(188,189=139)
	(190,191=140)
	(192,193=141)
	(194,195=142)
	INTO calc_srs_t_tot_female.
EXECUTE.


* now merge the calculated T score for males and females into a single unisex variable.
NUMERIC srs_t_tot_calc (F4.0).
VARIABLE LABELS srs_t_tot_calc "SRS T score (calculated) - total".
IF (sex=1) srs_t_tot_calc=calc_srs_t_tot_male.
IF (sex=2) srs_t_tot_calc=calc_srs_t_tot_female.
EXECUTE.


* cleanup a bit and delete some unused variables.
DElETE VARIABLES calc_srs_t_tot_male calc_srs_t_tot_female.
*DElETE VARIABLES srs_raw_total srs_raw_awareness srs_raw_cognition srs_raw_communication srs_raw_motivation srs_raw_mannerisms.
DElETE VARIABLES calc_srs_raw_tot_indivs calc_srs_raw_aware calc_srs_raw_cogtn calc_srs_raw_comm calc_srs_raw_motvn calc_srs_raw_mannr calc_srs_raw_tot_subs.
DElETE VARIABLES srs_t_total srs_raw_total_manual.
*DELETE VARIABLES srs_t_awareness srs_t_cognition srs_t_communication srs_t_motivation srs_t_mannerisms.
DELETE VARIABLES srs_q_1a srs_q_2a srs_q_3a srs_q_4a srs_q_5a srs_q_6a srs_q_7a srs_q_8a srs_q_9a srs_q_10a
 srs_q_11a srs_q_12a srs_q_13a srs_q_14a srs_q_15a srs_q_16a srs_q_17a srs_q_18a srs_q_19a srs_q_20a
 srs_q_21a srs_q_22a srs_q_23a srs_q_24a srs_q_25a srs_q_26a srs_q_27a srs_q_28a srs_q_29a srs_q_30a
 srs_q_31a srs_q_32a srs_q_33a srs_q_34a srs_q_35a srs_q_36a srs_q_37a srs_q_38a srs_q_39a srs_q_40a
 srs_q_41a srs_q_42a srs_q_43a srs_q_44a srs_q_45a srs_q_46a srs_q_47a srs_q_48a srs_q_49a srs_q_50a
 srs_q_51a srs_q_52a srs_q_53a srs_q_54a srs_q_55a srs_q_56a srs_q_57a srs_q_58a srs_q_59a srs_q_60a
 srs_q_61a srs_q_62a srs_q_63a srs_q_64a srs_q_65a.


* sort SPSS cases by the difference between manual and calculated SRS scores -- the difference should be zero for all cases -- just a double-check here.
SORT CASES BY
  diff_manual_calc_srs (A).


*if SRS is marked for exclusion from analysis, then ensure the relevant variables that I will do stats on are set to null for that particular case.
DO IF (include_flag_srs = 0).
  COMPUTE srs_t_total_manual = $SYSMIS.
  COMPUTE srs_t_tot_calc = $SYSMIS.
END IF.
EXECUTE.


**************************************************.
**************************************************.
*now check the calculated versus manual total T score.
**************************************************.
NUMERIC srs_total_t_agree_manual_calc (F3.0).
VARIABLE LABELS srs_total_t_agree_manual_calc "SRS total T score - agreement between calculated and manual".
VALUE LABELS srs_total_t_agree_manual_calc 
	0 'do not agree'
	1 'agree'.
VARIABLE LEVEL srs_total_t_agree_manual_calc (NOMINAL).
EXECUTE.

DO IF (MISSING(srs_t_total_manual) <> 1).
  DO IF (srs_t_total_manual = srs_t_tot_calc).
    COMPUTE srs_total_t_agree_manual_calc=1.
  ELSE IF (srs_t_total_manual <> srs_t_tot_calc).
    COMPUTE srs_total_t_agree_manual_calc=0.
  END IF.
END IF.
EXECUTE.

EXECUTE.

CROSSTABS
  /TABLES=srs_total_t_agree_manual_calc BY study_group
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.
***************************************************.
***************************************************.


* move some variables around in SPSS for easier viewing.
VARIABLE ATTRIBUTE VARIABLES=
  srs_t_tot_calc
  srs_t_total_manual
  diff_manual_calc_srs
  num_missing_srs
  srs_total_t_agree_manual_calc
  ATTRIBUTE=origsort ('0013').
SORT VARIABLES BY ATTRIBUTE origsort (A).

EXECUTE.