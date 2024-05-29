
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
        
        load "data/3ZRM.pdb", protein
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
 
        load "data/3ZRM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3097,3217,3047,3098,3078,3080,3043,3202,3627,4200,4201,4204,4205,4101,4207,3322,3045,3076,4117,4118,4198,4199,4089,3438,3678,4090,3659,3706,3643,3645,3652,3632] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [229,230,231,249,1238,772,779,798,747,362,358,360,361,1237,752,571,763,765,194,195,198,345,247,248,200,825,1209,1221,1319,1210,1324,1325,1327,1318,1320,1321,463] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2773,2772,2770,2472,2467,2468,2502,2500,2501,5310,5287,5307,5308,5288,5606,5596,2455,5626,5624,2458,2527,2528,2526,2524,5260,5290,5291,5292,5584,5289] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [5625,5353,5378,5379,5622,5615,5620,2455,2435,2456,5626,2754,5319,2464,5323,5354,5351,2458,5352,2409,2407,2408,2433,2436,2437,2438,2439,2440,2732,2325,5307,2472,5350,5376] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3228,3605,2863,3500,3502,3519,3107,3109,3105,3014,3209,2989,2991,3210,3108,3013,2849,2850] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3725,3726,3762,3763,3750,3848,3850,3888,4124,4126,3752,4138,4136,4139,5442,5444,5441,3851,3852,5434,3847,3849,3886] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [971,881,883,1278,1281,970,972,870,2592,1256,1258,1259,846,1006,1243,1246,1008,1245,843,845] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2394,1634,1637,1624,1625,1626,1627,1633,1402,1403,1404,2385,2723,2724,2404,2405,2410,2411,2414,2416,2423,1084,1112,1114,1661,1629,1110,1111,1387,1631,1632,1385,1136] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [19,149,151,18,32,259,174,352,724,353,633,635,256,255,258,260,370,371,652] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [5256,5257,4532,5262,5263,5268,5275,3994,5574,5575,5576,3966,5246,4508,4504,4505,4503,4495,4496,3992,3990,3991] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [5203,5205,5032,4775,5010,4773,4776,4772,5006,5212,5030,5018,5024,2252,2269,2257,2241] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1197,1198,1325,1326,1327,1340,1341,1181,1489,1348,228,225] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2178,2180,2144,1902,1905,1899,1901,2148,2183,2314,2352,2351,2339] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        