
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
        
        load "data/5VIO.pdb", protein
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
 
        load "data/5VIO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3295,3378,3379,3269,3296,2290,2291,2297,2894,2853,2716,2294,2349,2452,2348,2292,2469,3387,2302,2310,2303,2298,2300,2467,2350,2849,2848,3380,3381,3384,2308,2871,2885,2887,2890,2868,2295] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [5015,5019,4863,5442,4995,4457,5000,5007,5011,4599,4441,4996,4496,4497,5525,5526,5527,5528,5531,5532,5534,4864,5018,5034,5443,5037,4450,4439,4442,4438,4444,5014,5041,5416] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [7147,7162,7165,7589,7590,6588,6589,6746,6585,6586,7181,7184,7678,6643,6644,7142,7143,6762,6596,6603,6604,7563,7574,6597,7140,7179,6591,6594,6584,7010,7011,7672,7673,7674,7166] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [725,740,743,738,747,1148,1149,570,713,706,724,147,717,721,148,143,144,145,305,1122,150,153,156,203,202,569,699,701,702,1231,1233,1232,1237,321,748] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1266,1255,423,452,448,449,451,450,1087,1362,1273,1274,1275,1277,1348,1349,1350,1356,1338,1259] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [5479,5480,5483,5484,5459,7148,7175,7606,7150,7152,7630,7631,7641,7642,7658,7640,7151,7659,6983,7156,5471,5470,5469] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1165,1189,1190,2880,1177,2858,3364,3336,3348,3312,3322,3324,3333,3337,3323,711,715] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [7464,7466,8503,8491,8502,7476,8490,8484,8487,7965,7970,7967,7971,7974,8473,8449,7969] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4683,5650,5656,5652,5549,5551,5552,4477,5560,5553,5381,5657,5658,4475,4681,4717] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [6345,6340,6343,6344,6355,6356,6357,5319,5316,5317,5818,5820,5822,6349,5329,5846,5823,5824] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3699,4193,4196,3669,3671,3673,3676,3677,4179,3680,4155,3182,3170,3675,4198,4202,4209] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        