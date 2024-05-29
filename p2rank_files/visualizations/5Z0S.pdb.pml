
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
        
        load "data/5Z0S.pdb", protein
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
 
        load "data/5Z0S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1158,1159,206,201,202,203,204,205,207,169,170,176,178,735,752,753,1157,1235,1236,1242,1255,740,174,346,710,226,227,360,714,591,593,512,513,480,173,728,732,1129,763,790,791] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3470,3393,3394,2988,2991,2998,2827,2967,2828,2949,2956,2578,3025,3026,2409,2410,2970,2461,2463,2592,2590,2945,2462,2437,2438,2439,2440,2441,2442,2443,2405,2406,2411,2412,2407,3479,3488,3471,3472,3476,3477,3478,2715,2747,2748,2944,3378,3490] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3339,3340,3341,3342,3379,3635,3378,3368,3636,3478,3501,3594,3327,3535,3536,3537,3674,3511,3575,3578,3576] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3275,4319,4322,4333,4338,4329,3273,3276,3277,4316,4321,3812,3274,3775,3773,3771,3772,2232,2233,2235,3784,3786,3788,3769,3770,3778] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3821,3824,3671,4049,4050,4076,4089,3959,3648,4013,3958,4084,4246,4249,4094,4099] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1362,1364,1365,1106,1104,1105,1107,1426,1427,1326,1325,1324,1383,1377,1378,1133,1265,1278,1279,1280] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2111,2122,2101,2104,2106,2107,1562,1576,1561,1040,1041,1039,1563,1565,1567] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1606,1609,1439,1743,1462,1834,1879,1744,1869,1861,1835] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1130,1132,1456,1382,1395,1457,1409] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        