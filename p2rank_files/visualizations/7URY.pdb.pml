
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
        
        load "data/7URY.pdb", protein
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
 
        load "data/7URY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3938,3940,3944,3956,3945,3946,3949,3628,3388,3250,3251,3268,3385,3267,3915,3896,3898,3899,3777,3871,3761,3252,3356,3219,3350,3352,3402,3353,3401,3164,3166,3105,3106,3399,3398,3103,3383,3384] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [298,968,975,976,979,133,962,299,141,974,653,416,419,421,384,282,283,386,297,945,926,928,929,786,131,113,132,134,115,803,116,432,433,196,198,250,901,418,430] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1127,1128,1973,1105,1651,1801,1190,1192,1427,1379,1245,1292,1294,1277,1276,1278,1384,1382,1960,1966,1971,1924,1926,1927,1416,1410,1411,1414,1977,1293] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4951,4957,4629,4268,4909,4911,4912,4928,4763,4945,4096,4780,4285,4283,4269,4284,4119,4183,4181,4236,4405,4370,4373,4402,4116,4118,4962,4969,4418,4416] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [6167,6168,6230,6467,6468,6469,6418,6466,7014,7018,6451,6449,6450,6967,6968,6836,6939,6965,6232,6422,6285,6416,6419,6332,6334,7007,6314,6333,7042,6454,6317,6165,6145,6686,7012,6984] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2427,2441,2443,2398,2430,2392,2395,2428,2426,2143,2440,2429,2432,2946,2292,2293,2294,2310,2929,2927,2930,2308,2309,2787,2972,2654,2969,2971,2121,2144,2113,2206,2208,2901,2804] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [5119,5120,5182,5184,5371,5374,5237,6001,6008,6009,6012,6019,6007,5403,5370,5419,5959,5961,5830,5933,5097,5678,5962,5978,5268,5270,5269,5286,5406] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        