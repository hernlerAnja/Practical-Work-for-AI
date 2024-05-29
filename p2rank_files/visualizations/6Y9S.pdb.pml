
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
        
        load "data/6Y9S.pdb", protein
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
 
        load "data/6Y9S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3921,3922,4218,4219,3950,3968,4073,4074,4076,4075,4068,2999,3001,3002,3131,3132,3133,3020,3019,4066,3499,3986,3987,3524,4067,3116,3517,3504,2992,2996,4212,4215,4097,4211,4090,4091,4089,1484,1829,1830,2971,2977,2983,4222,1515,3939,4223,1822,1823,3951,3952,1824,3550,1828,2965,2966,2969,3531,3576,3530,2991,2986,2990] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1251,1351,1356,1357,1359,833,1270,813,814,819,238,240,241,210,213,204,782,1349,1269,355,208,798,800,787,807,257,258,259,372,368,370,1358,1234,1235,4540,1233,4539,859,860,861,4541,1221,1222,1205,4232,4546,4547,216,4570,4545,222,4203] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4222,1515,3953,3954,3955,3939,4223,4243,4244,4245,4224,4240,4242,4256,4257,4527,1525,1527,1528,1524,1526,1785,1786,1742,1484,1511,3566,3568,4502,4503,4459,4203,4232,4228,1222,1539,1506,1507,1502,1505,1229,1540,1237,849,851,1236,1238,1228,1485] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1463,1470,3406,3407,3459,3414,3403,3408,3413,2985,2989,3003,3004,1472,1475,1476,1477,1468,2960,2961,2981,3013,3005,3006,3031,1833,1577,1583,1585,1588,1601,1602,1592,1593,1834,1841,2994,2995,3154,3156,3157,3137] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [689,4761,4762,4192,4193,4194,4187,4188,4294,4300,4302,4305,4309,4265,4179,4310,4318,4319,4180,690,217,199,224,243,244,245,250,252,200,219,220,4548,4550,4551] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [28,29,671,675,381,362,651,653,759,363,161,182,183,159,184,265,267,269,266,268,270,42] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [222,225,229,4203,1222,1506,1203,1204,1205,1502,1505,232,235,1358,231,238,240,1251,1359,1485,1497,1498,1380] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [869,870,905,894,1032,992,993,994,995,996,2512,969,907,1288,1282,1290,1291,1310] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2920,2922,3373,3476,3124,2789,2790,3121,3123,3392,3142,3029,3026,3027,3028,3030,3031,2944,2945,3025] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4502,4503,4459,3566,3568,1809,3599,3598,3631,3955,4244,1528,1810,1816] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3587,4008,3623,3679,3713,3586,3711,4005,4007,3992,3994,3749] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4367,4359,4368,4371,4395,5088,5066,3853,4363,4365,3855,4364,5095,5395,5083,5086,5094,5396] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [489,641,642,661,663,664,405,417] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [5293,5483,5485,5214,5488,5231,5291,5307,5298,5322,5303,5324,5491] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        