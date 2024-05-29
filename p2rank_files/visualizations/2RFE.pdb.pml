
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
        
        load "data/2RFE.pdb", protein
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
 
        load "data/2RFE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [529,1164,530,660,664,665,1084,663,315,1196,316,317,142,135,165,179,2168,2170,2172,127,133,466,1177,1193,177,178,130,300,128,653,658,640,642,641,623,313,299,646,533,534,542,546,626,624,1085,1172,1173,1055,1069,143,1166,1167,1168,687,690,694,695,719] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [850,851,852,878,2005,2007,2030,2031,879,3023,813,909,1974,2008,2009,4196,4198,4222,4220,4228,4229,4230,4231,4221,1120,1121,908,4199,4200,506,515,907,516,517,885,888,2724,3089,3093,3058,3059,3060,3096,2037,2039,3317,2723,3115,2040,2714,2725,3086,3087,3116,3117,3118] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [6645,6527,6528,7483,6962,6963,6655,6657,7403,7485,7011,7015,7374,7404,7484,6659,7492,7375,7376,7389,7486,7487,7491,7513,6947,6981,6985,7008,6853,6854,7493,6867,6868,6871,6873,6788,7496,6791,6477,6479,6480,6476,6482,7040,7016,6507,6509,6510] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4595,4597,4598,4599,4875,4876,4728,4611,5436,5438,5455,5414,5415,5406,5407,5408,5409,5419,4584,4585,4890,4895,4914,4891,5330,4909,4913,4907,4795,4804,4810,4789,4790,4701,4727,4829,4831,4670,4504,4466,4467,4503,4505,4474,4943,4944,4968,5301,5331,4912,4460,4462,4463,4935,4936,4939,4920] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [2832,2508,2340,2388,2338,2871,2872,2873,2854,2866,2868,2894,2895,2879,2849,2850,3257,3362,3363,3369,3370,3371,3286,3287,2903,2898,2902,2927,2736,3364,3365,3375,2674,2735,2737,3392,3393,2834,2523,2525,2389,2387,2521,2345,2336,2337,2342,2343,2344] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [5305,5520,5521,5481,5486,5799,5802,5801,5507,5500,5505,5506,5304,4960,5741,5475,5477,1891,5794,1892,1894,5792,5791,5508,1927,1928] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3348,2858,2874,3329,3331,2036,3299,2035,2047,2857,2859,3306,2050,2882,2040,2710,2713,2017,2015,2013] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4482,4483,4490,4491,4488,4489,4474,4475,4476,4478,4505,5437,4612,4598,4599,5435,5413,5415] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [650,651,1101,1133,1150,502,505,4206,4207,4208,4209,4231] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1440,1272,1295,1666,1582,1264,1850,1851,1852,1853,1854,1711,1665] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [5811,5813,5896,5671,5674,6081,6082,6083,5495] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3627,4042,4044,4045,4043,3630,3459,3767,3769,3852,3853] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [7579,7580,7878,7880,7572,7603,7742,7745,7960,8144,7959] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        