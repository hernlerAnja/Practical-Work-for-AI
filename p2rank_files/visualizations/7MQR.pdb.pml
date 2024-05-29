
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
        
        load "data/7MQR.pdb", protein
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
 
        load "data/7MQR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11309,11310,11521,11506,11517,11528,11270,11501,11502,3694,3695,3422,3672,3674,3655,3902,3913,11010,11016,3886,3891,3887,11036,11037,11017,11018,11287,3421,3401,3403,3395,3402] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [14187,14188,6572,6573,6574,6575,6576,6580,6581,6586,6463,6466,6471,6474,14189,14190,14191,14192,14174,6590,6591,5415,14196,14201,14205,14206,14195,14078,14081,14082,14490,14088,14089,14097,14086,13061,14063,14061,14085,14435,14436,14083,14084,6448,6820,6821,6469,6446,5446,6559,6577,13030,13047,6875,6482,6467,6468,6470,6473,5432] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [8925,8816,8817,8818,8713,8844,8845,8847,9043,8805,8712,8596,9392,9393,9042] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [1098,1778,1201,1202,1777,1229,1230,1428,1203,1232,1427,1097,981,1190,1310] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [11310,11519,11520,11521,11539,11542,3693,3695,3927,3924,11543,11547,11550,3704,3706,3951,3928,3932,3905,11308,11319,11321,3942,3464,3465,11548,11557,11558] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [5599,4837,4247,4241,7040,7044,7046,7047,7049,4280,5598,4248,4249,4243,4803,5568,5605,10616,10617,7042,7012,5633,5631,5594,4270,4834,10821,4820,4836,4819,4807,4877] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [2311,2313,2327,2319,2137,2139,2140,2156,2303,2309,550,350,380,384,369,379,385,2302,373,2362,354,351,542] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [7984,7988,7994,8000,9771,7969,9755,9752,9754,8157,7966,7965,9917,9918,9926,9924,9928,9942,9977,9934,7995,7999,8165] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [12435,12452,56,19,13248,11895,13213,13214,11885,47,51,53,54,213,215,11854,11856,49,11858,11862,11863,11864,11853,13246,13220,12434,12492,12449,12451] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [6566,6567,6731,6735,6736,6728,6730,6706,6729,14181,14182,14156,14350,14351,6722,6711,6494,14180,14343,14339,14346,14337,14344,14345,14380,14381,6765,6766,6541] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [3471,11559,3203,3204,3205,3473,12423,12422,3472,3469,13124,13125,3490,13127,13152,13149,13155,13182,13183,3001,3002,12418,13214,13150,13148,13154,3221,3219,13161,13123] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [3984,4004,4006,4005,4870,3965,3967,3963,4774,4772,4864,4865,4866,3752,4013,4853,4854,3744,3995,3997,3746,3750,3754,3758,3955] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [11599,11619,11621,11578,11580,11582,11570,11361,11612,11369,11373,11610,11628,11365,11367,11359,12485,12468,12469,12479,12480,12481,11620,12387,12389] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [5512,10838,11101,11105,11086,11087,11088,11084,4807,4808,5537,10819,10820,10818,5509,5510,3944,5508,5539,5540,5546,10617,5533,4803,5535,5534,5567,5568,10836] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [956,957,958,606,946,486,947,829,830,846,604] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [6558,13029,13030,13031,13040,13014,14219,14244,14245,6555,6549,6554,14247,14248,14249,14205,14199,14204,6576] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [1881,1890,1903,1998,1904,1997,1875,1236,1237,1238,1245,1440,1439,1844,1847,1848,1849,1441,1442,1831] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [8572,8573,8101,8561,8562,8444,8445,8461,8219,8221] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [9054,9459,9463,9490,9496,9462,8852,9446,9519,9055,9056,9057,8853,8851,8860,9505,9518,9613,9612] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [14169,14170,6584,14161,14162,6632,6633,6634,14191,14173,6589,6590,5415,5416,6604,6629,6630,5414,14164,5399] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [4270,7224,7222,7219,5620,5628,5661,7042,7010,7012,5633,7250] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [17,19,13276,11885,13235,49,226,229,257,231,13243] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [3934,4840,4841,3785,3786,3853,3935,3919,3921,3753,3915,3922,3875,3876,3878,3784,3811,3812,4824] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [1515,1496,1504,1487,3012,3019,13191,13193,3013,3018,3020,3007,3008,3009,3010,3011,3017,13164,13167,13168,1517] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [7512,4661,7362,4662,7439,7582,4645,7401,7385,7527,7561,7440,7589,7511] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [11399,11400,11401,11426,11491,11493,11427,11468,11368,11534,11536,11533,11550,11530,11537,11490,12456,12455,11549,12439] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [5578,9119,10634,10635,9102,10628,10632,10633,5576,9130,9132,10627,10622,10623,10624,10625,10626,5549,5553] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [11605,11606,11621,12054,12056,11952,11953,12372,12049,12387,12388,12386] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [1500,1275,1276,1278,1260,3024,1284,3051,3054,1269,3053,1265,1070,1073,3036,3052,1476,1475,1467,1471] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [8665,8654,5645,10467,10469,5678,5679,8194,8196,8436,8434] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [1039,2852,2854,579,581,819,821,1050,13293,13294] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [6930,6780,6705,6316,6730,6707] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [14345,13931,14395,14545,14322,14320] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        