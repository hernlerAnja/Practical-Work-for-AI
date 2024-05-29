
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
        
        load "data/1UNL.pdb", protein
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
 
        load "data/1UNL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2435,2436,3036,3043,2438,2439,2441,3047,3048,3050,3074,2603,2491,2612,2615,2616,3519,2460,2490,3020,3023,3029,3035,3018,2599,3003,2993,2994,2995,2602,3433,3434,3405,3520,3512,2864,3406,2453,2454] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [98,703,86,89,92,676,1059,700,1058,1087,696,689,673,1086,646,656,652,647,648,649,269,1173,108,267,1172,93,143,144,90,252,256,261,255,669,105,516,651] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [6280,6293,6302,6294,6653,6656,6304,6326,3606,3608,3610,6328,3602,3616,6309,6327,6348,6646,6649,6690,6640,3601,3600,6340] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [5450,5451,5453,5437,5443,5446,5101,5104,5106,5145,5090,5091,5094,5099,5098,5100,5077,1255,1259,1261,1266,1253,1269,1254,5125] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4498,4499,4501,4537,4505,4506,4507,4511,4487,4111,4161,4162,4165,4170,4117,4109,4129] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1439,1456,1461,2173,1843,1877,1445,2167,2181,1844,1845] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3786,3792,4520,4528,4224,4174,4191,4192,3787] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1782,1783,1778,1779,2154,2158,2159,1763,1770,2146,2115,2140,1769,1762,2160,2189,1818,2151,2153,1971,2164] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2462,2466,2469,2456,2463,3533,3536,3542,3543,3376,3377,3670,2461] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3281,4563,4568,3302,4575,4572,4562,3279,3303,3306,3815,3813,3814,4561] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2383,2373,2533,2559,2987,2888,2890,2575,2576,2577,2578,2593,2887,2889,2891,2892] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2501,2502,2958,2643,2483,2625,2402] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1467,2225,955,966,2216,2214,956,959,954,934,2220,2228] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [660,661,1152,522,665,657,487,490,1101,1102,1135,1120,1121,1122,1103,1134] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        