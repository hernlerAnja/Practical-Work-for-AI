
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
        
        load "data/8BGC.pdb", protein
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
 
        load "data/8BGC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [367,368,370,371,428,1273,529,366,373,429,898,882,878,1272,1249,1250,1369,388,378,379,387,856,858,859,413,543,749,527,528,863,747,855,857,853,854,1366,1368,1374,1370,1371,1375,1377,545] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3041,3042,3045,3047,3044,3095,3050,3078,3578,3580,3574,3958,3562,3959,3960,3559,3053,3936,3937,3052,3061,3931,4047,4048,3539,4046,3212,4054,3096,3210,3080,4043,3427,3543,3195,3533,3534,3536,3538,3194,3196,3429] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2433,2434,2223,4908,4924,4926,4911,4912,4918,4901,5100,4895,5101,2394,2396,2400,2252,2254,2255,2401,2404,2406,2431,2432,4932,4936,4939,2442,2257,2220,2221,2229,2246,2260,2264,5111,5102,2268,2236,2239,2240,2398,2250,5068,5069,5074,5063,5099,5064,5066,4922] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [400,401,403,583,584,1217,1376,1377,1401,1402,545,640,1393,1394,1395,413,544,412,561,603,396] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [388,391,396,1257,1246,1247,1248,1249,1250,1232,1233,1217,1376,1377,1401,1402,403,405,413] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3070,3074,3080,3944,4052,4053,4054,4071,3934,3053,3933,3935,3936,3937,3062,3065,3919,3920,3069,4078,4079,3904,4072] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [5272,5273,5264,5110,5109,5202,2367,2371,2376,2377,5074,5075,2366,2398,2297,2363,2261,2264,5111,2296] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3073,3074,3228,4052,4053,4054,4071,4070,3320,3247,4078,3904,4072,4080] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2749,4354,4357,2759,4362,3839,4389,5204,5207,5210,4352,4353,3812,5208,5219,5198,4363,4366,2731,2732,4348,2739,2748,5209] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4537,4503,4523,4532,4626,4625,4528,4530,4958,4960,4949,4651,4624,4647,4648,4660,4649] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [5052,5053,5054,5304,2384,2386,5051,2385,2646] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [311,312,802,288,289,291,804,551,552,553,818,535,536,792,833,336,335,334] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        