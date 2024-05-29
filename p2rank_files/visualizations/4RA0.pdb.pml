
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
        
        load "data/4RA0.pdb", protein
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
 
        load "data/4RA0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1530,2953,2954,1507,1509,1510,1471,1473,1474,2917,2933,2908,2912,2914,2915,1498,1500,1488,1467,1469,1508,50,72,59,1568,1571,1570,1588,2733,73,117,118,119,120,1271,1268,368,1274,116] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4510,4511,4512,4513,3062,3061,4573,4591,4503,4472,4501,4470,4474,3075,3076,4278,4279,3118,3119,3121,3123,4274,4571,5870,5855,5851,5845,5849,5852,5853,5854,4592,3120,3122,4284,5891] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [847,881,7489,7490,7498,961,7493,897,898,8196,8201,8199,8200,958,959,880,936,937,8193,848] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3883,3884,3961,3940,6743,6745,3963,3964,6739,6736,6742,6041,6760,6750,6758,3939,3900,3901,3850,6032,6036,6033,6037,3934,3936,3847] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1333,1361,6306,242,6305,1362,1363,1376,1373,1377,1380,6452,1330,1334,1336,220,221,6321,243] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4364,7762,7763,3244,3263,3264,7750,4358,4336,4350,4405,3224,4339,4365,4376,4380,7909,7924,7925,7926,7927,4379,7778,7905,7923,4383] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3255,7647,7716,7724,7728,7642,7637,7651,7655,7741,7742,4063,7756,3253,7755] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [250,251,252,6190,1060,6284,6299,6180,6200,6298,6185,6194,6285,6266,6267,6198,6259,6265] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [5649,4613,4615,4617,4618,5560,5821,5839,4601,5841,4608,4605] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1630,1631,2581,1867,1613,2883,1615,2626] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        