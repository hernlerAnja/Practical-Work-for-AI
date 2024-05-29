
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
        
        load "data/8OWG.pdb", protein
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
 
        load "data/8OWG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [372,1050,1053,1069,1076,1077,1082,1087,1088,1049,880,882,437,397,399,442,260,521,537,536,369,370,371,1099,313,340,341,273,318,520,522,457,459,460,480,1046,1066,1060,1065,1042,1043,1045,1037,443,898,899,1074] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2946,2421,2436,2437,2183,2359,2271,2357,2949,2972,2780,2782,2272,2297,2299,2270,2799,2943,2944,2950,2953,2745,2975,2978,2216,2218,2240,2241,2213,2937,2343,2337,2342,2435,2942,2182,2422] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4144,4232,4294,4215,4219,4309,4230,4293,4310,4050,4646,4647,4170,4172,4210,4142,4802,4233,4089,4091,4116,4117,4252,4063,4064,4295,4113,4145,4818,4814,4815,4816,4807,4811] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2054,2056,2055,2057,2157,2076,2078,2453,2451,2457,2492,2868,2869,2964,2963,2488,2460,2485,2461,2495,2959,2961] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3968,4333,3966,4823,4824,4826,4828,4734,4367,4038,4324,4326,3967] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3344,3343,3418,5196,3484,3485,5225,5226,3479,3483,3472,3478,3325,3463,3486,3249,3336] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1063,1064,161,969,560,551,553,557,248,585] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4405,4406,4532,4769,4770,4771,4772,4774,4775,4458,4459,4464,4465,4468,4499,4500,4530,4501] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        