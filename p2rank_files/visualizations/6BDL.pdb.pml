
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
        
        load "data/6BDL.pdb", protein
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
 
        load "data/6BDL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [244,246,394,230,247,225,269,222,2436,853,213,214,219,267,1190,1202,1203,850,870,871,873,882,396,1317,1318,1319,1313,1310,1311,1312,1229,2409,1230,823,1213,1201,852,660,827,268,216,808,812,379,805] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2817,2818,3889,3890,3895,3896,3427,3428,3429,3808,2806,2812,2815,3236,3779,3780,3446,3449,3235,3388,3399,2809,2965,2854,3383,2980,2982,2855,2805,2807,2813] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [237,238,241,448,450,1344,244,246,396,559,1318,1319,1332,1173,534,412,499,500,521,1333,1334,1343,1345,480,498,457,497] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3910,3921,3923,3076,3896,3897,3751,3920,3922,2829,2833,3037,3028,3030,3074,3060,2980,2982,3135,3110] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [761,762,763,143,185,292,387,142,164,781,783,146,275,258,404,385,403,2456,2455,2457] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2757,2738,3355,3357,3359,2989,2990,2778,2971,2739,2973,2758,2878,2736,2735] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3544,3543,3567,3568,4822,4829,4831,4910,4911,4824,4915,4926,4932,4927,4930,3575] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        