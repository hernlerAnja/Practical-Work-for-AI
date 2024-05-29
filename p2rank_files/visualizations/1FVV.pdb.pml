
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
        
        load "data/1FVV.pdb", protein
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
 
        load "data/1FVV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [179,7888,7478,7479,7913,25,36,611,35,17,16,5049,1,7877,7878,7880,7879,7881,7876,7847,215,216,508,511,518,507,516,517,519,7911,7912,7920,5028,7469] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [251,252,1143,1047,95,132,134,1040,83,89,620,235,617,618,627,1063,1135,133,84,87,641,647,1035,1064,664,671,655,663,250,1136,1137,1140] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5109,5111,5113,5626,4614,4731,4732,5630,5633,4563,4569,4570,4572,4975,4976,5553,5554,5625,5537,5526,5532,5525,4575,4613,4564,4567,4612,5134,5137,5108,4715,5107,5110,5112,5117] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [5007,3429,2994,2995,3404,4997,5006,2985,4515,4516,5101,4659,4695,5000,4998,3427,4505,3428,4481,3392,5009,5022,5024,4496,544,542] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3547,3516,3517,3551,3581,3583,3697,3698,3665,3667,3696,3672,3673,3671,3677,3578,3646,3670,2848,2852,2853,2854,2855,4358,4371,4372,4369,1216,3552,1207,1208,2860,2846,2843] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [8065,8067,8155,8149,8150,8157,8180,8151,8161,8154,8001,7340,8181,8182,7330,8036,8035,5706,5698,5705,8853,8855,7339] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1406,1409,2395,2159,1392,1395,1397,1435,1843,1844,1845,1852,2152,1801,1804,1810,1815,1816,1817,2393,2166,2167,2168,2391,1412,1401] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [252,1143,1024,1047,95,1040,1035,105,111,102,1156,381,1141,1142,1164,1165,1166,1007,347,349,116] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1191,1202,3552,3560,3561,2386,1215,2394,2439,2387,2388,3549,3592] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6658,6650,6291,6294,6334,6335,6333,5924,5925,5848,6649,5902,5899,5896,5887,5882,5885,6656,6642,6657] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [6886,6922,6923,8075,8076,6867,6871,6868,6870,8033,5689,8045,5685,5706,5705,8036,6872,6880] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [7976,8327,7395,7398,7401,8275,8276,8305,8277,7060,8291,7367,7429,7392,8236,8232,8226,7394,8328,8322,7993,8228,8349,7987,8230] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [7879,7876,7838,7839,7845,4783,4767,4782,4778,5047,5034,4819,4810,7871,7840] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2648,2649,5585,5570,5567,5123,5118,5126,5120,5122,5612,3001,4950,5611,5595,6808,4951] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [7133,631,1092,460,471,632,1121,1122,649,1105,1080,2317,2318,628,636,458,461,493] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3427,4505,4504,3367,3392,3393,3365,3395,548,555,4496,546,547,553,542,3394,538,544,3363] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [3821,3843,3844,3497,3509,2908,3808,3746,3752,2575,2576,3742,3865,2945,3748,3503,2558,2562,2565,2914,2916,2883,3492,2911,2910] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7953,7012,7044,4920,7966,7965,7967,7951,7963,7964] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        