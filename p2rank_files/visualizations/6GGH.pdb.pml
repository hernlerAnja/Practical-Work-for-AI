
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
        
        load "data/6GGH.pdb", protein
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
 
        load "data/6GGH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [209,210,1239,1156,1233,350,715,1234,150,152,153,211,1140,1241,148,149,155,156,726,736,739,1155,719,731,733,766,1126,761,765,791,1130,1131,758,747] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2613,2759,3611,3066,2612,2552,2556,2555,2557,3603,3502,3604,3609,3117,3142,3143,3488,2551,2744,3517,3087,3070,3082,2554,3084,3109,3112,3516,3518,3090,3098,3086] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [174,183,184,185,193,380,434,423,455,456,458,1412,436,437,1416,424,427,435,492,366,1255,1397,1398,1280,1399,1366,1389,457,484,1281,1411,1395,1265,1257,1263] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [211,1140,1240,1241,1242,366,1255,365,194,196,197,156,157,492,363,370,174,193,380,195,455,1426,167,168,1104,1263,1257,1411,1265,1422,1264,1130,1131] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2613,2759,2760,3611,2596,2598,3466,3625,3502,3610,3612,3492,3493,2757,2758,2851,2764,3627,2812,2818,2819,2822,2813,3635,2774,2583,2594,2595,2814,3795,3794,3796,2570] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1470,781,1127,1128,1129,1689,780,1123,1468,1117,1469,1778,1779,1103,1434,1437,782] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1954,1980,2013,3893,3894,4270,4267,4295,4297,4301,4326,4327,4328,1522,1988,1523,1524] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3635,3781,2793,2815,2817,2814,3796,3651,3650,3456,2851,3627,2813,2812,3765,3766] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        