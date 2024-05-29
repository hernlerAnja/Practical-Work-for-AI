
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
        
        load "data/5UNP.pdb", protein
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
 
        load "data/5UNP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3157,3210,3211,3212,3188,3190,3163,3170,4442,4444,4443,3754,4445,3317,3750,3332,3753,3755,3756,3330,3333,3334,3459,4465,3173,3186,3178,3184,3399,3401,3387,3427,3428,4177,4178,4189,4446,37,4165,4166,4449,4451,4149,4450,4452,4466,4467,4469,4472,4473,4549,47,48,61,62,63,49,53,54,55,3798,3799,3825,3794,4206,3787,3151,3152,3154,3785,3774,3777,4205,3760,3778] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1283,1295,1296,1307,1284,2919,296,1568,1570,2929,1267,2930,2931,1591,2935,2937,2943,2945,2936,519,545,1667,1560,1561,1562,1567,1563,1564,1569,1590,1583,1584,1587,1585,328,330,871,868,452,577,450,451,872,873,874,329,435,448,546,275,281,288,291,304,306,308,517,302,505,912,916,917,943,1324,270,272,903,896,1323,878,892,895,269] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4,8,284,285,286,20,21,30,71,9,10,11,4922,15,4918,4920,4919,4921,107,108,103,106,72,70,68,4917,124,321,112] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2902,2903,2911,2912,2953,3166,3167,3168,3203,2954,2950,2952,2988,2990,2989,2994,2985,3006,2035,2036,2037,2040,2890,2891,2892,2893,2039,2038,2897] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2431,2076,3026,3010,3028,2018,2025,2020,2023,2038,2897,2029,2031,3004,3007,2035] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [15,4913,4920,4902,4905,4900,4907,4917,122,5313,144,146,4958,4911,128,125] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2361,2392,2393,2394,2065,2401,2405,2400,3002,3701,3703,2048,2075,2046,2047,3005,3025,3027] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1483,1068,1495,1041,987,1492,1497,1019,1029,1031,1024,953] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        