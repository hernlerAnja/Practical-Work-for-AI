
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
        
        load "data/4AFJ.pdb", protein
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
 
        load "data/4AFJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3213,3101,3047,3053,3056,3100,3102,3579,3322,4155,4018,4019,4042,4157,4150,4151,4154,3081,3083,3082,3084,3059,3604,3595,3198,3618,3051,3397,3584,3611,4058,4148,4149,4059,4030,3630,4031,3597] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1231,772,791,821,211,207,213,244,260,241,243,1230,570,740,373,765,756,358,745,261,262,371,208,1202,1203,1190,1214,1320,1312,1317,1313,1314,1318,825] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2872,2885,3109,3111,3222,3224,3113,3112,3461,3462,3557,3479,3027,3002,2871,3004,3206,3205] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2773,5269,5289,5588,5290,5270,5271,2772,5565,2471,5243,5608,2500,2502,2501,2524,2526,2527,2770,2528,2768,2467,2458,2455,5272,5273,5274,5566] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4079,5426,5419,5423,5424,3788,3790,3792,3793,3702,3704,4102,3789,3791,5416,4077,4080,3691,3667,3666,4099,3827,3829,4066] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1105,1107,1625,1627,1103,1104,1111,1112,1633,1614,1615,1617,1629,2405,2411,2424,1077,1080,2423,2719,2723,2724,1079,2699,2394,2404,2416,2375,1616] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [5606,5607,5608,2437,2752,2754,5597,5602,2732,2753,5301,5305,5336,2464,2325,2407,2436,2408,2438,2439,2440,5332,5335,5358,5360,5361,5333,5334,5289,2435,2433,2467,2458,2455] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5245,5257,3933,5557,5558,5209,5228,5250,4463,4477,4478,4481,5214,4462,4469,4475,3931,3932] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2167,2169,2170,1895,1897,1899,1901,2133,2360,2140,2314,2351,2352,1966] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [5185,5014,5015,4747,4992,4743,4745,4988,5173,2257,2269,2233,5000,2252,5012,5006] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [874,876,1251,1271,1249,1252,2592,960,961,962,963,964,965,839,999,1001,838,1238] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [365,366,717,382,383,384,652,653,162,164,187,635,634,18,19,273,270,272] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        