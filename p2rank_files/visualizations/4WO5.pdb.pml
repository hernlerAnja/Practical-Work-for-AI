
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
        
        load "data/4WO5.pdb", protein
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
 
        load "data/4WO5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [173,137,138,175,174,635,125,128,129,131,133,134,612,253,633,265,267,1124,1145,268,269,1139,1144,613,430,431,1138,598,599,1036,1033,1034,1035,1037,1038,1007,1008,498,501,1117,1125,1132,1134,1135,497,1018,1136,1137,640,657,634,658,662,663,653] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2652,3058,3030,3061,2148,2149,3060,2145,2674,2677,2679,2683,2684,2678,3031,3034,2657,2658,2654,2651,2277,2278,2279,2650,2196,2612,2282,2287,2291,2634,2195,2197,2156,2157,2160,2161,2150,2151,2152,2153,2154,3153,3059,3133,3134,3136,3137,3138,3041,3141,3142,3154,2515,2518,3056,3057,2453,2629,2630,2615,2452,2514,2528,2531,2293,3143,2167,3147,3144,3155,3156,3150,3152,2616] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [348,345,370,285,286,300,585,151,1146,1166,1165,375,343,150,287,288,289,290,1198,156,154,1195,1196,152] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [475,477,621,1104,1073,622,471,472,461,462,463,464,506,508,507,509,1056,2908,3905,2476,2479,2484,2486,2915,2917,2881,2883,2885,2886] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2400,2402,2395,2398,2423,2424,2391,3171,2309,2324,2616,2366,2393,2367,2368,2394,2369,2371,2323,2602,3157,3158,3156,2175,2177,2178,2179,2167,2173,2174,2176,3159,3167] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        