
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
        
        load "data/4H3B.pdb", protein
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
 
        load "data/4H3B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3178,3176,3180,3204,3347,3348,1100,3206,3033,2454,2455,2456,2457,3030,2609,2610,3182,3184,2600,2487,3356,3175,3205,3026,3023,3018,1130,1132,1133,1134,1121,1123,1129,1122] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3739,3058,3658,3668,3740,2998,3062,3063,3064,3723,3725,3727,3729,2997,2463,2465,2462,2464,2430,2434,2436,2354,2355,2356,2461,2486,2487,2483,2420,2429,3014,3045,2412,2421,2407,3043] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3786,3793,3798,3800,3803,3166,3308,4338,4371,3782,4199,3825,3810,3817,3818,3821,4276,3162,4370,3163,3165,3811,4375,3828] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1325,364,842,1248,854,1419,1420,1424,884,874,875,877,881,858,859,872,873,866,867,856,860,268,218,219,222] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3596,3515,3767,3479,3502,4283,3482,4306,3781,4288,4277] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1337,538,574,1354,1355,1326,1386,658,837,838,1343,1356] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [898,897,931,1453,1451,1438,922,1219,1700,921,896,1750] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4699,3841,3842,4651,3840,3888,3865,3879,4389,4383,4701,4402,4404] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1333,1212,1213,1394,1392,1329,1330,1378,1234,1352,1363,1366,1185,1188] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4850,5141,5140,4707,4718,4709,4720,5320,4859,5151] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        