
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
        
        load "data/2PZ5.pdb", protein
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
 
        load "data/2PZ5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3435,3353,3354,3339,3431,3430,2377,2394,2395,2396,2379,2375,2376,3324,2946,2949,2976,2539,2542,2527,2543,2895,2896,2674,2707,2780,2914,2921,2939,2942,2977,2380,2918,2900,3436,3438] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [179,180,1223,1220,1221,687,686,1217,1216,571,495,315,737,1109,1139,1118,1138,1215,703,712,709,713,159,160,178,740,730,733,161,163,164,705,327,329,330,331,462,1124] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [401,1377,1378,1379,1290,1296,402,3574,1259,1260,1375,1376,1371,1077,1302,1348,1360,1367,1353,1358,1359,1357,1307,1303,1350,1310] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3436,3437,3438,3301,3459,3460,3461,3597,2381,2382,2541,2673,2644,2641,3451,3453,3435,3339,2396,2542,2543] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1113,1114,1124,1237,1238,1244,1246,1086,1087,1245,1236,1374,1395,1396,429,432,328,330,331,461,439,165,1223,1222] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3292,3475,2614,3474,3505,3581,3576,3579,3580,3511,3518,3612,3594,3582,3583,3590,3571,3461,3598,3600,3602] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4298,4299,4300,4316,4308,3205,3235,4301,4305,3234,4312,3233,3763,3752,3755,3766] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1020,1532,1537,2072,2075,2079,1540,2074,1522,1526,1529] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4178,4181,4182,4208,4209,4211,4177,4291,4292,4293,4145,4184,4143,4359,4360,4361] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [892,915,916,860,917,891,859,778,779,1192,1175,1174,950,921] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2988,3075,3390,3107,3109,3104,3106,3130,3131,2987,3407] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1706,1708,1848,2002,1999] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        