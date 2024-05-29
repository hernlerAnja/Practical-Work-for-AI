
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
        
        load "data/4BCM.pdb", protein
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
 
        load "data/4BCM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4708,4553,4605,4606,4607,4557,4593,4556,4560,4561,4567,4568,5110,5546,5127,5122,5130,5145,5138,5146,4549,4552,4555,4721,4724,4725,4864,4582,4585,4571,4576,4578,4590,4591,4592,5103,5105,5102,5104,5106,5100,4969,5101,4830,4831,5618,5619,5625,5620,5623,5624,5626,4832,5639,5530,5161,5518,5525,5147,5154,5547] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [158,100,103,104,106,109,157,630,637,259,627,632,633,1146,1150,1151,1153,112,629,631,628,495,673,681,714,654,657,651,1057,686,688,1045,1074,496,1145,1073,392,275,276,274,119] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3406,3407,3408,2975,2976,3385,3417,3409,3410,3344,3373,3379,3380,3375,3377,4491,5002,4464,5017,4462,4466,4461,548,4652,4488,4501,4502,4990,4999,5000,5094,2966,4689,4994,4688,4991,4993] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [8,529,7423,7424,621,52,53,517,526,7833,39,42,203,15,239,518,521,253] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7429,7430,7058,7078,638,640,641,646,670,468,470,471,1132,642,1131,2336,1102,1115,1090,1087,237,240,521,501,503,7056,7060,7059] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [2383,1459,1462,1465,2176,2377,2384,2388,2382,2182,2199,2175,1218,1219,1212,1221,1232,1233,1452,1453,2396,2399,2210,2216,2219,1207,2184,2185,2186,1224] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [6833,6854,6832,6837,6838,5705,5925,5926,6659,5932,5938,6648,6649,6865,5691,8020,5694,5697,5700,6859,6860,5692,6851,5680,5933] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3785,3788,3802,3772,3773,3783,2926,3846,3723,3725,3722,2556,2557,2685,3824,3825,3490,2539,2514,2864,2891,2892,2895,3733,2865,2867,2889,3729,2898,3473,3478,3484] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5900,5901,5925,6658,6659,6301,6306,6308,5887,6336,6295,6292,6307,6649,6650,6651,5904] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [3497,3677,3678,3679,2827,2837,3498,3648,3658,2833,2836,4349,4351,4342,4337,2829,3562,3651,3627,1240,1223,1239,3533,3531] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1819,1828,2186,1835,1857,1861,1863,1822,1834,1431,1870,1833,1377,2176,2177,2178,1428,1414,1427,1437] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [7275,7981,7945,7946,8663,8662,7284,8059,8060,8058,8670,8672,5712,5713,5696,8010,8012,8039,7289,7285,7281,7282] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [7013,7061,7062,7063,7012,7014,7059,7408,7412,7415,453,454,456,503,504,505,7414,451,457,7058] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1240,1242,1209,1262,1210,1223,1239,3504,3533,3532,3505,3506,3507,3127,1197,1200,1201,3138,1196,2845,2877,2842,2843,3137,3498] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [7340,7343,7346,7374,8169,7312,7339,7337,8108,8114,8183,8104,8154,7921,7938,8227,7315,8205,7926] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5114,5119,5134,5560,5579,5577,5578,5563,5605,4941,4943,4944] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [6393,6389,6390,6251,6207,6208,6245,6315,6359,6361,5876,6362] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [4028,3581,3582,3583,3580,4031,3570,3572,3569,2411,2413,2412] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [605,23,584,587,606,284,285,70,71,22] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        