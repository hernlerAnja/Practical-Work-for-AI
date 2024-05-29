
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
        
        load "data/6S90.pdb", protein
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
 
        load "data/6S90.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2232,2351,2230,2231,2353,3222,3223,3224,2336,2192,2187,2178,2179,2715,2717,2719,2176,2175,2212,3242,3244,3248,3221,2199,2210,2195,2200,2202,2204,3283,3249,3115,2746,3124,2743,2724,3142,3143,3144,2732,3093,3129,3090,3130,3252,3325,3327,2208,3118,3119,2750,2751,2775,3220,3215,3216,2721,2698,2703] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1060,278,1133,1139,1140,1141,1134,484,274,276,611,612,1138,147,1137,1161,1163,1159,1165,1166,113,638,1061,261,616,634,637,482,121,122,126,127,130,167,134,145,149,1200,137,110,114,165,166,143,1047,1007,1169,659,656,655,663,664,688,1032,1035,1036,1046,1238,1010,1236,1240] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1746,3804,3805,3811,3812,3814,1635,1692,4005,1633,1603,1748,1604,1634,1605,1615,1620,1624,1632,1630,1631] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3253,3326,3078,3082,3327,3330,3382,3493,3083,3509,3511,3512,3513,3332,3342,3335,3333,3384,3390,3429,3391] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2278,2279,2310,2311,2313,2589,2593,2330,2594,2596,2691,2320,2309,2590,2591,2087,2274,2276,2277] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1239,1243,1245,1246,1248,999,1000,1170,1417,1302,1293,1295,1401,1413,1415,1255,1301,1168] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2767,3421,3635,3118,3119,3120,3685,3687,3422,3741,3406] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1562,1586,1587,1552,1766,1769,1773,1784,1785,1563,1564,1573,1571,1572,3846,3826,1776,3849,3843] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2499,2565,2582,2584,2585,2699,3217,3218,3235,2567,3223,3246,3247,2683] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1133,1140,1134,484,612,596,501,1162,1163,1135,416,502,499,495,496,1152,482] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2785,2786,2923,2925,3180,3177,3178,3179,2860,2888,2892,2887,3171,2819] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        