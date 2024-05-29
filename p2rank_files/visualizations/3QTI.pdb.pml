
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
        
        load "data/3QTI.pdb", protein
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
 
        load "data/3QTI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1334,1335,1336,1337,1338,1340,1341,294,751,756,233,234,235,237,293,389,239,809,837,803,800,1186,1187,775,777,772,768,1172,1267,1268,1272,1303,631,1169,1158] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3041,2508,2509,3044,3399,3408,3409,3410,2515,2570,3585,3586,3587,3588,3589,3590,3517,3521,3583,3413,3584,3050,2997,3013,3016,2511,2513,2569,2662,3009,3011,2510,3018,3431,3433,3435,3516,2992,3552] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3185,3186,3187,3188,3217,3218,3219,3475,3476,3477,3478,3182,3184,3207,3209,4395,4397,3206,2290,2291,4433,4431,3178,3179,4425,3474,3240,2281,2282,2283,3155,3156,3086,3088,3137,3082,3091,880,883,884,3465] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1364,1368,2300,2303,1362,2295,1683,1686,1408,1410,1695,1692,825,827,1161,1378,1379,1422,1423,1637,1376,1377,1350] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3599,3613,3625,3627,3611,3672,3626,3628,3068,3671,3932,3944,3617,3657,4544,3935,3659,3941,4547,3066,3402] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2073,1067,1070,1535,1536,2053,2056,2058,1525,1527,1533,1526,1063,1064,1036,1065,1066] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4317,4297,4300,4302,3305,3775,3277,3304,3306,3784,3785,3774,3776,3782] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3024,3031,3036,3038,1863,3028,2253,2250,2251,2252,2257,3142,3141,3033,3085,2264,3116,3029] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [899,901,795,797,848,1231,1232,893] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        