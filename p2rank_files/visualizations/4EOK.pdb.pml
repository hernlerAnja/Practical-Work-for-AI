
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
        
        load "data/4EOK.pdb", protein
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
 
        load "data/4EOK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [662,88,89,94,95,665,658,147,100,145,146,96,91,93,90,107,108,1127,1021,1033,1126,1129,478,1049,1050,636,633,635,639,613,615,609,610,611,612,614,248,264,1121,1122] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5020,5023,7878,7879,524,526,41,7855,31,7880,22,5038,5034,28,42,7446,229,192,228,499,509,511,603,500,502,503,1,4,525,6,19,5042,7874,7875,7876,7877,7881,7843,7849,7882,7887,7445,7850,5025] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5539,5540,5129,5142,5511,5148,5155,5126,5136,5137,5140,5141,4724,4864,5612,5613,5616,5617,5618,4559,4566,4567,5100,5102,5104,5105,4968,5109,5611,4548,4551,4554,4555,4556,4557,4707,5103,4604,4605,4606,5101] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [5691,5696,5700,8121,8148,8149,5689,5692,8001,8002,8003,8000,8032,8034,8120,8122,8097,7968,7303,7967,7299,7304,7306,8823,8819,8821,8811,5708,7608,5704,5705,5706,7311,7294,7297,7976,7975,7312,5676,7974,7313,7970,5675,5726] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [4993,4651,4990,4992,4501,5093,4500,2963,4687,4490,4487,2953,2962,4454,4989,4998,5001,4457,4460,4463] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [2372,2375,2376,2404,2406,2161,1197,1200,1203,1183,1188,2393,2395,1435,1436,1428,1429,1441,2155,2160,2162,2151,2152,1209,1424] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [5685,5673,5678,5680,5687,5690,5919,5698,5918,5693,5699,6915,6873,6861,6887,6865,6651,6854,6860,6889,6652,6876,5925,5926,5674] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [3331,552,3360,3362,4480,4482,535,3395,3397,4465,3366,3367,4478,4490,3329,3332,3333,3334,4489] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1066,1078,1079,1063,487,623,7099,7100,1091,1107,1108,450,452,453,2312,641,643,628,7078,7082,7080] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1795,1804,1809,1810,1811,1837,1838,1390,1798,2162,2152,2146,2153,2154,1403,1404] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [3549,3665,3666,3520,1199,1201,2824,3484,3485,3638,3639,3614,2823,4336,4338,3645,2814,1214,1216,4329,2816] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [3570,3569,3557,2370,4015,4018,4014,2402,3556,2369,2405,3559] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [7026,7155,7396,8258,8252,8221,7365,7368,7362,7334,7027,8253,8255,7948,8272,8294,8295,8316,7953,8203,8242,8243,8195,8244,8193,8197] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [333,3160,334,341,1269,1268,1244,1246,1248,3161,3138,363,1144,3129] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [2828,2831,3485,3491,1176,1185,1186,1199,2829,2830,3124,3492,1173,3493,1172,1177,1218,3125,1215,1216,1210] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [5556,5572,5118,5132,5597,2601,5113,5598,5110,2617,4942,4943,5581,6802] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [6614,6580,6603,6227,6432,6433,6625,6627,6431,6276,6613,6616,6618] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [5880,6652,5894,5893,6643,6644,6288,6635,6636,6637,6285,6329,6294] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [8501,8499,8500,8052,8053,8042,8040,6858,6885,6888,6859] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [6576,6484,6462,6463,6081] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        