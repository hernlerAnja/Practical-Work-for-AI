
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
        
        load "data/6FEL.pdb", protein
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
 
        load "data/6FEL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7315,7316,3977,3980,3983,4004,4005,4550,4552,3969,4587,4547,4548,4948,4949,4950,3945,3946,3973,5294,4940,7310,7311,5323,4971,7312,4579,4580,4581,4610,4939,4037,4035,7305,4012] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [7131,7405,7406,7409,7410,6369,6370,6371,6792,7401,5801,5802,5803,5805,6728,6729,6734,5772,6377,6398,6400,6410,6397,5779,5749,5750,6338,6340,6738,6740,7099,6730,7102,5712] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [368,7274,336,361,337,338,339,967,968,970,971,972,3517,1700,1703,1356,1357,1364,1366,3516,7277,1000,1418,7270,1732,1387,1355,999,7269,7271,7273,7263,392,390,391,1001,1027,1030,1007,963,965,1039] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [7364,7365,3199,2174,3197,3198,3203,3207,7353,7354,3556,7358,2839,2840,2195,2846,2194,2847,2196,2808,2810,2811,2173,2227,2228,2869] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3410,3437,3440,3134,3434,3228,3133,3217,3218,3467,3245,3215,3213,3242,3131,3098,3099,3101,3412,3413,3414,3102] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4871,4874,4875,4958,4959,5208,5176,4954,4866,4841,4843,4842,5153,5154,5181,5151,4986] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5862,1605,1607,5897,5902,5887,5888,1615,5860,5864,1807,1769,1770,1797,1799,5893,1836,5889,5891,1583,1585,1802,1796,1834,1835,1578,1581,1582] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [6748,6665,6630,6632,6633,6663,6664,6936,6943,6945,6934,6705,6968,6970,6971,6998,6966,6939,6964,6746,6744,6656] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3540,87,88,89,90,311,3489,3493,3492,86,124,3564,334,335,336,310,115,114,347,340,341,3515,3516,3501,3502,3512,3500,3511] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2136,2756,2783,2784,2821,2822,2119,2722,2726,2727,2753,2731,2754,2716,2113,2114,2691,2715] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [887,982,275,278,279,281,878,877,883,888,876,944,914,915,918,945,852] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1593,1594,1597,1592,1624,1385,1375,1621,1590,1370,1402,1373,1374,1288,1570,1258,1259,1289] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1537,1464,1538,1539,1540,1541,1465,1203,1570,1571,1257,1259,1428,1429,1231,1234,1235] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [5123,5145,5154,4818,4819,5012,5013,4787,5126,4840,4842,4815,4851,5048,5049] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        