
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6VEP.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6VEP.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [10996,10997,10998,15975,15661,15662,15663,15969,15972,11276,10955,10956,11139,10937,10938,15645,15660,15644,15834,15983,11127,11267,11268,11109,11083,11090,11094,10974,10975,10976,15681,15683,15682,10954,10963,10994,15667,10995,10479,10986,15797,15803,11262,11265,15703,15704,15705,15702,15721,10960,15816,15817,15846] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [6611,6597,6600,6601,6602,6603,6272,6288,6289,6290,6291,6273,1816,1973,1974,1643,1660,1661,1662,1971,1644,1845,1802,1703,1704,1790,1792,1796,1797,1798,1169,6620,1702,1700,1701,1692,6311,6296,6297,6298,6295,1705,1188,1189,1194,1205,1200,1201,1202,1203,1639,1681,1680,1682,6310,6331,6444,6445,6474,6333,6349] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [3972,2393,3913,2203,2206,2207,2385,2386,4145,3968,3969,3970,3971,3973,3974,4135,4137,4153,4147,2226,2228,3995,3897,3948,3932,3928,3931,3933,3918,3924,3914,3910,3919,2630,2621,2619,2620] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [13284,13282,13186,13202,11674,11509,11666,11667,13257,13258,13263,13260,13262,13424,13426,13259,13261,13220,13213,13217,11911,11902,13208,13203,13221,13222,13237] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [13166,13163,13089,13090,13088,13095,13096,11086,10458,10459,10460,10457,11032,11033,13105,13102,13313,13316,10492,10494,10427,10483,9894,10412,9895,9896,13181,10428,10450,10451,9852,9847,13174,13182,13173,13175,9684] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [8759,8761,8593,8594,8595,8597,8598,8636,8557,8596,8537,8543,8547,8548,7238,6819,6823,6824,6825,6826,8514,8619,8534,8538,8520,8572,7472,8552,8555,8556,7247,7010,6829,7002,7003,6845,8769] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [17957,17959,17960,17961,16182,16183,16184,16185,16188,16189,16190,16208,16373,16365,16366,18132,16192,16191,17982,17883,17884,17897,17900,17901,17905,17910,17911,17915,17919,17877,17920,17955,17999,17918,16610,17906,16601,17935,18115,16835,18122,18124] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [17786,17787,17788,17879,17880,17872,17861,17871,15159,15160,15182,15183,15181,17793,17794,17864,15739,15740,17800,17803,14626,15191,15192,15190,15798,17863,17865,15215,15224,14416,15144,14409,14579] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [1167,1168,1169,3877,3807,3816,1159,3799,3800,3801,3874,1166,4027,4024,556,561,1121,603,605,3884,3886,378,393,1201,1203,1136,1192,3885,3892,3893,1160] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [6426,8423,8425,8498,8501,5828,5829,5852,6420,5818,5827,6368,5781,5264,5265,5053,5797,5796,5216,5861,8431,8437,8430,8424,8440,5819,5820,8627,8517,8516] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [13671,13672,13673,13739,13740,13760,13762,13745,3523,3528,3535,3531,3533,3534,13698,13678,13679,13680,13681,3273,3277,3257,3246,3252,3259,3335,3326,3263,3265,3234,3328,3331,3332,3324,3323] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [13749,3405,13751,13860,3411,3413,13862,13859,13745,13748,3573,3534,3231,3232,3234,3235,3461,3227,3404,3406,3407,3409,3408,3365,3229,3416,3417,3415,13846,13847,13873,13857,13858,13868,13840] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [10947,9956,9957,10362,9952,9961,9972,9966,9969,9970,15251,10365,10366,15246,10965,15254,10364,9955,9954,10355,10358,10539,10951,10958,10964,10945,10971,10946,14429,14435,14438,14439,14418,14421,14422,14426,14423,14424,14440,15231] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [9708,9709,9710,15271,14698,14701,14702,14704,9689,9697,9707,9703,9706,10522,15094,15096,15098,10519,14684,14687,14688,15090,14703,15658,15665,15671,15672,15651,15652,15654,15678,14689,9691,9692] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [2904,2907,2906,2908,4576,4578,4580,2899,2916,12197,12185,12180,12188,12187,12189,12179,13934,13936,13932] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [1074,5888,5891,1075,5883,5076,5077,1247,1248,1071,1064,1067,670,674,675,678,679,681,664,665,666,661,663,1670,1677,1657,1664,1671,1651,1652,1653,5063,5066,5072,5058,5059,5075,5868,5061] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [417,418,5341,419,5335,5338,5339,5340,1228,1231,5734,5735,416,5908,395,398,406,412,415,402,5325,5731,5724,5727,5321,5723,5725,6299,6300,399,390,6282] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [10496,10485,10489,10491,10492,10493,10494,10995,10478,10479,10480,10986,10999,15667,15670,15668,15669,10499,11086,11090,11091,10460,15992] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [3263,3265,3226,3232,3324,3323,3348,3351,3273,3257,3246,3259,3326,3362,3366,3367,3368,3369,3365,3227,3347,13745] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [12546,12548,12507,12649,12508,12646,12527,12604,12629,12632,12650,12628,12643,12647,12544,12605,12607,4398] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [15231,15211,15228,15693,10960,10961,10962,15223,15225,15212,15224,15226,15797,15703,15702,15701,15793,10959,10963,10973,10965] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [2904,2906,2908,4574,4538,4570,4576,4578,4571,4607,12187,12189,13891,4535] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [12563,12564,12954,12967,12970,12971,13003,13004,12566,13013,12360,13010,13011,13123,12361,12363,12972] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [9322,9324,18,9321,28,4566,26,27,4607,56,4574,4570,4576,4571,9314,13922,13925,13891,4535,9323,13963,4569] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [12827,12839,4398,4415,4413,12516,4333,4324,4325,4326,4392,4393,4494,4493,12880,12515,12513] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [7708,8345,8346,7899,8347,8348,7696,7897,7900,8289,8300,8302,8458,7697,7699,7893,7902,8305,8306,8362,8307,8337,8338,8339,8361] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [12687,12688,12689,12692,12685,12686,4513,12516,12697,4398,12696,4401,4402,4404,4499,12512,12513,12510,12649,12508,12646] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [13372,13682,13674,13689,13662,13821,13342,11368,11366,13374,13346] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [17701,17702,17262,17263,17265,17659,17663,17665,17668,17700,17708,17709,17710,17711,17669,17724,17725,17821,17670,17652,17059,17060,17062] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [3282,3283,3834,3080,3678,3681,3682,3683,3665,3714,3715,3721,3722,3724,3091,3079,3285] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [18353,18354,18355,18078,18079,18081,18110,17949,17950,15554,15550,15557,15549,18020,18083,18010] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        