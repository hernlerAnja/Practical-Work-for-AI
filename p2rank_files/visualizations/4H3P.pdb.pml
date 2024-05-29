
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
        
        load "data/4H3P.pdb", protein
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
 
        load "data/4H3P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [177,178,179,185,186,173,174,176,222,224,170,223,171,323,449,447,485,1278,1292,1293,487,488,1279,767,338,339,340,772,1303,451,452,207,208,209,189,193,357,355,448,446,456,460,202,203,204,1277,1171,1172,1173,1180,1280,805,1196,1197,1272,804,816,785,788,803,845,796,1143,1274,1301,1276] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2944,2946,3198,3202,4035,3228,3229,4034,4016,4018,4019,4020,4022,3097,3099,3078,3080,3081,3082,3230,4021,4045,4043,4044,3885,3190,3191,3192,3193,3194,3227,3168,2935,2936,2943,2945,2931,3902,3901,2948,2949,2950,2966,2951,2927,2928] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3558,3913,3939,3545,3546,3547,2964,2966,2965,2915,2916,2918,2912,3587,2951,2920,2921,2927,2913,3065,3527,3530,3080,3081,3082,4021,3509,3938,4014,4022,3514] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3140,3141,3142,1317,478,2507,1313,1326,2501,2526,2520,1323,1336,1339,1320,1324,1325,3129,3128,3127,5288,5289,5287,2497,2500,2512,3134,3143] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1430,1167,1431,831,833,1419,1417,1394,1158,1395,1172,1173] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2253,1495,1460,1487,2243,2228,2244,1496,1902,1881,1903,1912,1892] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4108,4124,4126,3900,4137,4138,3573,3575,3910,3914,3915,3909] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        