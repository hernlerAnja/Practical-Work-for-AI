
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
        
        load "data/5VIL.pdb", protein
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
 
        load "data/5VIL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4616,4995,5525,5526,5527,5528,5531,5532,5534,4456,4457,4447,4449,4450,4496,4495,4497,4996,4437,4438,4443,4444,5018,5034,5037,5443,5041,5000,5015,5442,4442,5007,5013,4439,4441,4599,5427,5416] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [7165,7162,7589,7590,7672,7673,7180,7181,7147,7154,7158,6746,6589,7160,6585,6586,6588,6591,6643,6592,7184,7188,7563,7674,7675,7678,7681,6597,6604,7142,7143,6901,6644] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2716,3378,3379,3380,3384,2349,2348,2350,2303,2291,2292,2297,2298,3269,2452,2846,2848,2849,2310,2467,2469,3387,2717,3295,2871,2886,2887,3296,2295,2885,2890,2894,2895,2914,2294,2864,2853,2868] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [147,143,144,145,150,153,203,202,305,569,570,699,701,702,156,322,320,1231,1233,747,1133,1122,1148,1149,1232,748,1237,706,724,739,721,725,740,743,767,713,717] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [5549,5381,5656,5568,5644,5650,5643,5632,5560,5551,5553,4745,4717,4746,4744] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [7464,7466,7965,7476,8490,8491,8492,8487,8496,8503,7971,8473,7970,7967,7974,8449,7969] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [7640,7641,7658,7152,7642,5458,5459,5469,5471,7606,5470,5479,5480,5483,5484] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5458,5459,5471,7606,5028,7630,7631,7616,7617,7626,7618,5005,5009,5020,5494,5511,5510,5495,5479,5483,5484,5512] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3669,3671,3676,3170,3673,3675,4179,4155,3677,3680,3172,3699,4196,4198,4202,4193] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [575,1218,709,710,711,1217,715,3323,1190,1199,1201,1165,3336,3337,3312,3322,3333] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [5549,5556,5381,5656,5657,5658,5644,5650,5652,5551,5553,4682,4683,4477,4717] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [5329,6344,6343,5319,5818,5820,5822,6349,6340,6345,5823,5824,5846,6356] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5055,5918,5406,5418,5419,5420,5957,5706,5708,5956,5697,5086] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        