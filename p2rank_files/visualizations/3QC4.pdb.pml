
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
        
        load "data/3QC4.pdb", protein
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
 
        load "data/3QC4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3476,3494,3497,3498,2491,2492,2493,3363,3009,3011,2434,2436,2438,2439,2435,3480,3483,3484,3487,3489,3490,3499,3500,2957,2831,2833,2942,2958,2596,2713,2710,2711,2712,2735,2740,2744,2834,3478,3391,3008,3392,2971,2977,2980,2973,3000,3474,2816,2814,2962,2733,2734,2742,3496,2440,2441,2613,3491,2479,2944,2946,2611,2941,2628] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1239,1241,115,1242,1243,166,167,1223,1228,110,714,270,565,729,112,285,709,760,763,1112,1224,752,1140,1141,732,113,108,109] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [415,416,417,418,484,485,483,412,153,285,286,287,709,710,582,491,576,580,508,695,583,697,1234,1235,1244,1220,1223,1225,1228,1229,1232,1239,1259,1011,1012,1213,512,563,564,565,1063] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3910,3911,3912,1320,1322,3577,1703,3952,3953,1661,1662,1704,1346,3571,3575,3579,3591,3592,3597,3598,3601,3589,3590,3588,3629,3951,3627,3628,3581,3582] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2780,2781,3217,3218,3220,2798,2788,4443,4433,2787,4445,4401,4402,4322,4408,4421,4422,4429,3248,3244,2779,3239,3240,3242,4324] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2806,2808,3262,3314,3464,2763,2734,2814,3480,3484,3487,3514,2735,2736,3297,3298] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [529,968,970,991,2201,2166,2152,2197,990,530,997,528,999,537] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1316,1327,1333,1334,1320,1322,1323,1343,1346,1342,1661,1662,1702,1704] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4381,4385,4389,3149,4390,4383,4463,4468,3129,3158,3160,3155,3154,3126,4485] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [174,78,79,80,81,83,293,294,667,685,686] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3718,4253,4246,4250,4241,4244,3716,3714,3268,3270,4294,4239,4292] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        