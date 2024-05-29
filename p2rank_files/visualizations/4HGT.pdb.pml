
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
        
        load "data/4HGT.pdb", protein
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
 
        load "data/4HGT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [553,199,547,549,128,2276,56,54,55,57,184,127,548,971,1065,1067,1068,1069,1073,555,53,951,59,105,107,68,69,106,108,215,216,1076,64,65,302,530,531,528,335,336,2347,568,598,572,940,2274,597,558,559,560,969,970,2432,2481,2342,2346,2359,2358,2424,2275,2277,2353,552,2478,2423,941] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2831,2822,2823,169,2422,2421,2389,2386,2388,2384,151,149,153,154,2370,19,20,21,2869,167,2833,2836,3211,3241,3242,3339,2843,2844,2866,3212,3214,2867,186,139,2401,2402,2508,2510,2802,2801,3344,3347,2580,3336,3338,2799,2681,2682,2818,2493,2806,2820] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3254,3263,3266,3286,4526,4529,4544,158,159,162,164,165,2837,2838,160,3288,4531,3295] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [991,2460,2461,2433,567,983,1017,1016,2445,2457,2458,2246,2233,1024] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [568,598,572,573,940,943,2274,597,587,625,941,942,944,971,53,59] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3956,3957,3587,3588,3882,3886,3887,3574,3584] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4025,4048,4059,4064,4066,4217,4218,4219,3621,3772,4090,3774,3875,4027] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [207,507,444,466,508,29,30,206,224,28,4,5,8] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        