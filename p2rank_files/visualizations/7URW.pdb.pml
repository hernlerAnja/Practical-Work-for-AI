
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
        
        load "data/7URW.pdb", protein
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
 
        load "data/7URW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4772,4775,4774,4457,4590,4076,4077,4078,4755,4738,4739,4607,4736,3935,4473,4210,4220,4212,4178,4211,4214,4228,4182,4184,3925,4225,4227,3927,3928,4229,3990,3992,4710,4045,4573,738,4093,4213,4091,3899] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3146,3132,3131,3133,3239,3765,3627,3494,3495,3628,3766,3610,3782,3140,3760,3761,3763,3644,3799,3802,3801,3269,3280,3237,3282,3284,2985,2986,2987,3045,3047,3100,3738,2994,3268,3264,3266,3267,3265,2984] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [6015,6750,6618,5930,6468,6721,6116,6783,6784,6786,6789,6795,6791,6792,5960,5950,5952,5953,6101,6103,6747,6749,6766,6250,6251,6252,6253,6254,6249,6276,6236,6234,6235,6244,6102,6239,6207,6209,6238,6237,6070] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [130,775,120,122,123,414,104,181,659,268,398,399,400,401,411,369,403,266,267,371,792,934,936,937,953,809,413,415,438,440,397,445,452,456,407,141,5541,281,275,774] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2037,2205,2323,2324,2325,2365,2039,2340,2341,2203,2326,2674,2691,2850,2047,2573,2575,2574,2017,2558,2708,2040,2102,2337,2321,2322,2197,2188,2189,2190,2831,2833,2834,2294,2104] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1095,1245,1377,1379,1381,1382,1244,1246,1347,1349,1158,1376,1160,1348,1253,1259,1625,1741,1073,1608,1883,1881,1884,1758,1213,1723,1900,1624,1724,1093,1096,1393,1392,1394,1103,1069,1380,1375,1378] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4911,4912,5462,5612,5595,5596,4885,4889,5166,5168,5743,5744,5760,5069,5075,5060,5061,5790,5817,5777,5780,5789,4974,4976,4881,5715,5029,5794,5193,5194,5195,5198,5209,5211,5791,5801,4909] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        