
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
        
        load "data/4KRM.pdb", protein
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
 
        load "data/4KRM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [24676,24677,24686,24692,24693,24694,24695,27570,24670,24674,27594,27554,23676,23707,23708,23709,24223,24224,25997,27552,24650,27601,27599,24736,24738,25496,23390,25975,25976,23286,23269,23288,25982,23297,23299,25103,27300,27302,27303,26499,24809,24810,24825,26562,25138,25139,26500,25494,25536,27547,27550,27567,24298,27537,27575,27461,24260,24299,27571,27572,27576,25146] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [5174,4786,5204,5205,5206,5207,5737,5773,6160,5736,6171,6207,6195,6198,4811,4813,5161,6134,6136,5154,5160,5710,5711,5712,7549,7548,7553,4898,9102,9100,4800,4801,4802,4889,4900,5812,7570,9115,9118,6213,6215,6216,9095,21396,21398,21682,21686,21687,21439,21664,21675,22421,21665,21674,21666,22414,22438] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [4232,3487,3488,3489,4501,4502,4503,4504,4505,4507,1707,3426,3427,4466,1172,4445,1169,1170,1171,4390,4407,4408,4409,4391,4393,4394,1167,1722,1723,2028,2425,2035,2442,2034,2441,1708,1574,1575,1591,1592,1593,1991,1992,1634,4231,2384,2385,4500,4523,4476,4481,4496] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [9095,5810,5811,9121,9123,6330,6331,6668,6346,6345,9009,8123,8124,8125,9119,9120,9124,9126,6674,6675,9012,9013,6215,6214,6216,6257,6259,6631,6632,9115,9118,9142,9153,9154,5812,5808,5809,5807,6197,6198,9100,8121,8062,8063,8848,8850] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [12729,13593,13594,10830,11264,10963,10964,10979,11299,10978,10435,13676,13696,13702,13700,13701,13703,10431,10433,10434,10436,13645,13704,13705,13707,13590,10831,10847,10888,10890,13723,10848,10849,12666,12728,11265,11698,11298,11301,11307,11308,12725,13431,13432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [22977,22979,22981,20226,20227,22983,21963,21964,21965,21961,21894,22869,22870,22975,22976,22999,23010,22707,22708,23011,21895,19694,22942,22957,19695,20095,20096,20097,22978,22952,22972,19690,19691,22980,22921,22866,20078,20079,20136,20138,20512,20140,20513,20120,20212,20211,20549,20555,20556] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [7617,20040,20041,20052,19057,19089,19090,19620,19656,19619,20072,20088,20076,18673,18675,18645,19034,19043,19044,20015,20017,19593,19594,19037,20094,18769,21355,22959,22942,22957,19088,19695,20096,20097,21377,22952,22961,22972,18758,21363,18662,18663,18664,18767,7832,7833,7834,8557,7854,7855,7842,7850,7843,8581] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [15827,15524,15863,18338,18358,18363,18364,18366,18367,18362,18365,18369,18252,18255,15540,15872,15870,18368,17366,18093,17364,17365,18256,18094,17288,17289,15410,15408,15451,15453,18385,18392,18361,15497,15525,14949,14988,14989,18328,14986,15391,15392,15449] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [12152,12174,9525,9829,9831,13679,13681,13683,9408,9830,12153,12171,9798,9866,12160,9426,9425,9514,9427,9436,10841,10846,10848,10849,10360,10361,10804,10840,10828,10397,10831,10435,13666,13676,13696] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [14382,14384,14950,14913,14914,15385,15389,15401,15392,16737,16740,16732,18345,18343,13978,14351,14383,14048,14067,15409,16754,15407,15410,15365,13980] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [566,565,567,1133,534,1096,1097,143,160,161,162,1537,171,173,1575,1568,1572,1584,1590,1592,1593,1548,4483,2892,2887,2888,4476,4479,4481,4496,2909,249,2895] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [24638,24639,24197,24198,24613,24615,12221,23676,23663,12438,12217,23288,23298,23297,23299,23656,23269,23654,12458,12447,13161,13168,13185] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [21449,23007,23023,6584,6957,6977,23028,23032,6175,6176,6585,6174,6235,6590,6591,6602,6603,6978,6988,6979,6983,6228,6604] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [9775,9778,9784,10335,9438,9785,9798,10792,10793,9408,9427,9436,9426,9425,26318,27020,26301,26298,26984,10769,26288] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [15120,15616,16661,16594,16595,16663,15083,15104,15118,15119,15642,15675,16609,16610,16639,16640,16662,16611,15150,15152] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [7627,9166,9171,9184,9175,9150,20465,20466,20822,20838,20839,20840,20841,20483,20484,20057,20821,20109,20056,20116,20485] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [173,17060,17070,17826,17052,17815,1513,1515,1536,1537,17063,1511,521,1071,534,514] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [19275,19276,19277,19308,18771,19232,19235,19309,18760,18822,18766,18785,18819,18746,18772,18770,19155,19157] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [13182,12543,13105,13106,13140,12572,12573,12546,13166,13181,12484,12448,12542,12482,12507,13171,12850,13198] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [5910,5924,5925,5926,6421,7432,7435,7469,7470,7418,7419,5959,5957,6480,7433,7434] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [8501,8536,7970,7844,7880,7878,7942,7968,7969,7939,8577,8578] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [2788,2789,2790,2791,2775,1287,1303,1335,1336,1798,2825,2826] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [3976,3303,3333,3334,3245,3948,3943,3944,3208,3883,3917,3306,3243,3267,3610,3242,3299,3302] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [21710,22420,21676,21712,21771,21772,21774,21801,22446,22393,22434,22435,21379] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [27015,26379,26000,26317,27014,26281,26376,26406] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [10050,9973,9976,10017,9527,9528,9895,9578,9575,9502,9522,9512,9541,9896,9898,9908,9894,9909,9526,10018,10016,10049] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [17833,17053,17836,17166,17168,17106,17759,17794,17825,17104,17129,17760,17195,17165] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [19843,19846,20328,20361,19818,21311,21310,21312,20302,21269,19886,21281] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [10543,10559,11054,11113,12054,12055,12056,10591,10589,12053,12091,12039,12040] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        