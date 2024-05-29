
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
        
        load "data/6BUU.pdb", protein
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
 
        load "data/6BUU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2960,3892,3893,3895,3108,3907,3908,2958,2959,2976,3894,5480,5483,3073,3074,3084,3750,3918,3911,3915,3917,5487,5489,3056,3053,3018,5490,5491] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5364,5371,5376,147,149,144,309,1225,293,1226,5366,5367,5370,291,441,1240,308,386,389,408,410,388,150,1241,406,404,412,417,1249,1251,5378,5400,5402,5412,1083,5377] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [520,978,981,1020,953,977,2226,2249,2251,951,955,2206,2207,2218,2219,518,2254,2253,976,2101,2102,2126,2127,2208] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [123,738,739,740,5344,5388,2439,2467,2468,2428,732,111,767,2432,2436,2437,2438,2412,2422,756,5342,5343,758,761,764] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1521,2014,2015,2025,1308,1320,2024,1485,1491,2023,2061,2065,1306,1506,1502,1503,1300,1513,1511,1517] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3912,3078,3740,3914,4008,4009,4011,4012,3922,3076,3910,3099,5533,3077] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [411,1341,1251,1245,1246,1247,1255,1344,409,432] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [297,152,153,310,128,160,300,318,315,162,163,2520,314,343] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4180,4685,4686,3987,3975,4694,4150,4161,4162,4163,4176,4165,4732,4736,4735,3967,3973,4170,4172] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [5369,740,5344,5387,5388,5374,1228,5370,1100,1124,5350,1113] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4434,4389,5523,5524,5537,4025,4435,5522,5519,5520,5521] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [5456,3434,3436,3470,5103,5104,5107,5108,5109,5110,3460,3461,5455,3425,3426,3405,3406] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5408,5410,1356,1358,5420,1382,1730,1732,1770,5406,5407,5409,5411,1769,5405] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        