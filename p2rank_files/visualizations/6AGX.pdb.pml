
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
        
        load "data/6AGX.pdb", protein
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
 
        load "data/6AGX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1336,1337,1338,1341,1342,1343,1344,1206,1245,192,193,194,201,204,205,208,390,1258,1260,801,1230,172,178,191,179,180,181,794,173,386,388,389,521,554,634,750,520,374,751,755,230,1259,229,231,174,176,177,773,776,199,2489,2490,2491,210,2498,2501,2762,1235,1484,2720,1234,2724,200,1357,1358,1359,1365,465,488,489,491,461,1366,1463,2736,1367,1464,1466] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [7627,8306,8403,8297,8327,8325,8326,7173,7174,7184,7222,7223,7224,7744,7367,7383,7379,7381,7382,7514,8404,8405,8408,8419,7202,8311,8410,7546,7743,7165,7166,7171,7172,7167,7794,7797,7790,7787,7169,7770,7769,7766] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [6036,5939,5944,6037,6038,6041,6043,5958,5959,5960,5930,4937,4938,4939,4888,4889,4899,5096,5097,5229,4917,5459,5094,5082,5342,5261,5443,5458,5262,6052,4881,4882,4886,4887,4884,5481,5484,5502,5505] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3611,3588,2504,3572,3573,3612,3705,3708,3709,3710,3711,2683,3704,2493,2506,209,2500,2502,2503,3600,2485,2507,2484,2524,2681,2682,2814,431,427,3899,198,207,3878,3732,3733,3734,3725,3724,443] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3597,3094,3625,3627,2485,2507,2484,3097,2472,2465,2466,2471,3087,3611,3703,3705,3708,2683,3704,2523,2524,2667,2679,3044,3048,2681,2682,2814,2846,2847,2927,3626,2925,3719,3721,2467,2469,2470,3066,3069,3043] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [5935,5945,5934,4903,4907,4908,4900,5905,6184,5906,6066,6163,6164,4918,6166,6168,7436,7420,5944,6038,6041,6042,6043,5096,4921,4922,5097,4920,4923,4939,4888,4889,4899,5229,4919,6044,4917] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4906,7193,5135,5136,5139,8287,8288,8300,5177,5151,8578,8579,8598,8599,7201,7203,7204,8273,8311,8409,8410,8272,8286,8310,8312,8298,8432,8433] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3881,3732,3733,3734,3725,3726,3724,2781,2782,2783,2784,2504,3573,3710,3711,2683,2502,2813] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [6968,6970,6942,6943,6971,6976,6967,1087,1085,6972,6975,6977,1088,1108,602,600,1116,607,1113,1118,1083,1112] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [7481,7482,7483,7484,8424,8425,8426,8432,8433,8434,7454,7199,7200,7201,7202,7203,7204,7513,8581] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [9206,9207,8777,8780,9205,9062,9209,9211,8810,9208,9050,8913,8915,9055] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4355,4506,4509,4511,4213,4215,4504,4505,4507,4508,4350,4080] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        