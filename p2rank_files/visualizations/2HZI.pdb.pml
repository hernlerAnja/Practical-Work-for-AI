
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
        
        load "data/2HZI.pdb", protein
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
 
        load "data/2HZI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [689,1134,1135,693,692,167,166,193,168,192,170,141,142,137,729,732,710,728,445,652,316,314,470,1216,472,668,667,547,139,140,700,686,688,302,305,310,169,1227,739,760,763,160,1218,1219,1225] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2394,2701,2501,2822,2823,2804,3280,2368,3355,3373,3368,3371,2395,2515,2509,2513,2848,3281,2844,2827,3362,2627,3364,2602,2807,2372,2369,2339,2343,2344,2341,2342,2325,2871,2875,2872,2847,2843,2906] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1230,1231,1232,1233,1246,444,1229,1224,401,404,405,406,407,3309,432,434,436,4301,4303,3052,3054,3055,3021,1247,433,435,1236,4325,4328,442,318,374,403,373,437,438,1321,1334,1335,3308,1341,1343,1358,1362,1372,1374,1074,1070,1069,1319,2989,3008,3009,3020,3028,1245,1250,1317,1264,1326,1307,1312,3316,3318] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [389,396,399,2687,2672,3105,4241,4243,426,4277,4276,3103,2670,331,333,384,388,390,352,353,2677,2678,2679,357,358,594,601,631,632,615,633,4251,3129,3132,3134,3125,3126,3127,3164,3163,613,614,629,329,379,3082,382,3084,2686] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [898,900,867,869,870,1633,891,1634,1636,1654,1601,925,2144,1631,888,889,1637,1897,1885,1886,1883,1884,1597,1917,1896] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4030,4017,3035,3771,3773,3774,4016,3033,3768,3734,3770,3011,3013,3014,4029,3044,3037,4051,3031,3069,3738,4050,3032] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [423,450,451,452,455,426,427,4312,4276,4252,4283,4311,596,481,597,8,482,595] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2993,1348,1349,2869,2994,2868,3317,3292,3302,3303,3310,2945,2866,2913,2915,2860,2862,1339,2948,2953,2957,2917,2910,2941,2942] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3691,3693,3531,3690,4117,4119,4120,4118,4121,4123,3969,3827,3829,3974] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1556,1787,1989,1692,1988,1990,1837,1991,1832] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        