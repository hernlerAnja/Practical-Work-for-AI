
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
        
        load "data/3H0Z.pdb", protein
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
 
        load "data/3H0Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [285,284,1205,551,1103,1130,1131,1132,1198,1206,746,111,112,113,283,694,692,737,99,101,705,716,719,156,157,158,98,102,712,268,691,1111,1110] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [5153,4820,4790,4795,4796,4148,4152,4154,4149,4156,4333,4334,4335,4151,4206,4207,4208,5165,4821,5162,5182,5181,4787,4770,4786,4769,4766,4318,4601,4742,5247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2171,2177,2162,2163,2164,2167,3123,2765,2766,2758,2760,2757,3218,2571,3150,3151,3152,2736,2739,2302,2303,2304,2305,2714,2178,2732,2166,2288,3130] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [404,2410,2411,2412,1063,1064,1065,1062,1042,1043,1045,1058,1061,2414,2415,431,1365,2413,1359,1046,1220,1221,1219,1241,1210] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3022,2995,3923,3906,3375,3376,3900,3903,3904,3907,3364,3365,3366,3020,3399,3374,3026,3018,5755] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2078,2596,2597,2598,2600,2602,2705,2283,2601,2263,2261,2220,2219,2077] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1226,136,1237,1238,1225,1075,1115,1116,115,133,113,285,1204,1206] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2409,404,2407,2410,2412,1063,2441,2414,431,2437,401,1220,1221,430,1219,1241] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5290,5502,5288,5548,5277,5278,4810,4812,4814,5157,5158,5533,5535,5538,5576,5549,4807,4840,4850,4851,4852,4843] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4470,4471,4469,4667,4668,4669,4670,4707,4432,4433,4435,4391,4708,4369,4370,4644,4646,4468] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4626,4627,4624,4625,4062,4250,4059,4060,4104,4105,4735,4736,4294,4249,4277,4313,4631,4628,4630,4632] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1108,760,762,1107,1488,1487,1518,1247,1264,1273,1275,1533,1534] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        