
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
        
        load "data/7UP8.pdb", protein
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
 
        load "data/7UP8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [156,698,316,210,211,330,331,332,1203,438,680,681,686,679,157,153,154,159,160,162,164,165,1193,1195,1196,1197,1198,1201,542,1202,1204,1205,703,1120,1119,1091,1096,1103,197] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2720,3371,3368,3370,2859,2860,2861,2390,3372,3373,2511,3377,3378,3379,2617,2389,2509,2510,2332,2333,2336,2335,2338,2339,2341,2908,3286,3257,3285,2882,2865,2877,2495,2343,2344,2350,2351,2376] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2947,2948,3295,3297,3322,3323,3325,3072,3037,3060,2943,2982,2983,2984,2956,2946] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [331,332,1203,179,382,404,1217,1219,1228,401,437,172,175,1230,1202,1204,1229,379,196,197,347,410,378,346] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [748,750,2081,2110,2112,752,787,788,743,745,1085,1086,731,2087,2089,757,760,2064,2065,2066,2067] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4364,4393,3728,3501,3503,3942,3950,3959,3471,4000,4001,4403,4404,4394,3499,3934,3470] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [165,1078,1094,1096,1103,1063,1080,1062,1079,1229,1204,1095,2120] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [896,898,886,803,804,805,777,834,1129,1152,1154,1150,765,767,1130,1131] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3212,3214,3215,3219,3217,3228,4373,3223,4368,4371,4370,3477,3478,4400,3454,3457,4363,4365,4399,3514,4336,3475,3476,3485] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1046,1048,1049,1051,1302,1303,2178,2163,2174,1339,2167,2169,2170,1301] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        