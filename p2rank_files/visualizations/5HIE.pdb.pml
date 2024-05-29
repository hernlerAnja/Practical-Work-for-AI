
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
        
        load "data/5HIE.pdb", protein
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
 
        load "data/5HIE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3102,3205,3206,3119,3120,3121,3122,3198,3201,2556,2557,2247,2672,2344,2345,2341,2343,2477,2673,3207,3202,3209,2425,2426,3215,2470,2715,2717,2718,2722,3118,2701,2700,2726,2727,3091,3117,2677,2570,2697,2553,2755,2752,2753,7808,2197,2246,2695,2337,7806,7807,2329,2693,2694,2213,2205,2206,2209,2210,1595,1596,1598,2201,2203,1567,1577,1578,1579,1580,7823,7825,1591,3064,3081,3208,3284,3287,3292,3307,2742,2744,2745,2746,3092,3093,3094,3095,3321,2793,3604,2194,2200] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1014,1041,169,170,1043,1044,1045,1124,1128,120,618,624,477,479,480,620,595,600,252,616,1125,348,349,266,267,268,581,596,401,264,476,493,675,676,638,640,641,645,649,650,5773,5774,5775,623,617,128,129,132,133,1017,1129,1130,1131,3678,126,3679,117,122,123,124,3681,116,667,3660,3661,3662,665,678,714,1015,5790,5792,3674,1121,393,1132,1138,1140,427,389,390,1025,1003,669,1018,1016,1209] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [7230,6351,6798,6450,6350,6352,6442,6446,6449,6433,6434,6662,6448,6764,6760,6763,7210,7229,7316,7309,7313,7314,7315,7323,7325,6334,6529,6531,6575,6302,6799,6800,6834,7199,7203,7202,7226,7228,7224,7225,7227,6825,6826,6830,6827,6822,6823,6824,6661,6807,6658,6659,6778,6671,6675,6806,6802,6777,6653,6311,6315,6310,6314,6299,6304,6305,6306,6307] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [5292,5273,5276,5277,5290,4632,4748,4747,4321,4404,4499,4501,4416,4418,4734,4733,4801,5198,4797,5192,5194,5196,5193,5195,5197,4273,4769,4770,4768,4795,4789,4790,4791,4792,4793,4794,4630,4631,4772,4642,4645,4628,4629,4544,4641,4646,4647,5201,4776,4775,4280,4281,4284,4285,5281,5282,5283,4419,4420,5280,4276,4277,4320,4322,4304,4269,4272,4274,4275,4802,5166,5169,5170,5177,4828,4830] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2800,2766,2801,2721,3156,3157,2715,2712,2713,7799,7436,7437,7438,7806,7807,7457,7456,2816,8022] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [689,721,724,5405,1078,1079,1080,5421,5424,5402,5404,5766,5768,739,6008,5432,5377,720,5989,5996,6000,6001,6004,644,638,5773,5774,636] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [7431,7435,7436,7805,7806,7807,7773,7808,7776,2198,2694,2711,2266,2267,2268,2715,2712,2175,7433] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [5743,5772,5773,5774,5775,617,634,189,191,121,5740,5398,5402,5400,5395] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [519,521,520,522,408,357,358,356,400,324,398,498,499] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        