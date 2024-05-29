
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
        
        load "data/7YQ5.pdb", protein
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
 
        load "data/7YQ5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [981,1146,1147,961,962,1375,1376,1384,2668,2669,2667,2721,2718,2720,2722,2723,2724,2885,2887,2878,2678,2681,2682,2683,2663,2895] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [4043,4044,4046,4042,4218,4219,4410,4440,4441,3948,3950,4036,4244,4231,4232,4233,3951,4268,4269,4270] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [4925,5436,5050,5437,5438,5439,4338,4121,5108,4926,5142,4943,4945,4940,4941,4942,5121,4944,5423,5069,3853,5068,5071,5123,5046,5048,5034,5041,5070] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [11007,11008,4309,4311,4313,4547,4553,4556,4557,11240,11258,11262,11264,4555,4304,4306,4307,11251,11252,11253,11259,4546,4578,4327,4328,4329,4098,11015,11017,11018,11263,11019,11006,4548,4549,4550,4551,11219,11215,11216] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [3667,3692,3693,3474,3433,3435,3701,3884,3446,3450,3445,3434,3447,3451,3456,3885,3585,3600,3669,3671] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [10320,10321,10322,10326,6254,6256,6257,10323,10324,10306,6255,10311,8376,8386,8388,10145,10155,8824,8828,8818,6219,6220,6222,6251,6226,6227,6231,6221,8803,10332,10334,8791,8798,8799,8800,8808,10325,10327,10331,10348,10350,8377] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [6309,6310,6311,6312,4857,47,49,191,16,19,26,27,28,51,54,56,6308,5481,5493,5484,5485,5522,6283,6284,6307,4887,6275,6277,4850,4854,5541] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [11063,11067,12239,12241,12244,12246,12167,12234,12223,11308,11071,12243,11318,11310,11059,11057,11072,11297,11305,11065,11244,12179,12180,12181,12182,12186,12189,12164,11268,11274,11276,11064] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [4336,4337,4338,4118,4120,4121,4123,4134,4371,4372,5049,5436,5050,5437,5438,5439,5560,5561,5036,5039,4593,4604,4596,4597,4621,4598] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [2431,2432,2488,2428,2491,2495,2494,1834,2581,2582,2583,2584,2474,2590,2591,1832,1833,1842,1845,2036,2465,2037,2472,2038,2039,2415,2422,2423,1836,1837,2416,2424] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [6189,10785,10786,10787,10804,6216,10520,6224,10515,10519,6245,6246,10316,5476,5472,5467,4586,4587,4584,10801,10535] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [9165,9171,9178,9179,9193,9194,9196,9287,9201,9290,9148,9134,9137,9143,9139,9181,9167,8747,8539,8540,8549,8748,8541,8544,8550,8551,9128] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [8202,7934,8005,8007,7909,7791,8250,7908,7910] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [11785,11847,11768,11771,11772,11778,11782,11819,12159,11818,11649,11755,11756,11299,11300,11303,11816,12145,11631,11632,11848,11651] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [4550,4551,10779,10987,10765,10778,10509,4575,4577,5509,5507,5508,11014,11015,11016,11017,11018,11019,10784,10785,10786,10518] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [8150,8250,7908,7910,8202,7909,7791] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [12424,12478,13065,13229,13039,13040,13041,13247,12479,12972,12988,12461,12973,12651,12652,12653,12990,12496] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [1434,1450,1452,1718,1895,1896,1897,1701,1715,1716,1717,1719,1721,1648,1650,1661,1659,1702] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [8731,8732,8496,8402,8536] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [10748,10751,10744,10742,10976,10938,10657,10937,10939] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [10313,10131,10133,6284,10147,10148,10149,6281,6319,6350,6313,10299,28,6309,5493,10316] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [4267,4269,4270,4452,4415,4291,4513,4529,4512,4409,4379,4417,4418,4419,4391] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [1084,1200,1227,1203,1544,1298] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [7256,7144,7249,7265,7299,7301,7251,7250,7368,7371,7359,7354] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [4141,4114,4345] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [10657,10925,10628,10629,10483,10601,10600,10602,10630,10482] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [8804,10338,10344,10349,8588,8374,8581,8580,8579,10365,10366,10367,10368,8573,8575,10161,10162,8347,8779,8780] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [7885,7883,8123,8125,8354,8356,10169,7901,6322,6323,6355,6356,6357,8343] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [7935,7942,332,271,7743,7745,320,330,7749,321,299,293] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [12046,12099,12100,12101,12098,12022,12024,11457,11657,11659,11656,12023] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [6310,6311,6312,206,4877,6299,6306,49,204,6340,18] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [7446,6999,7373,7142] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        