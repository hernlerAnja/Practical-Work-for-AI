
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
        
        load "data/3SOA.pdb", protein
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
 
        load "data/3SOA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [271,272,647,666,667,668,669,530,663,665,156,117,119,127,128,143,157,273,122,125,115,116,1089,1086,1088,708,700,704,705,706,707,1160,529,531,1162,692,689,1059,1060,1193,1195,1191,1168,1174,1177,1196,1192,1194,1178,1182,1181,528,523,1067,1159,1072,649,422,424,425,455,454,547,549,420,426,427] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2313,2316,2318,2312,2345,2346,2347,2306,1641,1346,1347,1708,1709,2287,1568,1612,1613,1625,1639,2286,2285,2307,2308,2309,2350,1338,1345,1343,1344,1679,2373,1064,1055,1047,1056,1358,1360,1065] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3504,3505,3503,2760,2591,2567,3167,2743,2879,2846,2848,2850,2923,2924,2925,2876,2931,2933,2587,2593,2590,2892,2893,2877,2878,3304,3305,3455,3473,3475] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2924,2925,2927,2929,2926,2587,2593,2595,3501,3505,3502,3503,3496,3209,3198,3199,3200,3201,3202,3203,3204,3215,3218,2986,2988,2956,2959] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [863,865,1136,1139,1142,1135,723,1096,1097,1155,780,781,752,843,861,860,897] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [649,424,425,395,321,360,1190,1192,1194,383,382,390,143,273,271,666,668,322,287,288] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1172,1184,481,934,1011,1008,1179,1182,995,1005,1488,929,958] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2552,3395,3398,3402,3404,3388,3390,3393,2493,2496,2528,2670,3401,2668,2677,2666,3419,2527,2553] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        