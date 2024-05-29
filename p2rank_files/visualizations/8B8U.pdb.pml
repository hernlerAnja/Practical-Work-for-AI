
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
        
        load "data/8B8U.pdb", protein
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
 
        load "data/8B8U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8034,8036,8297,8299,8295,8314,8032,8033,8229,8230,8232,2100,4245,4247,7990,4321,4322,7991,7993,2029,2030,4191,4193,4196,4265,8228,1919,1988,1189,1920,1922,1939,1943,2097,2028,4248,1987,8363,8321,1881,1882,1883,2495,8245,1150,1162,1163,1164,1165,8288,1166,8286,8287,8318,8179,1148,2042,2044,2096] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [385,691,729,1474,2251,2276,1594,690,692,1595,384,277,278,287,259,260,383,261,2602,2603,2309,2310,1584,1590,1565,1583,1566,1528,1544,1513,1515,263,264,730,731,2204,302,308,2635,2636,313,2624,312,2642,347,348,303,304,2612,2277,2623,2203,2231,2252,2253,2254,2255,2256,2865,2791,2794,2863,1637,2926,3438,3439,2925,2927,2846,2847,2850,2920,2922,2924] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [5068,5069,5742,4694,4696,5067,4608,4623,4624,4669,4670,4692,5028,5029,5030,7136,7137,4630,4634,4635,4633,6891,6881,6882,6894,5739,6553,6481,6554,6902,6903,6915,5249,5251,5246,6528,6530,5857,6586,6587,5846,5852,5856,4609,4582,4583,4584,4600,5787,5775,5777,5790,5806,5845,4586,4587,6531,6532,6533,5899,5828] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [7195,7197,7198,7190,7193,7196,7117,6509,6531,6532,6533,7708,7709,7136,7137,4630,4635,7130,7134,7135,7062,7065,7121,7118,4624,6480,6481,7216,7706,7707] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1135,1141,1143,1144,1159,1240,1239,8397,8400,8401,8402,8469,8466,8243,8541,8542,8544,8468,8244,1142,1158,1162,8242,8358,8246] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1002,1005,1039,2176,2191,2192,2193,3114,2665,2666,2677,2696,2626,2625,2158,2157,938,2638,936,940,2645,2662,2672,1001,991] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [5302,5304,5310,5311,5314,5315,5266,5359,5706,5360,5538,5569,5570,4373,4376,5268,5267,5613,5571,5572,5577,5583,5581,5612] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        