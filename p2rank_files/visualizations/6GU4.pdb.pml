
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
        
        load "data/6GU4.pdb", protein
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
 
        load "data/6GU4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1117,1191,526,655,1116,260,685,157,158,105,665,682,1192,1196,1197,1199,1088,1095,1100,159,112,119,120,101,109,113,708,704,709,698,699,692,693,696,697,274,275,276,657,659,661,656] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3798,3801,3802,3803,3765,3782,3823,3824,3476,3477,3478,2844,2846,3825,3711,3715,3708,3710,3705,3757,2656,3706,3713,3763,3767,2872,2873,2876,2870,2901,2534,2518,2521,2877,2517,2490,3458,3464,2841,2842] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4325,4326,4335,4336,4310,4282,2757,2812,3693,4284,4286,4287,4298,3657,3655,2809,2810,4324,2792,2805,2749,2751,2754,2755,2779,2753] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3722,4234,4236,4218,4219,4220,4154,4238,3720,3721,2663,2637,2639,3698,3726,3727,3731,4147,4177,4183] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2457,3531,3532,3533,2420,3488,3491,3490,2395,1012,1014,3493,3495,2421] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1687,1717,4688,4576,4592,4567,4569,4573,1755] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3567,3570,3574,3575,3958,3978,3980,3979,3883,3855,3856,3882,3585,3920,3932] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3657,3626,3628,3655,3521,3522,3523,3524,2821] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        