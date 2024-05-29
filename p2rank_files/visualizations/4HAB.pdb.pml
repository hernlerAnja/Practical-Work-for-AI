
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
        
        load "data/4HAB.pdb", protein
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
 
        load "data/4HAB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1432,1408,1409,1430,1042,267,1058,1063,1064,1421,1423,1065,299,301,1087,1088,296,282,289,290,292,279,285,1269,1272,1282,1091,1268] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2173,2175,2176,2177,2661,2663,2662,2701,2162,753,752,771,772,2703,730,740,5213,5211,741,2210,2635,2657,2658,2659,2660,2212,2208,2700,2704,2705,2157,5210] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2097,2099,2087,2088,2090,2856,3045,3047,3044,3196,3198,3057,3184,2094,2091,2077,2080,2083,3205,2817] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4921,4956,4916,4917,4919,4938,4918,4996,4970,4991,4992,4997,4998,5025,5026,4822,4993,5001,4807,4809,4810] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1105,473,597,5204,5205,5206,302,1089,1099,2966,2973,3109,2975,2965,2971,609,3117,3118,3120,608,471,2976,2959,2958,2957,599,5203,1103,1092] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [5284,115,138,1709,1710,1712,1750,5294,5298,5299,119,116,1740,1742,5286,95,4740,4741,4742,90,92] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3132,3284,3285,3286,3255,3279,3250,3281,2770,2771,2794,3301,2752,2754,2758,2765,2769,2759,2766,3154,5237,3133,5234] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4708,5278,5279,5283,5284,5287,5290,3811,4602,4696,4712,4714,5270,4564,4741,4697,5291,4690] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [926,887,888,378,379,930,928] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4415,4758,5289,4736,4737,4414,4872,4403,4408,4404,4407,4849,4868,4869,4870,4836,4434,4419,4423] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2985,2986,3498,3500,3097,3099,3497,3128,3470,1052,3461,3458,3459,3496,3467] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1092,1094,737,735,2164,2184,651,5202,5203,2957,2955,2166,2958] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3749,3753,3739,4788,3745,3752,4466,4802,4661,4648,4649,4650,4651,3757,3759] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [977,991,994,979,5175,5178,1379,1358,1359,1361,1475,1480,1508,1509,1488,995,980,1510,1511,5179,5174] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3268,3424,3257,3258,3239,2007,2008,2009,3259,3314,3315] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2149,5218,5226,2146,3086,5238,3108,5239] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        