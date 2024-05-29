
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
        
        load "data/5DEY.pdb", protein
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
 
        load "data/5DEY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [253,254,378,380,382,399,272,491,513,514,515,516,517,523,740,741,742,271,1156,775,1155,363,365,773,364,761,548,757,1224,754,755,756,546,797,782,226,1139,3561,1225,1226,1227,1230,1231,1232,1233,3562,3577,481,1246,1248,1255,1257,3553,248,1129,1128,804,800,1117,1118,3558,3566,1259,3576,446,453,483,441,490,3572] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3381,3477,3409,3035,3408,3478,3057,3050,3483,3485,3486,3008,3009,3010,2801,2875,2519,2647,2767,2744,2741,2776,2536,2537,2630,2643,3014,3032,3021,3026,2646,2993,2994,3007,2663,2995,2491,3030,3028,3499] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2769,2770,3493,3495,2792,2868,2869,3497,3277,2825,3316,3317,3298,2795,2799] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3629,3628,3656,3705,3707,3569,3593,3594,3954,3955,3956,3661,3659,3654,1721,1722,1723,3679,3680,1724,1393,3933,1715,3525,3515,3516,3517,3551,3563,3568] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1258,1259,1374,1379,1364,1375,3567,3566,3931,3932,1248,1250,1254,1255,1257,484,1251,1252,457,458,3918,3923,3924,3925,483] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3964,3966,3968,1459,1461,1752,1762,1764,1788,1795,1469,1367,1368,1476,3965,3967,3940,3963,3942] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1031,1523,2059,2061,1287,1515,1516,1517,1525,1028,1029] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3725,3726,3727,4261,3281,3282,3718,3717,3284,4263,3719] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1507,1508,1517,1518,1523,1334,2020,1522,1524,2029,1525] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        